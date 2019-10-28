using System;
using System.Collections.Generic;

namespace BlogEngine.Models
{
    public partial class Post
    {
        public Post()
        {
            Comment = new HashSet<Comment>();
        }

        public int Id { get; set; }
        public string AuthorName { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public DateTime LastChangedOn { get; set; }
        public byte State { get; set; }
        public string ApproverName { get; set; }

        public virtual ICollection<Comment> Comment { get; set; }
    }
}
