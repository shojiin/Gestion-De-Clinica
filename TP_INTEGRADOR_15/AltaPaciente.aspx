<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaPaciente.aspx.cs" Inherits="TP_INTEGRADOR_15.AltaPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1325px;
            height: 521px;
        }
        .auto-style3 {
        }
        .auto-style5 {
            width: 81px;
            height: 36px;
        }
        .auto-style16 {
            height: 36px;
            width: 82px;
        }
        .auto-style17 {
            width: 81px;
        }
        .auto-style18 {
            width: 82px;
        }
        .auto-style19 {
            width: 116px;
            height: 36px;
        }
        .auto-style20 {
        }
        .auto-style21 {
            width: 227px;
            height: 36px;
        }
        .auto-style22 {
            width: 227px;
        }
        .auto-style23 {
            width: 100px;
            height: 36px;
        }
        .auto-style24 {
            width: 100px;
        }
        .auto-style25 {
            width: 443px;
            height: 36px;
        }
        .auto-style26 {
            width: 443px;
        }
        .auto-style27 {
            height: 36px;
            width: 660px;
        }
        .auto-style28 {
            width: 660px;
        }
        .auto-style29 {
            height: 36px;
            width: 606px;
        }
        .auto-style30 {
            width: 606px;
        }
        .auto-style31 {
            width: 81px;
            height: 16px;
        }
        .auto-style32 {
            height: 16px;
        }
        .auto-style34 {
            width: 443px;
            height: 16px;
        }
        .auto-style35 {
            width: 100px;
            height: 16px;
        }
        .auto-style36 {
            height: 16px;
            width: 606px;
        }
        .auto-style37 {
            height: 16px;
            width: 82px;
        }
        .auto-style38 {
            height: 16px;
            width: 660px;
        }
        .auto-style39 {
            width: 81px;
            height: 26px;
        }
        .auto-style40 {
            width: 227px;
            height: 26px;
        }
        .auto-style41 {
            height: 26px;
        }
        .auto-style42 {
            width: 443px;
            height: 26px;
        }
        .auto-style43 {
            width: 100px;
            height: 26px;
        }
        .auto-style44 {
            width: 606px;
            height: 26px;
        }
        .auto-style45 {
            width: 82px;
            height: 26px;
        }
        .auto-style46 {
            width: 660px;
            height: 26px;
        }
        .auto-style47 {
            width: 81px;
            height: 30px;
        }
        .auto-style48 {
            width: 227px;
            height: 30px;
        }
        .auto-style49 {
            height: 30px;
        }
        .auto-style50 {
            width: 606px;
            height: 30px;
        }
        .auto-style51 {
            width: 82px;
            height: 30px;
        }
        .auto-style52 {
            width: 660px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style32" colspan="2">
                        Usuario:
                        <asp:Label ID="lbl_Admin" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style34">
                        <asp:HyperLink ID="hyLogin" runat="server" NavigateUrl="~/Login.aspx">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style35"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style36"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style38"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style25"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style27">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style3" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="XX-Large" Text="Alta de Paciente"></asp:Label>
                    </td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style3" colspan="2">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">Nombre:</td>
                    <td class="auto-style47">
                        <asp:TextBox ID="txt_nombrePaciente" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="rfv_nombrePaciente" runat="server" ControlToValidate="txt_nombrePaciente">Ingresar el nombre del paciente</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">Apellido:</td>
                    <td class="auto-style47">
                        <asp:TextBox ID="txt_apellidoPaciente" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="rfv_apellidoPaciente" runat="server" ControlToValidate="txt_apellidoPaciente">Ingresar el apellido del paciente</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">DNI:</td>
                    <td class="auto-style47">
                        <asp:TextBox ID="txt_DniPaciente" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="rfv_DNIpaciente" runat="server" ControlToValidate="txt_DniPaciente">Ingrese DNI del paciente</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">Sexo:</td>
                    <td class="auto-style47">
                        <asp:RadioButton ID="rb_pacienteFem" runat="server" Text="Femenino" CausesValidation="True" GroupName="sexo_Paciente" Checked="True" />
                        <br />
                        <asp:RadioButton ID="rb_pacienteMasc" runat="server" Text="Masculino" CausesValidation="True" GroupName="sexo_Paciente" />
                    </td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style24">Nacionalidad:</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txt_nacPaciente" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style30">
                        <asp:RequiredFieldValidator ID="rfv_NacionalidadPaciente" runat="server" ControlToValidate="txt_nacPaciente" ErrorMessage="Ingresar nacionalidad del paciente"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">Fecha de Nacimiento:</td>
                    <td class="auto-style47">
                        <input type="date" id="txt_FechaNacPaciente" runat="server"/> 
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="rfv_FechaNacPaciente" runat="server" ControlToValidate="txt_FechaNacPaciente">Ingresar Fecha de Nacimiento</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">Dirección:</td>
                    <td class="auto-style47">
                        <asp:TextBox ID="txt_direccionPaciente" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="rfv_direccionPaciente" runat="server" ControlToValidate="txt_direccionPaciente" ErrorMessage="Ingresar direccion del paciente"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39"></td>
                    <td class="auto-style40">Provincia:</td>
                    <td class="auto-style41">
                        <asp:DropDownList ID="ddl_ProvPaciente" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_ProvPaciente_SelectedIndexChanged" Width="125px">
                            <asp:ListItem>-- Seleccionar --</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style42">
                        <asp:RequiredFieldValidator ID="rfv_provincia" runat="server" ControlToValidate="ddl_ProvPaciente" InitialValue="0">Seleccionar provincia</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style43">Localidad:</td>
                    <td class="auto-style39">
                        <asp:DropDownList ID="ddl_LocPaciente" runat="server" Height="18px" Width="125px" CausesValidation="True">
                            <asp:ListItem>-- Seleccionar --</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style44">
                        <asp:RequiredFieldValidator ID="rfv_localidad" runat="server" ControlToValidate="ddl_LocPaciente" InitialValue="0">Seleccionar localidad</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style45"></td>
                    <td class="auto-style45"></td>
                    <td class="auto-style46"></td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">Correo Electronico:</td>
                    <td class="auto-style47">
                        <asp:TextBox ID="txt_correoPaciente" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="rfv_CorreoPaciente" runat="server" ControlToValidate="txt_correoPaciente">Ingrese correo del paciente</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">Teléfono</td>
                    <td class="auto-style47">
                        <asp:TextBox ID="txt_telefonoPaciente" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="rfv_telefonoPaciente" runat="server" ControlToValidate="txt_telefonoPaciente">Ingresar telefono del paciente</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39"></td>
                    <td class="auto-style40"></td>
                    <td class="auto-style41">
                        </td>
                    <td class="auto-style42"></td>
                    <td class="auto-style43"></td>
                    <td class="auto-style39"></td>
                    <td class="auto-style44"></td>
                    <td class="auto-style45"></td>
                    <td class="auto-style45"></td>
                    <td class="auto-style46"></td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style47">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style47"></td>
                    <td class="auto-style48"></td>
                    <td class="auto-style49" colspan="3">
                        <asp:Button ID="btn_Aceptar" runat="server" Text="Aceptar" Width="145px" OnClick="btn_Aceptar_Click" />
                    </td>
                    <td class="auto-style47"></td>
                    <td class="auto-style50"></td>
                    <td class="auto-style51"></td>
                    <td class="auto-style51"></td>
                    <td class="auto-style52"></td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style20">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        &nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

