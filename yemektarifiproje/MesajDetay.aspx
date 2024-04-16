<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="yemektarifiproje.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            text-align: left;
        }
        .auto-style7 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Mesaj Gönderen:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="218px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Başlık:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="217px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Mail Adresi:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="217px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mesaj İçerik:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
