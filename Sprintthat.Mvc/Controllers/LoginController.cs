using Sprintthat.Application;
using System.Web.Mvc;

namespace Sprintthat.Mvc.Controllers
{
    public class LoginController : Controller
    {
        [HttpGet]
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