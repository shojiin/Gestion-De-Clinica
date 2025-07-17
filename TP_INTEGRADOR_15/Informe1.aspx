<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Informe1.aspx.cs" Inherits="TP_INTEGRADOR_15.Informe1" %>

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
            width: 439px;
        }
        .auto-style4 {
            width: 439px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 76px;
        }
        .auto-style6 {
            width: 76px;
        }
        .auto-style7 {
            height: 23px;
            width: 346px;
        }
        .auto-style8 {
            width: 346px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" rowspan="2"><strong>Usuario</strong>:&nbsp; <asp:Label ID="lblNombreUsuario" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Login.aspx">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" rowspan="2"><strong>Informe I:
                        <br />
                        Médico con mayor cantidad de pacientes en determinado mes</strong></td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">Elegir mes:</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlMes" runat="server" ValidationGroup="GrupoInforme">
                             <asp:ListItem Text="Elija un mes" Value="" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator 
                            ID="rfvMes" 
                            runat="server" 
                            ControlToValidate="ddlMes"
                            InitialValue="" 
                            ErrorMessage="Debe elegir un mes" 
                            ForeColor="Red" 
                            Display="Dynamic"
                            ValidationGroup="GrupoInforme"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">Elegir año:</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlAnio" runat="server" ValidationGroup="GrupoInforme">
                            <asp:ListItem Text="Elija un año" Value="" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator 
                            ID="rfvAnio" 
                            runat="server" 
                            ControlToValidate="ddlAnio"
                            InitialValue="" 
                            ErrorMessage="Debe elegir un año" 
                            ForeColor="Red" 
                            Display="Dynamic"
                            ValidationGroup="GrupoInforme">

                        </asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style2">
                        <asp:Button ID="btnGenerarInforme" runat="server" Text="Generar Informe" OnClick="btnGenerarInforme_Click"  ValidationGroup="GrupoInforme" CausesValidation="true"/>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="lblResultado" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
