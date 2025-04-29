<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursales.aspx.cs" Inherits="TP5_GRUPO_17.EliminarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <nav>
        <p style="margin-left: 160px">
        <a href="./AgregarSucursal.aspx">Agregar Sucursal </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="./ListadoSucursales.aspx">Listado de Sucursales</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="./EliminarSucursales.aspx">Eliminar Sucursal</a>
        </p>
    <h1 style="margin-left: 80px">Trabajo Práctico N°5 - Grupo 17&nbsp;&nbsp;&nbsp; </h1>
    </nav>
        </div>
        <div>
            <h2>Eliminar sucursal</h2>
        </div>
        <div>
            Ingresar ID  sucursal:
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSucursalAEliminar" runat="server" Width="240px"></asp:TextBox>
        </div>
    </form>
</body>
</html>
