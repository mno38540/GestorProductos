﻿using GestorProductos.Model;
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
            GridView1.DataSource = db.Producto.ToList();
            GridView1.DataBind();
        }
        protected void button_click1(object sender, EventArgs e)
        {
            try
            {
            Producto NewPro = new Producto();
                
                Producto n = db.Producto.Find(input1.Value);
                if (n != null) 
                {
                    throw new Exception(" El Codigo ya existe ");
                }
                if (string.IsNullOrWhiteSpace(input1.Value))
                {
                    throw new Exception("El codigo debe ser diligenciado como alfa numerico");
                }
                if (string.IsNullOrWhiteSpace(input2.Value))
                {
                    throw new Exception("El Nombre no puede estar en blanco");
                }
                if (!decimal.TryParse(input4.Value , out decimal costo) || costo == 0 )
                {
                    throw new Exception("El Costo no puede ser letras o cero");
                }
                if (!decimal.TryParse(input5.Value, out decimal precio) || precio == 0)
                {
                    throw new Exception("El precio no puede ser letras o cero ");
                }
                NewPro.costo = decimal.Parse(input4.Value);
                NewPro.precio = decimal.Parse(input5.Value);
                if (NewPro.precio <= NewPro.costo)
                {
                    throw new Exception("El precio no puede ser menor al costo");
                }
                if (string.IsNullOrWhiteSpace(input7.Value) || input7.Value == "--Selecciona una Opcion--")
                {
                    throw new Exception("El Proveedor debe ser valido ");
                }
                NewPro.codigo = input1.Value.ToUpper();
                NewPro.nombre = input2.Value;
                NewPro.descripcion = input3.Value;
                NewPro.proveedor = input7.Value;
                NewPro.margen = (decimal)(((NewPro.precio - NewPro.costo) / NewPro.precio) * 100);
                decimal m = Math.Round((decimal) NewPro.margen, 2);
                TextBox1.Text = m.ToString() + " %";

                db.Producto.Add(NewPro);
                db.SaveChanges();
                Label9.Text = "Registro exitoso";
                modalEjecucion.Text = "<script type='text/javascript'>modalExito();</script>";


                input1.Value = "";
                input2.Value = "";
                input3.Value = "";
                input4.Value = "";
                input5.Value = "";
                TextBox1.Text = "";
                input7.Value = "";
            }
            catch (Exception x)
            {
                modalEjecucion.Text = "<script type='text/javascript'>modalFallo();</script>";
                Label10.Text = x.Message;
            }

        }

        protected void button_click2(object sender, EventArgs e)
        {
            Producto bus = db.Producto.Find(input1.Value);
            if(bus != null) 
            {
                input2.Value = bus.nombre;
                input3.Value = bus.descripcion;
                input4.Value = bus.costo.ToString();
                input5.Value = bus.precio.ToString();
                TextBox1.Text = bus.margen.ToString();
                input7.Value = bus.proveedor;
                Label9.Text = "Registro encontrado ";
                modalEjecucion.Text = "<script type='text/javascript'>modalExito();</script>";
            }
            else 
            {
                input1.Value = "";
                input2.Value = "";
                input3.Value = "";
                input4.Value = "";
                input5.Value = "";
                TextBox1.Text = "";
                input7.Value = "";
                modalEjecucion.Text = "<script type='text/javascript'>modalFallo();</script>";
                Label10.Text = " Registro no encontrado valide el codigo";
            }
        }

        protected void button_click3(object sender, EventArgs e)
        {
            try
            {
                Producto NewPro = db.Producto.Find(input1.Value);
                if (NewPro != null)
                {
                    
                    if (string.IsNullOrWhiteSpace(input2.Value))
                    {
                        throw new Exception("El Nombre no puede estar en blanco");
                    }
                    if (!decimal.TryParse(input4.Value, out decimal costo) || costo == 0)
                    {
                        throw new Exception("El Costo no puede ser letras o cero");
                    }
                    if (!decimal.TryParse(input5.Value, out decimal precio) || costo == 0)
                    {
                        throw new Exception("El precio no puede ser letras o cero ");
                    }
                    NewPro.costo = decimal.Parse(input4.Value);
                    NewPro.precio = decimal.Parse(input5.Value);
                    if (NewPro.precio <= NewPro.costo)
                    {
                        throw new Exception("El precio no puede ser menor al costo");
                    }
                    if (string.IsNullOrWhiteSpace(input7.Value) || input7.Value == "--Selecciona una Opcion--")
                    {
                        throw new Exception("El Proveedor debe ser valido ");
                    }
                NewPro.nombre = input2.Value;
                NewPro.descripcion = input3.Value;
                NewPro.proveedor = input7.Value;
                
                    NewPro.margen = (decimal)(((NewPro.precio - NewPro.costo) / NewPro.precio) * 100);
                    decimal m = Math.Round((decimal)NewPro.margen, 2);
                db.Entry(NewPro).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                    Label9.Text = "Registro Actualizado con exito";
                    modalEjecucion.Text = "<script type='text/javascript'>modalExito();</script>";

                input1.Value = "";
                input2.Value = "";
                input3.Value = "";
                input4.Value = "";
                input5.Value = "";
                TextBox1.Text = "";
                input7.Value = "";
                }
            }
            catch (Exception x)
            {
                modalEjecucion.Text = "<script type='text/javascript'>modalFallo();</script>";
                Label10.Text = x.Message;
            }
        }
        protected void button_click4(object sender, EventArgs e)
        {
            Producto pro = db.Producto.Find(input1.Value);

        if(pro != null)
            {
                db.Producto.Remove(pro);
                db.SaveChanges();
                modalEjecucion.Text = "<script type='text/javascript'>modalExito();</script>";
                Label9.Text = "Producto eliminado con exito";

                input1.Value = "";
                input2.Value = "";
                input3.Value = "";
                input4.Value = "";
                input5.Value = "";
                TextBox1.Text = "";
                input7.Value = "";
            }
            else
            {
                modalEjecucion.Text = "<script type='text/javascript'>modalFallo();</script>";
                Label8.Text = "no se pudo eliminar";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}