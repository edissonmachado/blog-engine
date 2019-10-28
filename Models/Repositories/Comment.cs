using System;
using System.Collections.Generic;

namespace BlogEngine.Models
{
    public partial class Comment
    {
        public int Id { get; set; }
        public string AuthorName { get; set; }
        public string AuthorEmail { get; set; }
        public string Content { get; set; }
        public DateTime CreatedOn { get; set; }
        public int ParentPostId { get; set; }

        public virtual Post ParentPost { get; set; }
    }
}
