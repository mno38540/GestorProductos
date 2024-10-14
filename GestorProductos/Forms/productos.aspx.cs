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
x
        }
        protected void button_click1(object sender, EventArgs e)
        {
            try
            {
            Producto NewPro = new Producto();
            NewPro.codigo = input1.Value;
            NewPro.nombre = input1.Value;
            NewPro.descripcion = input3.Value ;
            NewPro.costo = decimal.Parse(input4.Value);
            NewPro.precio = decimal.Parse(input5.Value) ;
            NewPro.proveedor =  input7.Value;
            if (NewPro.precio != 0 & NewPro.costo != 0)
            {
                NewPro.margen = (decimal)(((NewPro.precio - NewPro.costo) / NewPro.precio) * 100);
                decimal m = Math.Round((decimal) NewPro.margen, 2);
                input6.Value = m.ToString() + " %";
                db.Producto.Add(NewPro);
                db.SaveChanges();
                Label8.Text = "Registro exitoso";
            }
            else
            {
                NewPro.margen = 0;
                input6.Value = " ";
            }
            }
            catch (Exception x)
            {
                Label8.Text = x.Message;
            }

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