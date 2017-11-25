using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccesoDatos
{
    public class AccesoDatosCls
    {
        DHL_SCEntities contexto;

        public AccesoDatosCls()
        {
            contexto = new DHL_SCEntities();
        }

        public List<sp_WebAppBBS_cons_datos_Result> consultaDatos(int? opc, string filtro1, string filtro2)
        {
            return (contexto.sp_WebAppBBS_cons_datos(opc, filtro1, filtro2)).ToList();
        }

        public List<sp_WebAppConsultaBBS_Result> consultaBBS(int? opc)
        {
            return (contexto.sp_WebAppConsultaBBS(opc)).ToList();
        }

        public List<sp_WebAppBuscaUsuarioBBS_Result> consultaUsr(string cve_empleado, string cve_cuenta, int? opc)
        {
            return (contexto.sp_WebAppBuscaUsuarioBBS(cve_empleado, cve_cuenta, opc)).ToList();
        }

        public Entidades.sp_WebAppAdmBBS_Result insertaBBS(DateTime fecha, string cve_empleado, string observador, string colaborador, string responsable, string cve_operacion, TimeSpan? hora, string cve_regla, string cve_tip_regla, string cve_subregla, string cve_comportamiento, string cve_turno, string obs, string cve_empleador, string dia_bbs, int? opc)
        {
            return (contexto.sp_WebAppAdmBBS(fecha, cve_empleado, observador, colaborador, responsable, cve_operacion, hora, cve_regla, cve_tip_regla, cve_subregla, cve_comportamiento, cve_turno, obs, cve_empleador, dia_bbs, opc)).FirstOrDefault();
        }
    }
}
