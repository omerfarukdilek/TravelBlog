<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9
        {
            height: 30px;
        }
        .auto-style10
        {
            height: 30px;
            width: 146px;
        }
        .auto-style12
        {
            width: 146px;
            height: 100px;
        }
        .auto-style13
        {
            height: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <table class="auto-style2">
        <tr>
            <td class="auto-style10">Ad soyad :</td>
            <td class="auto-style9">
                <asp:TextBox ID="txt_ad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">E-mail : </td>
            <td class="auto-style9">
                <asp:TextBox ID="txt_mail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Mesaj</td>
            <td class="auto-style13">
                <asp:TextBox ID="txt_mesaj" runat="server" Height="97px" TextMode="MultiLine" Width="322px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style9">
                <asp:Button ID="btn_gonder" runat="server" Text="Gönder" Height="30px" OnClick="btn_gonder_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

