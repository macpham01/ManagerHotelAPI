using Microsoft.EntityFrameworkCore.Migrations;

namespace ManagerHotelAPI.Migrations
{
    public partial class UpdatePropertyRoom : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "4e862d32-30ac-4de9-aad5-e6ac47812753");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "6db66d77-447f-4342-8e3e-b216fee78a64");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "c9cb71ae-3c99-44b1-8847-047f30791cae");

            migrationBuilder.RenameColumn(
                name: "FullName",
                table: "Room",
                newName: "RoomName");

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "2e99c4d3-744d-440a-9750-5e4d1296c1bd", "1", "Admin", "Admin" });

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "9b061ac4-c25b-4175-8b96-f1ff5bafa37d", "2", "User", "User" });

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "5983d3fa-50c7-460a-a8e7-98c3b72fcc46", "3", "Boss", "Boss" });

            migrationBuilder.CreateIndex(
                name: "IX_Room_LocationId",
                table: "Room",
                column: "LocationId");

            migrationBuilder.AddForeignKey(
                name: "FK_Room_Location_LocationId",
                table: "Room",
                column: "LocationId",
                principalTable: "Location",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Room_Location_LocationId",
                table: "Room");

            migrationBuilder.DropIndex(
                name: "IX_Room_LocationId",
                table: "Room");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "2e99c4d3-744d-440a-9750-5e4d1296c1bd");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "5983d3fa-50c7-460a-a8e7-98c3b72fcc46");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "9b061ac4-c25b-4175-8b96-f1ff5bafa37d");

            migrationBuilder.RenameColumn(
                name: "RoomName",
                table: "Room",
                newName: "FullName");

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "6db66d77-447f-4342-8e3e-b216fee78a64", "1", "Admin", "Admin" });

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "4e862d32-30ac-4de9-aad5-e6ac47812753", "2", "User", "User" });

            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[] { "c9cb71ae-3c99-44b1-8847-047f30791cae", "3", "Boss", "Boss" });
        }
    }
}
