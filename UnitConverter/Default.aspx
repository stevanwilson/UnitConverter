<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UnitConverter.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title class="centered">Unit Conversion</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/Custom.css" rel="stylesheet" />

</head>
<body class="container">
    <form id="default" runat="server">
        <h1 class="text-center">Unit Conversion</h1>
        <div><br /></div>
                <!--Rebecca doesn't like the use of breaks, however i wanted
                a gap between the header and the div for aesthetic reasons and this seemed the best method. 
                However if someone can think of a better way please fix it. -->
    <div class="text-center">
        <asp:DropDownList ID="beginningUnitDrop" runat="server"></asp:DropDownList>
        <asp:TextBox ID="userInput" runat="server"></asp:TextBox>
         = 
        <asp:Label ID="outputLabel" runat="server"></asp:Label>
        <asp:DropDownList ID="endingUnitDrop" runat="server"></asp:DropDownList>
    </div>
        <div><br /></div><!--Another break -->
        <div class="text-center"> 
            <asp:Button ID="calculateButton" runat="server" Text="Calculate" OnClick="calculateButton_Click" />
        </div>
    </form>
</body>
</html>
