<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AltaUsuarios.aspx.cs" Inherits="WebAppBBS.AltaUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container body-content">
    <br />
    <br />
    <div class="container-fluid">
        <div class="row">
            <br />
            <br />
            <div class="col-md-12">
                <br />
                <div class="alert alert-warning text-center" role="alert">
                    <strong>
                        <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> <asp:Label runat="server" Text="Por favor ingresa la informacion del nuevo usuario." /></strong>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Numero de empleado:</label>
                            <asp:TextBox ID="txtNumEmpleado" runat="server" CssClass="form-control" TabIndex="1" required></asp:TextBox>
                        </div>        
                        <div class="form-group">
                            <label>Email:</label>
                            <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" TextMode="Email" TabIndex="4"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Nombre Completo:</label>
                            <asp:TextBox ID="txtNomCompleto" runat="server" CssClass="form-control" TabIndex="2" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Sexo:</label>
                            <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control" TabIndex="5">
                                <asp:ListItem Value="M">Masculino</asp:ListItem>
                                <asp:ListItem Value="F">Femenino</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Cuenta:</label>
                            <asp:DropDownList ID="ddlCuenta" runat="server" CssClass="form-control" TabIndex="3">
                                <asp:ListItem Value="FNA">Finsa</asp:ListItem>
                                <asp:ListItem Value="MDLZ">Mondelez</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Puesto:</label>
                            <asp:DropDownList ID="ddlPuesto" runat="server" CssClass="form-control" TabIndex="6">
                                <asp:ListItem Value="COROMS">OMS</asp:ListItem>
                                <asp:ListItem Value="COROPR">COORDINADOR OPERACIONES</asp:ListItem>
                                <asp:ListItem Value="CORPT">COORDINADOR DE PRODUCTO TERMINADO</asp:ListItem>
                                <asp:ListItem Value="CORQA">COORDINADOR CALIDAD</asp:ListItem>
                                <asp:ListItem Value="GER">GERENTES</asp:ListItem>
                                <asp:ListItem Value="INBOUND">COORDINADOR DE RECIBO</asp:ListItem>
                                <asp:ListItem Value="MANT">COORDINADOR MANTENIMIENTO</asp:ListItem>
                                <asp:ListItem Value="QA">ASEGURAMIENTO DE CALIDAD</asp:ListItem>
                                <asp:ListItem Value="RH">COORDINADOR DE RECURSOS HUMANOS</asp:ListItem>
                                <asp:ListItem Value="SHE">COORDINADOR SHE</asp:ListItem>
                                <asp:ListItem Value="SUPOMS">SUPERVISOR OMS</asp:ListItem>
                                <asp:ListItem Value="SUPOPR">SUPERVISOR OPERACIONES</asp:ListItem>
                            </asp:DropDownList>
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
