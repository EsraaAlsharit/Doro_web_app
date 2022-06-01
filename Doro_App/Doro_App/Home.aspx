<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Pro.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
         <main id="main">

     <!-- ======= About us ======= -->
    <section class="">
      <div class="container">
       
          <div class="col-md-12 col-lg-11">
         
              <h1 class="title-single">About Us</h1>
              <span class="color-text-a">
                  Doro is your source to start sharing your wonderful drawings! Your paintings are worth owning by who loved it!
              </span>
          </div>
        
      </div>
    </section>
     <!-- End About us-->

    <!-- ======= Services Section ======= -->
   <%-- <section class="section-services section-t8">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="title-wrap d-flex justify-content-between">
              <div class="title-box">
                <h2 class="title-a">Our Services</h2>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            <div class="card-box-c foo">
              <div class="card-header-c d-flex">
                <div class="card-box-ico">
                  <span class="fa fa-gamepad"></span>
                </div>
                <div class="card-title-c align-self-center">
                  <h2 class="title-c">Lifestyle</h2>
                </div>
              </div>
              <div class="card-body-c">
                <p class="content-c">
                  Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa,
                  convallis a pellentesque
                  nec, egestas non nisi.
                </p>
              </div>
              <div class="card-footer-c">
                <a href="#" class="link-c link-icon">Read more
                  <span class="ion-ios-arrow-forward"></span>
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card-box-c foo">
              <div class="card-header-c d-flex">
                <div class="card-box-ico">
                  <span class="fa fa-usd"></span>
                </div>
                <div class="card-title-c align-self-center">
                  <h2 class="title-c">Loans</h2>
                </div>
              </div>
              <div class="card-body-c">
                <p class="content-c">
                  Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Mauris blandit
                  aliquet elit, eget tincidunt
                  nibh pulvinar a.
                </p>
              </div>
              <div class="card-footer-c">
                <a href="#" class="link-c link-icon">Read more
                  <span class="ion-ios-arrow-forward"></span>
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card-box-c foo">
              <div class="card-header-c d-flex">
                <div class="card-box-ico">
                  <span class="fa fa-home"></span>
                </div>
                <div class="card-title-c align-self-center">
                  <h2 class="title-c">Sell</h2>
                </div>
              </div>
              <div class="card-body-c">
                <p class="content-c">
                  Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa,
                  convallis a pellentesque
                  nec, egestas non nisi.
                </p>
              </div>
              <div class="card-footer-c">
                <a href="#" class="link-c link-icon">Read more
                  <span class="ion-ios-arrow-forward"></span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>--%>
    <!-- End Services Section -->

    <!-- ======= Agents Section ======= -->
    <section class="section-agents section-t8">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="title-wrap d-flex justify-content-between">
              <div class="title-box">
                <h2 class="title-a">Artist</h2>
              </div>
              <div class="title-link">
                <a href=Blogs.aspx">All Artists
                  <span class="ion-ios-arrow-forward"></span>
                </a>
              </div>
            </div>
          </div>
        </div>
        <asp:DataList ID="DataList1" class="row" runat="server" DataKeyField="Username" DataSourceID="SqlDataSource1" RepeatColumns="3" CellSpacing="10" CellPadding="20" RepeatDirection="Horizontal" Width="1200px">
                <ItemTemplate >
                         <div >
            <div class="card-box-d">
              <div class="card-img-d">
                <img src='data:FileUpload1/png;base64,<%# Eval("FileUpload1") != System.DBNull.Value ? Convert.ToBase64String( (byte[])Eval("FileUpload1")) : string.Empty%>' class="img-d img-fluid" style="height:300px;width:650px;" >
                  <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("FileUpload1") %>' Height="300px" Width="350px" />--%>

                <%--  <asp:Image runat="server"  ID="Image1" ImageUrl='data:FileUpload1/png;base64,<%# Eval("FileUpload1") != System.DBNull.Value ? Convert.ToBase64String( (byte[])Eval("FileUpload1")) : string.Empty %>' Height="300px" Width="350px" />--%>

              </div>

              <div class="card-overlay card-overlay-hover">
                <div class="card-header-d">
                  <div class="card-title-d align-self-center">
                    <h3 class="title-d">
                        <a href='/ProfileArt.aspx?Username=<%#Eval("Username")%>' class="link-two">
                  
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Username") %>'></asp:Label> 
                  
                           </a>
                    
                    </h3>
                  </div>
                </div>
                <div class="card-body-d">
                  
                       <asp:Label class="content-d color-text-a" ID="Label2" runat="server" Text='<%# Eval("bio") %>'>
                    
                       </asp:Label>
                  
                  <div class="info-agents color-a">
                    
                     <p>
                      <strong>Email: </strong> <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                 </p> </div>
                </div>
      
              </div>

            </div>
          </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [Username], [FileUpload1], [bio], [BirthData], [Email] FROM [Users] WHERE ([RoleId] = @RoleId)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="RoleId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
      </div>
    </section>
    <!-- End Agents Section -->

    <!-- ======= Latest Properties Section ======= -->
  <%--  <section class="section-property section-t8">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="title-wrap d-flex justify-content-between">
              <div class="title-box">
                <h2 class="title-a">Work</h2>
              </div>
              <div class="title-link">
                <a href="property-grid.html">All Members
                  <span class="ion-ios-arrow-forward"></span>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div id="property-carousel" class="owl-carousel owl-theme">
     
                 <asp:DataList ID="DataList2" class="carousel-item-b" runat="server"  DataSourceID="SqlDataSource1" RepeatColumns="3" CellSpacing="10" CellPadding="20" RepeatDirection="Horizontal" Width="1200px">
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [DrawingDescription], [DrawingId], [DrawingName], [Drawing] FROM [Drawing]" >
                
            </asp:SqlDataSource>
     
        
        </div>
      </div>
    </section>--%>
    <!-- End Latest Properties Section -->

  </main><!-- End #main -->
    
</asp:Content>
