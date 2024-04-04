<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="yemektarifiproje.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            font-size: x-large;
            color: #FD0209;
            background-color: #FFCCFF;
        }
        .auto-style10 {
            background-color: #FFCCFF;
        }
        .auto-style11 {
            background-color: #CCCCCC;
        }
        .auto-style12 {
            color: #FFFFFF;
        }
        .auto-style13 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <asp:DataList ID="DataList2" runat="server" Width="443px">
        <ItemTemplate>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style10"><strong>



                       <a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid")%> "><asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label></a> 



                        </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("yemekmalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Yemek Tarifi:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Eklenme Tarihi:<asp:Label ID="Label8" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp; Puan<strong><em>:</em></strong><asp:Label ID="Label9" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>
