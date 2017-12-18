<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contrasena.aspx.cs" Inherits="WebAppBBS.Contrasena" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container body-content">
    <br />
    <br />
    <div class="container-fluid">
        <div class="row">
            <br />
            <br />
            <div class="col-md-12" style="background-color: #FFEC9E;">
                <br />
                <div class="alert alert-warning text-center" role="alert">
                    <strong>
                        <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> <asp:Label runat="server" Text="Por favor ingresa la informacion para cambiar tu contraseña." /></strong>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Contraseña Anterior:</label>
                            <asp:TextBox ID="oldPass" runat="server" TextMode="Password" CssClass="form-control" TabIndex="1" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Contraseña Nueva:</label>
                            <asp:TextBox ID="newPass" runat="server" TextMode="Password" CssClass="form-control" TabIndex="2" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Repite la contraseña:</label>
                            <asp:TextBox ID="repPass" runat="server" TextMode="Password" CssClass="form-control" TabIndex="3" required></asp:TextBox>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="container">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="btnGuardar_Click" TabIndex="19" />
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger" OnClick="btnCancelar_Click" TabIndex="20" />
                    </div>
                </div>
                <hr />
            </div>
        </div>
    </div>
</div>
</asp:Content>
