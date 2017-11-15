<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AltaBBS.aspx.cs" Inherits="WebAppBBS.AltaBBS" %>
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
                        <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> <asp:Label runat="server" Text="Por favor ingresa la informacion de la BBS." /></strong>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Nombre del Observador:</label>
                            <asp:TextBox ID="txtObservador" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Nombre del Coordinador:</label>
                            <asp:TextBox ID="txtCoordinador" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Hora:</label>
                            <asp:TextBox ID="txtHora" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Regla:</label>
                            <asp:DropDownList ID="ddlRegla" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Observaciones:</label>
                            <asp:TextBox ID="txtObs" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="7"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Fecha:</label>
                            <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" CssClass="form-control" Width="170" ReadOnly></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Responsable a Cargo:</label>
                            <asp:TextBox ID="txtResponsable" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Sub - Regla 1:</label>
                            <asp:DropDownList ID="ddlSubRegla1" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Comportamiento:</label>
                            <asp:DropDownList ID="ddlComportamiento" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Tipo de Empleado:</label>
                            <asp:DropDownList ID="ddlEmpleado" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Turno:</label>
                            <asp:DropDownList ID="ddlTurno" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Num Empleado:</label>
                            <asp:TextBox ID="txtNumEmpleado" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Operacion:</label>
                            <asp:DropDownList ID="ddlOperacion" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Sub - Regla 2:</label>
                            <asp:DropDownList ID="ddlSubRegla2" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>OFS:</label>
                            <asp:TextBox ID="txtOFS" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Mes:</label>
                            <asp:TextBox ID="txtMes" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Dia:</label>
                            <asp:DropDownList ID="ddlDias" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Lunes"></asp:ListItem>
                                <asp:ListItem Text="Martes"></asp:ListItem>
                                <asp:ListItem Text="Miercoles"></asp:ListItem>
                                <asp:ListItem Text="Jueves"></asp:ListItem>
                                <asp:ListItem Text="Viernes"></asp:ListItem>
                                <asp:ListItem Text="Sabado"></asp:ListItem>
                                <asp:ListItem Text="Domingo"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="container">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="btnGuardar_Click" />
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger" OnClick="btnCancelar_Click" />
                    </div>
                </div>
                <hr />
            </div>
        </div>
    </div>
</div>
</asp:Content>
