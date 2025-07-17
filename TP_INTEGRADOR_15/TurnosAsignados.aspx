<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TurnosAsignados.aspx.cs" Inherits="TP_INTEGRADOR_15.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style7 {
            width: 527px;
            height: 23px;
        }
        .auto-style8 {
            width: 146px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style3 {
            width: 527px;
        }
        .auto-style4 {
            width: 146px;
        }
        .auto-style10 {
            width: 261px;
            height: 23px;
        }
        .auto-style11 {
            width: 261px;
        }
        .auto-style12 {
            width: 261px;
            height: 137px;
        }
        .auto-style13 {
            width: 527px;
            height: 137px;
        }
        .auto-style14 {
            width: 146px;
            height: 137px;
        }
        .auto-style15 {
            height: 137px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                    &nbsp;<asp:Label ID="lblNombreUsuario" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Login.aspx">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblModificarMedico" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Turnos Asignados"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="lblFiltrar" runat="server" Font-Size="Large" Text="Filtrar por paciente:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtFiltrado" runat="server" Width="283px"></asp:TextBox>
                    &nbsp;
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" Width="91px" OnClick="btnFiltrar_Click" ValidationGroup="Grupo1" />
                    &nbsp;
                        <asp:Button ID="btnReiniciar" runat="server" OnClick="btnReiniciar_Click" Text="Reiniciar tabla" ValidationGroup="Grupo2" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="rfvPacienteVacio" runat="server" ControlToValidate="txtFiltrado" ValidationGroup="Grupo1">Ingrese un paciente</asp:RequiredFieldValidator>
                    &nbsp;
                        <asp:Label ID="lblPacienteInexistente" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13">
                        <asp:GridView ID="gvTurnos" runat="server" AutoGenerateColumns="False" Width="538px" Height="106px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                            <Columns>
                                <asp:TemplateField HeaderText="DNI Paciente">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Paciente" runat="server" Text='<%# Bind("DNIPaciente_Turnos") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Turno">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Turno" runat="server" Text='<%# Bind("Cod_Turno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Especialidad">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Especialidad" runat="server" Text='<%# Bind("CodEspecialidad_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Legajo Medico">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Medico" runat="server" Text='<%# Bind("LegajoMedico_Turnos") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Dia">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Dia" runat="server" Text='<%# Convert.ToDateTime(Eval("Dia_Turnos")).ToString("dd/MM/yyyy") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Horario">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Horario" runat="server" Text='<%# Bind("Horarios_Turnos") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
