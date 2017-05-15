using Sprintthat.Application;
using Sprintthat.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sprintthat.Mvc.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
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