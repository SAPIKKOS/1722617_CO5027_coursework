using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Handbag.Admin
{
    public partial class UploadingImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Request.QueryString["Id"];
            string filename = ID + ".jpg";

            CurrentImg.ImageUrl = "~/Image/" + filename;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ID = Request.QueryString["Id"];
            string filename = ID + ".jpg";
            string savelocation = Server.MapPath("~/Image/" + filename);

            ImageFileUploadControl.SaveAs(savelocation);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Admin.aspx");
        }
    }
}
