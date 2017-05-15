using Sprintthat.Domain.Entity;
using System.Data.Entity.ModelConfiguration;

namespace Sprintthat.Mapping
{
    public class RoleAuthorizeMap : EntityTypeConfiguration<RoleAuthorizeEntity>
    {
        public RoleAuthorizeMap()
        {
            // table
            ToTable("Sys_RoleAuthorize", "dbo");

            // keys
            HasKey(t => t.FId);

            // Properties
            Property(t => t.FId)
                .HasColumnName("F_Id")
                .HasMaxLength(50)
                .IsRequired();
            Property(t => t.FModuleId)
                .HasColumnName("F_ModuleId")
                .HasMaxLength(50)
                .IsOptional();
            Property(t => t.FSortCode)
                .HasColumnName("F_SortCode")
                .IsOptional();
            Property(t => t.FCreatorTime)
                .HasColumnName("F_CreatorTime")
                .IsOptional();
            Property(t => t.FCreatorUserId)
                .HasColumnName("F_CreatorUserId")
                .HasMaxLength(50)
                .IsOptional();

            // Relationships
        }
    }
}
