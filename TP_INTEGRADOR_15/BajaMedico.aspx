<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaMedico.aspx.cs" Inherits="TP_INTEGRADOR_15.BajaMedico" %>

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
            width: 114px;
        }
        .auto-style3 {
            width: 205px;
        }
        .auto-style4 {
            width: 114px;
            height: 266px;
        }
        .auto-style5 {
            width: 205px;
            height: 266px;
        }
        .auto-style6 {
            height: 266px;
        }
        .auto-style7 {
            width: 114px;
            height: 30px;
        }
        .auto-style8 {
            width: 205px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style10 {
            width: 114px;
            height: 25px;
        }
        .auto-style11 {
            width: 205px;
            height: 25px;
        }
        .auto-style12 {
            height: 25px;
        }
        .auto-style13 {
            width: 205px;
            height: 8px;
        }
        .auto-style14 {
            height: 8px;
        }
        .auto-style15 {
            width: 114px;
            height: 23px;
        }
        .auto-style16 {
            width: 205px;
            height: 23px;
        }
        .auto-style17 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style15"><strong>Usuario</strong>:</td>
                    <td class="auto-style16"><asp:Label ID="lblNombreUsuario" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Login.aspx">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style13"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Baja Médico:</strong></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">Filtrar por Legajo:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtLegajo" runat="server" Width="319px"></asp:TextBox>
                    </td>
          
                    <td class="auto-style12">
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" ValidationGroup="Filtro" />
                    </td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                       
                         <asp:RequiredFieldValidator 
                             ID="rfvLegajo" 
                             runat="server" 
                             ErrorMessage="Debe ingresar un legajo"
                             ForeColor="Red"
                             Display="Dynamic" 
                             ValidationGroup="Filtro" 
                             ControlToValidate="txtLegajo">

                         </asp:RequiredFieldValidator>
                       
                         <br />
                        <asp:Label ID="lblResultado" runat="server"></asp:Label>
                       
                    </td>
                    <td>
                        <asp:Button ID="btnMostrarTodos" runat="server" OnClick="btnMostrarTodos_Click" Text="Mostrar Todos" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">
                                     <asp:GridView ID="gvMedico" runat="server" AutoGenerateColumns="False" DataKeyNames="Legajo_Medico" OnRowCommand="gvMedico_RowCommand" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" >
            <Columns>
                <asp:TemplateField HeaderText="Legajo">
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Legajo" runat="server" Text='<%# Bind("Legajo_Medico") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DNI">
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_DNI" runat="server" Text='<%# Bind("DNI_Medico") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nombre y Apellido">
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("Nombre_Medico") %>'></asp:Label>
                        <br />
                        <asp:Label ID="lbl_it_Apellido" runat="server" Text='<%# Bind("Apellido_Medico") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Correo">
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Correo" runat="server" Text='<%# Bind("Correo_Medico") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Teléfono">
                    <ItemTemplate>
                        <asp:Label ID="lbl_it_Telefono" runat="server" Text='<%# Bind("Telefono_Medico") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnBaja" runat="server" Text="Dar de baja" CommandName="DarDeBaja" CommandArgument='<%# Eval("Legajo_Medico") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
                                                     <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
