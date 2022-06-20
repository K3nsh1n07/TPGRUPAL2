<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoAlumno.aspx.cs" Inherits="TPGRUPAL2.IngresoAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="text/css" rel="stylesheet" href="Estilos.css" />
    <script src="JS/JavaScript.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1">
                <tr>
                    <th colspan="5">Datos Personales</th>
                </tr>
                <tr>
                    <td rowspan="2"><label class="obligatorio">Datos Obligatorios</label></td>
                    <td><label class="obligatorio">Apellido</label></td>
                    <td>
                        <asp:TextBox runat="server" id="tapellido" class="desenfocada"/> 
                    </td>
                    <td><label class="obligatorio">Nombre</label></td>
                    <td>
                        <asp:TextBox runat="server" id="tnombre" class="desenfocada"/> 
                    </td>
                </tr>
                <tr>
                    <td><label class="obligatorio">DNI</label></td>
                    <td>
                        <asp:TextBox runat="server" id="tdni" class="desenfocada"/> 
                    </td>
                    <td><label class="obligatorio">E-mail</label></td>
                    <td>
                        <asp:TextBox runat="server" id="temail" class="desenfocada"/> 
                    </td>
                </tr>
                <tr>
                    <td><label class="preferencias">Preferencias</label></td>
                    <td><label class="preferencias">Turno</label></td>
                    <td colspan="3">
                        <asp:DropDownList id="sTurnos" class="desenfocada" runat="server">
                            <asp:ListItem Text="Seleccione Turno" />
                            <asp:ListItem Text="Mañana" />
                            <asp:ListItem Text="Tarde" />
                            <asp:ListItem Text="Noche" />
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td colspan="5" align="right">                   
                        <asp:Button id="Enviar" Text="Enviar"  runat="server" OnClick="Button1_Click" OnClientClick="return validarForm()"/><asp:Button id="limpiar" OnClientClick="this.form.reset();return false;" Text="Limpiar" runat="server" />
                    </td>
                </tr>
            </table>
            <a runat="server" href="ListadoComentarios.aspx" id="alinkcomentarios">Ir al listado de comentarios</a>
        </div>
    </form>
</body>
</html>
