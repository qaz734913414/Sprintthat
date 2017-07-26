using Sprintthat.Application;
using Sprintthat.Common;
using Sprintthat.Domain;
using System;
using System.Web.Mvc;

namespace Sprintthat.Mvc.Controllers
{
    public class LoginController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CheckLogin(string username, string password)
        {
            UserLogonApp userApp = new UserLogonApp();
            LogLogonApp logonLogApp = new LogLogonApp();

            bool isSuccess = false;
            var user = userApp.CheckLogin(username, password, ref isSuccess);
            //日志记录
            SysLogLogon logonLog = new SysLogLogon();
            logonLog.FLogId = Guid.NewGuid().ToString();
            logonLog.FDate = DateTime.Now;
            logonLog.FAccount = user.FAccount;
            logonLog.FNickName = user.FName;
            logonLog.FType = 1; //登录
            logonLog.FIPAddress = Net.Ip;
            logonLog.FIPAddressName = Net.GetLocation(logonLog.FIPAddress);
            logonLog.FResult = isSuccess ? 1 : 0;
            logonLog.FResultDescription = isSuccess ? "登录成功" : "登录失败";
            logonLogApp.AddLog(logonLog);

            return isSuccess ? Json(new { state = "success", message = "登录成功", Url = "/Home/Index" }) : Json(new { state = "error", message = "账号密码错误" });
        }

        [HttpGet]
        public ActionResult Logout()
        {
            SysLogLogon logonLog = new SysLogLogon()
            {
                FLogId = Guid.NewGuid().ToString(),
                FDate = DateTime.Now,
                FAccount = GlobalOperator.StaticOperator.OwnOpoerator.UserAccount,
                FNickName = GlobalOperator.StaticOperator.OwnOpoerator.UserName,
                FType = 0, //登出
                FIPAddress = Net.Ip,
                FIPAddressName = Net.GetLocation(Net.Ip),
                FResult = 1,
                FResultDescription = "登出成功"
            };
            new LogLogonApp().AddLog(logonLog);

            Session.Abandon();
            Session.Clear();
            GlobalOperator.StaticOperator.RemoveCurrentOperator();
            return RedirectToAction("Index", "Login");
        }
    }
}