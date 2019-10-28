using System;
using System.Collections.Generic;

namespace BlogEngine.Models
{
    public interface IPost
    {
        DateTime? ApprovedOn { get; set; }
        string ApproverName { get; set; }
        string AuthorName { get; set; }
        ICollection<Comment> Comment { get; set; }
        string Content { get; set; }
        int Id { get; set; }
        DateTime LastChangedOn { get; set; }
        byte State { get; set; }
        string Title { get; set; }
    }
}