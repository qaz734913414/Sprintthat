using Sprintthat.Domain.Entity;
using Sprintthat.Repository.IRepository;
using Sprintthat.Repository.Repository;
using System.Collections.Generic;
using System.Linq;

namespace Sprintthat.Application
{
    public class ModuleApp
    {
        private IModuleRepository _moduleRepository = new ModuleRepository();

        public List<ModuleEntity> GetModuleList()
        {
            return _moduleRepository.Query().ToList();
        }
    }
}
