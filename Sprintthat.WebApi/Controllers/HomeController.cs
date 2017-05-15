using Sprintthat.Application;
using Sprintthat.Common;
using System.Web.Mvc;

namespace Sprintthat.WebApi.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult GetModuleList()
        {
            return Content(new ModuleApp().GetModuleList().ToJson());
        }
    }
}
