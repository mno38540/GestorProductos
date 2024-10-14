using GestorProductos.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace GestorProductos.Forms
{
    public partial class productos : System.Web.UI.Page
    {
        ShopEntities db = new ShopEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void button_click1(object sender, EventArgs e)
        {
            Producto NewPro = new Producto();
           // decimal m = (decimal)(((NewPro.precio - NewPro.costo) / NewPro.precio) * 100);
            NewPro.codigo = input1.Value;
            NewPro.nombre = input1.Value;
            NewPro.descripcion = input3.Value ;
            NewPro.costo = decimal.Parse(input4.Value);
            NewPro.precio = decimal.Parse(input5.Value) ;
            NewPro.margen = decimal.Parse(input6.Value);
            NewPro.proveedor =  input7.Value;

            db.Producto.Add(NewPro);
            db.SaveChanges();

        }

        protected void button_click2(object sender, EventArgs e)
        {
            
        }

        protected void button_click3(object sender, EventArgs e)
        {

        }
        protected void button_click4(object sender, EventArgs e)
        {

        }
    }
}