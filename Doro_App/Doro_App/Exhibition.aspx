<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Exhibition.aspx.cs" Inherits="Doro_App.Community" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- =======Intro Single ======= -->
    <section class="intro-single">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-lg-8">
            <div class="title-single-box">
              <h1 class="title-single">Exhibition</h1>
              <span class="color-text-a">The Art Work</span>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Intro Single-->

      <main id="main">
    

    <!-- ======= Agents Grid ======= -->
    <section class="agents-grid grid">
      <div class="container">
        <div class="row">

            <%--DataSourceID="SqlDataSource1"--%>
            <br />
            <asp:DataList ID="DataList1" class="col-md-4" runat="server"  DataSourceID="SqlDataSource1" RepeatColumns="3" CellSpacing="10" CellPadding="20" RepeatDirection="Horizontal" Width="1200px">
                <ItemTemplate >
                 <div class="card-box-a card-shadow">
                <div class="img-box-a">
                  <img src='data:Drawing/png;base64,<%# Eval("Drawing") != System.DBNull.Value ? Convert.ToBase64String( (byte[])Eval("Drawing")) : string.Empty%>' class="img-d img-fluid" style="height:400px;width:650px;" >
                </div>
                <div class="card-overlay">
                  <div class="card-overlay-a-content">
                    <div class="card-header-a">
                      <h2 class="card-title-a">
                          
                       <a href='/Post.aspx?id=<%#Eval("DrawingId")%>' class="link-two">
                  
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("DrawingName") %>'></asp:Label> 
                  
                           </a>
                      </h2>
                    </div>
                    <div class="card-body-a">
                  
                      <a href='/Post.aspx?id=<%#Eval("DrawingId")%>'  class="link-a">Click here to view
                        <span class="ion-ios-arrow-forward"></span>
                      </a>
                    </div>
                 
                  </div>
                </div>
              </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [DrawingDescription], [DrawingId], [DrawingName], [Drawing] FROM [Drawing]" >
                
            </asp:SqlDataSource>


     
         
        </div>
  
      </div>
    </section><!-- End Agents Grid-->

  </main><!-- End #main -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
