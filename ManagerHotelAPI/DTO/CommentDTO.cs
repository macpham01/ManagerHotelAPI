namespace ManagerHotelAPI.DTO
{
    public class CommentDTO
    {
        public string RoomId { get; set; }
        public string UserId { get; set; }
        public string Content { get; set; }
        public int? Rating { get; set; }
    }
}
