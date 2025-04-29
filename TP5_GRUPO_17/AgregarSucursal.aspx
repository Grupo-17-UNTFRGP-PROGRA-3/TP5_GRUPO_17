<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_GRUPO_17.AgregarSucursal" %>

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
            width: 174px;
        }
        .auto-style7 {
            width: 264px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 174px;
            height: 23px;
        }
        .auto-style8 {
            width: 264px;
            height: 23px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 174px;
            height: 26px;
        }
        .auto-style9 {
            width: 264px;
            height: 26px;
        }
        
        .auto-style10 {
            width: 75px;
        }
        .auto-style11 {
            height: 26px;
            width: 75px;
        }
        .auto-style12 {
            height: 23px;
            width: 75px;
        }
        
        .auto-style13 {
            width: 290px;
        }
        .auto-style14 {
            height: 26px;
            width: 290px;
        }
        .auto-style15 {
            height: 23px;
            width: 290px;
        }
        
    </style>
</head>
<body>
    <nav>
        <p style="margin-left: 160px">
        <a href="./AgregarSucursal.aspx">Agregar Sucursal </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="./ListadoSucursales.aspx">Listado de Sucursales</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="./EliminarSucursales.aspx">Eliminar Sucursal</a>
        </p>
    <h1 style="margin-left: 80px">&nbsp;&nbsp; Trabajo Práctico N°5 - Grupo 17 </h1>
    </nav>
    <form id="form1" runat="server">
    <h2 style=" margin-left: 80px; width: 834px; height: 32px"><b>Agregar Sucursal</b></h2>
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2">Nombre Sucursal:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtNombreSucursal" runat="server" Width="230px" ValidationGroup="G1"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal" Display="Dynamic" ErrorMessage="Debe ingresar un nombre de sucursal" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style6">Descripción:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtDescripcion" runat="server" Width="230px" Height="48px" ValidationGroup="G1"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" Display="Dynamic" ErrorMessage="Debe ingresar una descripción" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2">Provincia:</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlProvincia" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" Display="Dynamic" ErrorMessage="Debe seleccionar una provincia" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style4">Dirección</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtDireccion" runat="server" Width="230px" ValidationGroup="G1"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" Display="Dynamic" ErrorMessage="Debe ingresar una dirección" ValidationGroup="G1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style6"></td>
                <td class="auto-style9">
                    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" ValidationGroup="G1" OnClick="btnAceptar_Click" />
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td>&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="lblMensajeExito" runat="server"></asp:Label>
                </td>
                <td class="auto-style13"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
        <div>
        </div>
    </form>
</body>
</html>
