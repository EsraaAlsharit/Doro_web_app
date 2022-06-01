<%@ Page Title="Doro! / Sign In" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Doro_App.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 175px;
        }
        .auto-style2 {
            width: 650px;
            height: 242px;
        }
        .auto-style5 {
            width: 273px;
        }
    
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
    
      <div class="container">
        <div align="center" >
          
            <asp:Login ID="Login1" runat="server" Height="300px" Width="600px" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="LoginButton_Click">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LayoutTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0" class="auto-style2">
                                    <tr>
                                        <td align="center" colspan="3">&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="3">
                                            <h4 class="form-title text-center">Sign In</h4>
                                        </td>
                                    </tr>
                                    <tr class="form-group">
                                        <td align="center" class="auto-style1">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName"><strong> User Name:</strong></asp:Label>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:TextBox class="form-control" ID="UserName" runat="server" Width="300px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="*User Name is required." ToolTip="User Name is required." ValidationGroup="signin" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr class="form-group">
                                        <td align="center" class="auto-style1">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password"><strong> Password:</strong></asp:Label>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:TextBox class="form-control" ID="Password" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style1">
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="*Password is required." ToolTip="Password is required." ValidationGroup="signin" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr class="form-group">
                                        <td align="center" colspan="3" style="color: Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="3">
                                            <asp:Button class="btn btn-b-n d-none d-md-block" ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="signin" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3">
                                <strong><a href="ForgetPassword.aspx" class="color-b">Forget Password?</a></strong>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">&nbsp;
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
         
          </div>
      
        
      </div>
    <div class=" d-flex justify-content-center">
                            <div class="signup-section">Not a member yet? <a href="SignUp.aspx" class="color-b">Sign Up</a>.</div>
                        </div>

    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
