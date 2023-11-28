using Microsoft.EntityFrameworkCore.Migrations;

namespace ManagerHotelAPI.Migrations
{
    public partial class NameMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
           
            migrationBuilder.AddColumn<int>(
                name: "Rating",
                table: "Comment",
                type: "int",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "1bf1af89-aff1-459c-842c-004e5cb78b67");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "c8639e72-36f9-4e6e-ba82-9dd303ca9230");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "d567ae2c-03f2-4248-8e28-814f98b7800a");

            migrationBuilder.DropColumn(
                name: "Rating",
                table: "Comment");

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "268e6ce9-d7c1-41d6-8ef0-bf65f11c7d93", "1", "Admin", "Admin" });

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "5cbf1e71-7e63-47c2-9f2b-0ca1dc98009f", "2", "User", "User" });

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "9fc0a7be-27b0-455c-ba5c-287b061da2d1", "3", "Boss", "Boss" });
        }
    }
}
