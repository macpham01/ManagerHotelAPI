using Microsoft.EntityFrameworkCore.Migrations;

namespace ManagerHotelAPI.Migrations
{
    public partial class Add_Column_Note_Booking : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "607e559a-4210-410f-a070-1414b6ca6f3a");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "64dd9620-8deb-4e2d-bb9b-2f2def52013c");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "ed2d6404-18c2-4a1f-b694-f2575887e427");

            migrationBuilder.AddColumn<string>(
                name: "Note",
                table: "Booking",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "24c36dc8-469e-4ecc-88bc-61913d06108d", "1", "Admin", "Admin" });

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "27235881-71ea-449e-8fd8-a6ed3c43f4dd", "2", "User", "User" });

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "1cab2010-9d1e-4cab-9080-6c63a4a6fa69", "3", "Boss", "Boss" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "1cab2010-9d1e-4cab-9080-6c63a4a6fa69");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "24c36dc8-469e-4ecc-88bc-61913d06108d");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "27235881-71ea-449e-8fd8-a6ed3c43f4dd");

            migrationBuilder.DropColumn(
                name: "Note",
                table: "Booking");

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "607e559a-4210-410f-a070-1414b6ca6f3a", "1", "Admin", "Admin" });

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "ed2d6404-18c2-4a1f-b694-f2575887e427", "2", "User", "User" });

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "64dd9620-8deb-4e2d-bb9b-2f2def52013c", "3", "Boss", "Boss" });
        }
    }
}
