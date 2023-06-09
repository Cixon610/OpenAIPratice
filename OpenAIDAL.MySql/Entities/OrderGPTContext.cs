﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace OpenAIDAL.MySql.Entities
{
    public partial class OrderGPTContext : DbContext
    {
        public OrderGPTContext()
        {
        }

        public OrderGPTContext(DbContextOptions<OrderGPTContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Availableice> Availableice { get; set; }
        public virtual DbSet<Availablesize> Availablesize { get; set; }
        public virtual DbSet<Availablesuger> Availablesuger { get; set; }
        public virtual DbSet<Availabletopping> Availabletopping { get; set; }
        public virtual DbSet<Conversation> Conversation { get; set; }
        public virtual DbSet<Ipblocker> Ipblocker { get; set; }
        public virtual DbSet<Itemstore> Itemstore { get; set; }
        public virtual DbSet<Loginlog> Loginlog { get; set; }
        public virtual DbSet<Menuitem> Menuitem { get; set; }
        public virtual DbSet<Menuitemtype> Menuitemtype { get; set; }
        public virtual DbSet<Message> Message { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<Orderdetail> Orderdetail { get; set; }
        public virtual DbSet<Orderdetailtopping> Orderdetailtopping { get; set; }
        public virtual DbSet<Topping> Topping { get; set; }
        public virtual DbSet<Toppingstore> Toppingstore { get; set; }
        public virtual DbSet<User> User { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.UseCollation("utf8mb3_general_ci")
                .HasCharSet("utf8mb3");

            modelBuilder.Entity<Availableice>(entity =>
            {
                entity.ToTable("availableice");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.MenuItemId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("MenuItemID")
                    .IsFixedLength();

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(10);
            });

            modelBuilder.Entity<Availablesize>(entity =>
            {
                entity.ToTable("availablesize");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.MenuItemId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("MenuItemID")
                    .IsFixedLength();

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(10);
            });

            modelBuilder.Entity<Availablesuger>(entity =>
            {
                entity.ToTable("availablesuger");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.MenuItemId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("MenuItemID")
                    .IsFixedLength();

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(10);
            });

            modelBuilder.Entity<Availabletopping>(entity =>
            {
                entity.ToTable("availabletopping");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.MenuItemId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("MenuItemID")
                    .IsFixedLength();

                entity.Property(e => e.ToppingId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("ToppingID")
                    .IsFixedLength();
            });

            modelBuilder.Entity<Conversation>(entity =>
            {
                entity.ToTable("conversation");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");

                entity.Property(e => e.UserId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("UserID")
                    .IsFixedLength();
            });

            modelBuilder.Entity<Ipblocker>(entity =>
            {
                entity.ToTable("ipblocker");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.Enable).HasColumnType("bit(1)");

                entity.Property(e => e.Ipaddress)
                    .IsRequired()
                    .HasMaxLength(20)
                    .HasColumnName("IPAddress");

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");

                entity.Property(e => e.UserId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("UserID")
                    .IsFixedLength();
            });

            modelBuilder.Entity<Itemstore>(entity =>
            {
                entity.ToTable("itemstore");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.MenuItemId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("MenuItemID")
                    .IsFixedLength();

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");
            });

            modelBuilder.Entity<Loginlog>(entity =>
            {
                entity.ToTable("loginlog");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.CountryCode)
                    .IsRequired()
                    .HasMaxLength(10);

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.Device)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Ipaddress)
                    .IsRequired()
                    .HasMaxLength(20)
                    .HasColumnName("IPAddress");

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");

                entity.Property(e => e.UserId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("UserID")
                    .IsFixedLength();
            });

            modelBuilder.Entity<Menuitem>(entity =>
            {
                entity.ToTable("menuitem");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.MenuItemTypeId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("MenuItemTypeID")
                    .IsFixedLength();

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");
            });

            modelBuilder.Entity<Menuitemtype>(entity =>
            {
                entity.ToTable("menuitemtype");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.Description).HasMaxLength(200);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");
            });

            modelBuilder.Entity<Message>(entity =>
            {
                entity.ToTable("message");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.ConversationId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("ConversationID")
                    .IsFixedLength();

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.Message1)
                    .IsRequired()
                    .HasColumnName("Message");

                entity.Property(e => e.OrderId).HasColumnName("OrderID");

                entity.Property(e => e.Role)
                    .IsRequired()
                    .HasMaxLength(30);

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");
            });

            modelBuilder.Entity<Order>(entity =>
            {
                entity.ToTable("order");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.Memo)
                    .IsRequired()
                    .HasMaxLength(300);

                entity.Property(e => e.MessageId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("MessageID")
                    .IsFixedLength();

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");

                entity.Property(e => e.UserId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("UserID")
                    .IsFixedLength();
            });

            modelBuilder.Entity<Orderdetail>(entity =>
            {
                entity.ToTable("orderdetail");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.Ice)
                    .IsRequired()
                    .HasMaxLength(10);

                entity.Property(e => e.ItemId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("ItemID")
                    .IsFixedLength();

                entity.Property(e => e.ItemName)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Memo).HasMaxLength(300);

                entity.Property(e => e.OrderId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("OrderID")
                    .IsFixedLength();

                entity.Property(e => e.Size)
                    .IsRequired()
                    .HasMaxLength(10);

                entity.Property(e => e.Suger)
                    .IsRequired()
                    .HasMaxLength(10);

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");
            });

            modelBuilder.Entity<Orderdetailtopping>(entity =>
            {
                entity.ToTable("orderdetailtopping");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.Memo)
                    .IsRequired()
                    .HasMaxLength(300);

                entity.Property(e => e.OrderDetailId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("OrderDetailID")
                    .IsFixedLength();

                entity.Property(e => e.OrderId)
                    .HasMaxLength(38)
                    .HasColumnName("OrderID")
                    .IsFixedLength();

                entity.Property(e => e.ToppingId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("ToppingID")
                    .IsFixedLength();

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");
            });

            modelBuilder.Entity<Topping>(entity =>
            {
                entity.ToTable("topping");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");
            });

            modelBuilder.Entity<Toppingstore>(entity =>
            {
                entity.ToTable("toppingstore");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.ToppingId)
                    .IsRequired()
                    .HasMaxLength(38)
                    .HasColumnName("ToppingID")
                    .IsFixedLength();

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("user");

                entity.Property(e => e.Id)
                    .HasMaxLength(38)
                    .HasColumnName("ID")
                    .IsFixedLength();

                entity.Property(e => e.Account)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.CreatedDatetime).HasColumnType("datetime");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(100);

                entity.Property(e => e.UpdateDatetime).HasColumnType("datetime");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}