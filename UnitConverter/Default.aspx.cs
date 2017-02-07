using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*Contributers:
 * 
 * Stevan Wilson
 * Elric Ekstrand
 * 
 * 
 * 
 */

namespace UnitConverter
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //For visual testing
            beginningUnitDrop.Items.Add("Starting Unit");
            endingUnitDrop.Items.Add("Ending Unit");
            outputLabel.Text = "someValue";
            //Need to bind drop down boxes to database query

        }

        protected void calculateButton_Click(object sender, EventArgs e)
        {
            //I think this logic should work once we get the pull method working
            /*
            double startValue= double.Parse(userInput.Text);
            double startValueInCm = startValue * pullValue(beginningUnitDrop.Text);
            double finalValue = startValueInCm / pullValue(endingUnitDrop.Text);
            */
        }

        private double pullValue(String unit)
        {
            double unitValue = 0;
            //This needs to run a query on the database to get the value of the unit and return it
            return unitValue;
        }

        
    }
}
