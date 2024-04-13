<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="yemektarifiproje.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            background-color: #C0C0C0;
        }
        .auto-style10 {
            width: 38px;
        }
        .auto-style11 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style12 {
            width: 99%;
            height: 211px;
        }
        .auto-style13 {
            height: 208px;
        }
    .auto-style6 {
        background-color: #5E9FEE;
    }
    .auto-style9 {
        width: 197px;
    }
        .auto-style7 {
        font-size: large;
    }
    .auto-style8 {
        text-align: right;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5" Height="284px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td>YORUM LİSTESİ</td>
            </tr>
        </table>
        <table class="auto-style12">
            <tr>
                <td class="auto-style13">
                    <asp:Panel ID="Panel2" runat="server" Height="214px" Width="438px">
                        <asp:Panel ID="Panel3" runat="server">
                            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style6" Height="186px" Width="438px">
                                <ItemTemplate>
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style9">
                                                <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                            </td>
                                            <td class="auto-style8">&nbsp;
                                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resim/ikonlar/delete2.png" Width="30px" />
                                                &nbsp;</td>
                                            <td class="auto-style8">&nbsp; &nbsp;
                                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resim/ikonlar/refresh.png" Width="30px" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </asp:Panel>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
