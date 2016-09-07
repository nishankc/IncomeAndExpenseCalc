<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <script src="Scripts/canvasjs.min.js"></script>
    <script src="Scripts/ChartCreation.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/jquery-3.1.0.js"></script>
    <link href="Content/StyleSheet.css" rel="stylesheet" />
    <link href="Content/StyleChart.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="container">
        <div>
            <h1>Income and Expenses Calculator</h1>
            <br />
            <h3>Enter your estimated montly income and expenses, this will then total both and show show much disposable income is remaining. Only fill out the details relevant to you, other fields can be left blank</h3>
        </div>
        <br />
        <form id="form1" runat="server">
            <div class="row">
            <div class=" form-group col-md-1">
                <h3>Income</h3>
                <div>
                    <asp:Label ID="SalaryLabel" runat="server">Monthly Salary </asp:Label>
                    <asp:TextBox ID="SalaryTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="AdditionalIncomeLabel" runat="server">Additional Income </asp:Label>
                    <asp:TextBox ID="AdditionalIncomeTextBox" runat="server" CssClass="form-control"></asp:TextBox>
               </div>
          </div> 
       
            <div class="form-group col-md-1">
                <h3>Expenses</h3>
                <div>
                    <asp:Label ID="MortgageLabel" runat="server">Mortgage/Rent</asp:Label>
                    <asp:TextBox ID="MortgageTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="ElectricityLabel" runat="server">Electricity</asp:Label>
                    <asp:TextBox ID="ElectricityTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="GasLabel" runat="server">Gas</asp:Label>
                    <asp:TextBox ID="GasTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="TvLabel" runat="server">T.V/Satellite/Cable</asp:Label>
                    <asp:TextBox ID="TvTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="PhoneLabel" runat="server">Phone/Mobile Phone</asp:Label>
                    <asp:TextBox ID="PhoneTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="InternetLabel" runat="server">Internet</asp:Label>
                    <asp:TextBox ID="InternetTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="PetrolLabel" runat="server">Petrol</asp:Label>
                    <asp:TextBox ID="PetrolTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="InsuranceLabel" runat="server">Insurance</asp:Label>
                    <asp:TextBox ID="InsuranceTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="OtherExpLabel" runat="server">Other/Misc Expenses</asp:Label>
                    <asp:TextBox ID="OtherExpTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        
        
        
                <div class="col-md-1">
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                    <asp:Button ID="CalculateButton" runat="server" Text="Calculate" OnClick="CalculateButton_Click" CssClass="btn btn-primary center-block" />
                </div>
        
    
    
            <div>
                <asp:Label ID="DisposableLabel" runat="server"></asp:Label>
            </div>

            
                
                <div class="col-md-7">
                    <div id="chartContainerIncome" style="height: 300px; width: 100%;">
                        <div id="chartPlaceholderIncome"></div>
                        <div id="chartContainer"></div>
                        <div id="noDataPlaceholderIncome" class="h1"></div>
                    </div>
                
                    <div id="chartContainerExp" style="height: 300px; width: 100%">
                        <div id="chartPlaceholderExp"></div>
                        <div id="noDataPlaceholderExp" class="h1"></div>
                    </div>
                </div>
            </div>
        
         </form>
      </div>
</body>
</html>
