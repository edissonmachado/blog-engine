using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace BlogEngine.Models
{
    public class UnitOfWork : IUnitOfWork
    {
        private BlogContext _context = new BlogContext();

        public UnitOfWork()
        {
            Post = new PostRepository(_context);
            Comment = new CommentRepository(_context);
        }

        public IPostRepository Post { get; private set; }
        public ICommentRepository Comment { get; private set; }

        public int Complete()
        {
            return _context.SaveChanges();
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
