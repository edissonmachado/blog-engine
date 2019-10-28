using System.Collections.Generic;

namespace BlogEngine.Models
{
    public interface IPostRepository : IRepository<Post>
    {
        IEnumerable<Post> GetPublishedPosts();
        Post GetPostById(int id);
        IEnumerable<Post> GetPostsByAuthors(string authorName);
        IEnumerable<Post> GetPostsByState(int state);
        Post UpdatePost(Post post);
    }
}