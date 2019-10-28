using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

using BlogEngine.Models;
using Microsoft.AspNetCore.Identity;

namespace BlogEngine.Controllers
{
    public class CommentsController : Controller
    {
        private UserManager<IdentityUser> _userManager;
        private readonly IUnitOfWork _unitOfWork;

        public CommentsController(UserManager<IdentityUser> userManager, IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
            _userManager = userManager;
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("Id,AuthorName,AuthorEmail,Content,ParentPostId")] Comment comment)
        {
            if (ModelState.IsValid)
            {
                comment.CreatedOn = DateTime.Now;

                _unitOfWork.Comment.Add(comment);
                var newComment = _unitOfWork.Complete();
                
                return RedirectToAction("Index", "Home");
            }
            ViewData["ParentPostId"] = new SelectList(_unitOfWork.Post.GetAll(), "Id", "AuthorName", comment.ParentPostId);
            return View(comment);
        }
    }
}
