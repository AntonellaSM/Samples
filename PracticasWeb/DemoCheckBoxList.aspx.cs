using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticasWeb
{
    public partial class DemoCheckBoxList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CheckBoxList1.SelectedIndex == -1)
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Black;
            }
            Label1.Text = ListBox1.Items.Count.ToString() + " items Selected";
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();
            foreach (ListItem listitem in CheckBoxList1.Items)
            {
                    if (listitem.Selected)
                    {
                        ListBox1.Items.Add(listitem.Text);
                    }
            }          

            Label1.Text =ListBox1.Items.Count.ToString() + " items Selected";
        }
    }
}