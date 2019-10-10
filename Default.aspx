<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Literal ID="lt_makale" runat="server"></asp:Literal>
    <asp:Image ID="Image1" runat="server" />
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
                <asp:Literal ID="lt_kategori" runat="server"></asp:Literal>
            
            <br />
            <br />
                </asp:Content>


