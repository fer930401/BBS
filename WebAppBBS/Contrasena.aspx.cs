using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppBBS
{
    public partial class Contrasena : System.Web.UI.Page
    {
        LogicaNegocio.LogicaNegocioCls logicaNegocio = new LogicaNegocio.LogicaNegocioCls();
        string mensaje = "";
        int? error = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string old_pass = oldPass.Text;
            string new_pass = newPass.Text;
            string confirm_pass = repPass.Text;

            string email = Session["user"].ToString();
            string cve_user = Session["cve_user"].ToString();

            int opc = 2;

            if (string.IsNullOrEmpty(old_pass) == false)
            {
                if(new_pass.Equals(confirm_pass) == true)
                {
                    Entidades.sp_WebAppAdmBBS_Result updatePass = logicaNegocio.insertaBBS(DateTime.Now, cve_user, new_pass, "", email, "", TimeSpan.Parse("0"), "", "", "", "", "", "", "", "", opc);

                    error = updatePass.error;
                    mensaje = updatePass.mensaje;

                    if (error == 0)
                    {
                        Session.Clear();
                        Session.RemoveAll();
                        Session.Abandon();
                        Response.Redirect("Index.aspx", false);
                    }
                    else
                    {
                        Response.Write("<script type=\"text/javascript\">alert('Ocurrio un error" + mensaje + "'); window.location.href = 'Contrasena.aspx';</script>");
                    }
                }
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx", false);
        }
    }
}