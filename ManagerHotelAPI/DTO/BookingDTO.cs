using AutoMapper;
using ManagerHotelAPI.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.ComponentModel.DataAnnotations;

namespace ManagerHotelAPI.DTO
{
    public class BookingDTO
    {
        [Required(ErrorMessage = "Đây là trường bắt buộc")]
        public string RoomId { get; set; }
        [Required(ErrorMessage = "Đây là trường bắt buộc")]
        public string EmailUser { get; set; }
        public DateTime? BookingDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string Note { get; set; }
    }
}
