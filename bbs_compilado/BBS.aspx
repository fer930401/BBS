<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BBS.aspx.cs" Inherits="WebAppBBS.BBS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="">
        <div class="">
            <br />
            <br />
            <br />
            <br />
            <% 
                for (int i=1; i <= GridView1.Rows.Count; i++)
                {
                        foreach (GridViewRow row in GridView1.Rows)
                        {
                            if (row.Cells[12].Text.TrimEnd(' ').Equals("En Proceso") == true)
                            {
                                //row.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFD839");
                            }
                            else if (row.Cells[12].Text.Equals("Retrasada") == true)
                            {
                                //row.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFD839");
                            }
                            else if (row.Cells[12].Text.Equals("Cerrada") == true)
                            {
                                /*row.BackColor = System.Drawing.ColorTranslator.FromHtml("#009913");
                                row.ForeColor = System.Drawing.ColorTranslator.FromHtml("#fff");
                                Button btnAtendido = (Button)row.Cells[12].FindControl("btnAtendida");
                                btnAtendido.Enabled = false;*/
                            }
                        }
                }
            %>
            <div class="" style="background-color: #FFEC9E;">
                <br />
                <div class="">
                    <div class="alert alert-warning text-center" role="alert">
                        <strong><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> <asp:Label runat="server" Text="Consulta las BBS reportadas" /></strong>
                    </div>
                </div>
                <div class="">
                    <div style="padding-left:10px;padding-right:10px;">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                AllowPaging="True" BackColor="White"
                                HeaderStyle-BackColor="#363636" HeaderStyle-ForeColor="White"
                                CssClass="table table-responsive" HeaderStyle-Height="50px"
                                EmptyDataText="No hay BBS registrados"
                                PageSize="5">
                                <PagerStyle CssClass="pagination-ys" />
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="fec_registro" HeaderText="Fecha Registro:" ItemStyle-Width="150" DataFormatString="{0:dd/M/yyyy}"  />
                                    <asp:BoundField DataField="no_STO" HeaderText="STO:" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="turno" HeaderText="Turno:" ReadOnly="True" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="incidencia" HeaderText="Incidencia:" ReadOnly="True" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="codigo" HeaderText="Codigo:" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="factura" HeaderText="Factura:" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="lote" HeaderText="Lote:" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="descripcion" HeaderText="Descripcion:" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="material" HeaderText="Material:" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="cantidad" HeaderText="Cantidad:" ItemStyle-Width="150" DataFormatString="{0:F2}" />
                                    <asp:BoundField DataField="udm" HeaderText="UDM:" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="sts" HeaderText="Status:" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="fec_cierre" HeaderText="Fecha cierre:" ItemStyle-Width="150" DataFormatString="{0:dd/M/yyyy}" />
                                    <asp:BoundField DataField="observacion" HeaderText="Observacion:" ItemStyle-Width="150" />
                                    <asp:TemplateField HeaderText="Evidencias:" ItemStyle-Width="900">
                                        <ItemTemplate>
                                            <a id="btnImg" class="btn btn-success" <% Response.Write(Session["visible"]); %>>Evidencia</a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Ya fue atendida:" ItemStyle-Width="900">
                                        <ItemTemplate>
                                            <asp:Button ID="btnAtendida" CssClass="btn btn-warning" runat="server" Text="Atendida" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                        </asp:GridView>
                        <hr />
                        <asp:Button ID="btnExportar" runat="server" Text="Exportar Datos" CssClass="btn btn-success" />
                        <%--<asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger" OnClick="btnCancelar_Click" /> --%>
                        <br />
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.9.2/themes/blitzer/jquery-ui.css" rel="Stylesheet" type="text/css" />
</asp:Content>
