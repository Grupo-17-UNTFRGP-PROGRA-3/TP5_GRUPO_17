<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursales.aspx.cs" Inherits="TP5_GRUPO_17.EliminarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1229px;
        }
        .auto-style6 {
        }
        .auto-style7 {
            width: 176px;
        }
        .auto-style13 {
            width: 175px;
        }
    </style>
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
            <h2 style="margin-left: 80px;">Eliminar sucursal</h2>
        </div>
        <div>

            <table class="auto-style1" style="margin-left: 80px;">
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="lblSucursalAEliminar" runat="server" Text="Ingresar ID sucursal:"></asp:Label>
                    </td>
                    <td class="auto-style13">
            <asp:TextBox ID="txtSucursalAEliminar" runat="server" Width="240px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:Button ID="btnEliminarSucursal" runat="server" OnClick="btnEliminarSucursal_Click" Text="Eliminar" />
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:RegularExpressionValidator ID="revId" runat="server" ControlToValidate="txtSucursalAEliminar" ErrorMessage="Ingrese solo números enteros" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
