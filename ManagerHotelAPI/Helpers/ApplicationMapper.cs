using AutoMapper;
using ManagerHotelAPI.DTO;
using ManagerHotelAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ManagerHotelAPI.Helpers
{
    public class ApplicationMapper : Profile
    {
        public ApplicationMapper()
        {
            CreateMap<Room, RoomDTO>().ReverseMap();
            CreateMap<Location, RoomDTO>().ReverseMap();
        }
    }
}
