<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarMedico.aspx.cs" Inherits="TP_INTEGRADOR_15.WebForm2" %>

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
            width: 80px;
        }
        .auto-style4 {
            width: 117px;
        }
        .auto-style5 {
            width: 80px;
            margin-left: 40px;
            height: 30px;
        }
        .auto-style6 {
            width: 80px;
            height: 30px;
        }
        .auto-style8 {
            width: 117px;
            height: 30px;
        }
        .auto-style9 {
            width: 640px;
        }
        .auto-style10 {
            width: 640px;
            height: 30px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario: "></asp:Label>
                        &nbsp;<asp:Label ID="lblNombreUsuario" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Login.aspx">Volver</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblModificarMedico" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Modificar Medico"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblFiltrar" runat="server" Font-Size="Large" Text="Filtrar por legajo:"></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="txtFiltrado" runat="server" Width="248px"></asp:TextBox>
                    &nbsp;
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" Width="84px" OnClick="btnFiltrar_Click" ValidationGroup="grupo1" />
                    &nbsp;&nbsp;
                        <asp:Button ID="btnReiniciar" runat="server" OnClick="btnReiniciar_Click" Text="Reiniciar tabla" ValidationGroup="grupo2" />
                    </td>
                    <td class="auto-style8">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="rfvLegajoVacio" runat="server" ControlToValidate="txtFiltrado" ValidationGroup="grupo1">Ingrese un legajo</asp:RequiredFieldValidator>
                    &nbsp;
                        <asp:Label ID="lblLegajoInexistente" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:GridView ID="gvMedico" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowUpdating="gvMedico_RowUpdating" OnSelectedIndexChanged="gvMedico_SelectedIndexChanged">
                            <Columns>
                                <asp:TemplateField HeaderText="Legajo">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_Eit_Legajo" runat="server" Text='<%# Bind("Legajo_Medico") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Legajo" runat="server" Text='<%# Bind("Legajo_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DNI">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_Eit_DNI" runat="server" Text='<%# Bind("DNI_Medico") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_DNI" runat="server" Text='<%# Bind("DNI_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Medico">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtNombre" runat="server" Height="16px" Text='<%# Bind("Nombre_Medico") %>' Width="90px"></asp:TextBox>
                                        &nbsp;
                                        <asp:TextBox ID="txtApellido" runat="server" Height="16px" Text='<%# Bind("Apellido_Medico") %>' Width="91px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre">Falta nombre</asp:RequiredFieldValidator>
                                        &nbsp;<asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido">Falta apellido</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Nombre" runat="server" Text='<%# Bind("Nombre_Medico") %>'></asp:Label>
                                        &nbsp;<asp:Label ID="lbl_It_Apellido" runat="server" Text='<%# Bind("Apellido_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Especialidad">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtEspecialidad" runat="server" Text='<%# Bind("CodEspecialidad_Medico") %>' Width="100px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfvEspecialidad" runat="server" ControlToValidate="txtEspecialidad">Falta especialidad</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Especialidad" runat="server" Text='<%# Bind("CodEspecialidad_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Correo">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtCorreo" runat="server" Height="20px" Text='<%# Bind("Correo_Medico") %>' Width="200px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo">Falta correo</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Correo" runat="server" Text='<%# Bind("Correo_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Telefono">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtTelefono" runat="server" Height="18px" Text='<%# Bind("Telefono_Medico") %>' Width="100px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono">Falta Telefono</asp:RequiredFieldValidator>
                                        &nbsp;<asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono" ValidationExpression="^[\d\W+]+$">Sin letras</asp:RegularExpressionValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Telefono" runat="server" Text='<%# Bind("Telefono_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Sexo">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtSexo" runat="server" Height="19px" Text='<%# Bind("Sexo_Medico") %>' Width="100px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="txtSexo">Falta Sexo</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Sexo" runat="server" Text='<%# Bind("Sexo_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nacimiento">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_Eit_Nacimiento" runat="server" Text='<%# Bind("FechaNacimiento_Medico") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Nacimiento" runat="server" Text='<%# Bind("FechaNacimiento_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nacionalidad">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtNacionalidad" runat="server" Height="18px" Text='<%# Bind("Nacionalidad_Medico") %>' Width="100px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="txtNacionalidad">Falta Nacionalidad</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Nacionalidad" runat="server" Text='<%# Bind("Nacionalidad_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Provincia">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtProvincia" runat="server" Height="19px" Text='<%# Bind("Provincia_Medico") %>' Width="101px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="txtProvincia">Falta Provincia</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Provincia" runat="server" Text='<%# Bind("Provincia_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Ciudad">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtCiudad" runat="server" Height="19px" Text='<%# Bind("Ciudad_Medico") %>' Width="100px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfvCiudad" runat="server" ControlToValidate="txtCiudad">Falta Ciudad</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Ciudad" runat="server" Text='<%# Bind("Ciudad_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Direccion">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtDireccion" runat="server" Height="20px" Text='<%# Bind("Direccion_Medico") %>' Width="200px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion">Falta Direccion</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_Direccion" runat="server" Text='<%# Bind("Direccion_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Dias de atencion">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtDiasAtencion" runat="server" Height="20px" Text='<%# Bind("DiasAtencion_Medico") %>' Width="140px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfvDiasAtencion" runat="server" ControlToValidate="txtDiasAtencion">Faltan los dias</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_It_DiasAtencion" runat="server" Text='<%# Bind("DiasAtencion_Medico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Jornada">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtHoraInicio" runat="server" Height="20px" Text='<%# Bind("HorarioInicio_Medico") %>' Width="90px"></asp:TextBox>
                                        &nbsp;-
                                        <asp:TextBox ID="txtHoraFin" runat="server" Height="20px" Text='<%# Bind("HorarioFin_Medico") %>' Width="90px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfvHoraInicio" runat="server" ControlToValidate="txtHoraInicio">Falta hora inicio</asp:RequiredFieldValidator>
                                        &nbsp;<asp:RequiredFieldValidator ID="rfvHoraFin" runat="server" ControlToValidate="txtHoraFin">Falta hora fin</asp:RequiredFieldValidator>
&nbsp;<br />
                                        <asp:RegularExpressionValidator ID="revHoraInicio" runat="server" ControlToValidate="txtHoraInicio" ValidationExpression="^\d{2}:\d{2}:\d{2}$">Sin letras</asp:RegularExpressionValidator>
                                        &nbsp;<asp:RegularExpressionValidator ID="revHoraFin" runat="server" ControlToValidate="txtHoraFin" ValidationExpression="^\d{2}:\d{2}:\d{2}$">Sin letras</asp:RegularExpressionValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        desde
                                        <asp:Label ID="lbl_It_HoraInic" runat="server" Text='<%# Bind("HorarioInicio_Medico") %>'></asp:Label>
                                        &nbsp;hasta las
                                        <asp:Label ID="lbl_It_HoraFin" runat="server" Text='<%# Bind("HorarioFin_Medico") %>'></asp:Label>
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
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
