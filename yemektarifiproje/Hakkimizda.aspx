<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="yemektarifiproje.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: x-large;
            color: #0000CC;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style8">
        <strong>HAKKIMIZDA</strong></p>
    <asp:DataList ID="DataList2" runat="server" Width="450px" style="text-align:center">
        <ItemTemplate>
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:Image ID="Image1" runat="server" Height="190px" ImageUrl="~/resim/blog.jpg" Width="447px" />
</asp:Content>
