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
        .auto-style3 {
            width: 203px;
        }
        .auto-style4 {
        }
        .auto-style6 {
            width: 204px;
        }
        .auto-style7 {
            width: 170px;
        }
        .auto-style8 {
            width: 73px;
        }
        .auto-style9 {
            width: 18px;
        }
    </style>
</head>
<body style="height: 559px">
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
                    <td class="auto-style6">Búsqueda ingrese Id Sucursal</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtIdSucursal" runat="server" Width="185px" style="margin-left: 12px" ValidationGroup="G2" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" ValidationGroup="G2" Width="49px" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" OnClick="btnMostrarTodos_Click" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Horario de la sucursal:</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblHorario" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="rfvIdSucursal" runat="server" ControlToValidate="txtIdSucursal" ErrorMessage="Debe ingresar un Id de sucursal para filtrar" ValidationGroup="G2"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                </table>
            <div>

                        <asp:GridView ID="gvSucursales" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>

            </div>
        </div>

    </form>
</body>
</html>
