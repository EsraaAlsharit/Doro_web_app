<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Post.aspx.cs"
  Inherits="Pro.WebForm4" %>
  <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  </asp:Content>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ======= Intro Single ======= -->
    <section class="intro-single">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-lg-8">
            <div class="title-single-box">
              <h1 class="title-single">
                <asp:Label ID="title" runat="server" Text="Label"></asp:Label>
              </h1>

            </div>
          </div>
        </div>
      </div>
    </section><!-- End Intro Single-->

    <main id="main">



      <!-- ======= Blog Single ======= -->
      <section class="news-single nav-arrow-b">
        <div class="container">
          <div class="row">

            <div class="col-sm-12">
              <div class="news-img-box">
                <asp:Image runat="server" ID="drwing" class="img-fluid" />
                <%-- <img src="assets/img/slide-3.jpg" alt="" class="img-fluid">--%>
              </div>
            </div>

            <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-2">
              <div class="post-information">
                <ul class="list-inline text-center color-a">
                  <li class="list-inline-item mr-2">
                    <%-- <strong>Artists: </strong>
                      <asp:Label ID="name" class="color-text-a" runat="server" Text="Label"></asp:Label>--%>
                  </li>
                </ul>
              </div>
              <div class="post-content color-text-a">


                <blockquote class="blockquote">
                  <p class="mb-4">
                    <asp:Label ID="desc" runat="server" Text="Label"></asp:Label>
                  </p>
                  <footer class="blockquote-footer">
                    <strong>Artists: </strong>
                    <%--<a class="color-b" href='/ProfileArt.aspx?Username=<%# artist.Text.ToString() %>'>--%>
                      <%-- <asp:LinkButton ID="LinkButton1" runat="server" OnClick="UserName">--%>
                        <asp:Label ID="artist" runat="server" Text="Label"></asp:Label>
                        <%-- </asp:LinkButton>--%>
                          <%--< /a>--%>
                  </footer>
                </blockquote>

              </div>

            </div>
          </div>
        </div>
      </section><!-- End Blog Single-->

    </main><!-- End #main -->
  </asp:Content>
  <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  </asp:Content>