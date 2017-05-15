using Sprintthat.Domain.Entity;
using System.Data.Entity.ModelConfiguration;

namespace Sprintthat.Mapping
{
    public partial class LogMap : EntityTypeConfiguration<LogEntity>
    {
        public LogMap()
        {
            // table
            ToTable("Sys_Log", "dbo");

            // keys
            HasKey(t => t.FId);

            // Properties
            Property(t => t.FId)
                .HasColumnName("F_Id")
                .HasMaxLength(50)
                .IsRequired();
            Property(t => t.FDate)
                .HasColumnName("F_Date")
                .IsOptional();
            Property(t => t.FAccount)
                .HasColumnName("F_Account")
                .HasMaxLength(50)
                .IsOptional();
            Property(t => t.FNickName)
                .HasColumnName("F_NickName")
                .HasMaxLength(50)
                .IsOptional();
            Property(t => t.FType)
                .HasColumnName("F_Type")
                .HasMaxLength(50)
                .IsOptional();
            Property(t => t.FIPAddress)
                .HasColumnName("F_IPAddress")
                .HasMaxLength(50)
                .IsOptional();
            Property(t => t.FIPAddressName)
                .HasColumnName("F_IPAddressName")
                .HasMaxLength(50)
                .IsOptional();
            Property(t => t.FModuleId)
                .HasColumnName("F_ModuleId")
                .HasMaxLength(50)
                .IsOptional();
            Property(t => t.FModuleName)
                .HasColumnName("F_ModuleName")
                .HasMaxLength(50)
                .IsOptional();
            Property(t => t.FResult)
                .HasColumnName("F_Result")
                .IsOptional();
            Property(t => t.FDescription)
                .HasColumnName("F_Description")
                .HasMaxLength(500)
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
