<%@ Page Title="Doro! / Forget My Password" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="Doro_App.ForgetPassword" %>
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
           
                  <div id="forgot" runat="server" style="height: 300px; width: 650px; background-color: #F7F6F3; border-color: #E6E2D8; padding: 4px; border-style: solid; border-width: 1px; font-family: Verdana; font-size: 0.8em;">
                <instructiontextstyle font-italic="True" forecolor="Black" />
                <layouttemplate>
                                 <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0" class="auto-style2">
                                        <tr>
                                            <td align="center" colspan="3">
                                              &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="3">
                         <h4 class="form-title text-center">Email Me My Password</h4>
                      </td>

                                        </tr>
                                        <tr class="form-group">
                                          <td align="center"  class="auto-style1">
                                               <asp:Label  ID="FPEmailLabel" runat="server" AssociatedControlID="FPEmail"><strong> Email:</strong></asp:Label>
                                                            </td>
                                            <td class="auto-style5">
                                                <asp:TextBox class="form-control" ID="FPEmail" TextMode="Email" runat="server" Width="300px" ValidationGroup="signup"></asp:TextBox>
                                                </td>
                                            </tr>
                                        <tr class="form-group">
                                            <td align="center"  class="auto-style1" colspan="2">
                                         
                                            <asp:Label ID="confLBL" runat="server" Font-Bold="true" Font-Size="Small"><strong></strong></asp:Label>
                                                
                                            </td>
                                            </tr>

                                        <tr>
                                            <td class="auto-style1">
                                                <asp:RequiredFieldValidator ID="FPEmailRequired" runat="server" ControlToValidate="FPEmail" ErrorMessage="*Email is required." ToolTip="Email is required." ValidationGroup="signup" Display="Dynamic">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                            <tr>
                                            <td align="center" colspan="3">
                                            <asp:Button class="btn btn-b-n d-none d-md-block" ID="FPEmailButton" runat="server" ForeColor="#333333" CommandName="Submit" Text="Submit" OnClick="FPEmailButton_Click" />
                                            </td>
                                        </tr>
                                     
                                        </table>
                                    </td>
                                </tr>
                                  <tr>   
                                <td style="text-align:center;" colspan="3">
                                                                       
                                    <strong><a href="SignIn.aspx" class="color-b">Remeber your password? Sign In</a></strong>
                                </td>
                            </tr>
                                    </table>
                    </layouttemplate>

            </div>
             
            </div>
        </div>
     <div class=" d-flex justify-content-center">
                            <div class="signup-section">Not a member yet? <a href="SignUp.aspx" class="color-b">Sign Up</a>.</div>
                        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
