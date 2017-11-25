using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppBBS
{
    public partial class AltaBBS : System.Web.UI.Page
    {
        LogicaNegocio.LogicaNegocioCls logicaNegocio = new LogicaNegocio.LogicaNegocioCls();
        string mensaje = "";
        int? error = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //parsear el  numero de semana, y el numero del dia, mes, hora
            //el campo de operacion se llena en base al numero de empleado
            if (!IsPostBack)
            {
                txtFecha.Text = DateTime.Now.ToString("yyyy-MM-dd");
                llenaCombos();
                ddlSubRegla2.Enabled = false;
                
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx", false);
        }

        private void llenaCombos()
        {
            ddlRegla.DataSource = logicaNegocio.consultaDatos(4, "", "");
            ddlRegla.DataTextField = "dato";
            ddlRegla.DataValueField = "cve_dato";
            ddlRegla.DataBind();
            ddlRegla.Items.Insert(0, new ListItem("Selecciona una Regla", "NA"));

            ddlOperacion.DataSource = logicaNegocio.consultaDatos(1, "", "");
            ddlOperacion.DataTextField = "dato";
            ddlOperacion.DataValueField = "cve_dato";
            ddlOperacion.DataBind();
            ddlOperacion.Items.Insert(0, new ListItem("Selecciona una Operacion", "NA"));

            ddltipRegla.DataSource = logicaNegocio.consultaDatos(3, "", "");
            ddltipRegla.DataTextField = "dato";
            ddltipRegla.DataValueField = "cve_dato";
            ddltipRegla.DataBind();
            ddltipRegla.Items.Insert(0, new ListItem("Selecciona un Tipo de Regla", "NA"));

            ddlComportamiento.DataSource = logicaNegocio.consultaDatos(5, "", "");
            ddlComportamiento.DataTextField = "dato";
            ddlComportamiento.DataValueField = "cve_dato";
            ddlComportamiento.DataBind();
            ddlComportamiento.Items.Insert(0, new ListItem("Selecciona un Tipo de Comportamiento", "NA"));

            ddlEmpleado.DataSource = logicaNegocio.consultaDatos(6, "", "");
            ddlEmpleado.DataTextField = "dato";
            ddlEmpleado.DataValueField = "cve_dato";
            ddlEmpleado.DataBind();
            ddlEmpleado.Items.Insert(0, new ListItem("Selecciona un Tipo de Empleador", "NA"));

            ddlTurno.DataSource = logicaNegocio.consultaDatos(7, "", "");
            ddlTurno.DataTextField = "dato";
            ddlTurno.DataValueField = "cve_dato";
            ddlTurno.DataBind();
            ddlTurno.Items.Insert(0, new ListItem("Selecciona el Turno", "NA"));

            ddlColaborador.DataSource = logicaNegocio.consultaDatos(8, "MDLZ", "");
            ddlColaborador.DataTextField = "dato";
            ddlColaborador.DataValueField = "cve_dato";
            ddlColaborador.DataBind();            
            ddlColaborador.Items.Insert(0, new ListItem("Selecciona a un Colaborador", "NA"));
        }

        protected void ddltipRegla_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cve_regla = ddlRegla.SelectedValue.ToString();
            string cve_tipo = ddltipRegla.SelectedValue.ToString();
            ddlSubRegla2.DataSource = logicaNegocio.consultaDatos(2, cve_regla, cve_tipo);
            ddlSubRegla2.DataTextField = "dato";
            ddlSubRegla2.DataValueField = "cve_dato";
            ddlSubRegla2.DataBind();
            ddlSubRegla2.Items.Insert(0, new ListItem("Selecciona una Sub-Regla", "NA"));
            ddlSubRegla2.Enabled = true;
        }

        protected void txtNumEmpleado_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNumEmpleado.Text) == false)
            {
                string cve_empleado = txtNumEmpleado.Text.ToString();
                string cve_cuenta = "MDLZ";
                var infoUsr = logicaNegocio.consultaUsr(cve_empleado, cve_cuenta, 0);

                txtObservador.Text = infoUsr[0].nom_empleado.ToString();
                //Response.Write("<script type=\"text/javascript\">alert('"+infoUsr[0].nom_empleado.ToString()+"');</script>");
            }
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            DateTime fecha = DateTime.Parse(txtFecha.ToString());
            string cve_empleado = txtNumEmpleado.Text;
            string nom_observador = txtObservador.Text;
            string colaborador = ddlColaborador.SelectedItem.Text;
            string nom_coordinador = txtCoordinador.Text;
            string cve_operacion = ddlOperacion.SelectedValue;
            string cve_empleador = ddlEmpleado.SelectedValue;
            string cve_regla = ddlRegla.SelectedValue;
            string cve_tip_regla = ddltipRegla.SelectedValue;
            string cve_subregla = ddlSubRegla2.SelectedValue;
            string cve_comportamiento = ddlComportamiento.SelectedValue;
            string cve_turno = ddlTurno.SelectedValue;
            string observaciones = txtObs.Text;
            string dia = ddlDias.SelectedValue;
        }

    }
}