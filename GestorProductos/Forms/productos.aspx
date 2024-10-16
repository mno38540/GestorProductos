<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productos.aspx.cs" Inherits="GestorProductos.Forms.productos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
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
              
                <br />
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" ReadOnly ></asp:TextBox>
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
           
               <!--  <div class="alert alert-success d-flex align-items-center" role="alert">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
                    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                   </svg>
                   <div> 
                         <asp:Label ID="Label8" runat="server" Text=" "></asp:Label>
                   </div>
                </div> -->
                                    
            <br />
            

<!-- CREACION DE MODAL PARA LA CREACION DEL REGISTRO    -->


            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#crear">Crear</button>

  <div class="modal fade" id="crear" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalToggleLabel">VALIDACIÓN</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Seguro que desea Cear el producto
      </div>
      <div class="modal-footer">
        <asp:Button class="btn btn-success"   OnClick="button_click1" Text=" Guardar "  runat="server"/>
      </div>
    </div>
  </div>
</div>
            <!-- ESTE MODAL SE RECARGA CON LA RESPUESTA DEL SERVIDOR-->

<div class="modal fade" id="exitoso" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="resgood">EJECUCION</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
         
                <div class="alert alert-success d-flex align-items-center" role="alert">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
                <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                  </svg>
                  <div>
                     <asp:Label ID="Label9" runat="server" Text=" "></asp:Label>
                  </div>
               </div>
      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

                        <!-- ESTE MODAL SE RECARGA CON LA RESPUESTA DEL SERVIDOR CON ERROR-->

        <div class="modal fade" id="error" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="resbadlabel">EJECUCION</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
                <div class="alert alert-danger d-flex align-items-center" role="alert">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
                <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                  </svg>
                  <div>
                     <asp:Label ID="Label10" runat="server" Text=" "></asp:Label>
                  </div>
               </div>
           
      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>
            

                <!-- SCRIPT PARA VEREL MODAL -->
        <script type="text/javascript">
        function modalExito() {
            var modal = new bootstrap.Modal(document.getElementById('exitoso'));
            modal.show();
        }
        function modalFallo() {
            var modal = new bootstrap.Modal(document.getElementById('error'));
            modal.show();
            }
        </script>

        

            &nbsp;&nbsp;
            <asp:Button CssClass="btn btn-primary" OnClick="button_click2" Text="BUSCAR" runat="server" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button CssClass="btn btn-warning" OnClick="button_click3" Text="EDITAR" runat="server" />
            &nbsp;&nbsp;&nbsp;

            <!-- CREACION DE MODAL PARA ELIMINAR REGISTROS     -->

                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#eliminar">
              ELIMINAR
            </button>
            <div class="modal fade" id="eliminar" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="eliminarlabel">ADVERTENCIA</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    Seguro que desea eliminar el producto?.....
                  </div>
                  <div class="modal-footer">
                        <asp:Button CssClass="btn btn-danger" OnClick="button_click4" Text="ELIMINAR" runat="server" />
                  </div>
                </div>
              </div>
            </div>

            
&nbsp;<!-- CREACION DE MODAL PARA VER REGISTROS    -->
            <button type="button" class="btn btn-secondary"  data-bs-toggle="modal" data-bs-target="#ver">Ver Registros</button>


            <div class="modal fade " id="ver" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="tabla">Registros en la tabla Productos</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                  </div>
                  <div class="modal-body">

                    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    </asp:GridView>
                  
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                  </div>
                </div>
              </div>
            </div>
            <br />
        </div>
        <asp:Literal ID="modalEjecucion" runat="server"> </asp:Literal>
    </form>
</body>
</html>
