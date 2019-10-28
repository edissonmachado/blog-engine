using System;

namespace BlogEngine.Models
{
    public interface IComment
    {
        string AuthorEmail { get; set; }
        string AuthorName { get; set; }
        string Content { get; set; }
        DateTime CreatedOn { get; set; }
        int Id { get; set; }
        Post ParentPost { get; set; }
        int ParentPostId { get; set; }
    }
}