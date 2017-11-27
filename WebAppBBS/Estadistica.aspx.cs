using LogicaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppBBS
{
    public partial class Estadistica : System.Web.UI.Page
    {
        LogicaNegocio.LogicaNegocioCls logicaNegocio = new LogicaNegocio.LogicaNegocioCls();
        string mensaje = "";
        int? error = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            BBSGraf(9, "colaborador");
            BBSGraf(10, "responsable");
            BBSGraf(13, "observador");
            BBSGraf(11, "acto");
            BBSGraf(12,"regla1");
            BBSGraf(12,"regla2");
            BBSGraf(12,"regla3");
            BBSGraf(12,"regla4");
        }

        public void BBSGraf(int opc, string regla)
        {
            List<Entidades.sp_WebAppBBS_cons_datos_Result> contadorBBS = logicaNegocio.consultaDatos(opc, regla, "");
            string datos = "";
            for(int i = 0; i < contadorBBS.Count; i++){
                datos = datos + "{ name: '" + contadorBBS[i].dato.Replace("\r\n","") + "', y: "+ contadorBBS[i].cve_dato +"},";
            }
            if (regla.Equals("regla1") == true)
            {
                variables.Regla1 = datos;
            }
            else if (regla.Equals("regla2") == true)
            {
                variables.Regla2 = datos;
            }
            else if (regla.Equals("regla3") == true)
            {
                variables.Regla3 = datos;
            }
            else if (regla.Equals("regla4") == true)
            {
                variables.Regla4 = datos;
            }
            else if (regla.Equals("acto") == true)
            {
                variables.Acto = datos;
            }
            else if (regla.Equals("colaborador") == true)
            {
                variables.Colaborador = datos;
            }
            else if (regla.Equals("responsable") == true)
            {
                variables.Responsable = datos;
            }
            else if (regla.Equals("observador") == true)
            {
                variables.Observador = datos;
            }
            else
            {
                variables.Regla1 = "";
                variables.Regla2 = "";
                variables.Regla3 = "";
                variables.Regla4 = "";
                variables.Acto = "";
                variables.Colaborador = "";
                variables.Responsable = "";
                variables.Observador = "";
            }
        }
    }
}