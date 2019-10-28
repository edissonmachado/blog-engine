using System;

namespace BlogEngine.Models
{
    public interface IUnitOfWork : IDisposable
    {
        IPostRepository Post { get; }
        ICommentRepository Comment { get; }
        int Complete();
    }
}