<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Blogs.aspx.cs"
  Inherits="Pro.WebForm2" %>
  <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  </asp:Content>

  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- =======Intro Single ======= -->
    <section class="">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-lg-12">
            <div class="title-single-box">
              <h1 class="title-single">Our Blogger</h1>
              <span class="color-text-a">The Artists</span>
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
              <asp:DataList ID="DataList1" class="col-lg-12" runat="server" DataKeyField="Username"
                DataSourceID="SqlDataSource1" RepeatColumns="3" CellSpacing="10" CellPadding="20"
                RepeatDirection="Horizontal" Width="1200px">
                <ItemTemplate>
                  <div>
                    <div class="card-box-d">
                      <div class="card-img-d">
                        <img
                          src='data:FileUpload1/png;base64,<%# Eval("FileUpload1") != System.DBNull.Value ? Convert.ToBase64String( (byte[])Eval("FileUpload1")) : string.Empty%>'
                          class="img-d img-fluid" style="height:300px;width:650px;">
                        <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("FileUpload1") %>' Height="300px"
                          Width="350px" />--%>

                        <%-- <asp:Image runat="server" ID="Image1"
                          ImageUrl='data:FileUpload1/png;base64,<%# Eval("FileUpload1") != System.DBNull.Value ? Convert.ToBase64String( (byte[])Eval("FileUpload1")) : string.Empty %>'
                          Height="300px" Width="350px" />--%>

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

                          <asp:Label class="content-d color-text-a" ID="Label2" runat="server"
                            Text='<%# Eval("bio") %>'>

                          </asp:Label>

                          <div class="info-agents color-a">

                            <p>
                              <strong>Email: </strong>
                              <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </p>
                          </div>
                        </div>

                      </div>

                    </div>
                  </div>
                </ItemTemplate>
              </asp:DataList>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>"
                SelectCommand="SELECT [Username], [FileUpload1], [bio], [BirthData], [Email] FROM [Users] WHERE ([RoleId] = @RoleId)">
                <SelectParameters>
                  <asp:Parameter DefaultValue="2" Name="RoleId" Type="Int32" />
                </SelectParameters>
              </asp:SqlDataSource>




          </div>

        </div>
      </section><!-- End Agents Grid-->

    </main><!-- End #main -->

  </asp:Content>