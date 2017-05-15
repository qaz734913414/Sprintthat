using System;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Reflection;

namespace Sprintthat.Data.DBContext
{
    public partial class SprintthatDBContext : DbContext
    {
        static SprintthatDBContext()
        {
            Database.SetInitializer<SprintthatDBContext>(null);
        }

        public SprintthatDBContext()
            : base("Name=SprintthatDBContext")
        { }

        public SprintthatDBContext(System.Data.Entity.Infrastructure.DbCompiledModel model)
            : base("Name=SprintthatDBContext", model)
        { }

        public SprintthatDBContext(string nameOrConnectionString)
            : base(nameOrConnectionString)
        { }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            string assembleFileName = Assembly.GetExecutingAssembly().CodeBase.Replace("Sprintthat.Data.DLL", "Sprintthat.Mapping.Dll").Replace("file:///", "");
            Assembly asm = Assembly.LoadFile(assembleFileName);
            var typesToRegister = asm.GetTypes()
            .Where(type => !String.IsNullOrEmpty(type.Namespace))
            .Where(type => type.BaseType != null && type.BaseType.IsGenericType && type.BaseType.GetGenericTypeDefinition() == typeof(EntityTypeConfiguration<>));
            foreach (var type in typesToRegister)
            {
                dynamic configurationInstance = Activator.CreateInstance(type);
                modelBuilder.Configurations.Add(configurationInstance);
            }
            base.OnModelCreating(modelBuilder);
        }
    }
}
