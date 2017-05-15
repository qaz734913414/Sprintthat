using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sprintthat.Domain.Entity
{
    public class LogEntity
    {
        public LogEntity()
        {
        }

        public string FId { get; set; }
        public System.DateTime? FDate { get; set; }
        public string FAccount { get; set; }
        public string FNickName { get; set; }
        public string FType { get; set; }
        public string FIPAddress { get; set; }
        public string FIPAddressName { get; set; }
        public string FModuleId { get; set; }
        public string FModuleName { get; set; }
        public bool? FResult { get; set; }
        public string FDescription { get; set; }
        public System.DateTime? FCreatorTime { get; set; }
        public string FCreatorUserId { get; set; }
    }
}
