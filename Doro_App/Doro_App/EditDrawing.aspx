<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="EditDrawing.aspx.cs"
    Inherits="Doro_App.WebForm2" %>
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

                <div runat="server"
                    style="height: 523px; width: 587px; background-color: #F7F6F3; border-color: #E6E2D8; border-style: solid; border-width: 1px; font-family: Verdana; font-size: 0.8em;"
                    BorderPadding="4" ForeColor="#333333">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LayoutTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0" class="auto-style2">
                                        <tr>
                                            <td align="center" colspan="3">
                                                <h4 class="form-title text-center">Add Drawing</h4>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="center" class="auto-style8">

                                            </td>
                                            <td class="auto-style5" colspan="3">


                                                <asp:Image runat="server" ID="draw" class="agent-avatar img-fluid" />

                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="center" class="auto-style8">
                                                <asp:Label ID="TitleLabel" runat="server" AssociatedControlID="title">
                                                    <strong>Title:</strong></asp:Label>
                                            </td>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="title" class="form-control" runat="server"
                                                    Width="300px"></asp:TextBox>

                                            </td>
                                            <td class="auto-style1">
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server"
                                                    ControlToValidate="title" ErrorMessage="User Name is required."
                                                    ToolTip="User Name is required." ValidationGroup="update"
                                                    Display="Dynamic">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="center" class="auto-style8">
                                                <asp:Label ID="DescriptionLabel" runat="server"
                                                    AssociatedControlID="Description"><strong>Description:</strong>
                                                </asp:Label>
                                            </td>
                                            <td class="auto-style5">
                                                <asp:TextBox ID="Description" class="form-control" TextMode="multiline"
                                                    runat="server" maxlength="1200" lines="10" cols="10" wrap="true"
                                                    Width="300px"></asp:TextBox>


                                            </td>
                                            <td class="auto-style1">
                                                <%-- <asp:RequiredFieldValidator ID="BirthdayRequired" runat="server"
                                                    ControlToValidate="Description" ErrorMessage="Birthday is required."
                                                    ToolTip="Birthday is required." ValidationGroup="update"
                                                    Display="Dynamic">*</asp:RequiredFieldValidator>--%>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="center" colspan="3">
                                                <asp:Button ID="update" class="btn btn-b-n d-none d-md-block"
                                                    runat="server" Text="Update" ValidationGroup="update"
                                                    OnClick="update_Click" />
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
            <asp:Button ID="Delete" class="btn btn-b-n d-none d-md-block" runat="server" Text="Delete drawing"
                OnClick="Delete_Click" />

        </div>
    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    </asp:Content>