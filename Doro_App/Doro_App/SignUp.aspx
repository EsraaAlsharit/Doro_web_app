<%@ Page Title="Doro! / Sign Up" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="SignUp.aspx.cs" Inherits="Doro_App.SignUp" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
            .auto-style1 {
                width: 175px;
            }

            .auto-style2 {
                width: 675px;
                height: 463px;
                margin-top: 0px;
            }

            .auto-style5 {
                width: 273px;
            }

            .auto-style6 {
                margin-left: 0px;
            }

            .auto-style7 {
                width: 125px;
            }

            .auto-style8 {
                width: 134px;
            }

            .rbl input[type="radio"] {
                margin-left: 20px;
                margin-right: 1px;
            }
        </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <div align="center">

                <div ID="Logain1" runat="server"
                    style="height: 523px; width: 645px; background-color: #F7F6F3; border-color: #E6E2D8; border-style: solid; border-width: 1px; font-family: Verdana; font-size: 0.8em;"
                    BorderPadding="4" ForeColor="#333333">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LayoutTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0" class="auto-style2">
                                        <tr>
                                            <td align="center" colspan="3">
                                                <h4 class="form-title text-center">Sign Up</h4>
                                            </td>
                                        </tr>
                                        <%-- <tr>
                                            <td align="center" class="auto-style8">
                                                <asp:Label ID="SignAs" runat="server" AssociatedControlID="UserName">
                                                    <strong>Sign As:</strong></asp:Label>
                                            </td>
                                            <td align="center" class="auto-style5">
                                                <asp:RadioButtonList ID="RoleId" runat="server"
                                                    RepeatDirection="Horizontal" CssClass="rbl" RepeatLayout="Flow">
                                                    <asp:ListItem Value="3" Selected="True"><strong>Guest</strong>
                                                    </asp:ListItem>
                                                    <asp:ListItem Value="2"><strong>Artist </strong></asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                            <td class="auto-style1">
                                                <asp:RequiredFieldValidator ID="RoleIdRequired" runat="server"
                                                    ControlToValidate="RoleId" ErrorMessage="Select user type."
                                                    Display="Dynamic">*</asp:RequiredFieldValidator>--%>
                                            </td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style8">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">
                                        <strong>User Name:</strong></asp:Label>
                                </td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="UserName" class="form-control" runat="server" Width="300px">
                                    </asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server"
                                        ControlToValidate="UserName" ErrorMessage="User Name is required."
                                        ToolTip="User Name is required." ValidationGroup="ctl00$Login1"
                                        Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="auto-style8">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">
                                        <strong>Password:</strong></asp:Label>
                                </td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="Password" class="form-control" runat="server" TextMode="Password"
                                        Width="300px"></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server"
                                        ControlToValidate="Password" ErrorMessage="Password is required."
                                        ToolTip="Password is required." ValidationGroup="ctl00$Login1"
                                        Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                            </tr>

                            <tr>
                                <td align="center" class="auto-style8">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">
                                        <strong>Email:</strong></asp:Label>
                                </td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="Email" class="form-control" runat="server" TextMode="Email"
                                        Width="300px"></asp:TextBox>

                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server"
                                        ControlToValidate="Email" ErrorMessage="Email is required."
                                        ToolTip="Email is required." ValidationGroup="ctl00$Login1" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>

                            <tr>
                                <td align="center" class="auto-style8">
                                    <asp:Label ID="BirthdayLabel" runat="server" AssociatedControlID="BirthData">
                                        <strong>Birthday:</strong></asp:Label>
                                </td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="BirthData" class="form-control" runat="server" TextMode="Date"
                                        Width="300px"></asp:TextBox>


                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="BirthdayRequired" runat="server"
                                        ControlToValidate="BirthData" ErrorMessage="Birthday is required."
                                        ToolTip="Birthday is required." ValidationGroup="ctl00$Login1"
                                        Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                            </tr>


                            <%-- upload profile image --%>

                                <tr>
                                    <td align="center" class="auto-style8">
                                        <asp:Label ID="FUlabel" runat="server" AssociatedControlID="FileUpload1">
                                            <strong>Profile Image:</strong></asp:Label>
                                    </td>
                                    <td class="auto-style5">

                                        <asp:FileUpload ID="FileUpload1" runat="server" />

                                    </td>
                                    <td class="auto-style1">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorFU" runat="server"
                                            ControlToValidate="FileUpload1" ErrorMessage="Profile Image is required."
                                            ToolTip="Profile Image is required." ValidationGroup="ctl00$Login1"
                                            Display="Dynamic"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>

                                <%-- end of upload image --%>

                                    <%--bio--%>

                                        <tr>
                                            <td align="center" class="auto-style8">
                                                <asp:Label ID="Labelbio" runat="server" AssociatedControlID="Bio">
                                                    <strong>Write about yourself:</strong></asp:Label>
                                            </td>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="Bio" class="form-control" runat="server"
                                                    TextMode="MultiLine" Width="300px"></asp:TextBox>


                                            </td>
                                            <td class="auto-style1">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorBio"
                                                    runat="server" ControlToValidate="Bio"
                                                    ErrorMessage="Bio is required." ToolTip="Bio is required."
                                                    ValidationGroup="ctl00$Login1" Display="Dynamic">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <%--end of bio--%>

                                            <tr>
                                                <td align="center" colspan="3" style="color:Red;">
                                                    <asp:Literal ID="FailureText" runat="server"
                                                        EnableViewState="False"></asp:Literal>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="3">
                                                    <asp:Button ID="SignUpButton" class="btn btn-b-n d-none d-md-block"
                                                        runat="server" CommandName="SignUp" Text="Sign Up"
                                                        ValidationGroup="ctl00$Login1" OnClick="SignUpButton_Click" />
                                                    <br />
                                                    <asp:Label ID="ermeg" runat="server" Font-Bold="true"
                                                        Font-Size="Small"><strong></strong></asp:Label>

                                                </td>
                                            </tr>

                        </table>
                        </td>
                        </tr>
                        </table>
                    </LayoutTemplate>
                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                </div>

            </div>


        </div>
        <div class=" d-flex justify-content-center">
            <div class="signup-section">Already have an account? <a href="SignIn.aspx" class="color-b"> Sign In</a>.
            </div>
        </div>

    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    </asp:Content>