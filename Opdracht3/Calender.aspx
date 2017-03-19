<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calender.aspx.cs" Inherits="Calender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Calendar ID="kalVerjaardag" runat="server" OnSelectionChanged="kalVerjaardag_SelectionChanged1"></asp:Calendar>
    
    </div>
        Mijn Verjaardag :<br />
        <asp:Label ID="lblVerjaardag" runat="server"></asp:Label>
        <br />
        U bent nu:<br />
        <asp:Label ID="lblLeeftijd" runat="server"></asp:Label>
        <p>
            <asp:Button ID="btnButton" runat="server" OnClick="btnButton_Click" style="margin-bottom: 0px" Text="Laat zien" />
        </p>
    </form>
</body>
</html>
