using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tutorial2
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //        protected void lstCompetenze_DataBound(object sender, EventArgs e)
        //        {
        //            ListBox lstCompetenze = (ListBox)sender;
        //            string competenza;
        //            foreach (object c in competenzexstudenti.Select(DataSourceSelectArguments.Empty))
        //            {
        //                competenza = DataBinder.Eval(c, "Competenza").ToString();
        //                for (int i = 0; i < lstCompetenze.Items.Count; i++)
        //                {
        //                    if (competenza == lstCompetenze.Items[i].Text)
        //                    {
        //                        lstCompetenze.Items[i].Selected = true;
        //                        break;
        //                    }
        //                }
        //            }
        //        }

        //        protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        //        {
        //            competenzexstudenti.DeleteParameters["IDCompetenza"].DefaultValue =
        //GridView1.SelectedValue.ToString();
        //            competenzexstudenti.Delete();
        //            GridView1.DataBind();
        //        }

        //        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        //        {
        //            string studente = e.Values["IDStudente"].ToString();
        //            ListBox competenze = (ListBox)DetailsView1.FindControl("listCompetenze");
        //            foreach (int index in competenze.GetSelectedIndices())
        //            {
        //                competenzexstudenti.InsertParameters["IDCompetenza"].DefaultValue =
        //competenze.Items[index].Value;
        //                competenzexstudenti.InsertParameters["IDStudente"].DefaultValue =
        //                studente;
        //                competenzexstudenti.Insert();
        //                GridView1.DataBind();
        //            }
        //        }

        //        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        //        {
        //            competenzexstudenti.DeleteParameters["IDStudente"].DefaultValue =
        //GridView1.SelectedValue.ToString();
        //            competenzexstudenti.Delete();
        //            ListBox lstcompetenze = (ListBox)DetailsView1.FindControl("lstCompetenze");
        //            foreach (int index in lstcompetenze.GetSelectedIndices())
        //            {
        //                competenzexstudenti.InsertParameters["IDStudente"].DefaultValue =
        //                lstcompetenze.Items[index].Value;
        //                competenzexstudenti.InsertParameters["IDCompetenza"].DefaultValue =
        //                GridView1.SelectedValue.ToString();
        //                competenzexstudenti.Insert();
        //                GridView1.DataBind();
        //            }
        //        }
        //    }
    }
}