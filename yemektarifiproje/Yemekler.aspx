<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="yemektarifiproje.Yemekler" %>


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
        .auto-style12 {
            width: 99%;
            height: 211px;
        }
        .auto-style13 {
            height: 208px;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            text-align: justify;
        }
        .auto-style18 {
            width: 140px;
        }
        .auto-style19 {
            text-align: justify;
            width: 140px;
        }
        .auto-style20 {
            text-align: left;
            width: 140px;
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
        <table class="auto-style12">
            <tr>
                <td class="auto-style13">
                    <asp:Panel ID="Panel2" runat="server" Height="214px" Width="438px">
                        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style6" Height="186px" Width="438px">
                            <ItemTemplate>
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style8">&nbsp;
                                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resim/ikonlar/delete2.png" Width="30px" /></a>
                                            &nbsp;</td>
                                        <td class="auto-style8">&nbsp; &nbsp; <a href="YemekDüzenle.aspx?Yemekid=<%#Eval("Yemekid") %>">    <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resim/ikonlar/refresh.png" Width="30px" /></a>

                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </asp:Panel>

                </td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style5" style="margin-top:150px;" >
        <table class="auto-style1">
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"   />
                    </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"   />
                    </strong></td>
                <td>YEMEK EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">KATEGORİ:</td>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="270px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style11" Text="EKLE" Width="100px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
