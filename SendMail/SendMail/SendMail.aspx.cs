using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SendMail.ServiceMail;
using System.Net.Mail;
using System.IO;
using Google.Apis.Gmail.v1.Data;
using System.Diagnostics;

namespace SendMail
{
    public partial class SendMail : System.Web.UI.Page
    {
        public class Mail
        {
            public static string subject;
            public static string body;
            public static string fromEmail;
            public static string toEmail;
        }

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnSendMail_Click(object sender, EventArgs e)
        {
            try
            {
                if (radio_service_google.Checked)
                {
                    GoogleMailService.initService();
                    GoogleMailService.sendMail("duyhuytdh@gmail.com", Email.createMessage("Subject: Test mail"
                                                                                        , "Test email google API"
                                                                                        , "duyhuytdh@gmail.com"
                                                                                        , "knjght9x15@gmail.com"));
                }
                else if(radio_service_stpm.Checked)
                {
                    STPMService.SendMail();
                }
                string message = "Gửi email thành công";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
            }
            catch (Exception v_e)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + v_e + "');", true);
                Debugger.Log(1, "Send Mail", "Failed: " + v_e);
            }
        }
    }
}