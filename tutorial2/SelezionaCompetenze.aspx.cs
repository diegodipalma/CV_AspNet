using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tutorial2
{
    public partial class SelezionaCompetenze : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lstCompetenze_DataBound(object sender, EventArgs e)
        {
            ListBox lstCompetenze = (ListBox)sender;
            string competenza;
            foreach (object c in competenzexstudenti.Select(DataSourceSelectArguments.Empty))
            {
                competenza = DataBinder.Eval(c, "Competenza").ToString();
                for (int i = 0; i < lstCompetenze.Items.Count; i++)
                {
                    if (competenza == lstCompetenze.Items[i].Text)
                    {
                        lstCompetenze.Items[i].Selected = true;
                        break;
                    }
                }
            }
        }
    }
}