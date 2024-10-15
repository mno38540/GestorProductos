<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productos.aspx.cs" Inherits="GestorProductos.Forms.productos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Productos</title>
</head>
<body>

    <nav class="navbar navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="https://images.vexels.com/media/users/3/138225/isolated/preview/ccae03070531014e6e972cb68bd512e7-icono-de-transporte-de-logistica-de-envio.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
      LOGISTICK
    </a>
  </div>
</nav>





    <form id="form1" runat="server" style="margin: auto 8rem 8rem 8rem">
        <div>
            <br />
            <div class="col-md-6">
                <label runat="server" id="label1" class="form-label">Codigo : </label>
                <input runat="server" type="text" class="form-control" id="input1" placeholder="Ingrese Codigo"/>
            </div>
            <br />
            <div class="col-md-6">
                <label runat="server" id="label2" class="form-label">Nombre: </label>
                <input runat="server" type="text" class="form-control" id="input2" placeholder="Ingrese Nombre"/>
            </div>
            <br />
            <div class="col-md-6">
                <label runat="server" id="label3" class="form-label"> Descripcion : </label>
                <input runat="server" type="text" class="form-control" id="input3" placeholder="Descripcion del producto"/>
            </div>
            <br />
            <div class="col-md-6">
                <label runat="server" id="label4" class="form-label">Costo: </label>
                <input runat="server" type="text" class="form-control" id="input4" placeholder="Ingrese El valor de costo"/>
            </div>
            <br />
            <div class="col-md-6">
                <label runat="server" id="label5" class="form-label">Precio: </label>
                <input runat="server" type="text" class="form-control" id="input5" placeholder="Ingrese El precio de venta"/>
            </div>
            <br />
            <div class="col-md-6">
                <label runat="server" id="label6" class="form-label">Margen </label>
               <!-- <input runat="server" type="number" class="form-control" id="input6"/> -->
                <br />
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
            </div>
            
            <br />
            <div class="col-md-4">
                <label id="label7" for="inputState" class="form-label">Proveedor</label>
                <select id="input7" runat="server" class="form-select" type="text">
                    <option value="">--Selecciona una Opcion--</option>
                    <option value="Servientrega">Servientrega</option>
                    <option value="Envia">Envia</option>
                    <option value="Coordinadora">Coordinadora</option>
                    <option value="Domina">Domina</option>
                </select>
            </div>
            <br />
            <asp:Label ID="Label8" runat="server" Text=" "></asp:Label>
            
            <br />
            

<!-- CREACION DE MODAL PARA LA CREACION DEL REGISTRO    -->

<!-- Button trigger modal -->
            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#crear">
              Crear
            </button>

<!-- Modal -->
            <div class="modal fade" id="crear" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Validación</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                  </div>
                  <div class="modal-body">

                    Seguro que desea Crear este producto?
                  <asp:Label ID="Label9" runat="server" Text=" "></asp:Label>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <asp:Button class="btn btn-success" OnClick="button_click1" Text=" Guardar "  runat="server"/>
                  </div>
                </div>
              </div>
            </div>



            &nbsp;&nbsp;
            <asp:Button CssClass="btn btn-primary" OnClick="button_click2" Text="BUSCAR" runat="server" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button CssClass="btn btn-warning" OnClick="button_click3" Text="EDITAR" runat="server" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button CssClass="btn btn-danger" OnClick="button_click4" Text="ELIMINAR" runat="server" />
        </div>
    </form>
</body>
</html>
