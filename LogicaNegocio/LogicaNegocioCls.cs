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

        public Entidades.sp_WebAppAdmBBS_Result insertaBBS(DateTime fecha, string cve_empleado, string observador, string colaborador, string responsable, string cve_operacion, TimeSpan? hora, string cve_regla, string cve_tip_regla, string cve_subregla, string cve_comportamiento, string cve_turno, string obs, string cve_empleador, string dia_bbs, int? opc)
        {
            return datos.insertaBBS(fecha, cve_empleado, observador, colaborador, responsable, cve_operacion, hora, cve_regla, cve_tip_regla, cve_subregla, cve_comportamiento, cve_turno, obs, cve_empleador, dia_bbs, opc);
        }
    }
}
