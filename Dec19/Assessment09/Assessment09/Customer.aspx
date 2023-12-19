<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Assessment09.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
          <table>
                    <tr>
                    <td class="auto-style3">Customer Name</td>
                    <td class="auto-style2">
                    <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;&nbsp;
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="Name must have Atleast 6 Character" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Customer Mobile</td>
                    <td  class="auto-style2">
                    <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtMobile" ErrorMessage="Enter Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtMobile" ErrorMessage="Invalid Mobile" ForeColor="Red" ValidationExpression= "((\(\d{3}\) ?)|(\d{3}))?\d{3}\d{4}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Customer Email</td>
                    <td  class="auto-style2">
                    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td class="auto-style2">
                    <asp:TextBox ID="TxtPwd" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtPwd" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TxtPwd" ErrorMessage="Password must be 'pass@123'." ForeColor="Red" ValueToCompare="pass@123"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                     <td class="auto-style3">&nbsp;</td>
                     <td class="auto-style2">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style3">&nbsp;</td>
                     <td class="auto-style2">
                     <asp:Button ID="SubmitBtn" runat="server" OnClick="SubmitBtn_Click" Text="Register" />
                     </td>
                     <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Label ID="LblMsg" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>