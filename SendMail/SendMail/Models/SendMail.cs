//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SendMail.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SendMail
    {
        public long IDSendMail { get; set; }
        public long IDUser { get; set; }
        public long IDContact { get; set; }
        public System.DateTime TimeSend { get; set; }
        public bool StatusSend { get; set; }
        public string EmailUse { get; set; }
        public string TypeServiceUse { get; set; }
        public string Note { get; set; }
    
        public virtual Contact Contact { get; set; }
        public virtual User User { get; set; }
    }
}