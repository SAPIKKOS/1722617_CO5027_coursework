using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;


namespace Handbag
{
    public partial class Register : System.Web.UI.Page
    {
        public object Role { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole adminRole = new IdentityRole("User");
            roleManager.Create(adminRole);

            var user = new IdentityUser() { UserName = txtUserName.Text, Email = txtEmail.Text };
            IdentityResult result = manager.Create(user, txtPassword.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "User");
                manager.Update(user);
                LiteralOne.Text = "Success";

            }

            else
            {
                LiteralOne.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");

            var userStore = new UserStore<IdentityUser>(identityDbContext);

            var userManager = new UserManager<IdentityUser>(userStore);

            var user = userManager.Find(txtLogInUser.Text, txtLogInPassword.Text);

            if (user != null)
            {
                LogUserIn(userManager, user);
                LiteralTwo.Text = "Successful login";

            }

            else
            {
                LiteralTwo.Text = "Invalid username or password. ";
            }
        }
        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);

            String userAdminRoles = usermanager.GetRoles(user.Id).FirstOrDefault();
            if (userAdminRoles.Equals("Admin"))
            {
                Response.Redirect("~/Admin/Admin.aspx");
            }
            else
            {
                String userRoles = usermanager.GetRoles(user.Id).FirstOrDefault();
                if (userRoles.Equals("User"))
                {
                    Response.Redirect("~/Home.aspx");


                }

            }
        }
    }
}