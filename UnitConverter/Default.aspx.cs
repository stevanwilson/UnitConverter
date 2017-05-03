using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*Contributers:
 * 
 * Stevan Wilson
 * Matthew Rozendaal-page Formatting
 * David Gorden - Database
 * Elric Ekstrand - Page Formatting
 * Ethan Sutherland
 * Alexander McKinney - Page Formatting
 */

namespace UnitConverter
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            timelabel.Text = DateTime.Now.ToLongDateString();
            timelabel1.Text = DateTime.Now.ToLongTimeString();
            if (!IsPostBack)
            {
                //Add all data source id's to the drop down menu
                tableSelection.Items.Add("Length");
                tableSelection.Items.Add("Area");
                tableSelection.Items.Add("Volume");
                tableSelection.Items.Add("Time");
                tableSelection.Items.Add("Byte");
                tableSelection.Items.Add("Temperature");

                //Sets default Tables
                beginningUnitDrop.DataSourceID = tableSelection.SelectedValue;
                endingUnitDrop.DataSourceID = tableSelection.SelectedValue;
            }
        }
        
        protected void SomethingChanged(object sender, EventArgs e)
        {
            //found out that changing the drops without having numbers in the text boxes caused it to crash
            double testfigure;
            if (double.TryParse(userInput.Text,out testfigure))
            {
                Calculate();
            }
            
        }

        
        protected void Calculate()
        {
            double startValue = double.Parse(userInput.Text);
            double startUnit = double.Parse(beginningUnitDrop.SelectedValue);
            double endUnit = double.Parse(endingUnitDrop.SelectedValue);
            double output = 0;

            if (tableSelection.SelectedValue == "Temperature")
            {
                if(startUnit == 0 && endUnit == 1)
                {
                    output = (startValue * 9.0 / 5.0) + 32;      
                }
                else if(startUnit == 1 && endUnit == 0)
                {
                    output = (startValue - 32) * (5.0 / 9.0);
                }
                else
                {
                    output = startValue;
                }
            }
            else
            {
                output = (startValue / startUnit) * endUnit;
            }
            userOutput.Text = output.ToString();
        }


        protected void userOutput_TextChanged(object sender, EventArgs e)
        {
            //Backwards Calculation
            //This is when the user changes the right side of the equation
            double startValue = double.Parse(userOutput.Text);
            double startUnit = double.Parse(endingUnitDrop.SelectedValue);
            double endUnit = double.Parse(beginningUnitDrop.SelectedValue);
            double output = 0;

            if (tableSelection.SelectedValue == "Temperature")
            {
                if (startUnit == 0 && endUnit == 1)
                {
                    output = (startValue * 9.0 / 5.0) + 32;
                }
                else if (startUnit == 1 && endUnit == 0)
                {
                    output = (startValue - 32) * (5.0 / 9.0);
                }
                else
                {
                    output = startValue;
                }
            }
            else
            {
                output = (startValue / startUnit) * endUnit;
            }
            userOutput.Text = output.ToString();

        }


        protected void DatabaseChange(object sender, EventArgs e)
        {
            userInput.Text = "";
            userOutput.Text = "";
            beginningUnitDrop.DataSourceID = tableSelection.SelectedValue;
            endingUnitDrop.DataSourceID = tableSelection.SelectedValue;
        }
    }
}
