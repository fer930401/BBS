using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppBBS
{
    public partial class AltaUsuarios : System.Web.UI.Page
    {
        LogicaNegocio.LogicaNegocioCls logicaNegocio = new LogicaNegocio.LogicaNegocioCls();
        string mensaje = "";
        int? error = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Index.aspx", false);
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            DateTime fecha = DateTime.Now;
            string cve_empleado = txtNumEmpleado.Text;
            string nom_empleado = txtNomCompleto.Text;
            string cve_cuenta = ddlCuenta.SelectedValue;
            string cve_genero = ddlSexo.SelectedValue;
            string email_empleado = txtCorreo.Text;
            string cve_puesto = ddlPuesto.SelectedValue;
            int? opc = 3;

            Entidades.sp_WebAppAdmBBS_Result insertaUsuario = logicaNegocio.insertaBBS(fecha, cve_empleado, nom_empleado, cve_cuenta, cve_genero, email_empleado, TimeSpan.Parse("0"), cve_puesto, "", "", "", "", "", "", "", opc);

            error = insertaUsuario.error;
            mensaje = insertaUsuario.mensaje;

            if (error == 0)
            {
                Response.Write("<script type=\"text/javascript\">alert('Procesado Exitosamente'); window.location.href = 'Index.aspx';</script>");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Ocurrio un error" + mensaje + "'); window.location.href = 'AltaUsuarios.aspx';</script>");
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx", false);
        }
    }
}