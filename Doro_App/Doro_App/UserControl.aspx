<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="UserControl.aspx.cs"
   Inherits="Doro_App.UserControl" %>
   <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   </asp:Content>
   <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
         <div align="center">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
         </div>
      </div>

   </asp:Content>
   <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   </asp:Content>