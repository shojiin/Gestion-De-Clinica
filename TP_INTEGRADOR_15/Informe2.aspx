<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Informe2.aspx.cs" Inherits="TP_INTEGRADOR_15.Informe2" %>

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
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            font-size:24px;
        }
        .auto-style5 {
            width: 235px;
        }
        .auto-style6 {
            height: 23px;
            width: 112px;
        }
        .auto-style7 {
            width: 112px;
        }
        .auto-style8 {
            width: 235px;
            height: 23px;
        }
        .auto-style9 {
            width: 235px;
            height: 24px;
        }
        .auto-style10 {
            width: 112px;
            height: 24px;
        }
        .auto-style11 {
            height: 24px;
        }
        .auto-style12 {
            width: 235px;
            height: 30px;
        }
        .auto-style13 {
            width: 112px;
            height: 30px;
        }
        .auto-style14 {
            height: 30px;
        }
        .auto-style15 {
            height: 21px;
            font-size: 24px;
        }
        .auto-style16 {
            height: 21px;
            width: 112px;
        }
        .auto-style17 {
            height: 21px;
        }
        .auto-style18 {
            width: 235px;
            height: 173px;
        }
        .auto-style19 {
            width: 112px;
            height: 173px;
        }
        .auto-style20 {
            height: 173px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2">Usuario:&nbsp;
                        <asp:Label ID="lbl_Usuario" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong>Presencia: </strong></td>
                    <td class="auto-style16">
                        </td>
                    <td class="auto-style17">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Login.aspx">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>&nbsp;</strong></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Seleccione un dia:</strong></td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="77px" Width="175px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                    <td>
                        <asp:Button ID="btn_Presente" runat="server" OnClick="btn_Presente_Click" Text="Aceptar" />
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style9">Presentes:
                        <asp:Label ID="lbl1" runat="server"></asp:Label>
                        </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style8">Ausentes:
                        <asp:Label ID="lbl2" runat="server"></asp:Label>
                        </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style8">Listado de Personas:</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:GridView ID="gvConsultas" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:TemplateField HeaderText="Nombre">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Nombre" runat="server" Text='<%# Bind("Nombre_Paciente") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Apellido">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Apellido" runat="server" Text='<%# Bind("Apellido_Paciente") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Legajo">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Legajo" runat="server" Text='<%# Bind("LegajoMedico_Cons") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Presencia">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Presencia" runat="server" Text='<%# (Convert.ToBoolean(Eval("PresenciaPaciente")) ? "Presente" : "Ausente") %>'></asp:Label>
                                        
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
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lbl_Mensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
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
