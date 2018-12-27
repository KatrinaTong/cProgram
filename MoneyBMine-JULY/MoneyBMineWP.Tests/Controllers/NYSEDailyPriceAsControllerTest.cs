using System;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MoneyBMineWP.Controllers;

namespace MoneyBMineWP.Tests.Controllers
{
    [TestClass]
    public class NYSEDailyPriceAsControllerTest
    {
            [TestMethod]
            public void Create()
            {
            // Arrange
            NYSEDailyPriceAsController controller = new NYSEDailyPriceAsController();

                // Act
                ViewResult result = controller.Create() as ViewResult;

                // Assert
                Assert.IsNotNull(result);
            }

    }
}
