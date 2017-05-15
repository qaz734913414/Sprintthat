using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sprintthat.Mvc.Areas.SystemManage.Controllers
{
    public class ModuleController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
    }
}