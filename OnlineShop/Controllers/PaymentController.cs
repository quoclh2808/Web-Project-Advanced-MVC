using log4net;
using Model.EF;
using OnlineShop.Common;
using OnlineShop.Models;
using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineShop.Controllers
{
    public class PaymentController : Controller
    {
        // GET: Payment
        private OnlineShopDbContext db = new OnlineShopDbContext();
        private const string CartSession = "CartSession";
        public double TyGiaUSD = 23003;
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult SuccessView()
        {
            return View();
        }
        public ActionResult FailureView()
        {
            return View();
        }
        public ActionResult PaymentWithPaypal(string Cancel = null)
        {

            //getting the apiContext
            APIContext apiContext = PaypalConfiguration.GetAPIContext();

            try
            {
                //A resource representing a Payer that funds a payment Payment Method as paypal
                //Payer Id will be returned when payment proceeds or click to pay
                string payerId = Request.Params["PayerID"];

                if (string.IsNullOrEmpty(payerId))
                {
                    //this section will be executed first because PayerID doesn't exist
                    //it is returned by the create function call of the payment class

                    // Creating a payment
                    // baseURL is the url on which paypal sendsback the data.
                    string baseURI = Request.Url.Scheme + "://" + Request.Url.Authority +
                                "/Payment/PaymentWithPayPal?";

                    //here we are generating guid for storing the paymentID received in session
                    //which will be used in the payment execution

                    var guid = Convert.ToString((new Random()).Next(100000));

                    //CreatePayment function gives us the payment approval url
                    //on which payer is redirected for paypal account payment

                    var createdPayment = this.CreatePayment(apiContext, baseURI + "guid=" + guid);

                    //get links returned from paypal in response to Create function call

                    var links = createdPayment.links.GetEnumerator();

                    string paypalRedirectUrl = null;

                    while (links.MoveNext())
                    {
                        Links lnk = links.Current;

                        if (lnk.rel.ToLower().Trim().Equals("approval_url"))
                        {
                            //saving the payapalredirect URL to which user will be redirected for payment
                            paypalRedirectUrl = lnk.href;
                        }
                    }

                    // saving the paymentID in the key guid
                    Session.Add(guid, createdPayment.id);

                    return Redirect(paypalRedirectUrl);
                }
                else
                {

                    // This function exectues after receving all parameters for the payment

                    var guid = Request.Params["guid"];

                    var executedPayment = ExecutePayment(apiContext, payerId, Session[guid] as string);

                    //If executed payment failed then we will show payment failure message to user
                    if (executedPayment.state.ToLower() != "approved")
                    {
                        return View("FailureView");
                    }
                }
            }
            catch (Exception ex)
            {
                return View("FailureView");
            }

            //on successful payment, show success page to user.
            Model.EF.Order order = db.Orders.Find(Session["OrderID"]);
            order.Status = "yes paypal";
            db.SaveChanges();
            Session.Remove("OrderID");
            Session.Remove(SessionMember.CartSession);
            return View("SuccessView");
        }

        private PayPal.Api.Payment payment;
        private Payment ExecutePayment(APIContext apiContext, string payerId, string paymentId)
        {
            var paymentExecution = new PaymentExecution() { payer_id = payerId };
            this.payment = new Payment() { id = paymentId };
            return this.payment.Execute(apiContext, paymentExecution);
        }

        private Payment CreatePayment(APIContext apiContext, string redirectUrl)
        {

            var ItemLIst = new ItemList() { items = new List<Item>() };
            var cart = (List<CartItem>)Session[CartSession];
            var total = Math.Round(Convert.ToDouble(cart.Sum(x => x.Quantity * x.Product.Price))/ TyGiaUSD, 2);
            foreach (var item in cart)
            {
                    ItemLIst.items.Add(new Item()
                    {
                        name = item.Product.Title,
                        currency = "USD",
                        price = Math.Round(Convert.ToDouble(item.Product.Price) / TyGiaUSD, 2).ToString(),
                        quantity = item.Quantity.ToString(),
                        sku = "sku",
                        tax = "0"
                    });
            }


            var payer = new Payer() { payment_method = "paypal" };
            var paypalOrderId = DateTime.Now.Ticks;
            // Configure Redirect Urls here with RedirectUrls object
            var redirUrls = new RedirectUrls()
            {
                cancel_url = redirectUrl + "&Cancel=true",
                return_url = redirectUrl
            };

            // Adding Tax, shipping and Subtotal details
            var details = new Details()
            {
                tax = "0",
                shipping = "0",
                subtotal = total.ToString()
            };

            //Final amount with details
            var amount = new Amount()
            {
                currency = "USD",
                total = total.ToString(), // Total must be equal to sum of tax, shipping and subtotal.
                details = details
            };

            var transactionList = new List<Transaction>();
            // Adding description about the transaction
            transactionList.Add(new Transaction()
            {
                description = "Transaction description",
                invoice_number = paypalOrderId.ToString(), //Generate an Invoice No
                amount = amount,
                item_list = ItemLIst
            });


            this.payment = new Payment()
            {
                intent = "sale",
                payer = payer,
                transactions = transactionList,
                redirect_urls = redirUrls
            };

            // Create a payment using a APIContext
            return this.payment.Create(apiContext);

        }
        //private static readonly ILog log =
        //  LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        //public JsonResult PaymentWithVNPay(VNPayModel postData)
        //{
        //    //Get Config Info
        //    string vnp_Returnurl = ConfigurationManager.AppSettings["vnp_Returnurl"]; //URL nhan ket qua tra ve 
        //    string vnp_Url = ConfigurationManager.AppSettings["vnp_Url"]; //URL thanh toan cua VNPAY 
        //    string vnp_TmnCode = ConfigurationManager.AppSettings["vnp_TmnCode"]; //Ma website
        //    string vnp_HashSecret = ConfigurationManager.AppSettings["vnp_HashSecret"]; //Chuoi bi mat
        //    //if (string.IsNullOrEmpty(vnp_TmnCode) || string.IsNullOrEmpty(vnp_HashSecret))
        //    //{
        //    //    lblMessage.Text = "Vui lòng cấu hình các tham số: vnp_TmnCode,vnp_HashSecret trong file web.config";
        //    //    return;
        //    //}
        //    //Get payment input
        //    OrderInfo order = new OrderInfo();
        //    //Save order to db
        //    order.OrderId = DateTime.Now.Ticks;
        //    order.Amount = Convert.ToInt64(postData.Amount);
        //    order.OrderDescription = postData.OrderDescription;
        //    order.CreatedDate = DateTime.Now;
        //    string locale = postData.language;
        //    //Build URL for VNPAY
        //    VnPayLibrary vnpay = new VnPayLibrary();

        //    vnpay.AddRequestData("vnp_Version", "2.0.0");
        //    vnpay.AddRequestData("vnp_Command", "pay");
        //    vnpay.AddRequestData("vnp_TmnCode", vnp_TmnCode);
        //    vnpay.AddRequestData("vnp_Amount", (order.Amount * 100).ToString());
        //    if (postData.bankcode!= null && !string.IsNullOrEmpty(postData.bankcode))
        //    {
        //        vnpay.AddRequestData("vnp_BankCode", postData.bankcode);
        //    }
        //    vnpay.AddRequestData("vnp_CreateDate", order.CreatedDate.ToString("yyyyMMddHHmmss"));
        //    vnpay.AddRequestData("vnp_CurrCode", "VND");
        //    vnpay.AddRequestData("vnp_IpAddr", Utils.GetIpAddress());


        //    if (!string.IsNullOrEmpty(locale))
        //    {
        //        vnpay.AddRequestData("vnp_Locale", locale);
        //    }
        //    else
        //    {
        //        vnpay.AddRequestData("vnp_Locale", "vn");
        //    }
        //    vnpay.AddRequestData("vnp_OrderInfo", order.OrderDescription);
        //    vnpay.AddRequestData("vnp_OrderType", postData.ordertype); //default value: other
        //    vnpay.AddRequestData("vnp_ReturnUrl", vnp_Returnurl);
        //    vnpay.AddRequestData("vnp_TxnRef", order.OrderId.ToString());

        //    string paymentUrl = vnpay.CreateRequestUrl(vnp_Url, vnp_HashSecret);
        //    log.InfoFormat("VNPAY URL: {0}", paymentUrl);
        //    Response.Redirect(paymentUrl);
        //    return Json(new { code = "00" });
        //}
    }
}