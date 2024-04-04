<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="yemektarifiproje.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            background-color: #FFCCFF;
        }
        .auto-style13 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <strong>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style9">
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YorumAdSoyad") %>' CssClass="auto-style11"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style6" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-<asp:Label ID="Label8" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <div class="auto-style12"> YORUM YAPMA PANELİ</div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style9">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">Ad Soyad:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="201px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Mail:</td>
                    <td><strong>
                        <asp:TextBox ID="TextBox2" runat="server" Width="201px"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style13">Yorumunuz:</td>
                    <td><strong>
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="201px"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" Width="108px" />
                    </td>
                </tr>
            </table>
    </asp:Panel>
    </strong>
</asp:Content>
