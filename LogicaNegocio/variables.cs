using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicaNegocio
{
    public class variables
    {
        static string regla1;
        public static string Regla1
        {
            get { return variables.regla1; }
            set { variables.regla1 = value; }
        }

        static string regla2;
        public static string Regla2
        {
            get { return variables.regla2; }
            set { variables.regla2 = value; }
        }

        static string regla3;
        public static string Regla3
        {
            get { return variables.regla3; }
            set { variables.regla3 = value; }
        }

        static string regla4;
        public static string Regla4
        {
            get { return variables.regla4; }
            set { variables.regla4 = value; }
        }

        static string acto;
        public static string Acto
        {
            get { return variables.acto; }
            set { variables.acto = value; }
        }

        static string responsable;
        public static string Responsable
        {
            get { return variables.responsable; }
            set { variables.responsable = value; }
        }

        static string colaborador;
        public static string Colaborador
        {
            get { return variables.colaborador; }
            set { variables.colaborador = value; }
        }

        static string observador;
        public static string Observador
        {
            get { return variables.observador; }
            set { variables.observador = value; }
        }

        static string[,] drilldown = new string[100, 2];
        public static string[,] Drilldown
        {
            get { return variables.drilldown; }
            set { variables.drilldown = value; }
        }
    }
}
