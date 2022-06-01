<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="DrawControl.aspx.cs"
    Inherits="Doro_App.DrawControl" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <div align="center">

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username">
                        </asp:BoundField>
                        <asp:BoundField DataField="DrawingDescription" HeaderText="DrawingDescription"
                            SortExpression="DrawingDescription"></asp:BoundField>
                        <asp:BoundField DataField="DrawingName" HeaderText="DrawingName" SortExpression="DrawingName">
                        </asp:BoundField>

                        <asp:TemplateField HeaderText="operator">
                            <ItemTemplate>
                                <asp:Button ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1"
                    ConnectionString='<%$ ConnectionStrings:DatabaseConnectionString %>'
                    SelectCommand="SELECT [Username], [DrawingDescription], [DrawingName], [Drawing] FROM [Drawing]">
                </asp:SqlDataSource>
            </div>
        </div>

    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    </asp:Content>