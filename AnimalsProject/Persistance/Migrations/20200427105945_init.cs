using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Persistance.Migrations
{
    public partial class init : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Addresses",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    Name = table.Column<string>(maxLength: 200, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Addresses", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "AspNetRoles",
                columns: table => new
                {
                    Id = table.Column<string>(nullable: false),
                    Name = table.Column<string>(maxLength: 256, nullable: true),
                    NormalizedName = table.Column<string>(maxLength: 256, nullable: true),
                    ConcurrencyStamp = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetRoles", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "AttitudeTo",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    Name = table.Column<string>(maxLength: 250, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AttitudeTo", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Breed",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    BreedUkrainian = table.Column<string>(maxLength: 200, nullable: true),
                    BreedEnglish = table.Column<string>(maxLength: 200, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Breed", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Categories",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    Name = table.Column<string>(maxLength: 200, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Categories", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Defects",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    Type = table.Column<string>(maxLength: 200, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Defects", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Foods",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    Name = table.Column<string>(maxLength: 200, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Foods", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Helps",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    KindOfHelp = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Helps", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Keepings",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    Name = table.Column<string>(maxLength: 200, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Keepings", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Needs",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    Name = table.Column<string>(maxLength: 200, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Needs", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Processings",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    Type = table.Column<string>(maxLength: 200, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Processings", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Tags",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    Name = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Tags", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Vaccinations",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    Name = table.Column<string>(maxLength: 200, nullable: false),
                    Type = table.Column<string>(maxLength: 200, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Vaccinations", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUsers",
                columns: table => new
                {
                    Id = table.Column<string>(nullable: false),
                    UserName = table.Column<string>(maxLength: 256, nullable: true),
                    NormalizedUserName = table.Column<string>(maxLength: 256, nullable: true),
                    Email = table.Column<string>(maxLength: 256, nullable: true),
                    NormalizedEmail = table.Column<string>(maxLength: 256, nullable: true),
                    EmailConfirmed = table.Column<bool>(nullable: false),
                    PasswordHash = table.Column<string>(nullable: true),
                    SecurityStamp = table.Column<string>(nullable: true),
                    ConcurrencyStamp = table.Column<string>(nullable: true),
                    PhoneNumber = table.Column<string>(nullable: true),
                    PhoneNumberConfirmed = table.Column<bool>(nullable: false),
                    TwoFactorEnabled = table.Column<bool>(nullable: false),
                    LockoutEnd = table.Column<DateTimeOffset>(nullable: true),
                    LockoutEnabled = table.Column<bool>(nullable: false),
                    AccessFailedCount = table.Column<int>(nullable: false),
                    FullName = table.Column<string>(nullable: true),
                    AddressId = table.Column<long>(nullable: false),
                    RefreshToken = table.Column<string>(nullable: true),
                    LastActive = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUsers", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AspNetUsers_Addresses_AddressId",
                        column: x => x.AddressId,
                        principalTable: "Addresses",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "AspNetRoleClaims",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RoleId = table.Column<string>(nullable: false),
                    ClaimType = table.Column<string>(nullable: true),
                    ClaimValue = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetRoleClaims", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AspNetRoleClaims_AspNetRoles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "AspNetRoles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Animals",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    ViewCount = table.Column<int>(nullable: false),
                    Name = table.Column<string>(maxLength: 200, nullable: false),
                    DateOfBirth = table.Column<DateTime>(nullable: false),
                    Weight = table.Column<double>(nullable: false),
                    WithersHeight = table.Column<double>(nullable: false),
                    NeckCircumference = table.Column<double>(nullable: false),
                    Comment = table.Column<string>(maxLength: 200, nullable: true),
                    IsHidden = table.Column<bool>(nullable: false),
                    Status = table.Column<int>(nullable: false, defaultValue: 0),
                    IsNew = table.Column<bool>(nullable: false),
                    FoundDate = table.Column<DateTime>(nullable: false),
                    ContinuatitonOfTreatment = table.Column<bool>(nullable: false),
                    ChipNumber = table.Column<long>(nullable: false),
                    Gender = table.Column<int>(nullable: false),
                    Sterialization = table.Column<int>(nullable: false),
                    AddressId = table.Column<long>(nullable: false),
                    CategoryId = table.Column<long>(nullable: false),
                    FoodId = table.Column<long>(nullable: false),
                    BreedId = table.Column<long>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Animals", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Animals_Addresses_AddressId",
                        column: x => x.AddressId,
                        principalTable: "Addresses",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Animals_Breed_BreedId",
                        column: x => x.BreedId,
                        principalTable: "Breed",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Animals_Categories_CategoryId",
                        column: x => x.CategoryId,
                        principalTable: "Categories",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Animals_Foods_FoodId",
                        column: x => x.FoodId,
                        principalTable: "Foods",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Articles",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    ViewCount = table.Column<int>(nullable: false),
                    Title = table.Column<string>(nullable: true),
                    Content = table.Column<string>(nullable: false),
                    UserId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Articles", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Articles_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserClaims",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserId = table.Column<string>(nullable: false),
                    ClaimType = table.Column<string>(nullable: true),
                    ClaimValue = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserClaims", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AspNetUserClaims_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserLogins",
                columns: table => new
                {
                    LoginProvider = table.Column<string>(nullable: false),
                    ProviderKey = table.Column<string>(nullable: false),
                    ProviderDisplayName = table.Column<string>(nullable: true),
                    UserId = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserLogins", x => new { x.LoginProvider, x.ProviderKey });
                    table.ForeignKey(
                        name: "FK_AspNetUserLogins_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserRoles",
                columns: table => new
                {
                    UserId = table.Column<string>(nullable: false),
                    RoleId = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserRoles", x => new { x.UserId, x.RoleId });
                    table.ForeignKey(
                        name: "FK_AspNetUserRoles_AspNetRoles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "AspNetRoles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AspNetUserRoles_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserTokens",
                columns: table => new
                {
                    UserId = table.Column<string>(nullable: false),
                    LoginProvider = table.Column<string>(nullable: false),
                    Name = table.Column<string>(nullable: false),
                    Value = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserTokens", x => new { x.UserId, x.LoginProvider, x.Name });
                    table.ForeignKey(
                        name: "FK_AspNetUserTokens_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "UserHelps",
                columns: table => new
                {
                    UserId = table.Column<string>(nullable: false),
                    HelpId = table.Column<int>(nullable: false),
                    Comment = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserHelps", x => new { x.UserId, x.HelpId });
                    table.ForeignKey(
                        name: "FK_UserHelps_Helps_HelpId",
                        column: x => x.HelpId,
                        principalTable: "Helps",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_UserHelps_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AdoptOrders",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    AnimalId = table.Column<long>(nullable: false),
                    UserId = table.Column<string>(nullable: true),
                    UserMotivation = table.Column<string>(nullable: true),
                    AdminComment = table.Column<string>(nullable: true),
                    Status = table.Column<int>(nullable: false, defaultValue: 0),
                    ClosingDate = table.Column<DateTime>(nullable: false),
                    EndingDate = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AdoptOrders", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AdoptOrders_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AdoptOrders_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "AnimalAttitudeTo",
                columns: table => new
                {
                    AnimalId = table.Column<long>(nullable: false),
                    AttitudeId = table.Column<long>(nullable: false),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    Mark = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AnimalAttitudeTo", x => new { x.AnimalId, x.AttitudeId });
                    table.ForeignKey(
                        name: "FK_AnimalAttitudeTo_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AnimalAttitudeTo_AttitudeTo_AttitudeId",
                        column: x => x.AttitudeId,
                        principalTable: "AttitudeTo",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AnimalDefects",
                columns: table => new
                {
                    AnimalId = table.Column<long>(nullable: false),
                    DefectsId = table.Column<long>(nullable: false),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AnimalDefects", x => new { x.AnimalId, x.DefectsId });
                    table.ForeignKey(
                        name: "FK_AnimalDefects_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AnimalDefects_Defects_DefectsId",
                        column: x => x.DefectsId,
                        principalTable: "Defects",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AnimalDescriptions",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    LanguageUa = table.Column<string>(nullable: true),
                    LanguageEn = table.Column<string>(nullable: true),
                    AnimalId = table.Column<long>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AnimalDescriptions", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AnimalDescriptions_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AnimalKeeping",
                columns: table => new
                {
                    AnimalId = table.Column<long>(nullable: false),
                    KeepingId = table.Column<long>(nullable: false),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AnimalKeeping", x => new { x.AnimalId, x.KeepingId });
                    table.ForeignKey(
                        name: "FK_AnimalKeeping_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AnimalKeeping_Keepings_KeepingId",
                        column: x => x.KeepingId,
                        principalTable: "Keepings",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AnimalLocationHistories",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    AnimalId = table.Column<long>(nullable: false),
                    AddressId = table.Column<long>(nullable: false),
                    Date = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AnimalLocationHistories", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AnimalLocationHistories_Addresses_AddressId",
                        column: x => x.AddressId,
                        principalTable: "Addresses",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_AnimalLocationHistories_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AnimalNeeds",
                columns: table => new
                {
                    AnimalId = table.Column<long>(nullable: false),
                    NeedsId = table.Column<long>(nullable: false),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AnimalNeeds", x => new { x.AnimalId, x.NeedsId });
                    table.ForeignKey(
                        name: "FK_AnimalNeeds_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AnimalNeeds_Needs_NeedsId",
                        column: x => x.NeedsId,
                        principalTable: "Needs",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AnimalProcessing",
                columns: table => new
                {
                    AnimalId = table.Column<long>(nullable: false),
                    ProcessingId = table.Column<long>(nullable: false),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    IsRepeat = table.Column<bool>(nullable: false),
                    ProcessingDate = table.Column<DateTime>(nullable: false),
                    NextProcessingDate = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AnimalProcessing", x => new { x.AnimalId, x.ProcessingId });
                    table.ForeignKey(
                        name: "FK_AnimalProcessing_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AnimalProcessing_Processings_ProcessingId",
                        column: x => x.ProcessingId,
                        principalTable: "Processings",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AnimalVaccination",
                columns: table => new
                {
                    AnimalId = table.Column<long>(nullable: false),
                    VaccinationId = table.Column<long>(nullable: false),
                    VaccinationDate = table.Column<DateTime>(nullable: false),
                    NextVaccinationDate = table.Column<DateTime>(nullable: false),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AnimalVaccination", x => new { x.AnimalId, x.VaccinationId, x.VaccinationDate, x.NextVaccinationDate });
                    table.ForeignKey(
                        name: "FK_AnimalVaccination_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AnimalVaccination_Vaccinations_VaccinationId",
                        column: x => x.VaccinationId,
                        principalTable: "Vaccinations",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AnimalVideos",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    FileName = table.Column<string>(nullable: false),
                    Url = table.Column<string>(nullable: true),
                    AnimalId = table.Column<long>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AnimalVideos", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AnimalVideos_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AnimalViewLocations",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Location = table.Column<string>(nullable: true),
                    AnimalId = table.Column<long>(nullable: false),
                    Count = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AnimalViewLocations", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AnimalViewLocations_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "BookOrders",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    AnimalId = table.Column<long>(nullable: false),
                    UserId = table.Column<string>(nullable: true),
                    UserMotivation = table.Column<string>(nullable: true),
                    AdminComment = table.Column<string>(nullable: true),
                    Status = table.Column<int>(nullable: false, defaultValue: 0),
                    ClosingDate = table.Column<DateTime>(nullable: false),
                    EndingDate = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BookOrders", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BookOrders_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_BookOrders_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Images",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    FileName = table.Column<string>(nullable: true),
                    ImageData = table.Column<string>(nullable: true),
                    AnimalId = table.Column<long>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Images", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Images_Animals_AnimalId",
                        column: x => x.AnimalId,
                        principalTable: "Animals",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ArticleImages",
                columns: table => new
                {
                    Id = table.Column<long>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true),
                    FileName = table.Column<string>(nullable: true),
                    ImageData = table.Column<string>(nullable: false),
                    ArticleId = table.Column<long>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ArticleImages", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ArticleImages_Articles_ArticleId",
                        column: x => x.ArticleId,
                        principalTable: "Articles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ArticleTags",
                columns: table => new
                {
                    ArticleId = table.Column<long>(nullable: false),
                    TagId = table.Column<long>(nullable: false),
                    CreatedBy = table.Column<string>(nullable: true),
                    Created = table.Column<DateTime>(nullable: true),
                    LastModifiedBy = table.Column<string>(nullable: true),
                    LastModified = table.Column<DateTime>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ArticleTags", x => new { x.ArticleId, x.TagId });
                    table.ForeignKey(
                        name: "FK_ArticleTags_Articles_ArticleId",
                        column: x => x.ArticleId,
                        principalTable: "Articles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ArticleTags_Tags_TagId",
                        column: x => x.TagId,
                        principalTable: "Tags",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.InsertData(
                table: "Addresses",
                columns: new[] { "Id", "Created", "CreatedBy", "LastModified", "LastModifiedBy", "Name" },
                values: new object[,]
                {
                    { 1L, null, null, null, null, "Berlin" },
                    { 2L, null, null, null, null, "Hamburg" },
                    { 3L, null, null, null, null, "Munich" },
                    { 4L, null, null, null, null, "Cologne" },
                    { 5L, null, null, null, null, "Frankfurt" },
                    { 6L, null, null, null, null, "Stuttgart" },
                    { 7L, null, null, null, null, "Dusseldorf" },
                    { 8L, null, null, null, null, "Dortmund" },
                    { 9L, null, null, null, null, "Essen" },
                    { 10L, null, null, null, null, "Leipzig" }
                });

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[,]
                {
                    { "2", "e362220a-204b-46d5-866c-103b3a0c732b", "Admin", "ADMIN" },
                    { "1", "8d9b6fa6-2890-4abd-9926-df0edd239c21", "SuperAdmin", "SUPERADMIN" },
                    { "3", "222d3cdf-b4a0-40ac-8f2a-35698921250e", "Observer", "OBSERVER" },
                    { "4", "d6636128-89c0-456a-a9e7-e03799b86037", "User", "USER" }
                });

            migrationBuilder.InsertData(
                table: "AttitudeTo",
                columns: new[] { "Id", "Created", "CreatedBy", "LastModified", "LastModifiedBy", "Name" },
                values: new object[,]
                {
                    { 2L, null, null, null, null, "Cats" },
                    { 1L, null, null, null, null, "Childrens" },
                    { 3L, null, null, null, null, "Dogs" }
                });

            migrationBuilder.InsertData(
                table: "Breed",
                columns: new[] { "Id", "BreedEnglish", "BreedUkrainian", "Created", "CreatedBy", "LastModified", "LastModifiedBy" },
                values: new object[,]
                {
                    { 2L, "Kintamani", "Кінтамані", null, null, null, null },
                    { 11L, "Kai Ken", "Кай Кен", null, null, null, null },
                    { 9L, "Sapsali", "Сапсали", null, null, null, null },
                    { 10L, "Pungsan dog", "Собака Пуссан", null, null, null, null },
                    { 7L, "Bengal", "Бенгальський", null, null, null, null },
                    { 6L, "French Bulldog", "Французький бульдог", null, null, null, null },
                    { 5L, "Greyhound", "Хорт", null, null, null, null },
                    { 4L, "Birman", "Бірманська кішка", null, null, null, null },
                    { 3L, "Japanese Terrier", "Японський Тер'єр", null, null, null, null },
                    { 8L, "McNab dog", "Собака Макнаба", null, null, null, null },
                    { 1L, "Abyssinian", "абіссінський", null, null, null, null }
                });

            migrationBuilder.InsertData(
                table: "Categories",
                columns: new[] { "Id", "Created", "CreatedBy", "LastModified", "LastModifiedBy", "Name" },
                values: new object[,]
                {
                    { 1L, null, null, null, null, "Dog" },
                    { 2L, null, null, null, null, "Cat" },
                    { 3L, null, null, null, null, "Others" }
                });

            migrationBuilder.InsertData(
                table: "Defects",
                columns: new[] { "Id", "Created", "CreatedBy", "LastModified", "LastModifiedBy", "Type" },
                values: new object[,]
                {
                    { 3L, null, null, null, null, "Vision disability" },
                    { 1L, null, null, null, null, "Front pow disability" },
                    { 2L, null, null, null, null, "Back pow disability" },
                    { 4L, null, null, null, null, "Hearing disability" }
                });

            migrationBuilder.InsertData(
                table: "Foods",
                columns: new[] { "Id", "Created", "CreatedBy", "LastModified", "LastModifiedBy", "Name" },
                values: new object[,]
                {
                    { 2L, null, null, null, null, "Medical feed" },
                    { 3L, null, null, null, null, "Natural feed" },
                    { 1L, null, null, null, null, "Premium feed" }
                });

            migrationBuilder.InsertData(
                table: "Helps",
                columns: new[] { "Id", "KindOfHelp" },
                values: new object[,]
                {
                    { 3, "Temporary placement" },
                    { 1, "Transport" },
                    { 4, "Other" },
                    { 2, "Walking" }
                });

            migrationBuilder.InsertData(
                table: "Keepings",
                columns: new[] { "Id", "Created", "CreatedBy", "LastModified", "LastModifiedBy", "Name" },
                values: new object[,]
                {
                    { 2L, null, null, null, null, "Enclosed house with yard" },
                    { 3L, null, null, null, null, "Wintering only in the house" },
                    { 1L, null, null, null, null, "Flat" }
                });

            migrationBuilder.InsertData(
                table: "Needs",
                columns: new[] { "Id", "Created", "CreatedBy", "LastModified", "LastModifiedBy", "Name" },
                values: new object[,]
                {
                    { 1L, null, null, null, null, "Need to be housed with other animals" },
                    { 2L, null, null, null, null, "Need to be housed apart from other animals" },
                    { 3L, null, null, null, null, "Need for a suitable diet" }
                });

            migrationBuilder.InsertData(
                table: "Processings",
                columns: new[] { "Id", "Created", "CreatedBy", "LastModified", "LastModifiedBy", "Type" },
                values: new object[,]
                {
                    { 2L, null, null, null, null, "Anti-worms processing" },
                    { 1L, null, null, null, null, "Anti-flea and anti-ticks processing" }
                });

            migrationBuilder.InsertData(
                table: "Tags",
                columns: new[] { "Id", "Created", "CreatedBy", "LastModified", "LastModifiedBy", "Name" },
                values: new object[,]
                {
                    { 2L, null, null, null, null, "Keepings" },
                    { 5L, null, null, null, null, "AnimalHealth" },
                    { 1L, null, null, null, null, "Vaccination" },
                    { 3L, null, null, null, null, "Defects" },
                    { 4L, null, null, null, null, "Proccesing" }
                });

            migrationBuilder.InsertData(
                table: "Vaccinations",
                columns: new[] { "Id", "Created", "CreatedBy", "LastModified", "LastModifiedBy", "Name", "Type" },
                values: new object[,]
                {
                    { 1L, null, null, null, null, "Daramoon", "Common" },
                    { 2L, null, null, null, null, "Vangard", "Common" },
                    { 3L, null, null, null, null, "Nobivak", "Common" },
                    { 4L, null, null, null, null, "Rabisin", "Rabies vaccine" },
                    { 5L, null, null, null, null, "Rabistar", "Rabies vaccine" }
                });

            migrationBuilder.InsertData(
                table: "Animals",
                columns: new[] { "Id", "AddressId", "BreedId", "CategoryId", "ChipNumber", "Comment", "ContinuatitonOfTreatment", "Created", "CreatedBy", "DateOfBirth", "FoodId", "FoundDate", "Gender", "IsHidden", "IsNew", "LastModified", "LastModifiedBy", "Name", "NeckCircumference", "Sterialization", "ViewCount", "Weight", "WithersHeight" },
                values: new object[,]
                {
                    { 13L, 2L, 4L, 1L, 12342138L, null, true, new DateTime(2020, 1, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2019, 1, 8, 0, 0, 0, 0, DateTimeKind.Unspecified), 1L, new DateTime(2020, 1, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 0, false, true, null, null, "Alkadin", 10.199999999999999, 0, 0, 2.5, 15.0 },
                    { 4L, 4L, 5L, 3L, 12445678L, null, false, new DateTime(2019, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2014, 10, 7, 0, 0, 0, 0, DateTimeKind.Unspecified), 3L, new DateTime(2019, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 0, false, false, null, null, "Jimbo", 10.199999999999999, 1, 0, 5.5, 5.0 },
                    { 16L, 3L, 7L, 2L, 12345611L, null, true, new DateTime(2018, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2015, 10, 8, 0, 0, 0, 0, DateTimeKind.Unspecified), 2L, new DateTime(2017, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 0, false, false, null, null, "Baron", 10.199999999999999, 0, 0, 2.5, 15.0 },
                    { 11L, 4L, 9L, 3L, 11145688L, null, true, new DateTime(2018, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2014, 10, 8, 0, 0, 0, 0, DateTimeKind.Unspecified), 2L, new DateTime(2017, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 1, false, false, null, null, "Puma", 10.199999999999999, 0, 0, 21.5, 5.0 },
                    { 6L, 6L, 3L, 2L, 12346678L, null, true, new DateTime(2019, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2019, 10, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), 2L, new DateTime(2019, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 0, false, true, null, null, "Sonia", 1.2, 0, 0, 25.5, 45.0 }
                });

            migrationBuilder.InsertData(
                table: "Animals",
                columns: new[] { "Id", "AddressId", "BreedId", "CategoryId", "ChipNumber", "Comment", "ContinuatitonOfTreatment", "Created", "CreatedBy", "DateOfBirth", "FoodId", "FoundDate", "Gender", "IsHidden", "IsNew", "LastModified", "LastModifiedBy", "Name", "NeckCircumference", "Status", "Sterialization", "ViewCount", "Weight", "WithersHeight" },
                values: new object[] { 2L, 2L, 7L, 2L, 13345678L, null, false, new DateTime(2019, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2017, 8, 18, 0, 0, 0, 0, DateTimeKind.Unspecified), 2L, new DateTime(2019, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 1, false, true, null, null, "Lola", 9.1999999999999993, 1, 2, 0, 25.5, 45.0 });

            migrationBuilder.InsertData(
                table: "Animals",
                columns: new[] { "Id", "AddressId", "BreedId", "CategoryId", "ChipNumber", "Comment", "ContinuatitonOfTreatment", "Created", "CreatedBy", "DateOfBirth", "FoodId", "FoundDate", "Gender", "IsHidden", "IsNew", "LastModified", "LastModifiedBy", "Name", "NeckCircumference", "Sterialization", "ViewCount", "Weight", "WithersHeight" },
                values: new object[,]
                {
                    { 14L, 2L, 1L, 1L, 32132688L, null, true, new DateTime(2018, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2018, 10, 8, 0, 0, 0, 0, DateTimeKind.Unspecified), 1L, new DateTime(2018, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 0, false, false, null, null, "Neo", 10.199999999999999, 0, 0, 42.5, 125.0 },
                    { 10L, 5L, 1L, 1L, 33345688L, null, true, new DateTime(2018, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2018, 10, 8, 0, 0, 0, 0, DateTimeKind.Unspecified), 3L, new DateTime(2017, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 0, false, false, null, null, "Bee", 10.199999999999999, 0, 0, 2.5, 15.0 },
                    { 15L, 4L, 7L, 2L, 88885688L, null, false, new DateTime(2015, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2018, 10, 18, 0, 0, 0, 0, DateTimeKind.Unspecified), 3L, new DateTime(2014, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 1, false, false, null, null, "Theo", 0.20000000000000001, 0, 0, 2.5, 15.0 },
                    { 9L, 2L, 2L, 2L, 12345681L, null, false, new DateTime(2018, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2018, 5, 8, 0, 0, 0, 0, DateTimeKind.Unspecified), 1L, new DateTime(2017, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 1, false, true, null, null, "Alpaca", 1.2, 1, 0, 12.5, 5.0 },
                    { 8L, 2L, 2L, 1L, 12345688L, null, true, new DateTime(2018, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2017, 10, 8, 0, 0, 0, 0, DateTimeKind.Unspecified), 1L, new DateTime(2017, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 0, false, false, null, null, "Khora", 10.199999999999999, 0, 0, 2.5, 15.0 },
                    { 7L, 6L, 3L, 1L, 12345778L, null, true, new DateTime(2019, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2016, 10, 8, 0, 0, 0, 0, DateTimeKind.Unspecified), 1L, new DateTime(2019, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 0, false, true, null, null, "Havoc", 10.199999999999999, 2, 0, 25.5, 45.0 },
                    { 5L, 1L, 4L, 1L, 12355678L, null, false, new DateTime(2019, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2018, 7, 7, 0, 0, 0, 0, DateTimeKind.Unspecified), 1L, new DateTime(2019, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 1, false, false, null, null, "Arnold", 10.199999999999999, 0, 0, 2.5, 15.0 }
                });

            migrationBuilder.InsertData(
                table: "Animals",
                columns: new[] { "Id", "AddressId", "BreedId", "CategoryId", "ChipNumber", "Comment", "ContinuatitonOfTreatment", "Created", "CreatedBy", "DateOfBirth", "FoodId", "FoundDate", "Gender", "IsHidden", "IsNew", "LastModified", "LastModifiedBy", "Name", "NeckCircumference", "Status", "Sterialization", "ViewCount", "Weight", "WithersHeight" },
                values: new object[] { 3L, 1L, 6L, 1L, 12245678L, "Good pet. Ty for service.", true, new DateTime(2019, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2018, 10, 7, 0, 0, 0, 0, DateTimeKind.Unspecified), 1L, new DateTime(2019, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 0, false, false, null, null, "Josh", 10.199999999999999, 2, 0, 0, 15.5, 15.0 });

            migrationBuilder.InsertData(
                table: "Animals",
                columns: new[] { "Id", "AddressId", "BreedId", "CategoryId", "ChipNumber", "Comment", "ContinuatitonOfTreatment", "Created", "CreatedBy", "DateOfBirth", "FoodId", "FoundDate", "Gender", "IsHidden", "IsNew", "LastModified", "LastModifiedBy", "Name", "NeckCircumference", "Sterialization", "ViewCount", "Weight", "WithersHeight" },
                values: new object[] { 12L, 1L, 3L, 1L, 444445688L, null, false, new DateTime(2020, 1, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), null, new DateTime(2019, 10, 8, 0, 0, 0, 0, DateTimeKind.Unspecified), 1L, new DateTime(2017, 10, 15, 0, 0, 0, 0, DateTimeKind.Unspecified), 0, false, true, null, null, "Aladin", 10.199999999999999, 0, 0, 222.5, 15.0 });

            migrationBuilder.InsertData(
                table: "AspNetUsers",
                columns: new[] { "Id", "AccessFailedCount", "AddressId", "ConcurrencyStamp", "Email", "EmailConfirmed", "FullName", "LastActive", "LockoutEnabled", "LockoutEnd", "NormalizedEmail", "NormalizedUserName", "PasswordHash", "PhoneNumber", "PhoneNumberConfirmed", "RefreshToken", "SecurityStamp", "TwoFactorEnabled", "UserName" },
                values: new object[,]
                {
                    { "2", 0, 3L, "6786fdcc-c4d2-41e5-b015-7b5b80894758", "service@gmail.com", true, "just admin", new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), false, null, "SERVICE@GMAIL.COM", "SERVICE@GMAIL.COM", null, "0974128342", false, null, "d40709fe-db96-44e9-8f1c-546e87a4c66f", false, "service@gmail.com" },
                    { "1", 0, 2L, "c859f7d8-147f-48e0-b86a-7b4289aee732", "pets.adoption.service@gmail.com", true, "Super main admin", new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), false, null, "PETS.ADOPTIONS.SERVICE@GMAIL.COM", "PETS.ADOPTIONS.SERVICE@GMAIL.COM", null, "0974128341", false, null, "26444d83-a9cb-4c5b-a2b8-97be56043658", false, "pets.adoption.service@gmail.com" }
                });

            migrationBuilder.InsertData(
                table: "AdoptOrders",
                columns: new[] { "Id", "AdminComment", "AnimalId", "ClosingDate", "Created", "CreatedBy", "EndingDate", "LastModified", "LastModifiedBy", "Status", "UserId", "UserMotivation" },
                values: new object[,]
                {
                    { 3L, null, 10L, new DateTime(2019, 10, 18, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, 2, "1", "i want to adopt this pet, because i love pets, and want to help them" },
                    { 2L, "Declined because your cause is criminal", 3L, new DateTime(2019, 7, 25, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, new DateTime(2019, 8, 5, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, 1, "2", "i want to adopt this pet, because i have kebab cafe at the city center" }
                });

            migrationBuilder.InsertData(
                table: "AdoptOrders",
                columns: new[] { "Id", "AdminComment", "AnimalId", "ClosingDate", "Created", "CreatedBy", "EndingDate", "LastModified", "LastModifiedBy", "UserId", "UserMotivation" },
                values: new object[] { 1L, null, 9L, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, "1", "i want to adopt this pet, because i am alone, and need friend" });

            migrationBuilder.InsertData(
                table: "AnimalAttitudeTo",
                columns: new[] { "AnimalId", "AttitudeId", "Created", "CreatedBy", "LastModified", "LastModifiedBy", "Mark" },
                values: new object[,]
                {
                    { 11L, 1L, null, null, null, null, 5 },
                    { 2L, 2L, null, null, null, null, 3 },
                    { 11L, 2L, null, null, null, null, 2 },
                    { 11L, 3L, null, null, null, null, 4 },
                    { 4L, 1L, null, null, null, null, 3 },
                    { 12L, 1L, null, null, null, null, 3 }
                });

            migrationBuilder.InsertData(
                table: "AnimalDefects",
                columns: new[] { "AnimalId", "DefectsId", "Created", "CreatedBy", "LastModified", "LastModifiedBy" },
                values: new object[,]
                {
                    { 11L, 4L, null, null, null, null },
                    { 10L, 2L, null, null, null, null },
                    { 13L, 1L, null, null, null, null },
                    { 8L, 1L, null, null, null, null }
                });

            migrationBuilder.InsertData(
                table: "AnimalDescriptions",
                columns: new[] { "Id", "AnimalId", "Created", "CreatedBy", "LanguageEn", "LanguageUa", "LastModified", "LastModifiedBy" },
                values: new object[,]
                {
                    { 4L, 5L, null, null, "Hi its another pet", "Привіт це інша тваринка", null, null },
                    { 2L, 3L, null, null, "Hi its cat", "Привіт це котик", null, null },
                    { 6L, 7L, null, null, "Hi its cute pet", "Привіт це мила тваринка", null, null },
                    { 5L, 6L, null, null, "Hi its friandly pet", "Привіт це дружелюбна тваринка", null, null },
                    { 3L, 4L, null, null, "Hi its pet", "Привіт це тваринка", null, null },
                    { 1L, 2L, null, null, "Hi its dog", "Привіт це песик", null, null }
                });

            migrationBuilder.InsertData(
                table: "AnimalKeeping",
                columns: new[] { "AnimalId", "KeepingId", "Created", "CreatedBy", "LastModified", "LastModifiedBy" },
                values: new object[,]
                {
                    { 16L, 1L, null, null, null, null },
                    { 12L, 2L, null, null, null, null },
                    { 12L, 1L, null, null, null, null },
                    { 14L, 2L, null, null, null, null },
                    { 2L, 1L, null, null, null, null },
                    { 2L, 3L, null, null, null, null },
                    { 6L, 2L, null, null, null, null },
                    { 4L, 2L, null, null, null, null },
                    { 11L, 1L, null, null, null, null },
                    { 10L, 2L, null, null, null, null },
                    { 13L, 1L, null, null, null, null },
                    { 15L, 1L, null, null, null, null },
                    { 9L, 1L, null, null, null, null },
                    { 7L, 1L, null, null, null, null },
                    { 8L, 2L, null, null, null, null },
                    { 5L, 1L, null, null, null, null },
                    { 3L, 3L, null, null, null, null }
                });

            migrationBuilder.InsertData(
                table: "AnimalNeeds",
                columns: new[] { "AnimalId", "NeedsId", "Created", "CreatedBy", "LastModified", "LastModifiedBy" },
                values: new object[,]
                {
                    { 2L, 2L, null, null, null, null },
                    { 8L, 2L, null, null, null, null },
                    { 2L, 3L, null, null, null, null },
                    { 7L, 3L, null, null, null, null },
                    { 14L, 1L, null, null, null, null },
                    { 3L, 1L, null, null, null, null }
                });

            migrationBuilder.InsertData(
                table: "AnimalProcessing",
                columns: new[] { "AnimalId", "ProcessingId", "Created", "CreatedBy", "IsRepeat", "LastModified", "LastModifiedBy", "NextProcessingDate", "ProcessingDate" },
                values: new object[,]
                {
                    { 7L, 1L, null, null, true, null, null, new DateTime(2020, 3, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2019, 8, 12, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { 11L, 2L, null, null, true, null, null, new DateTime(2020, 3, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2019, 2, 12, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { 9L, 2L, null, null, false, null, null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2019, 7, 11, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { 11L, 1L, null, null, true, null, null, new DateTime(2020, 3, 14, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2019, 8, 12, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { 4L, 2L, null, null, true, null, null, new DateTime(2020, 4, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2019, 8, 12, 0, 0, 0, 0, DateTimeKind.Unspecified) },
                    { 8L, 2L, null, null, false, null, null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2019, 8, 12, 0, 0, 0, 0, DateTimeKind.Unspecified) }
                });

            migrationBuilder.InsertData(
                table: "AnimalVaccination",
                columns: new[] { "AnimalId", "VaccinationId", "VaccinationDate", "NextVaccinationDate", "Created", "CreatedBy", "LastModified", "LastModifiedBy" },
                values: new object[,]
                {
                    { 5L, 1L, new DateTime(2019, 8, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2020, 6, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, null, null },
                    { 2L, 3L, new DateTime(2019, 8, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2020, 3, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, null, null },
                    { 2L, 4L, new DateTime(2019, 8, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2020, 8, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, null, null },
                    { 5L, 3L, new DateTime(2019, 8, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2020, 5, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, null, null },
                    { 3L, 2L, new DateTime(2019, 8, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2020, 7, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, null, null },
                    { 5L, 5L, new DateTime(2019, 8, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2020, 4, 12, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, null, null }
                });

            migrationBuilder.InsertData(
                table: "Articles",
                columns: new[] { "Id", "Content", "Created", "CreatedBy", "LastModified", "LastModifiedBy", "Title", "UserId", "ViewCount" },
                values: new object[,]
                {
                    { 1L, "Vaccines are understood to be one of the greatest breakthroughs in modern medicine. Here, Health Europa explores how vaccines have benefitted not only humans but also animals, and limited the transmission of zoonotic diseases.How are animal vaccines preventing the transmission of zoonotic diseases?The vaccination of pets and farm animals is essential in order to maintain good animal health and welfare,whilst also reducing the disease burden in pets and livestock.As mutations of infection and disease develop,the role of vaccines in preventative treatment and disease control programmes is integral.With a long and successful history of preventing and controlling disease,the veterinary vaccines of today are symbolic of years of cutting - edge research but also represent the diseases faced by pets and livestock.", null, "pets.adoption.service@gmail.com", null, null, "Vaccination in animals", "1", 0 },
                    { 2L, "Animal health includes the healthcare of animals that implement government policies to prevent or to manage outbreaks of serious animal diseases and to support the farming industry. It involves animal health care programs and protection of the livestock and wildlife in the environment. Mainly the exotic and rare species of the animals are managed with utmost care in the given areas.Given that the data in the study comes from death certificates, which are notoriously inaccurate, it's impossible to tell how much the data reflects reality. And since the study only looks at fatalities, not injuries, it's not clear how many people come close to death but make it out alive. But overall, the message of the study is surprisingly heartening for an analysis of death. You may be scared of scorpions and bears, but animal interactions rarely turn deadly. And besides: given humans' ability to wipe out plants, animals, and each other, we're still one of the most dangerous species in America ... and on Earth", null, "pets.adoption.service@gmail.com", null, null, "Animal health", "1", 0 }
                });

            migrationBuilder.InsertData(
                table: "AspNetUserRoles",
                columns: new[] { "UserId", "RoleId" },
                values: new object[,]
                {
                    { "2", "2" },
                    { "1", "1" }
                });

            migrationBuilder.InsertData(
                table: "BookOrders",
                columns: new[] { "Id", "AdminComment", "AnimalId", "ClosingDate", "Created", "CreatedBy", "EndingDate", "LastModified", "LastModifiedBy", "Status", "UserId", "UserMotivation" },
                values: new object[,]
                {
                    { 3L, "I can not approve your request, because your reason is dont enought for booking pet", 12L, new DateTime(2019, 11, 17, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, 2, "1", "I want to book this pet, because my doughter like dogs" },
                    { 1L, "i can not approve your request, because I I couldn't reach you", 6L, new DateTime(2019, 6, 28, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, 2, "1", "I want to book this pet, because i love cats" },
                    { 2L, null, 7L, new DateTime(2019, 9, 25, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, new DateTime(2019, 11, 16, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, 1, "2", "I want to book this pet, because i like it, and i want to take care of him" }
                });

            migrationBuilder.InsertData(
                table: "Images",
                columns: new[] { "Id", "AnimalId", "Created", "CreatedBy", "FileName", "ImageData", "LastModified", "LastModifiedBy" },
                values: new object[,]
                {
                    { 12L, 11L, null, null, "kitTwo", "https://uapasvideos.blob.core.windows.net/videos/D:/video/kitTwo.jpeg", null, null },
                    { 3L, 3L, null, null, "germanDog", "https://uapasvideos.blob.core.windows.net/videos/D:/video/germanDog.jpg", null, null },
                    { 5L, 4L, null, null, "haski", "https://uapasvideos.blob.core.windows.net/videos/D:/video/haski.jpg", null, null },
                    { 2L, 2L, null, null, "frenchBulldogTwo", "https://uapasvideos.blob.core.windows.net/videos/D:/video/frenchBulldogTwo.jpg", null, null },
                    { 7L, 6L, null, null, "haskiTwo", "https://uapasvideos.blob.core.windows.net/videos/D:/video/haskiTwo.jpg", null, null },
                    { 6L, 5L, null, null, "haskiThree", "https://uapasvideos.blob.core.windows.net/videos/D:/video/haskiThree.jpg", null, null },
                    { 1L, 2L, null, null, "frenchBulldog", "https://uapasvideos.blob.core.windows.net/videos/D:/video/frenchBulldog.jpg", null, null },
                    { 8L, 7L, null, null, "horse", "https://uapasvideos.blob.core.windows.net/videos/D:/video/horse.jpg", null, null },
                    { 17L, 14L, null, null, "vivcharkaTwo", "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharkaTwo.jpg", null, null },
                    { 16L, 14L, null, null, "vivcharka", "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharka.jpg", null, null },
                    { 15L, 14L, null, null, "labradorTwo", "https://uapasvideos.blob.core.windows.net/videos/D:/video/labradorTwo.jpg", null, null },
                    { 14L, 13L, null, null, "labradorThree", "https://uapasvideos.blob.core.windows.net/videos/D:/video/labradorThree.jpg", null, null },
                    { 11L, 10L, null, null, "kitThree", "https://uapasvideos.blob.core.windows.net/videos/D:/video/kitThree.jpeg", null, null },
                    { 13L, 12L, null, null, "labrador", "https://uapasvideos.blob.core.windows.net/videos/D:/video/labrador.jpg", null, null },
                    { 9L, 8L, null, null, "horseTwo", "https://uapasvideos.blob.core.windows.net/videos/D:/video/horseTwo.jpg", null, null },
                    { 4L, 3L, null, null, "germanDogTwo", "https://uapasvideos.blob.core.windows.net/videos/D:/video/germanDogTwo.jpg", null, null },
                    { 10L, 9L, null, null, "kit", "https://uapasvideos.blob.core.windows.net/videos/D:/video/kit.jpeg", null, null }
                });

            migrationBuilder.InsertData(
                table: "ArticleImages",
                columns: new[] { "Id", "ArticleId", "Created", "CreatedBy", "FileName", "ImageData", "LastModified", "LastModifiedBy" },
                values: new object[,]
                {
                    { 1L, 1L, null, null, "vivcharka", "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharka.jpg", null, null },
                    { 2L, 1L, null, null, "vivcharkaTwo", "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharkaTwo.jpg", null, null },
                    { 3L, 2L, null, null, "labradorThree", "https://uapasvideos.blob.core.windows.net/videos/D:/video/labradorThree.jpg", null, null }
                });

            migrationBuilder.InsertData(
                table: "ArticleTags",
                columns: new[] { "ArticleId", "TagId", "Created", "CreatedBy", "LastModified", "LastModifiedBy" },
                values: new object[,]
                {
                    { 1L, 1L, null, null, null, null },
                    { 2L, 3L, null, null, null, null },
                    { 2L, 5L, null, null, null, null }
                });

            migrationBuilder.CreateIndex(
                name: "IX_AdoptOrders_AnimalId",
                table: "AdoptOrders",
                column: "AnimalId");

            migrationBuilder.CreateIndex(
                name: "IX_AdoptOrders_UserId",
                table: "AdoptOrders",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_AnimalAttitudeTo_AttitudeId",
                table: "AnimalAttitudeTo",
                column: "AttitudeId");

            migrationBuilder.CreateIndex(
                name: "IX_AnimalDefects_DefectsId",
                table: "AnimalDefects",
                column: "DefectsId");

            migrationBuilder.CreateIndex(
                name: "IX_AnimalDescriptions_AnimalId",
                table: "AnimalDescriptions",
                column: "AnimalId",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_AnimalKeeping_KeepingId",
                table: "AnimalKeeping",
                column: "KeepingId");

            migrationBuilder.CreateIndex(
                name: "IX_AnimalLocationHistories_AddressId",
                table: "AnimalLocationHistories",
                column: "AddressId");

            migrationBuilder.CreateIndex(
                name: "IX_AnimalLocationHistories_AnimalId",
                table: "AnimalLocationHistories",
                column: "AnimalId");

            migrationBuilder.CreateIndex(
                name: "IX_AnimalNeeds_NeedsId",
                table: "AnimalNeeds",
                column: "NeedsId");

            migrationBuilder.CreateIndex(
                name: "IX_AnimalProcessing_ProcessingId",
                table: "AnimalProcessing",
                column: "ProcessingId");

            migrationBuilder.CreateIndex(
                name: "IX_Animals_AddressId",
                table: "Animals",
                column: "AddressId");

            migrationBuilder.CreateIndex(
                name: "IX_Animals_BreedId",
                table: "Animals",
                column: "BreedId");

            migrationBuilder.CreateIndex(
                name: "IX_Animals_CategoryId",
                table: "Animals",
                column: "CategoryId");

            migrationBuilder.CreateIndex(
                name: "IX_Animals_FoodId",
                table: "Animals",
                column: "FoodId");

            migrationBuilder.CreateIndex(
                name: "IX_AnimalVaccination_VaccinationId",
                table: "AnimalVaccination",
                column: "VaccinationId");

            migrationBuilder.CreateIndex(
                name: "IX_AnimalVideos_AnimalId",
                table: "AnimalVideos",
                column: "AnimalId");

            migrationBuilder.CreateIndex(
                name: "IX_AnimalViewLocations_AnimalId",
                table: "AnimalViewLocations",
                column: "AnimalId");

            migrationBuilder.CreateIndex(
                name: "IX_ArticleImages_ArticleId",
                table: "ArticleImages",
                column: "ArticleId");

            migrationBuilder.CreateIndex(
                name: "IX_Articles_UserId",
                table: "Articles",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_ArticleTags_TagId",
                table: "ArticleTags",
                column: "TagId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetRoleClaims_RoleId",
                table: "AspNetRoleClaims",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "RoleNameIndex",
                table: "AspNetRoles",
                column: "NormalizedName",
                unique: true,
                filter: "[NormalizedName] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserClaims_UserId",
                table: "AspNetUserClaims",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserLogins_UserId",
                table: "AspNetUserLogins",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserRoles_RoleId",
                table: "AspNetUserRoles",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUsers_AddressId",
                table: "AspNetUsers",
                column: "AddressId");

            migrationBuilder.CreateIndex(
                name: "EmailIndex",
                table: "AspNetUsers",
                column: "NormalizedEmail");

            migrationBuilder.CreateIndex(
                name: "UserNameIndex",
                table: "AspNetUsers",
                column: "NormalizedUserName",
                unique: true,
                filter: "[NormalizedUserName] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_BookOrders_AnimalId",
                table: "BookOrders",
                column: "AnimalId");

            migrationBuilder.CreateIndex(
                name: "IX_BookOrders_UserId",
                table: "BookOrders",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_Images_AnimalId",
                table: "Images",
                column: "AnimalId");

            migrationBuilder.CreateIndex(
                name: "IX_UserHelps_HelpId",
                table: "UserHelps",
                column: "HelpId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "AdoptOrders");

            migrationBuilder.DropTable(
                name: "AnimalAttitudeTo");

            migrationBuilder.DropTable(
                name: "AnimalDefects");

            migrationBuilder.DropTable(
                name: "AnimalDescriptions");

            migrationBuilder.DropTable(
                name: "AnimalKeeping");

            migrationBuilder.DropTable(
                name: "AnimalLocationHistories");

            migrationBuilder.DropTable(
                name: "AnimalNeeds");

            migrationBuilder.DropTable(
                name: "AnimalProcessing");

            migrationBuilder.DropTable(
                name: "AnimalVaccination");

            migrationBuilder.DropTable(
                name: "AnimalVideos");

            migrationBuilder.DropTable(
                name: "AnimalViewLocations");

            migrationBuilder.DropTable(
                name: "ArticleImages");

            migrationBuilder.DropTable(
                name: "ArticleTags");

            migrationBuilder.DropTable(
                name: "AspNetRoleClaims");

            migrationBuilder.DropTable(
                name: "AspNetUserClaims");

            migrationBuilder.DropTable(
                name: "AspNetUserLogins");

            migrationBuilder.DropTable(
                name: "AspNetUserRoles");

            migrationBuilder.DropTable(
                name: "AspNetUserTokens");

            migrationBuilder.DropTable(
                name: "BookOrders");

            migrationBuilder.DropTable(
                name: "Images");

            migrationBuilder.DropTable(
                name: "UserHelps");

            migrationBuilder.DropTable(
                name: "AttitudeTo");

            migrationBuilder.DropTable(
                name: "Defects");

            migrationBuilder.DropTable(
                name: "Keepings");

            migrationBuilder.DropTable(
                name: "Needs");

            migrationBuilder.DropTable(
                name: "Processings");

            migrationBuilder.DropTable(
                name: "Vaccinations");

            migrationBuilder.DropTable(
                name: "Articles");

            migrationBuilder.DropTable(
                name: "Tags");

            migrationBuilder.DropTable(
                name: "AspNetRoles");

            migrationBuilder.DropTable(
                name: "Animals");

            migrationBuilder.DropTable(
                name: "Helps");

            migrationBuilder.DropTable(
                name: "AspNetUsers");

            migrationBuilder.DropTable(
                name: "Breed");

            migrationBuilder.DropTable(
                name: "Categories");

            migrationBuilder.DropTable(
                name: "Foods");

            migrationBuilder.DropTable(
                name: "Addresses");
        }
    }
}
