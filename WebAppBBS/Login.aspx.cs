using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppBBS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtMail.Text;
            string pass = txtContrasena.Text;
            string error = "";

            if (email.Equals("fernando.garciav@dhl.com") == true)
            {
                if (pass.Equals("1234567890") == true)
                {
                    Session["user"] = email;
                    Response.Write("<script type=\"text/javascript\">alert('Login Exitoso'); window.location.href = 'Index.aspx';</script>");
                }
                else
                {
                    Response.Write("<script type=\"text/javascript\">alert('La contraseña no es correcta'); window.location.href = 'Login.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('El correo no es correcto'); window.location.href = 'Login.aspx';</script>");
            }

            

            
        }
    }
}