using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWines
{
    public partial class DeleteWines : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Remove_Click(object sender, EventArgs e)
        {
            Int32 thisID = Int32.Parse(TextBox1.Text);

            String sql = "DELETE FROM Wine WHERE ID = ";
            
            sql = sql + thisID;

            SqlDataSource1.DeleteCommand = sql;

            SqlDataSource1.Delete();
            
        }
    }
}