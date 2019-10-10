<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MakaleDuzenle.aspx.cs" Inherits="MakaleDuzenle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 87px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Makale Adı:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mekan Adi:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Makale Özet</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="60px" Width="246px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Makale</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="57px" Width="246px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Makale Resim</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Güncelle" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
