<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.master" AutoEventWireup="true" CodeFile="Kayitol.aspx.cs" Inherits="kayitol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12
        {
            height: 50px;
            width: 397px;
        }
        .auto-style13
        {
            width: 600px;
        }
        .auto-style17
        {
            height: 50px;
            width: 231px;
        }
        .auto-style18
        {
            height: 40px;
            width: 231px;
        }
        .auto-style19
        {
            height: 40px;
            width: 397px;
        }
        .auto-style20
        {
            height: 40px;
            width: 296px;
        }
        .auto-style21
        {
            height: 50px;
            width: 296px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <br />
    <br />
    <br />
    <br />
<table class="auto-style13" style="margin-left:20px; border: 0.2em double #666;">
        <tr>
            <td class="auto-style20">Adsoyad :</td>
            <td class="auto-style18">
                <asp:TextBox ID="txt_adsoyad" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style19">
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
ControlToValidate="txt_adsoyad" ErrorMessage="Boş Girilemez"></asp:RequiredFieldValidator>
<br />&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">Kullanıcı Adı :</td>
            <td class="auto-style18">
                <asp:TextBox ID="txt_kullanici" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style19">
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
ControlToValidate="txt_kullanici" ErrorMessage="Boş Girilemez"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Şifre :</td>
            <td class="auto-style18">
                <asp:TextBox ID="txt_sifre" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style19">
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
ControlToValidate="txt_sifre" ErrorMessage="Boş Girilemez"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">E-mail :</td>
            <td class="auto-style18">
                <asp:TextBox ID="txt_mail" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style19">
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
ControlToValidate="txt_mail" ErrorMessage="Boş Girilemez"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style17">
                <asp:Button ID="btn_kayit" runat="server" Text="Kayıt Ol" OnClick="btn_kayit_Click" />
            </td>
            <td class="auto-style12">
                &nbsp;</td>
        </tr>

    <tr><td colspan="2">
        <asp:Label ID="lblbilgi" runat="server"></asp:Label>
        
        </td><td>
            &nbsp;</td></tr>
    </table>
    </asp:Content>

