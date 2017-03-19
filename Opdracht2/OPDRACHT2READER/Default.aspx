<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OPDRACHT2READER.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server">
             
            <h1>Wie ben je?</h1>
            <p>
                &nbsp;</p>
            <p>
                Vul de onderstaande vragen in:</p>
            <table class="auto-style1">
                <tr>
                    <td>Naam</td>
                    <td>
                        <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Geslacht</td>
                    <td>
                        <asp:RadioButtonList ID="rbGeslacht" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1">Man</asp:ListItem>
                            <asp:ListItem Value="2">Vrouw</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Hobby</td>
                    <td>
                        <asp:CheckBoxList ID="chkHobby" runat="server">
                            <asp:ListItem Value="3">Programmeren</asp:ListItem>
                            <asp:ListItem Value="4">Gamen</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td>Opleiding</td>
                    <td>
                        <asp:DropDownList ID="cbOpleiding" runat="server">
                            <asp:ListItem Value="5">VMBO</asp:ListItem>
                            <asp:ListItem Value="6">HAVO</asp:ListItem>
                            <asp:ListItem Value="7">VWO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnMaakKaart" runat="server" Text="Maak een persoon aan" OnClick="btnMaakKaart_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        
    
    
        <asp:Label ID="Kindle" runat="server" Text="Persoon:"></asp:Label>
    </asp:Panel>
        </div>
             
                <asp:RadioButtonList ID="Listing" runat="server">
                    <asp:ListItem Value="10">Verbergen</asp:ListItem>
                    <asp:ListItem Value="20">Laat zien</asp:ListItem>
                </asp:RadioButtonList>
            
    </form>
       
</body>
</html>
