using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TMusicWeb;
using TMusicWeb.Clases;

namespace TMusicTests
{
    [TestClass]
    public class BusquedaAvisosIdTest
    {
        [TestMethod]
        public void TestMethod1()
        {
            //Arrange
            int a = 1;
            AVISO d = new AVISO();
            USUARIO_BANDA B = new USUARIO_BANDA();

            //ACT
            var result = AvisoController.buscarAvisoId(a);

            //ASSERT

            Assert.AreEqual(d.GetType(),result.GetType());


        }
    }
}
