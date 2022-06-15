<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarDatos.aspx.cs" Inherits="TPGRUPAL2.MostrarDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="JS/JavaScript.js" type="text/javascript"></script>
    <title></title>
    <style>
        .tableComentarios,td {
            background-color: #CC99FF;
            border: medium;
            border-style: solid;
         }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Datados de alumnos ingresados</h1>
        </div>
        <asp:GridView ID="gvAlumnos" runat="server"></asp:GridView>

        <table class="tableComentarios">
            <tr>
                <td><label>Nombre</label></td>
                <td><label runat="server" id="lblnombreIngresado"></label></td>
                <td><label >Apellido</label></td>
                <td><label runat="server" id="lblapellidoIngresado"/></td>
            </tr>
            <tr>
                <td><label>DNI</label></td>
                <td><label runat="server" id="lbldniIngresado"></label></td>
                <td><label >E-mail</label></td>
                <td><label runat="server" id="lblemailIngresado"></label></td>
            </tr>
            <tr>
                <td><label>Turno</label></td>
                <td colspan="3"><label runat="server" id="lblTurnoIngresado"></label></td>
            </tr>
            <tr>
                <td><label>Comentario adicional</label></td>
                <td colspan="3">
                    <textarea runat="server" cols="50" rows="10" id="txtcomentario"></textarea> 
                </td>
            </tr>
            <tr><td colspan="4"><asp:Button Text="Enviar" OnClick="btn_enviar_click" runat="server"/></td></tr>
        </table>
    </form>
</body>
</html>
