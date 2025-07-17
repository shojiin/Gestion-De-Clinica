<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarPaciente.aspx.cs" Inherits="TP_INTEGRADOR_15.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 10px;
            height: 23px;
        }
        .auto-style18 {
            height: 23px;
            width: 215px;
        }
        .auto-style10 {
            height: 23px;
            width: 150px;
        }
        .auto-style13 {
            height: 23px;
            width: 75px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 10px;
            height: 26px;
        }
        .auto-style19 {
            height: 26px;
            width: 215px;
        }
        .auto-style11 {
            height: 26px;
            width: 150px;
        }
        .auto-style14 {
            height: 26px;
            width: 75px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style2 {
        }
        .auto-style12 {
            width: 150px;
        }
        .auto-style15 {
            width: 75px;
        }
        .auto-style20 {
            height: 25px;
        }
        .auto-style21 {
            height: 25px;
            width: 150px;
        }
        .auto-style22 {
            height: 25px;
            width: 75px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style18">Usuario:&nbsp;
                        <asp:Label ID="LBL_UserName" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13"></td>
                    <td class="auto-style6">
                        <asp:HyperLink ID="HL_Volver" runat="server" NavigateUrl="~/Login.aspx">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RFV_IngresoObligatorio" runat="server" ControlToValidate="TB_UserName" ForeColor="#CC0000" ValidationGroup="Group1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style14"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style9">Buscar Paciente por Nombre:</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TB_UserName" runat="server" Width="180px" ValidationGroup="Group1"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:Button ID="BTN_Send" runat="server" Text="Buscar" OnClick="BTN_Send_Click" ValidationGroup="Group1" />
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="BTN_MostrarOriginal" runat="server" OnClick="BTN_MostrarOriginal_Click" Text="Mostrar Todos los Pacientes" />
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="8">
                        <asp:GridView ID="GV_Pacientes" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" style="margin-top: 0px" AllowPaging="True" OnPageIndexChanging="GV_Pacientes_PageIndexChanging" OnRowCancelingEdit="GV_Pacientes_RowCancelingEdit" OnRowEditing="GV_Pacientes_RowEditing" OnRowUpdating="GV_Pacientes_RowUpdating" PageSize="8" OnRowDataBound="GV_Pacientes_RowDataBound">
                            <Columns>
                                <asp:TemplateField HeaderText="DNI">
                                    <EditItemTemplate>
                                        <asp:Label ID="LBL_EIT_DNI" runat="server" Text='<%# Bind("DNI_Paciente") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LBL_IT_DNI" runat="server" Text='<%# Bind("DNI_Paciente") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nombre">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TB_EIT_Nombre" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LBL_IT_Nombre" runat="server" Text='<%# Bind("Nombre_Paciente") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Apellido">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TB_EIT_Apellido" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LBL_IT_Apellido" runat="server" Text='<%# Bind("Apellido_Paciente") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Sexo">
                                    <EditItemTemplate>
                                        <asp:Label ID="LBL_EIT_Sexo" runat="server" Text='<%# Bind("Sexo_Paciente") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LBL_IT_Sexo" runat="server" Text='<%# Bind("Sexo_Paciente") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Fecha de Nacimiento">
                                    <EditItemTemplate>
                                        <asp:Label ID="LBL_EIT_FechaNacimiento" runat="server" Text='<%# Bind("FechaNacimiento_Paciente") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LBL_IT_FDN" runat="server" Text='<%# Bind("FechaNacimiento_Paciente") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Correo">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TB_EIT_Correo" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LBL_IT_Correo" runat="server" Text='<%# Bind("Correo_Paciente") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Teléfono">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TB_EIT_Telefono" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LBL_IT_Tel" runat="server" Text='<%# Bind("Telefono_Paciente") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Direccion">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TB_EIT_Direccion" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LBL_IT_Direccion" runat="server" Text='<%# Bind("Direccion_Paciente") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Ciudad">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DDL_EIT_Ciudad" runat="server">
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LBL_IT_Ciudad" runat="server" Text='<%# Bind("Desc_Ciudad") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Provincia">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DDL_EIT_Provincia" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDL_EIT_Provincia_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LBL_IT_Provincia" runat="server" Text='<%# Bind("Desc_Provincia") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nacionalidad">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TB_EIT_Nacionalidad" runat="server"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LBL_Nacionalidad" runat="server" Text='<%# Bind("Nacionalidad_Paciente") %>'></asp:Label>
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
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
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
