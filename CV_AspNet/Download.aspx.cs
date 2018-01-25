using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CV_AspNet
{
    public partial class Download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string FileName = DropDownList1.SelectedItem.Text + "_CV.txt";
            DataView testView = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            string nomecv = testView[0]["NomeCV"].ToString();



            HttpResponse httpResponse = HttpContext.Current.Response;
            httpResponse.ClearContent();
            httpResponse.Clear();
            httpResponse.ContentType = "text/plain";
            httpResponse.AddHeader("Content-Disposition", "attachment; filename=" + FileName + ";");
            httpResponse.TransmitFile(Server.MapPath(@"~/App_Data/" + nomecv + ".txt"));
            httpResponse.Flush();
            httpResponse.End();
        }
    }
}