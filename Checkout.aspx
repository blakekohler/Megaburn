<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    This is the checkout screen for our project.<br />
&nbsp;<asp:Table ID="Table1" runat="server" Width="169px">
        </asp:Table>

    </div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
&nbsp; Qty Text Box<br />
        <asp:CheckBox ID="CheckBox1" runat="server" />
&nbsp;Join our mailing list<br />
        <asp:Button ID="Button1" runat="server" Text="Checkout" />
        &nbsp;</form>
</body>
</html>
