using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Page Load Event");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Button 1 Event");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write("Drop Down");
        }

       
    }
}