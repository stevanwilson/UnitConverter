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
 */

namespace UnitConverter
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        

        protected void SomethingChanged(object sender, EventArgs e)
        {
            Calculate();
        }

        
        protected void Calculate()
        {
            double startValue = double.Parse(userInput.Text);
            double startUnit = double.Parse(beginningUnitDrop.SelectedValue);
            double endUnit = double.Parse(endingUnitDrop.SelectedValue);
            double output= (startValue / startUnit) * endUnit;
            userOutput.Text = output.ToString();
        }


        protected void userOutput_TextChanged(object sender, EventArgs e)
        {
            //Backwards Calculation
            //This is when the user changes the right side of the equation
            double startValue = double.Parse(userOutput.Text);
            double startUnit = double.Parse(endingUnitDrop.SelectedValue);
            double endUnit = double.Parse(beginningUnitDrop.SelectedValue);
            double output = (startValue / startUnit) * endUnit;
            userInput.Text = output.ToString();

        }
    }
}
