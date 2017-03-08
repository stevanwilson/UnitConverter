<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UnitConverter.Default" UnobtrusiveValidationMode="none"%>

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
            <asp:SqlDataSource ID="LengthConverts" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;|DataDirectory|\Database\UnitConversionDB.mdf&quot;;Integrated Security=True;Connect Timeout=30" SelectCommand="SELECT [ConName], [ToMeter] FROM [LengthConversion]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
                Unit Conversion</h1>
        
    <div class="space">
        <div class="text-center">
            <asp:DropDownList ID="beginningUnitDrop" runat="server" DataSourceID="LengthConverts" DataTextField="ConName" DataValueField="ToMeter" 
                OnSelectedIndexChanged="SomethingChanged" AutoPostBack="true"></asp:DropDownList>
            
            <asp:TextBox ID="userInput" runat="server" OnTextChanged="SomethingChanged" AutoPostBack="true" CausesValidation="true"></asp:TextBox>
             = 
            <asp:TextBox ID="userOutput" runat="server" OnTextChanged="userOutput_TextChanged" AutoPostBack="true" CausesValidation="true"></asp:TextBox>
            <asp:DropDownList ID="endingUnitDrop" runat="server" DataSourceID="LengthConverts" DataTextField="ConName"
                 OnSelectedIndexChanged="SomethingChanged" AutoPostBack="true" DataValueField="ToMeter"></asp:DropDownList>
        </div>
    </div>
    <div class="space topSpace">
        <div class="text-center">
            <asp:RequiredFieldValidator ID="requiredValidator" runat="server" ErrorMessage="Input Required" ControlToValidate="userInput" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="NumberValidator" runat="server" CssClass="error"
                ControlToValidate="userInput"  Type="Double" Display="Dynamic"
                ErrorMessage="You must enter a valid real number." Operator="DataTypeCheck"></asp:CompareValidator>
            <asp:CompareValidator ID="NumberValidatorOutput" runat="server" CssClass="error"
                ControlToValidate="userOutput"  Type="Double" Display="Dynamic"
                ErrorMessage="You must enter a valid real number." Operator="DataTypeCheck"></asp:CompareValidator>
        </div>
    </div>
    </form>
</body>
</html>
