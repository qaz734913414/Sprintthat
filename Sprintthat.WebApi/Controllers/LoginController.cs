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
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CheckLogin(string username, string password)
        {
            var result = new UserLogonApp().CheckLogin(username, password);
            return result ? Json(new { state = "success", message = "登录成功", Url = "/Home/Index" }) : Json(new { state = "error", message = "账号密码错误" });
        }
    }
}