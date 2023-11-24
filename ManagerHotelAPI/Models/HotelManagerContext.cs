using System;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace ManagerHotelAPI.Models
{
    public partial class HotelManagerContext : IdentityDbContext<User>
    {
        public HotelManagerContext()
        {
        }

        public HotelManagerContext(DbContextOptions<HotelManagerContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Comment> Comments { get; set; }
        public virtual DbSet<Location> Locations { get; set; }
        public virtual DbSet<Room> Rooms { get; set; }
        public virtual DbSet<Booking> Bookings { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=21333333331148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=ADMINISTRATOR\\SQLEXPRESS;Database=HotelManager;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");
            modelBuilder.Entity<Booking>(entity =>
            {
                entity.ToTable("Booking");

                entity.Property(e => e.Id)
                    .HasMaxLength(36)
                    .IsUnicode(false)
                    .IsFixedLength(true);

                entity.Property(e => e.RoomId)
                 .HasMaxLength(36)
                 .IsUnicode(false)
                 .IsFixedLength(true);

                entity.Property(e => e.EmailUser)
                .IsRequired()
                .HasMaxLength(256);

                entity.Property(e => e.BookingDate).HasColumnType("date");

                entity.Property(e => e.EndDate).HasColumnType("date");

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("date");

                entity.Property(e => e.ModifiedBy).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("date");
            });
            modelBuilder.Entity<Comment>(entity =>
            {
                entity.ToTable("Comment");

                entity.Property(e => e.Id)
                    .HasMaxLength(36)
                    .IsUnicode(false)
                    .IsFixedLength(true);

                entity.Property(e => e.CreateDate).HasColumnType("date");

                entity.Property(e => e.RoomId)
                    .IsRequired()
                    .HasMaxLength(36)
                    .IsUnicode(false)
                    .IsFixedLength(true);

                entity.Property(e => e.UserId)
                    .IsRequired()
                    .HasMaxLength(450);
            });

            modelBuilder.Entity<Location>(entity =>
            {
                entity.ToTable("Location");

                entity.Property(e => e.Id)
                    .HasMaxLength(36)
                    .IsUnicode(false)
                    .IsFixedLength(true);

                entity.Property(e => e.Country).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("date");

                entity.Property(e => e.District).HasMaxLength(50);

                entity.Property(e => e.LocationName)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.ModifiedBy).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("date");
            });

            modelBuilder.Entity<Room>(entity =>
            {
                entity.ToTable("Room");

                entity.Property(e => e.Id)
                    .HasMaxLength(36)
                    .IsUnicode(false)
                    .IsFixedLength(true);

                entity.Property(e => e.BookingDate).HasColumnType("date");

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("date");

                entity.Property(e => e.EndDate).HasColumnType("date");

                entity.Property(e => e.RoomName)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Image);

                entity.Property(e => e.LocationId)
                    .HasMaxLength(36)
                    .IsUnicode(false)
                    .IsFixedLength(true);

                entity.Property(e => e.ModifiedBy).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("date");

                entity.Property(e => e.Price)
                    .IsRequired()
                    .HasColumnType("int");

                entity.Property(e => e.RoomEmail)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.RoomPhoneNumber)
                    .HasMaxLength(12)
                    .IsUnicode(false)
                    .IsFixedLength(true);

                entity.Property(e => e.Tag)
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Bed).IsRequired(false);
                entity.Property(e => e.QuantityRoom).IsRequired(false);
            });

            OnModelCreatingPartial(modelBuilder);
            SeedRoles(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);

        private static void SeedRoles(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<IdentityRole>().HasData(
                new IdentityRole() { Name = "Admin", ConcurrencyStamp = "1", NormalizedName = "Admin" },
                new IdentityRole() { Name = "User", ConcurrencyStamp = "2", NormalizedName = "User" },
                new IdentityRole() { Name = "Boss", ConcurrencyStamp = "3", NormalizedName = "Boss" }
            );
        }
    }
}
