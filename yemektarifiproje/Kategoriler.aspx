<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="yemektarifiproje.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            background-color: #C0C0C0;
        }
    .auto-style6 {
        background-color: #5E9FEE;
    }
    .auto-style7 {
        font-size: large;
    }
    .auto-style8 {
        text-align: right;
    }
    .auto-style9 {
        width: 197px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
        KATEGORİ LİSTESİ<asp:DataList ID="DataList1" runat="server" CssClass="auto-style6" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("KateoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">&nbsp;
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resim/ikonlar/delete2.png" Width="30px" />
                            &nbsp;</td>
                        <td class="auto-style8">&nbsp; &nbsp;<asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resim/ikonlar/refresh.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

</asp:Content>
