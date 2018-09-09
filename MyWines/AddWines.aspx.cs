using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWines
{
    public partial class AddWines : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }
    }
}