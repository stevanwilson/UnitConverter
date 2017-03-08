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
            /*
            //For visual testing
            beginningUnitDrop.Items.Add("Starting Unit");
            endingUnitDrop.Items.Add("Ending Unit");
            outputLabel.Text = "someValue";
            */
            //Need to bind drop down boxes to database query
            //load with first 
        }

        protected void calculateButton_Click(object sender, EventArgs e)
        {
            //I think this logic should work once we get the pull method working
            /*
            double startValue= double.Parse(userInput.Text);
            double startValueInCm = startValue * pullValue(beginningUnitDrop.Text);
            double finalValue = startValueInCm / pullValue(endingUnitDrop.Text);
            */
            //Programmed by Matthew Rozendaal
            //Variables
            double startValue;
            double startUnit;
            double endUnit;
            double output;
            //get User input
            double.TryParse(userInput.Text, out startValue);
            //Get starting unit
            double.TryParse(beginningUnitDrop.SelectedValue, out startUnit); 
            //get Ending unit
            double.TryParse(endingUnitDrop.SelectedValue, out endUnit);
           //Find output value
           output = (startValue /startUnit) * endUnit;
            //output result
           outputLabel.Text = output.ToString() + " SV:" + startValue + " SU" + startUnit
              + " EU: " + endUnit;
               
        }
    }
}
