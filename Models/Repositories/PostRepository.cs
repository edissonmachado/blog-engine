using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Linq;
using Microsoft.EntityFrameworkCore;


namespace BlogEngine.Models
{
    internal class PostRepository : Repository<Post>, IPostRepository
    {
        public PostRepository(BlogContext context) 
            : base(context)
        {
        }

        public IEnumerable<Post> GetPostsByAuthors(string authorName)
        {
            var posts = BlogContext.Post
                         .Include(o => o.Comment)
                         .Where(o => o.AuthorName == authorName)
                         as IEnumerable<Post> ??
                         Enumerable.Empty<Post>();
            return posts;
        }

        public IEnumerable<Post> GetPublishedPosts()
        {
            var posts = BlogContext.Post.AsNoTracking()
                        .Where(o => o.State == (int)PostState.Published)
                        .OrderByDescending(o => o.LastChangedOn)
                        .Include(post => post.Comment)
                        as IEnumerable<Post> ??
                        Enumerable.Empty<Post>();
            return posts;                   
        }

        public Post GetPostById(int id)
        {
            var post = BlogContext.Post.Where(o => o.Id == id).FirstOrDefault();
            return post;
        }

        public IEnumerable<Post> GetPostsByState(int state)
        {
            var post = BlogContext.Post.AsNoTracking()
                        .Where(o => o.State == (int)PostState.Pending)
                        as IEnumerable<Post> ??
                   Enumerable.Empty<Post>();
            return post;
        }

        public Post UpdatePost(Post post)
        {
            BlogContext.Entry(post).State = EntityState.Modified;
            return post;
        }

        public BlogContext BlogContext
        {
            get { return Context as BlogContext; }
        }
    }
}