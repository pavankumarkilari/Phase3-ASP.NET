using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Assessment09
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            LblMsg.Visible = false;
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Registration Done !!!" + "<br />" + "Welcome : " + TxtName.Text + "<br />";
                LblMsg.Text += "Your Mobile     : " + TxtMobile.Text + "<br>";
                LblMsg.Text += "Your Email      : " + TxtEmail.Text + "<br>";
                LblMsg.Text += "Your Password is: " + TxtPwd.Text + "<br />";

            }
        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = args.Value.Length >= 6;
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {

        }
    }
}