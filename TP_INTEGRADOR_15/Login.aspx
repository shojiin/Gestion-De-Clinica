<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TP_INTEGRADOR_15.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Login</title>
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 9px;
    }
    .auto-style3 {
        width: 136px;
    }
    .auto-style4 {
        width: 215px;
    }
    .auto-style5 {
        width: 10px;
    }
    .auto-style6 {
            width: 27px;
        }
    .auto-style7 {
        width: 10px;
        height: 23px;
    }
    .auto-style8 {
        height: 23px;
    }
    .auto-style9 {
            width: 27px;
            height: 23px;
        }
    .auto-style10 {
        height: 23px;
        width: 70px;
    }
    .auto-style11 {
        width: 70px;
    }
    .auto-style12 {
        width: 180px;
        height: 23px;
    }
    .auto-style13 {
        width: 180px;
    }
    .auto-style14 {
        width: 10px;
        height: 24px;
    }
    .auto-style15 {
        height: 24px;
    }
    .auto-style16 {
        width: 27px;
        height: 24px;
    }
    .auto-style17 {
        width: 70px;
        height: 24px;
    }
    .auto-style18 {
        width: 180px;
        height: 24px;
    }
    .auto-style20 {
        height: 24px;
        width: 150px;
    }
    .auto-style23 {
        height: 24px;
        width: 205px;
    }
    .auto-style24 {
        width: 205px;
    }
    .auto-style26 {
        width: 225px;
        height: 24px;
    }
    .auto-style27 {
        width: 225px;
    }
    .auto-style28 {
        width: 150px;
    }
    .auto-style29 {
        width: 10px;
        height: 30px;
    }
    .auto-style30 {
        height: 30px;
    }
    .auto-style31 {
        width: 70px;
        height: 30px;
    }
    .auto-style32 {
        width: 180px;
        height: 30px;
    }
    .auto-style35 {
        width: 9px;
        height: 23px;
    }
    .auto-style36 {
        width: 136px;
        height: 23px;
    }
    .auto-style37 {
        width: 215px;
        height: 23px;
    }
    .auto-style39 {
        width: 151px;
        height: 24px;
    }
    .auto-style40 {
        width: 190px;
        height: 24px;
    }
    .auto-style41 {
        height: 23px;
    }
    .auto-style42 {
        width: 190px;
        height: 23px;
    }
    .auto-style43 {
        height: 23px;
        width: 80px;
    }
    .auto-style44 {
        }
        .auto-style45 {
            width: 9px;
            height: 26px;
        }
        .auto-style46 {
            width: 136px;
            height: 26px;
        }
        .auto-style47 {
            width: 215px;
            height: 26px;
        }
        .auto-style48 {
            height: 26px;
        }
        .auto-style49 {
            width: 9px;
            height: 42px;
        }
        .auto-style50 {
            width: 136px;
            height: 42px;
        }
        .auto-style51 {
            width: 215px;
            height: 42px;
        }
        .auto-style52 {
            height: 42px;
        }
        .auto-style53 {
            width: 150px;
            height: 23px;
        }
        .auto-style54 {
            width: 225px;
            height: 23px;
        }
        .auto-style55 {
            width: 205px;
            height: 23px;
        }
    </style>
