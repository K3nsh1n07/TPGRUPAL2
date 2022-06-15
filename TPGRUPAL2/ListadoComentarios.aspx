<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoComentarios.aspx.cs" Inherits="TPGRUPAL2.ListadoComentarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Listado de comentarios de los alumnos</h1>
            <asp:GridView ID="gvComentarios" runat="server"></asp:GridView>
            <br />
            <a href="IngresoAlumno.aspx">Ir al ingreso de alumnos</a>
        </div>
    </form>
</body>
</html>
