<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="admin_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="admin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style5
        {
            width: 82px;
        }
        .auto-style6
        {
            width: 79px;
        }
        .auto-style7
        {
            height: 22px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <div class="soldiv">
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:LinkButton ID="makale_ekle" runat="server" OnClick="makale_ekle_Click">Makale Ekle</asp:LinkButton>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="makale_duzenlesil" runat="server" OnClick="makale_duzenlesil_Click">Makale Düzenle , Sil</asp:LinkButton>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="kullanici_duzenlesil" runat="server" OnClick="kullanici_duzenlesil_Click">Kullanıcı Düzenle , Sil</asp:LinkButton>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
            <asp:LinkButton ID="kategori_ekle" runat="server" OnClick="kategori_ekle_Click">Kategori Ekle</asp:LinkButton>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:LinkButton ID="onaymakale" runat="server" OnClick="onaymakale_click">Onay Bekleyen Makaleler</asp:LinkButton>
                    </td>
                    <td class="auto-style7">
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="gelen_kutusu" runat="server" OnClick="gelen_kutusu_Click">Gelen Kutusu</asp:LinkButton>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
        <div class="admindiv">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style6">Makala ad</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">Makale</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">Mekan</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">Resim</td>
                            <td>
                                <asp:FileUpload ID="txt_resim" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">Kategori Adı</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ekle" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="makale_id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="makale_id" HeaderText="makale_id" InsertVisible="False" ReadOnly="True" SortExpression="makale_id" />
                            <asp:BoundField DataField="kullanici_id" HeaderText="kullanici_id" SortExpression="kullanici_id" />
                            <asp:BoundField DataField="resim" HeaderText="resim" SortExpression="resim" />
                            <asp:BoundField DataField="kategori_id" HeaderText="kategori_id" SortExpression="kategori_id" />
                            <asp:BoundField DataField="makale_adi" HeaderText="makale_adi" SortExpression="makale_adi" />
                            <asp:BoundField DataField="makale_tarih" HeaderText="makale_tarih" SortExpression="makale_tarih" />
                            <asp:BoundField DataField="mekan_adi" HeaderText="mekan_adi" SortExpression="mekan_adi" />
                            <asp:BoundField DataField="makale" HeaderText="makale" SortExpression="makale" />
                            <asp:BoundField DataField="onay" HeaderText="onay" SortExpression="onay" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:geziblogumConnectionString %>" DeleteCommand="DELETE FROM [makale] WHERE [makale_id] = @original_makale_id AND [kullanici_id] = @original_kullanici_id AND [resim] = @original_resim AND [kategori_id] = @original_kategori_id AND [makale_adi] = @original_makale_adi AND [makale_tarih] = @original_makale_tarih AND [mekan_adi] = @original_mekan_adi AND [makale] = @original_makale AND [onay] = @original_onay" InsertCommand="INSERT INTO [makale] ([kullanici_id], [resim], [kategori_id], [makale_adi], [makale_tarih], [mekan_adi], [makale], [onay]) VALUES (@kullanici_id, @resim, @kategori_id, @makale_adi, @makale_tarih, @mekan_adi, @makale, @onay)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [makale] WHERE ([onay] = @onay)" UpdateCommand="UPDATE [makale] SET [kullanici_id] = @kullanici_id, [resim] = @resim, [kategori_id] = @kategori_id, [makale_adi] = @makale_adi, [makale_tarih] = @makale_tarih, [mekan_adi] = @mekan_adi, [makale] = @makale, [onay] = @onay WHERE [makale_id] = @original_makale_id AND [kullanici_id] = @original_kullanici_id AND [resim] = @original_resim AND [kategori_id] = @original_kategori_id AND [makale_adi] = @original_makale_adi AND [makale_tarih] = @original_makale_tarih AND [mekan_adi] = @original_mekan_adi AND [makale] = @original_makale AND [onay] = @original_onay">
                        <DeleteParameters>
                            <asp:Parameter Name="original_makale_id" Type="Int32" />
                            <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                            <asp:Parameter Name="original_resim" Type="String" />
                            <asp:Parameter Name="original_kategori_id" Type="Int32" />
                            <asp:Parameter Name="original_makale_adi" Type="String" />
                            <asp:Parameter Name="original_makale_tarih" Type="DateTime" />
                            <asp:Parameter Name="original_mekan_adi" Type="String" />
                            <asp:Parameter Name="original_makale" Type="String" />
                            <asp:Parameter Name="original_onay" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="kullanici_id" Type="Int32" />
                            <asp:Parameter Name="resim" Type="String" />
                            <asp:Parameter Name="kategori_id" Type="Int32" />
                            <asp:Parameter Name="makale_adi" Type="String" />
                            <asp:Parameter Name="makale_tarih" Type="DateTime" />
                            <asp:Parameter Name="mekan_adi" Type="String" />
                            <asp:Parameter Name="makale" Type="String" />
                            <asp:Parameter Name="onay" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="onay" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="kullanici_id" Type="Int32" />
                            <asp:Parameter Name="resim" Type="String" />
                            <asp:Parameter Name="kategori_id" Type="Int32" />
                            <asp:Parameter Name="makale_adi" Type="String" />
                            <asp:Parameter Name="makale_tarih" Type="DateTime" />
                            <asp:Parameter Name="mekan_adi" Type="String" />
                            <asp:Parameter Name="makale" Type="String" />
                            <asp:Parameter Name="onay" Type="Int32" />
                            <asp:Parameter Name="original_makale_id" Type="Int32" />
                            <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                            <asp:Parameter Name="original_resim" Type="String" />
                            <asp:Parameter Name="original_kategori_id" Type="Int32" />
                            <asp:Parameter Name="original_makale_adi" Type="String" />
                            <asp:Parameter Name="original_makale_tarih" Type="DateTime" />
                            <asp:Parameter Name="original_mekan_adi" Type="String" />
                            <asp:Parameter Name="original_makale" Type="String" />
                            <asp:Parameter Name="original_onay" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="kullanici_id" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="kullanici_id" HeaderText="kullanici_id" InsertVisible="False" ReadOnly="True" SortExpression="kullanici_id" />
                            <asp:BoundField DataField="adsoyad" HeaderText="adsoyad" SortExpression="adsoyad" />
                            <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                            <asp:BoundField DataField="kullanici_adi" HeaderText="kullanici_adi" SortExpression="kullanici_adi" />
                            <asp:BoundField DataField="durum" HeaderText="durum" SortExpression="durum" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:geziblogumConnectionString %>" DeleteCommand="DELETE FROM [kullanicilar] WHERE [kullanici_id] = @original_kullanici_id" InsertCommand="INSERT INTO [kullanicilar] ([adsoyad], [sifre], [kullanici_adi], [durum], [email]) VALUES (@adsoyad, @sifre, @kullanici_adi, @durum, @email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [kullanici_id], [adsoyad], [sifre], [kullanici_adi], [durum], [email] FROM [kullanicilar]" UpdateCommand="UPDATE [kullanicilar] SET [adsoyad] = @adsoyad, [sifre] = @sifre, [kullanici_adi] = @kullanici_adi, [durum] = @durum, [email] = @email WHERE [kullanici_id] = @original_kullanici_id AND [adsoyad] = @original_adsoyad AND [sifre] = @original_sifre AND [kullanici_adi] = @original_kullanici_adi AND (([durum] = @original_durum) OR ([durum] IS NULL AND @original_durum IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                            <asp:Parameter Name="original_adsoyad" Type="String" />
                            <asp:Parameter Name="original_sifre" Type="String" />
                            <asp:Parameter Name="original_kullanici_adi" Type="String" />
                            <asp:Parameter Name="original_durum" Type="Int32" />
                            <asp:Parameter Name="original_email" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="adsoyad" Type="String" />
                            <asp:Parameter Name="sifre" Type="String" />
                            <asp:Parameter Name="kullanici_adi" Type="String" />
                            <asp:Parameter Name="durum" Type="Int32" />
                            <asp:Parameter Name="email" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="adsoyad" Type="String" />
                            <asp:Parameter Name="sifre" Type="String" />
                            <asp:Parameter Name="kullanici_adi" Type="String" />
                            <asp:Parameter Name="durum" Type="Int32" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                            <asp:Parameter Name="original_adsoyad" Type="String" />
                            <asp:Parameter Name="original_sifre" Type="String" />
                            <asp:Parameter Name="original_kullanici_adi" Type="String" />
                            <asp:Parameter Name="original_durum" Type="Int32" />
                            <asp:Parameter Name="original_email" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">Kategori Adı:</td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="width: 40px" Text="Ekle" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View5" runat="server">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="iletisim_id" DataSourceID="SqlDataSource3">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="iletisim_id" HeaderText="iletisim_id" InsertVisible="False" ReadOnly="True" SortExpression="iletisim_id" />
                            <asp:BoundField DataField="gonderen_adi" HeaderText="gonderen_adi" SortExpression="gonderen_adi" />
                            <asp:BoundField DataField="gonderen_mail" HeaderText="gonderen_mail" SortExpression="gonderen_mail" />
                            <asp:BoundField DataField="gonderen_mesaj" HeaderText="gonderen_mesaj" SortExpression="gonderen_mesaj" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:geziblogumConnectionString %>" DeleteCommand="DELETE FROM [iletisim] WHERE [iletisim_id] = @original_iletisim_id" InsertCommand="INSERT INTO [iletisim] ([gonderen_adi], [gonderen_mail], [gonderen_mesaj]) VALUES (@gonderen_adi, @gonderen_mail, @gonderen_mesaj)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [iletisim_id], [gonderen_adi], [gonderen_mail], [gonderen_mesaj] FROM [iletisim]" UpdateCommand="UPDATE [iletisim] SET [gonderen_adi] = @gonderen_adi, [gonderen_mail] = @gonderen_mail, [gonderen_mesaj] = @gonderen_mesaj WHERE [iletisim_id] = @original_iletisim_id AND [gonderen_adi] = @original_gonderen_adi AND [gonderen_mail] = @original_gonderen_mail AND [gonderen_mesaj] = @original_gonderen_mesaj">
                        <DeleteParameters>
                            <asp:Parameter Name="original_iletisim_id" Type="Int32" />
                            <asp:Parameter Name="original_gonderen_adi" Type="String" />
                            <asp:Parameter Name="original_gonderen_mail" Type="String" />
                            <asp:Parameter Name="original_gonderen_mesaj" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="gonderen_adi" Type="String" />
                            <asp:Parameter Name="gonderen_mail" Type="String" />
                            <asp:Parameter Name="gonderen_mesaj" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="gonderen_adi" Type="String" />
                            <asp:Parameter Name="gonderen_mail" Type="String" />
                            <asp:Parameter Name="gonderen_mesaj" Type="String" />
                            <asp:Parameter Name="original_iletisim_id" Type="Int32" />
                            <asp:Parameter Name="original_gonderen_adi" Type="String" />
                            <asp:Parameter Name="original_gonderen_mail" Type="String" />
                            <asp:Parameter Name="original_gonderen_mesaj" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </asp:View>
                <asp:View ID="View6" runat="server">
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="makale_id" DataSourceID="SqlDataSource4">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                            <asp:BoundField DataField="makale_id" HeaderText="makale_id" InsertVisible="False" ReadOnly="True" SortExpression="makale_id" />
                            <asp:BoundField DataField="kullanici_id" HeaderText="kullanici_id" SortExpression="kullanici_id" />
                            <asp:BoundField DataField="resim" HeaderText="resim" SortExpression="resim" />
                            <asp:BoundField DataField="kategori_id" HeaderText="kategori_id" SortExpression="kategori_id" />
                            <asp:BoundField DataField="makale_adi" HeaderText="makale_adi" SortExpression="makale_adi" />
                            <asp:BoundField DataField="makale_tarih" HeaderText="makale_tarih" SortExpression="makale_tarih" />
                            <asp:BoundField DataField="mekan_adi" HeaderText="mekan_adi" SortExpression="mekan_adi" />
                            <asp:BoundField DataField="makale_ozet" HeaderText="makale_ozet" SortExpression="makale_ozet" />
                            <asp:BoundField DataField="makale" HeaderText="makale" SortExpression="makale" />
                            <asp:BoundField DataField="onay" HeaderText="onay" SortExpression="onay" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:geziblogumConnectionString %>" DeleteCommand="DELETE FROM [makale] WHERE [makale_id] = @original_makale_id" InsertCommand="INSERT INTO [makale] ([kullanici_id], [resim], [kategori_id], [makale_adi], [makale_tarih], [mekan_adi], [makale_ozet], [makale], [onay]) VALUES (@kullanici_id, @resim, @kategori_id, @makale_adi, @makale_tarih, @mekan_adi, @makale_ozet, @makale, @onay)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [makale] WHERE ([onay] = @onay)" UpdateCommand="UPDATE [makale] SET [kullanici_id] = @kullanici_id,[onay] = @onay WHERE [makale_id] = @original_makale_id AND [kullanici_id] = @original_kullanici_id AND [onay] = @original_onay">
                        <DeleteParameters>
                            <asp:Parameter Name="original_makale_id" Type="Int32" />
                            <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                            <asp:Parameter Name="original_resim" Type="String" />
                            <asp:Parameter Name="original_kategori_id" Type="Int32" />
                            <asp:Parameter Name="original_makale_adi" Type="String" />
                            <asp:Parameter Name="original_makale_tarih" Type="DateTime" />
                            <asp:Parameter Name="original_mekan_adi" Type="String" />
                            <asp:Parameter Name="original_makale_ozet" Type="String" />
                            <asp:Parameter Name="original_makale" Type="String" />
                            <asp:Parameter Name="original_onay" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="kullanici_id" Type="Int32" />
                            <asp:Parameter Name="resim" Type="String" />
                            <asp:Parameter Name="kategori_id" Type="Int32" />
                            <asp:Parameter Name="makale_adi" Type="String" />
                            <asp:Parameter Name="makale_tarih" Type="DateTime" />
                            <asp:Parameter Name="mekan_adi" Type="String" />
                            <asp:Parameter Name="makale_ozet" Type="String" />
                            <asp:Parameter Name="makale" Type="String" />
                            <asp:Parameter Name="onay" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="0" Name="onay" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="kullanici_id" Type="Int32" />
                            <asp:Parameter Name="resim" Type="String" />
                            <asp:Parameter Name="kategori_id" Type="Int32" />
                            <asp:Parameter Name="makale_adi" Type="String" />
                            <asp:Parameter Name="makale_tarih" Type="DateTime" />
                            <asp:Parameter Name="mekan_adi" Type="String" />
                            <asp:Parameter Name="makale_ozet" Type="String" />
                            <asp:Parameter Name="makale" Type="String" />
                            <asp:Parameter Name="onay" Type="Int32" />
                            <asp:Parameter Name="original_makale_id" Type="Int32" />
                            <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                            <asp:Parameter Name="original_resim" Type="String" />
                            <asp:Parameter Name="original_kategori_id" Type="Int32" />
                            <asp:Parameter Name="original_makale_adi" Type="String" />
                            <asp:Parameter Name="original_makale_tarih" Type="DateTime" />
                            <asp:Parameter Name="original_mekan_adi" Type="String" />
                            <asp:Parameter Name="original_makale_ozet" Type="String" />
                            <asp:Parameter Name="original_makale" Type="String" />
                            <asp:Parameter Name="original_onay" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </asp:View>
            </asp:MultiView>
        </div>


    </div>
    </form>
</body>
</html>
