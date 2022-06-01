<%@ Page Title="Doro! / Profile" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
  CodeBehind="Profile.aspx.cs" Inherits="Pro.WebForm3" %>
  <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  </asp:Content>

  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main">

      <!-- ======= Agent Single ======= -->
      <section class="agent-single">
        <div class="container">
          <div class="row">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Edit Profile" class="btn btn-b-n d-none d-md-block"
              data-toggle="collapse" aria-expanded="false" PostBackUrl="EditProfile.aspx" />&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Add Drawing" class="btn btn-b-n d-none d-md-block"
              data-toggle="collapse" aria-expanded="false" PostBackUrl="AddDrawing.aspx" /><br /><br />
            <div class="col-sm-12">
              <br />
              <div class="row">
                <div class="col-md-6">
                  <div class="agent-avatar-box">
                    <%--<img src="assets/img/agent-7.jpg" alt="" class="agent-avatar img-fluid" id="myimg">--%>
                      <asp:Image runat="server" ID="myimg" class="agent-avatar img-fluid" />
                  </div>
                </div>
                <div class="col-md-5 section-md-t3">
                  <div class="agent-info-box">
                    <div class="agent-title">
                      <div class="title-box-d">
                        <asp:Label class="title-d" id="nameuser" runat="server" Font-Size="Larger">
                        </asp:Label>
                      </div>
                    </div>
                    <div class="agent-content mb-3">
                      <strong>Bio: </strong>
                      <asp:Label runat="server" class="content-d color-text-a" id="UserDetails">


                      </asp:Label>
                      <div class="info-agents color-a">
                        <p id="Email">
                          <strong>Email: </strong>
                          <asp:Label runat="server" id="useremail"><span class="color-text-a"> </span></asp:Label>
                        </p>
                        <p id="BirthDate">
                          <strong>Birthday: </strong>
                          <asp:Label runat="server" ID="userBD"><span class="color-text-a"> </span> </asp:Label>
                        </p>

                      </div>
                    </div>

                  </div>
                </div>


              </div>

            </div>


            <div class="col-md-12 section-t8">
              <div class="title-box-d">
                <h3 class="title-d">My Drawing</h3>
              </div>
            </div>

            <asp:DataList ID="DataList1" class="col-md-4" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3"
              CellSpacing="10" CellPadding="20" RepeatDirection="Horizontal" Width="1200px">
              <ItemTemplate>



                <div class="card-box-a card-shadow">
                  <div class="img-box-a">
                    <img
                      src='data:Drawing/png;base64,<%# Eval("Drawing") != System.DBNull.Value ? Convert.ToBase64String( (byte[])Eval("Drawing")) : string.Empty%>'
                      class="img-d img-fluid" style="height:400px;width:650px;">
                  </div>
                  <div class="card-overlay">
                    <div class="card-overlay-a-content">
                      <div class="card-header-a">
                        <h2 class="card-title-a">
                          <div class="price-box d-flex">
                            <a href='/EditDrawing.aspx?id=<%#Eval("DrawingId")%>' class="price-a">Edit</a>


                          </div>
                          <a href='/Post.aspx?id=<%#Eval("DrawingId")%>' class="link-two">

                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("DrawingName") %>'></asp:Label>

                          </a>
                        </h2>
                      </div>
                      <div class="card-body-a">

                        <a href='/Post.aspx?id=<%#Eval("DrawingId")%>' class="link-a">Click here to view
                          <span class="ion-ios-arrow-forward"></span>
                        </a>
                      </div>

                    </div>
                  </div>
                </div>


              </ItemTemplate>
            </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
              ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>"
              SelectCommand="SELECT [DrawingId], [DrawingName], [Drawing] FROM [Drawing] WHERE ([Username] = @Username)">
              <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="user" Type="String" />
              </SelectParameters>
            </asp:SqlDataSource>

            <%--<div class="col-md-4">
              <div class="card-box-a card-shadow">
                <div class="img-box-a">
                  <img src="assets/img/property-1.jpg" alt="" class="img-a img-fluid">
                </div>
                <div class="card-overlay">
                  <div class="card-overlay-a-content">
                    <div class="card-header-a">
                      <h2 class="card-title-a">
                        <a href="#">204 Mount
                          <br /> Olive Road Two</a>
                      </h2>
                    </div>
                    <div class="card-body-a">
                      <div class="price-box d-flex">
                        <span class="price-a">rent | $ 12.000</span>
                      </div>
                      <a href="#" class="link-a">Click here to view
                        <span class="ion-ios-arrow-forward"></span>
                      </a>
                    </div>
                    <div class="card-footer-a">
                      <ul class="card-info d-flex justify-content-around">
                        <li>
                          <h4 class="card-info-title">Area</h4>
                          <span>340m
                            <sup>2</sup>
                          </span>
                        </li>
                        <li>
                          <h4 class="card-info-title">Beds</h4>
                          <span>2</span>
                        </li>
                        <li>
                          <h4 class="card-info-title">Baths</h4>
                          <span>4</span>
                        </li>
                        <li>
                          <h4 class="card-info-title">Garages</h4>
                          <span>1</span>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
          </div>--%>



        </div>
        </div>
      </section><!-- End Agent Single -->

    </main><!-- End #main -->

  </asp:Content>
  <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  </asp:Content>