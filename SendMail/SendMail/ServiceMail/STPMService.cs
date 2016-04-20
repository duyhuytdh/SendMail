using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using SendMail;
using SendMail.ServiceMail;
using System.Net;

namespace SendMail.ServiceMail
{
    public static class STPMService
    {
        public static void SendMail()
        {

            var fromAddress = new MailAddress("mobilinksendmailtest01@gmail.com", "From Name");
            var toAddress = new MailAddress("duyhuytdh@gmail.com", "To Name");
            const string fromPassword = "test@123456";
            const string subject = "Subject";
            const string body = "Test email STPM";

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                smtp.Send(message);
            }
        }

        
    }
}