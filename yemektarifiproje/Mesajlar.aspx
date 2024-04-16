<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="yemektarifiproje.Mesajlar" %>
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
        margin-top: 0px;
    }
    .auto-style20 {
        width: 329px;
        text-align: right;
    }
        .auto-style21 {
            width: 371px;
        }
        .auto-style22 {
            width: 257px;
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
                <td class="auto-style21">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px" CssClass="auto-style18">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style22">
                            <strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                           </strong></td>
                        <td class="auto-style20">
                             <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"> <asp:Image ID="Image2" runat="server" Height="38px" ImageUrl="~/resim/ikonlar/read.png.jpg" Width="28px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

</asp:Panel>
</asp:Content>
