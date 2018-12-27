using MoneyBMineWP.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

[assembly: log4net.Config.XmlConfigurator(Watch = true)]

namespace MoneyBMineWP.Controllers
{
    public class HomeController : Controller
    {
        private static readonly log4net.ILog log = LogHelper.GetLogger();
        //Home page
        public ActionResult Index()
        {
            log.Info("This is the Home Page log message");
            return View();
        }

        //More about MoneyBMine page
        public ActionResult About()
        {
            return View();
        }

        //Download NYSE Data page
        //Only registered user can reach to this page to download the application about NYSE data
        [Authorize]
        public ActionResult Download()
        {
            return View();
        }

    }
}