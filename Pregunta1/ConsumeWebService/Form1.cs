using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace $safeprojectname$
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            String datos;
            ServiceReference1.webServiceJAVAClient ws = new ServiceReference1.webServiceJAVAClient();
            String nom = textBox2.Text;
            datos = ws.retornaUsuario(nom);
            textBox1.Text = datos;
        }
    }
}
