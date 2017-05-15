using Sprintthat.Application;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sprintthat.WebApi.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult CheckLogin(string username, string password)
        {
            var result = new UserLogonApp().CheckLogin(username, password);
            var success = Json(new { state = "success", message = "登录成功", Url = "/Home/Index" });
            success.JsonRequestBehavior = JsonRequestBehavior.AllowGet;
            var error = Json(new { state = "error", message = "账号密码错误" });
            error.JsonRequestBehavior = JsonRequestBehavior.AllowGet;
            return result ? success : error;
        }

    }
}