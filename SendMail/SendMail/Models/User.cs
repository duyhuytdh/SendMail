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
    
    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            this.SendMails = new HashSet<SendMail>();
        }
    
        public long IDUser { get; set; }
        public string Email { get; set; }
        public byte[] AccountName { get; set; }
        public byte[] Password { get; set; }
        public byte[] Phone { get; set; }
        public System.DateTime TimeCreated { get; set; }
        public bool isAdmin { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SendMail> SendMails { get; set; }
    }
}
