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
        <div class="space">
            <h1 class="text-center">Unit Conversion</h1>
        </div>
    <div class="space">
        <div class="text-center form-control">
            <asp:DropDownList ID="beginningUnitDrop" runat="server"></asp:DropDownList>
            <asp:TextBox ID="userInput" runat="server"></asp:TextBox>
             = 
            <asp:Label ID="outputLabel" runat="server"></asp:Label>
            <asp:DropDownList ID="endingUnitDrop" runat="server"></asp:DropDownList>
        </div>
    </div>
    <div class="space">
        <div class="text-center"> 
            <asp:Button ID="calculateButton" runat="server" Text="Calculate" OnClick="calculateButton_Click" />
        </div>
    </div>
    </form>
</body>
</html>
