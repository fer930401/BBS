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
        protected void Page_Load(object sender, EventArgs e)
        {
            //parsear el  numero de semana, y el numero del dia, mes, hora
            //el campo de operacion se llena en base al numero de empleado
            if (!IsPostBack)
            {
                txtFecha.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx", false);
        }
    }
}