<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AsignarTurnos.aspx.cs" Inherits="TP_INTEGRADOR_15.AsignarTurnos" %>

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
            width: 15px;
        }
        .auto-style3 {
            height: 35px;
        }
        .auto-style5 {
        }
        .auto-style6 {
            width: 160px;
        }
        .auto-style7 {
            width: 15px;
            height: 35px;
        }
        .auto-style8 {
            height: 35px;
        }
        .auto-style11 {
            width: 50px;
            height: 35px;
        }
        .auto-style13 {
            height: 35px;
            }
        .auto-style14 {
            width: 15px;
            height: 23px;
        }
        .auto-style15 {
            width: 160px;
            height: 23px;
        }
        .auto-style16 {
            width: 50px;
            height: 23px;
        }
        .auto-style17 {
            height: 23px;
        }
        .auto-style18 {
            width: 15px;
            height: 30px;
        }
        .auto-style19 {
            height: 30px;
        }
        .auto-style20 {
            width: 50px;
            height: 30px;
        }
        .auto-style21 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5" colspan="2">Usuario:&nbsp;
                        <asp:Label ID="LBL_UserName" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Login.aspx">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style3" colspan="2">Seleccionar Especialidad:</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DDL_Especialidad" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDL_Especialidad_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style13"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">Seleccionar Médico:</td>
                    <td class="auto-style11"></td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DDL_Medicos" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDL_Medicos_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style13"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">DNI_Paciente:</td>
                    <td class="auto-style11"></td>
                    <td class="auto-style8" colspan="2">
                        <asp:TextBox ID="TB_DNI" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style3">Seleccionar Día:</td>
                    <td class="auto-style11"></td>
                    <td class="auto-style3">&nbsp;
                        <input type="date" id="Input_FechaAtencion" name="Input_FechaAtencion" runat="server"/>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DDL_Dias" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">Horario:</td>
                    <td class="auto-style11"></td>
                    <td class="auto-style8">
                        &nbsp;
                        <input type="time" id="IN_Horario" name="IN_Horario" runat="server"/>
                    </td>
                    <td class="auto-style13" colspan="3">
                        <asp:Label ID="LBL_HSMedico" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style19">
                        <asp:Button ID="BTN_Enviar" runat="server" Text="Cargar Turno" OnClick="BTN_Enviar_Click" />
                    </td>
                    <td class="auto-style19" colspan="3">
                        <asp:Label ID="LBL_Message" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style21"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
