<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admingiris.aspx.cs" Inherits="admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        


        .admin
        {
            margin-left:auto;
            margin-right:auto;
            margin-top:100px;
            background-color:#333;
            width:350px;
            height:300px;
            color:#fff;

        }


        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            height: 50px;
        }


        .auto-style4
        {
            width: 200px;
            height: 50px;
        }


    </style>
</head>
<body style="background-color:#c14c4c">
    <form id="form1" runat="server">
    
        <div>


            <div class="admin">
                <table class="auto-style1">
                    <tr>
                        <td colspan="2">
                            <img alt="" class="auto-style4" src="../images/admin_panel.gif" /></td>


                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;&nbsp;&nbsp;&nbsp; Kullanıcı adı:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txt_kullanici" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;&nbsp;&nbsp;&nbsp; Şifre:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txt_sifre" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style2">
                            <asp:Button ID="Button1" runat="server" Text="Giriş" Width="70px" OnClick="Button1_Click" />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>

        </div>

    </form>
</body>
</html>
