using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

using BlogEngine.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Authorization;

namespace BlogEngine.Controllers
{
    public class PostsController : Controller
    {
        private UserManager<IdentityUser> _userManager;
        private readonly IUnitOfWork _unitOfWork;

        public PostsController(UserManager<IdentityUser> userManager, IUnitOfWork unitOfWork)
        {
            _userManager = userManager;
            _unitOfWork = unitOfWork;
        }

        // GET: Posts
        [Authorize(Roles ="Writer")]
        public IActionResult Index()
        {
            return View(_unitOfWork.Post.GetPostsByAuthors(_userManager.GetUserName(User)));
        }

        [Authorize(Roles = "Approver")]
        public IActionResult Approval()
        {
            return View(_unitOfWork.Post.GetPostsByState((int)PostState.Pending));
        }
        // GET: Posts/Check/5
        [Authorize(Roles = "Approver")]
        public IActionResult Check(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            
            var post = _unitOfWork.Post.GetPostById((int)id);

            if (post == null)
            {
                return NotFound();
            }
            return View(post);
                      
        }

        // POST: Posts/Check/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Approver")]
        public IActionResult Check(int id, [Bind("Id,AuthorName,Title,Content,LastChangedOn,State")] Post post, string approve, string reject, string cancel)
        {
            if (!string.IsNullOrEmpty(cancel))
            {
                return RedirectToAction(nameof(Approval));
            }

            if (id != post.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                if (!string.IsNullOrEmpty(approve))
                {
                    post.State = (int)PostState.Published;
                    post.ApproverName = _userManager.GetUserName(User);
                    post.ApprovedOn = DateTime.Now;
                }
                if (!string.IsNullOrEmpty(reject))
                {
                    post.State = (int)PostState.Editable;
                }


                try
                {
                    post = _unitOfWork.Post.UpdatePost(post);
                    var editPost = _unitOfWork.Complete();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PostExists(post.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Approval));
            }
            return View(post);
        }

        // GET: Posts/Details/5
        [Authorize(Roles = "Writer")]
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            
            var post = _unitOfWork.Post.GetPostById((int)id);

            if (post == null)
            {
                return NotFound();
            }

            return View(post);
        }

        // GET: Posts/Create
        [Authorize(Roles = "Writer")]
        public IActionResult Create()
        {
            return View();
        }

        // POST: Posts/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Writer")]
        public IActionResult Create([Bind("Id,Title,Content")] Post post)
        {
            if (ModelState.IsValid)
            {
                if (!string.IsNullOrEmpty(post.Title) && !string.IsNullOrEmpty(post.Content))
                {
                    post.AuthorName = _userManager.GetUserName(User);
                    post.LastChangedOn = DateTime.Now;
                    post.State = (int)PostState.Pending;

                    _unitOfWork.Post.Add(post);
                    var newPost = _unitOfWork.Complete();

                    return RedirectToAction(nameof(Index));
                }
            }
            return View(post);
        }

        // GET: Posts/Edit/5
        [Authorize(Roles = "Writer")]
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            
            var post = _unitOfWork.Post.GetPostById((int)id);

            if (post == null)
            {
                return NotFound();
            }
            return View(post);
           
        }

        // POST: Posts/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Writer")]
        public IActionResult Edit(int id, [Bind("Id,AuthorName,Title,Content,LastChangedOn,State")] Post post)
        {
            if (id != post.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    post.LastChangedOn = DateTime.Now;
                    post.State = (int)PostState.Pending;
                    post = _unitOfWork.Post.UpdatePost(post);                   
                    var editPost = _unitOfWork.Complete();                    
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PostExists(post.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(post);
        }

        // GET: Posts/Delete/5
        [Authorize(Roles = "Writer")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var post = _unitOfWork.Post.GetPostById((int)id);
            if (post == null)
            {
                return NotFound();
            }

            return View(post);            
        }

        // POST: Posts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [Authorize(Roles = "Writer")]
        public IActionResult DeleteConfirmed(int id)
        {
            var post = _unitOfWork.Post.GetPostById(id);
            _unitOfWork.Post.Remove(post);
            var editPost = _unitOfWork.Complete();
            return RedirectToAction(nameof(Index));
        }

        private bool PostExists(int id)
        {
            return _unitOfWork.Post.GetPostById(id) == null ? false : true;
        }
    }
}
