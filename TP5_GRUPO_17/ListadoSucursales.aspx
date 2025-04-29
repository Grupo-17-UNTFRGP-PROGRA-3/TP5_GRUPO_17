<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="TP5_GRUPO_17.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 311px;
        }
        .auto-style3 {
            width: 203px;
        }
        .auto-style4 {
            width: 88px;
        }
        .auto-style5 {
            width: 178px;
        }
    </style>
</head>
<body style="height: 402px">
    <form id="form1" runat="server">
        <div>
    <nav>
        <p style="margin-left: 160px">
        <a href="./AgregarSucursal.aspx">Agregar Sucursal </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
        <a href="./ListadoSucursales.aspx">Listado de Sucursales</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <a href="./EliminarSucursales.aspx">Eliminar Sucursal</a>
    <h1 style="margin-left: 80px">Trabajo Práctico N°5 - Grupo 17&nbsp;&nbsp;&nbsp; </h1>
    </nav>
        </p>
        </div>
        <div style="margin-left: 80px">
            <h2 style="height: 27px">Listado de Sucursales</h2>
        <table>

        </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Búsqueda ingrese Id Sucursal</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtIdSucursal" runat="server" Width="185px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
