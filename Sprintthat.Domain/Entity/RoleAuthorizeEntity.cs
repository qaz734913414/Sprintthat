using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sprintthat.Domain.Entity
{
    public class RoleAuthorizeEntity
    {
        public RoleAuthorizeEntity()
        {
        }

        public string FId { get; set; }
        public string FModuleId { get; set; }
        public int? FSortCode { get; set; }
        public System.DateTime? FCreatorTime { get; set; }
        public string FCreatorUserId { get; set; }
    }
}
