using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;


namespace BlogEngine.Models
{
    internal class CommentRepository : Repository<Comment>, ICommentRepository
    {
        public CommentRepository(BlogContext context) : base(context)
        {
        }

        public BlogContext BlogContext
        {
            get { return Context as BlogContext; }
        }
    }
}