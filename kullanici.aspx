<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kullanici.aspx.cs" Inherits="kullanici" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="kullanicilar.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
           <div class="ustbolum"></div>

        <div class="menu">  <div class="menusol"> </div> 

                            <div class="menuorta"> 
                                <ul>
                                <li><a href="Default.aspx"> Anasayfa</a></li> 
                                <li><a href="#"> Gezi Notları</a>
                                    <ul>
                                        <li><a href="#">İstanbul</a></li>
                                        <li><a href="#">Diğer</a></li>
                                    </ul>
                                
                                </li> 
                                 
                                <li><a href="iletisim.aspx"> İletişim</a></li> 

                                </ul>
                                </div>

              <div class="menusag"></div>     
        </div>
       

            <div class="icerik">

                <div class="solicerik">
                    <div class="foto">
                        <asp:Label ID="Label2" runat="server" Text="Profil Fotoğrafı"></asp:Label>
                    </div>
                    <div class="uyebilgi">
                        <asp:Label ID="Label1" runat="server" Text="Bilgileri Güncelle"></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </div>

                    

                </div>

                <div class="sagicerik">
                    
                    <div class="makale">
                        <asp:Button ID="Button1" runat="server" Text="Makale Ekle" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Düzenle" OnClick="Button2_Click" />  

                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Sil" />

                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <table class="auto-style1">
                                    <tr>
                                        <td>Makale Adı:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Mekan:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Makale Özet:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Makale:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Resim</td>
                                        <td>
                                            <asp:FileUpload ID="txt_resim" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Kategori</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="145px">
                                                <asp:ListItem>Seçiniz</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Ekle" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                            </asp:View>
                            </asp:MultiView> <div class="makaleici">
                            
                            
                            
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                            <asp:Image ID="Image1" runat="server" />
                            
                            
                            
                        </div>   

                    </div>
















                </div>

            </div>


    </div>
    </form>
</body>
</html>
