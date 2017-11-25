using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicaNegocio
{
    public class LogicaNegocioCls
    {
        AccesoDatos.AccesoDatosCls datos;
        public LogicaNegocioCls()
        {
            datos = new AccesoDatos.AccesoDatosCls();
        }
        public List<Entidades.sp_WebAppBBS_cons_datos_Result> consultaDatos(int? opc, string filtro1, string filtro2)
        {
            return datos.consultaDatos(opc, filtro1, filtro2);
        }

        public List<Entidades.sp_WebAppConsultaBBS_Result> consultaBBS(int? opc)
        {
            return datos.consultaBBS(opc);
        }

        public List<Entidades.sp_WebAppBuscaUsuarioBBS_Result> consultaUsr(string cve_empleado, string cve_cuenta, int? opc)
        {
            return datos.consultaUsr(cve_empleado, cve_cuenta, opc);
        }

    }
}