</head>
<body class="Body">
    <form id="form1" runat="server">
        
        <div id="DIV_Login" runat="server" Visible="true">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style35"></td>
                    <td class="auto-style36"></td>
                    <td class="auto-style37">
                        <asp:Label ID="LBL_Title" runat="server" Font-Size="20pt" Font-Underline="True" Text="Clínica Médica"></asp:Label>
                    </td>
                    <td class="auto-style43"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style35"></td>
                    <td class="auto-style36"></td>
                    <td class="auto-style37">
                    </td>
                    <td class="auto-style43"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style49"></td>
                    <td class="auto-style50">Número de Legajo:</td>
                    <td class="auto-style51">
                        <asp:TextBox ID="TB_Legajo" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style52" colspan="2">
                        <asp:RequiredFieldValidator ID="RFV_Legajo" runat="server" ControlToValidate="TB_Legajo" ForeColor="#CC0000">Ingrese un Legajo</asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="LBL_Error" runat="server" ForeColor="#CC0000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style45"></td>
                    <td class="auto-style46">Contraseña:</td>
                    <td class="auto-style47">
                        <asp:TextBox ID="TB_Password" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style48" colspan="2">
                        <asp:RequiredFieldValidator ID="RFV_Pass" runat="server" ControlToValidate="TB_Password" ForeColor="#CC0000">Ingrese una Contraseña</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style44">
                        <asp:Button ID="BTN_Enviar" runat="server" Text="Enviar" OnClick="BTN_Enviar_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        
        <div id="DIV_InterfazAdmin" runat="server" Visible="false">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8" colspan="3">Usuario:&nbsp;
                        <asp:Label ID="LBL_Admin_UserName" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style12">
                        </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style26"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style53">
                        <asp:HyperLink ID="HL_AltaPaciente" runat="server" NavigateUrl="~/AltaPaciente.aspx">Dar Alta a Paciente</asp:HyperLink>
                    </td>
                    <td class="auto-style54">
                        <asp:HyperLink ID="HL_ModificarPaciente" runat="server" NavigateUrl="~/ModificarPaciente.aspx">Modificar Datos de Paciente</asp:HyperLink>
                    </td>
                    <td class="auto-style55">
                        <asp:HyperLink ID="HL_BajaPaciente" runat="server" NavigateUrl="~/BajaPaciente.aspx">Dar de Baja a Paciente</asp:HyperLink>
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style53"></td>
                    <td class="auto-style54"></td>
                    <td class="auto-style55"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style28">
                        <asp:HyperLink ID="HL_AltaMedico" runat="server" NavigateUrl="~/AltaMedico.aspx">Dar Alta a Médico</asp:HyperLink>
                    </td>
                    <td class="auto-style27">
                        <asp:HyperLink ID="HL_ModificarMedico" runat="server" NavigateUrl="~/ModificarMedico.aspx">Modificar Datos de Médico</asp:HyperLink>
                    </td>
                    <td class="auto-style24">
                        <asp:HyperLink ID="HL_BajaMedico" runat="server" NavigateUrl="~/BajaMedico.aspx">Dar de Baja a Médico</asp:HyperLink>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style53">
                        <asp:HyperLink ID="HL_AsignarTurnos" runat="server" NavigateUrl="~/AsignarTurnos.aspx">Asignar Turnos</asp:HyperLink>
                    </td>
                    <td class="auto-style54">
                        <asp:HyperLink ID="HL_TurnosAsignados2" runat="server" NavigateUrl="~/TurnosAsignados.aspx">Turnos Asignados</asp:HyperLink>
                    </td>
                    <td class="auto-style55"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29"></td>
                    <td class="auto-style30" colspan="4">
                        <asp:HyperLink ID="HL_Informe1" runat="server" NavigateUrl="~/Informe1.aspx">Ver Médico con mayor número de pacientes en determinado mes</asp:HyperLink>
                    </td>
                    <td class="auto-style31"></td>
                    <td class="auto-style32"></td>
                    <td class="auto-style30"></td>
                </tr>
                <tr>
                    <td class="auto-style29"></td>
                    <td class="auto-style30" colspan="4">
                        <asp:HyperLink ID="HL_Informe2" runat="server" NavigateUrl="~/Informe2.aspx">Ver Porcentaje de Ausentes y Presentes</asp:HyperLink>
                    </td>
                    <td class="auto-style31"></td>
                    <td class="auto-style32"></td>
                    <td class="auto-style30"></td>
                </tr>
            </table>
        </div>

        <div id="DIV_InterfazMedico" runat="server" Visible="false">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style41" colspan="3">Usuario:&nbsp; <asp:Label ID="LBL_Medico_UserName" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style12">
                        </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style42"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style39">
                        <asp:HyperLink ID="HL_TurnosAsignados" runat="server" NavigateUrl="~/CargarPresente.aspx">Cargar Presentes</asp:HyperLink>
                    </td>
                    <td class="auto-style40">
                        <asp:HyperLink ID="HL_VerAsignacionTurnos" runat="server" NavigateUrl="~/TurnosAsignados.aspx">Turnos Asignados</asp:HyperLink>
                    </td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style15"></td>
                 </tr>
                 </table>
        </div>
    </form>
</body>
</html>
