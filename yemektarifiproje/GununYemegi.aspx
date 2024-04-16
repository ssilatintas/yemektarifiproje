<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="yemektarifiproje.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        width: 100%;
    }
    .auto-style9 {
        font-size: x-large;
    }
    .auto-style10 {
        margin-left: 120px;
    }
    .auto-style11 {
        text-align: center;
        margin-left: 120px;
    }
    .auto-style12 {
        text-align: center;
    }
    .auto-style13 {
        text-decoration: underline;
    }
    .auto-style14 {
        width: 259px;
        height: 194px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style8">
            <tr>
                <td style="border: thin solid #FFFFFF" class="auto-style12">
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin solid #FFFFFF"><span class="auto-style13"><strong>Malzemeler</strong></span>:<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: thin solid #FFFFFF">&nbsp;</td>
            </tr>
            <tr>
                <td style="border: thin solid #FFFFFF"><span class="auto-style13"><strong>Tarif</strong></span>:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="border: thin solid #FFFFFF">
                    <img alt="" class="auto-style14" src="resim/indir.jpeg" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="border: thin solid #FFFFFF">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10" style="border: thin solid #FFFFFF"><span class="auto-style13"><strong>Puan</strong></span>:<asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    &nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style10" style="border: thin solid #FFFFFF"><span class="auto-style13"><strong>Eklenme Tarihi</strong></span>:<asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
