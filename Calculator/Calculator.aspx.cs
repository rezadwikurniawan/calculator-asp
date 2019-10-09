using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class Calculator : System.Web.UI.Page
    {
        Calculate _Calculate;
        protected void Page_Load(object sender, EventArgs e)
        {
            _Calculate = new Calculate();
        }

        protected void btnDivision_Click(object sender, EventArgs e)
        {
            this.txtBox.Text += "/";
        }

        protected void btnMultiplication_Click(object sender, EventArgs e)
        {
            this.txtBox.Text += "*";
        }

        protected void btnDeduction_Click(object sender, EventArgs e)
        {
            this.txtBox.Text += "-";
        }        

        protected void btnOB_Click(object sender, EventArgs e)
        {
            this.txtBox.Text += "(";
        }
        protected void btnCB_Click(object sender, EventArgs e)
        {
            this.txtBox.Text += ")";
        }
        protected void btnAddition_Click(object sender, EventArgs e)
        {
            this.txtBox.Text += "+";
        }
        protected void btnC_Click(object sender, EventArgs e)
        {
            this.txtBox.Text = "";
        }
        protected void btnCE_Click(object sender, EventArgs e)
        {            
            if (txtBox.Text.Length > 1)
            {
                txtBox.Text = _Calculate.Clear_Entry(txtBox.Text);
            }
            else
            {
                txtBox.Text = "";
            }            
        }

        protected void btnEnter_Click(object sender, EventArgs e)
        {
            if (txtBox.Text.Length >= 1)
            {
                string result = _Calculate.Calculate_Result(txtBox.Text);
                txtBox.Text = result;
            }            
        }

        protected void btns_Click(object sender, EventArgs e)
        {
            string text = (sender as Button).Text;
            this.txtBox.Text += text;
        }
    }
}