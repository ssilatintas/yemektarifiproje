<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDüzenle.aspx.cs" Inherits="yemektarifiproje.YemekDüzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
            font-size: large;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            color: #FFFFFF;
            background-color: #000099;
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
            <td class="auto-style5"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><strong></strong></td>
            <td class="auto-style6">
                <asp:Button runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="GÜNCELLE" Width="250px" />
            </td>
        </tr>
    </table>
</asp:Content>
