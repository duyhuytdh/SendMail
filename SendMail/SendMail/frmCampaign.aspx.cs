using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SendMail.Models;


namespace SendMail
{
    public partial class frmCampaign : System.Web.UI.Page
    {

        #region Event
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateCampaign_Click(object sender, EventArgs e)
        {
            try
            {
                SendMailEntities db = new SendMailEntities();
                Campaign campaing = new Campaign();
                
            }
            catch (Exception)
            {

                throw;
            }
        }
        #endregion

    }
}