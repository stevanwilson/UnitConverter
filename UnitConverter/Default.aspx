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
            <h1 class="text-center space topSpace">
            <asp:SqlDataSource ID="LengthConverts" runat="server" ConnectionString="<%$ ConnectionStrings:UnitLengthConversionDBConnectionString %>" SelectCommand="SELECT [ConName], [ToMeter] FROM [LengthConversion]"></asp:SqlDataSource>
                Unit Conversion</h1>
        
    <div class="space">
        <div class="text-center">
            <asp:DropDownList ID="beginningUnitDrop" runat="server" DataSourceID="LengthConverts" DataTextField="ConName" DataValueField="ToMeter"></asp:DropDownList>
            <asp:TextBox ID="userInput" runat="server"></asp:TextBox>
             = 
            <asp:Label ID="outputLabel" runat="server" Text="answer"></asp:Label>
            <asp:DropDownList ID="endingUnitDrop" runat="server" DataSourceID="LengthConverts" DataTextField="ConName" DataValueField="ToMeter"></asp:DropDownList>
        </div>
    </div>
    <div class="space topSpace">
        <div class="text-center"> 
            <asp:Button ID="calculateButton" runat="server" Text="Calculate" OnClick="calculateButton_Click" CssClass="btn-success" />
        </div>
    </div>
    </form>
    <p>
        <a href="Database/UnitConversionDB.mdf">UnitConversionDB.mdf</a></p>
</body>
</html>
