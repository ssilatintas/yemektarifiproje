<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="yemektarifiproje.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style9 {
            background-color: #CCCCCC;
        }
        .auto-style13 {
            width: 31px;
        }
        .auto-style17 {
            font-size: large;
        }
        .auto-style14 {
            width: 29px;
        }
        .auto-style12 {
            margin-left: 0px;
            font-size: large;
        }
        .auto-style18 {
            width: 380px;
        }
        .auto-style19 {
            width: 340%;
        }
        .auto-style20 {
            width: 124px;
        }
        .auto-style21 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style9">
        <table class="auto-style5">
            <tr>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style18">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style20">
                            &nbsp;<table class="auto-style19">
                                <tr>
                                    <td><strong>
                                        <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                        </strong></td>
                                    <td class="auto-style21">
                                       <a href='YemekDüzenle.aspx?Yemekid=<%#Eval("yemekid") %>'> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resim/ikonlar/choose2.png" Width="30px" />
                                    </td>
                                </tr>
                            </table>
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

</asp:Panel>
</asp:Content>
