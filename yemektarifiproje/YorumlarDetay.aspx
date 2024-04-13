<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumlarDetay.aspx.cs" Inherits="yemektarifiproje.YorumlarDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 19px;
        }
        .auto-style6 {
            height: 19px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Ad-Soyad:</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" Width="221px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mail Adresi:</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="219px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>İçerik:</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yemek:</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox4" runat="server" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ONAYLA" Width="206px" />
            </td>
        </tr>
    </table>
</asp:Content>
