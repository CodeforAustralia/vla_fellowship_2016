using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class path : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect(Request.Form["path"] + "/" + Request.Form["response"] + "/");
        //Response.Write(Request.Form["path"] + "/" + Request.Form["response"] + "/");
        Response.End();
    }
}