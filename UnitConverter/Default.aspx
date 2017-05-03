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
                Unit Conversion</h1>
        <div class="text-center space">
               <asp:Label ID="timelabel" runat ="server"></asp:Label>
               <asp:Label ID="timelabel1" runat="server"></asp:Label>
            </br>
            <asp:DropDownList ID="tableSelection" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DatabaseChange"></asp:DropDownList>
        </div>
        
    <div class="space topSpace">
        <div class="text-center">
            <asp:DropDownList ID="beginningUnitDrop" runat="server" DataTextField="Unit" DataValueField="Value" 
                OnSelectedIndexChanged="SomethingChanged" AutoPostBack="true" ValidationGroup="left"></asp:DropDownList>
            
            <asp:TextBox ID="userInput" runat="server" OnTextChanged="SomethingChanged" AutoPostBack="true" CausesValidation="true" ValidationGroup="left"></asp:TextBox>
             = 
            <asp:TextBox ID="userOutput" runat="server" OnTextChanged="userOutput_TextChanged" AutoPostBack="true" CausesValidation="true" ValidationGroup="right"></asp:TextBox>
            <asp:DropDownList ID="endingUnitDrop" runat="server" DataTextField="Unit"
                 OnSelectedIndexChanged="SomethingChanged" AutoPostBack="true" DataValueField="Value" ValidationGroup="left"></asp:DropDownList>
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

        <div>
            <!-- All Data Sources -->
            <asp:SqlDataSource ID="Length" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;|DataDirectory|\Database\LengthDatabase.mdf&quot;;Integrated Security=True;Connect Timeout=30" 
                SelectCommand="SELECT [LengthUnit] Unit, [ToMeter] Value FROM [LengthConversion]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>

            <asp:SqlDataSource ID="Area" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;|DataDirectory|\Database\LengthDatabase.mdf&quot;;Integrated Security=True;Connect Timeout=30" 
                SelectCommand="SELECT [AreaUnit] Unit, [ToCm2] Value FROM [AreaTable]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>

            <asp:SqlDataSource ID="Volume" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;|DataDirectory|\Database\LengthDatabase.mdf&quot;;Integrated Security=True;Connect Timeout=30" 
                SelectCommand="SELECT [VolumeUnit] Unit, [ToCm3] Value FROM [VolumeTable]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>

            <asp:SqlDataSource ID="Time" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;|DataDirectory|\Database\LengthDatabase.mdf&quot;;Integrated Security=True;Connect Timeout=30" 
                SelectCommand="SELECT [TimeUnit] Unit, [ToSecond] Value FROM [TimeTable]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>

            <asp:SqlDataSource ID="Byte" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;|DataDirectory|\Database\LengthDatabase.mdf&quot;;Integrated Security=True;Connect Timeout=30" 
                SelectCommand="SELECT [ByteUnit] Unit, [ToByte] Value FROM [ByteTable]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>

            <asp:SqlDataSource ID="Temperature" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;|DataDirectory|\Database\LengthDatabase.mdf&quot;;Integrated Security=True;Connect Timeout=30" 
                SelectCommand="SELECT [TemperatureUnit] Unit, [ToTemp] Value FROM [TemperatureTable]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>

        </div>
    </div>
    </form>
</body>
</html>
