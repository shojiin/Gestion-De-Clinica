<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CargarPresente.aspx.cs" Inherits="TP_INTEGRADOR_15.CargarPresente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title﻿﻿></title﻿>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
     </style>
</head>
    <body>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 985px;
        }
        .auto-style5 {
            width: 985px;
        }
    </style>
<form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">Usuario:&nbsp;
                <asp:Label ID="LBL_Usuario" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Login.aspx">Volver</asp:HyperLink>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td&nbsp;</td>
            <td&nbsp;</td>
            <td&nbsp;</td>
            <td&nbsp;</td>
            <td&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
       <asp:GridView ID="gvTurnos" runat="server" AutoGenerateColumns="False" CssClass="gridview" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField HeaderText="Codigo de Turno">
                <ItemTemplate>
                    <asp:Label ID="lbl_codTurno" runat="server" Text='<%# Bind("Cod_Turno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nombre De Paciente">
                <ItemTemplate>
                  <asp:Label ID="NombrePaciente" runat="server" Text='<%# Bind("Nombre_Paciente") %>'></asp:Label> 
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Apellido del Paciente">
                <ItemTemplate>
                <asp:Label  ID="ApellidoPaciente" runat="server" Text='<%# Bind("Apellido_Paciente") %>'></asp:Label> 
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DNI del paciente">
                <ItemTemplate>
                    <asp:Label ID="lblDNI" runat="server" Text='<%# Bind("DNIPaciente_Turnos") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Turno">
                <ItemTemplate>
                    <asp:Label ID="lblTurno" runat="server" Text='<%# Bind("Cod_Turno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Legajo del Medico">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("LegajoMedico_Turnos") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DIA">
                <ItemTemplate>
                    <asp:Label ID="lblDiaTurno" runat="server" Text='<%# Convert.ToDateTime(Eval("Dia_Turnos")).ToString("dd/MM/yyyy") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Horario">
                <ItemTemplate>
                    <asp:Label ID="lblHorario" runat="server" Text='<%# Bind("Horarios_Turnos") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Presente">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CommandName="Presente" Text="Presente"
                        CommandArgument='<%# Container.DataItemIndex %>' OnCommand="Button1_Command" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ausente">
                <ItemTemplate>
                    <asp:Button ID="Button2" runat="server" CommandName="Ausente" Text="Ausente"
                        CommandArgument='<%# Container.DataItemIndex %>' OnCommand="Button2_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
             
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
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:TextBox ID="txtObservacion" runat="server" Height="66px" TextMode="MultiLine" Width="239px"></asp:TextBox>
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
                <asp:Label ID="lbl_Mensaje" runat="server"></asp:Label>
            </td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
</body>
</html>