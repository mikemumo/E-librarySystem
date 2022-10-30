﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_librarySystem
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //user login link button
                    LinkButton2.Visible = true; //sign up link button

                    LinkButton3.Visible = false; //log out link button
                    LinkButton7.Visible = false; //hello user link button

                    LinkButton6.Visible = true; //admin login link button
                    LinkButton10.Visible = false; //author management link button
                    LinkButton12.Visible = false; //publisher management link button
                    LinkButton5.Visible = false; //book inventory link button
                    LinkButton8.Visible = false; //book issuing link button
                    LinkButton9.Visible = false; //member management link button
                }
                else if (Session["role"].Equals("user"))
                {

                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //sign up link button

                    LinkButton3.Visible = true; //log out link button
                    LinkButton7.Visible = true; //hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                    LinkButton6.Visible = true; //admin login link button
                    LinkButton10.Visible = false; //author management link button
                    LinkButton12.Visible = false; //publisher management link button
                    LinkButton5.Visible = false; //book inventory link button
                    LinkButton8.Visible = false; //book issuing link button
                    LinkButton9.Visible = false; //member management link button
                }
                else if (Session["role"].Equals("admin"))
                {

                    LinkButton1.Visible = false; //user login link button
                    LinkButton2.Visible = false; //sign up link button

                    LinkButton3.Visible = true; //log out link button
                    LinkButton7.Visible = true; //hello user link button
                    LinkButton7.Text = "Hello Admin ";

                    LinkButton6.Visible = false; //admin login link button
                    LinkButton10.Visible = true; //author management link button
                    LinkButton12.Visible = true; //publisher management link button
                    LinkButton5.Visible = true; //book inventory link button
                    LinkButton8.Visible = true; //book issuing link button
                    LinkButton9.Visible = true; //member management link button
                }
            }
            catch (Exception ex)
            {

            }

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["first_name"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; //user login link button
            LinkButton2.Visible = true; //sign up link button

            LinkButton3.Visible = false; //log out link button
            LinkButton7.Visible = false; //hello user link button

            LinkButton6.Visible = true; //admin login link button
            LinkButton10.Visible = false; //author management link button
            LinkButton12.Visible = false; //publisher management link button
            LinkButton5.Visible = false; //book inventory link button
            LinkButton8.Visible = false; //book issuing link button
            LinkButton9.Visible = false; //member management link button
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton6_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton9_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }
    }
}
