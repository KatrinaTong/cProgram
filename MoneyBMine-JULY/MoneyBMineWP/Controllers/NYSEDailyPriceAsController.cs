using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MoneyBMineWP.Models;

namespace MoneyBMineWP.Controllers
{
    [Authorize(Users = "katrina0411@live.cn")]
    public class NYSEDailyPriceAsController : Controller
    {
        private NYSEDataEntities2 db = new NYSEDataEntities2();

        // GET: NYSEDailyPriceAs
        public ActionResult Index()
        {
            return View(db.NYSEDailyPriceAs.ToList());
        }

        // GET: NYSEDailyPriceAs/Details/5
        public ActionResult Details(int id)
        {
            if (id <=0)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NYSEDailyPriceA nYSEDailyPriceA = db.NYSEDailyPriceAs.Find(id);
            if (nYSEDailyPriceA == null)
            {
                return HttpNotFound();
            }
            return View(nYSEDailyPriceA);
        }

        // GET: NYSEDailyPriceAs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: NYSEDailyPriceAs/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "exchange,stock_symbol,date,stock_price_open,stock_price_high,stock_price_low,stock_price_close,stock_volume,stock_price_adj_close,id")] NYSEDailyPriceA nYSEDailyPriceA)
        {
            if (ModelState.IsValid)
            {
                db.NYSEDailyPriceAs.Add(nYSEDailyPriceA);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(nYSEDailyPriceA);
        }

        // GET: NYSEDailyPriceAs/Edit/5
        public ActionResult Edit(int id)
        {
            if (id <=0)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NYSEDailyPriceA nYSEDailyPriceA = db.NYSEDailyPriceAs.Find(id);
            if (nYSEDailyPriceA == null)
            {
                return HttpNotFound();
            }
            return View(nYSEDailyPriceA);
        }

        // POST: NYSEDailyPriceAs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "exchange,stock_symbol,date,stock_price_open,stock_price_high,stock_price_low,stock_price_close,stock_volume,stock_price_adj_close,id")] NYSEDailyPriceA nYSEDailyPriceA)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nYSEDailyPriceA).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nYSEDailyPriceA);
        }

        // GET: NYSEDailyPriceAs/Delete/5
        public ActionResult Delete(int id)
        {
            if (id <=0)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NYSEDailyPriceA nYSEDailyPriceA = db.NYSEDailyPriceAs.Find(id);
            if (nYSEDailyPriceA == null)
            {
                return HttpNotFound();
            }
            return View(nYSEDailyPriceA);
        }

        // POST: NYSEDailyPriceAs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            NYSEDailyPriceA nYSEDailyPriceA = db.NYSEDailyPriceAs.Find(id);
            db.NYSEDailyPriceAs.Remove(nYSEDailyPriceA);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
