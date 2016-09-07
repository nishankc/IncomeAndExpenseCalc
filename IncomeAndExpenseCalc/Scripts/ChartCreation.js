
drawIncome = function (chartType, salary, otherIncome, totalIncome) {

    if (salary === "0" && otherIncome === "0") {
        document.getElementById("chartPlaceholderIncome").style.display = "none";
        document.getElementById("noDataPlaceholderIncome").textContent = "Not enough data to draw chart";
    } else {

        var chartIncome = new CanvasJS.Chart("chartContainerIncome",
        {
            title: {
                text: "Total Income: £" + totalIncome
            },
            legend: {
                maxWidth: 350,
                itemWidth: 120
            },
            animationEnabled: true,
            data: [
            {
                type: chartType,
                showInLegend: true,
                radius: "90%",
                legendText: "{indexLabel}",
                toolTipContent: "{indexLabel} - #percent  %",
                indexLabel: "{y} %",
                dataPoints: [
                    { y: parseFloat(salary), indexLabel: "Salary" },
                    { y: parseFloat(otherIncome), indexLabel: "Other Income" }

                ]
            }
            ]
        });
        chartIncome.render();
    }


}

drawExp = function (chartType, mortage, utilities, tvandothers, insurance, petrol, other, totalExp) {

    if (mortage === "0" && utilities === "0" && tvandothers === "0" && insurance === "0" && petrol === "0" && other === "0"
        ) {
        document.getElementById("chartPlaceholderExp").style.display = "none";
        document.getElementById("noDataPlaceholderExp").textContent = "Not enough data to draw chart";
    } else {
        var chartExp = new CanvasJS.Chart("chartContainerExp",
        {
            title: {
                text: "Total Expenses: £" + totalExp
            },
            legend: {
                maxWidth: 350,
                itemWidth: 120
            },
            animationEnabled: true,
            data: [
            {
                type: chartType,
                radius: "100%",
                showInLegend: true,
                legendText: "{indexLabel}",
                toolTipContent: "{indexLabel} - #percent  %",
                indexLabel: "{y} %",
                dataPoints: [
                    { indexLabel: "Mortgage/Rent", y: parseFloat(mortage) },
                    { indexLabel: "Utilities", y: parseFloat(utilities)},
                    { indexLabel: "Tv/Phone/Internet", y: parseFloat(tvandothers) },
                    { indexLabel: "Insurance", y: parseFloat(insurance),},
                    { indexLabel: "Petrol", y: parseFloat(petrol), },
                    { indexLabel: "Other", y: parseFloat(other), }
            ]
        }
            ]
        });

        chartExp.render();
        

    }
}
