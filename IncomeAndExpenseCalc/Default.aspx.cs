using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    double salary, addIncome, mortgage, electricty, gas, tv, phone, internet, petrol, insurance, otherExp;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CalculateButton_Click(object sender, EventArgs e)
    {

        CalculateDisposableIncome();

    }

    private double getUserData(TextBox usertb)
    {
        if (!string.IsNullOrWhiteSpace(usertb.Text)){

            return double.Parse(usertb.Text);
        }
        else
        {
            return 0;
        }
    }

    private void CalculateDisposableIncome()
    {
        double total, totalIncome, totalExp, utilities, tvandothers;
        string chartType = "'pie'";
        Type Income = GetType();
        Type Expenses = GetType();


        salary = getUserData(SalaryTextBox);
        addIncome = getUserData(AdditionalIncomeTextBox);
        mortgage = getUserData(MortgageTextBox);
        electricty = getUserData(ElectricityTextBox);
        gas = getUserData(GasTextBox);
        tv = getUserData(TvTextBox);
        phone = getUserData(PhoneTextBox);
        internet = getUserData(InternetTextBox);
        petrol = getUserData(PetrolTextBox);
        insurance = getUserData(InsuranceTextBox);
        otherExp = getUserData(OtherExpTextBox);

        totalIncome = salary + addIncome;

        utilities = electricty + gas;
        tvandothers = tv + phone + internet;

        totalExp = mortgage + utilities + tvandothers + petrol + insurance + otherExp;

        total = totalIncome - totalExp;

        StringBuilder incomestring = new StringBuilder();
        incomestring.Append("drawIncome(" + chartType + "," + salary + "," + addIncome + "," + totalIncome + ");");

        StringBuilder expensestring = new StringBuilder();
        expensestring.Append("drawExp(" + chartType + "," + mortgage + "," + utilities + "," + tvandothers + "," + petrol + "," + insurance + "," + otherExp + "," + totalExp + ");");


        ClientScript.RegisterStartupScript(this.GetType(), "draw", incomestring.ToString(), true);

        ClientScript.RegisterStartupScript(this.GetType(), "draw1", expensestring.ToString(), true);

        //ClientScript.RegisterStartupScript(this.GetType(), "draw", "drawChart('" + chartType + "','" + salary + "','" + addIncome + "','" + totalIncome + "');", true);

    }


}