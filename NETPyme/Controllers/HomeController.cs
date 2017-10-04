using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NETPyme.Controllers
{
	public class HomeController : Controller
	{
		public ActionResult Index()
		{
			return View();
		}

		public ActionResult About()
		{
			ViewBag.Message = "Your application description page.";

			return View();
		}

		public ActionResult Contact()
		{
			ViewBag.Message = "Your contact page.";

			return View();
		}
		public ActionResult Comit()
		{
			ViewBag.Message = "Your contact page.";

			return View();
		}
		public ActionResult Noticias()
		{
			ViewBag.Message = "Your contact page.";

			return View();
		}
		public ActionResult cambio()
		{
			ViewBag.Message = "Your contact page.";

			return View();
		}
	}
}