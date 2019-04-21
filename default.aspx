<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="bitirme._default"  %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title> Kültür Haritası </title>
    <link href= "style.css" rel="stylesheet" />

    <script src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
            
    <script type="text/javascript">

        $("document").ready(function () {

            $("header nav ul li.konular-wrap").mouseover(function () {
                $("header nav ul li.konular-wrap .konular").css("display","block")
            })
            $("header nav ul li.konular-wrap").mouseleave(function () {
                $("header nav ul li.konular-wrap .konular").css("display","none")
            })

        })
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            
            <header>
                <div class="logo">
                    LOGO
                </div>

                <nav>
                    <ul>
                        <li>
                            <a href="default.aspx" >ANASAYFA </a>

  
                        </li>

                        <li class="konular-wrap">
                            <a href="#" > KONULAR </a>
                            <div class="konular">
                                <ul>
                                    <li>Müzeler</li>
                                    <li>Sanat Galerileri</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="default.aspx" >DUYURULAR </a>
                            
                        </li>
                        <li>
                            <a href="default.aspx" >İLETİŞİM </a>
                       
                        </li>
                        
                    </ul>


                </nav>
                <div class="search">
                    
                    <asp:TextBox ID="txtSearch" CssClass="txtSearch" runat="server"  placeholder="search" />
                    <asp:Button ID="btnSearch" CssClass="btnSearch" Text="Search" runat="server" />



                </div>
                
            </header>
        

            <div class="banner">
                Kültür Haritası
            </div>

            <div class="sol-taraf">
                <div class="hizli-kayit">
                    <div class="ust">
                        HIZLI KAYIT OL
                    </div>

                    <div class="alt">
                        <div class="kullanici">

                        <span>Kullanıcı Adı</span>
                        <asp:TextBox ID="txtKullaniciAdi" CssClass="textBox" runat="server"/>

                        </div>
                        
                        <div class="sifre">
                        <span>Şifre</span>
                        <asp:TextBox ID="txtSifre" CssClass="textBox" runat="server"/>
                        </div>
                        
                        
                        <asp:Button ID="btnKayit" CssClass="btnKayit" Text="text" runat="server" OnClick="btnKayit_Click" />
                        <asp:Label ID="lblSonuc" Text="" runat="server"/>
                    </div>

                </div>
                
                
                <div class="duyurular">
                    <div class="ust">
                        Duyurular

                    </div>
                    <div class="alt">
                        <br/>
                        <asp:Button ID="Button1" runat="server" Text="Button" /> <br/>
                        <asp:ListBox ID="ListBox1" runat="server" Height="145px" Width="238px"></asp:ListBox>
                        <asp:ListView ID="lstDuyuru" runat="server">
                            <ItemTemplate>
                                 <div class="duyuru-wrap">
                                    <%--<asp:label text='<%#Eval("baslik") %>' runat="server"/><br/>
                                    <asp:label text='<%#Eval("duyuru") %>'runat="server"/><br/>
                                    <asp:label text='<%#Eval("tarih") %>'runat="server"/><br/>--%>
                                 </div>

                            </ItemTemplate>

                        </asp:ListView>


                       
                        
                    </div>
                </div>

            </div>

            <div class="icerik">

            </div>
            <footer>
                Created Ece Okumuş- Ebru Utkan- Burak Coşkun @2019.
            </footer>
            
        </div>
    </form>
</body>
</html>

