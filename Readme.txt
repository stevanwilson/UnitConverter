Stuff to do:

Create GUI
	-keep it basic to begin with. have 1 text field, 2 drop down boxes populated with a query, 1 Label for output and a button to run the calculate
	-we'll need a Css style sheet. I included an empty one called custom in the empty project
	-I also made sure to include the Twitter bootstrap for the project. Whether we use it is up to everyone else.
	-I think after we get the project working, we can begin to refine the look and feel of the gui, as well as implement an autocalculate feature whenever the text fields are changed much like the google one.
	
POTENTIAL IDEAS: (For those who don't know what they can work on)
http://www.unitconverters.net/  (Check this site out)
Add more conversions in general. 
Conversion checking. We need someone to go through each possiblitity on each side and check to see if the numbers are correct.

Conversions we could add/modify: (All of these are avaiable through google calc)
1. Area
2. Data Transfer Rate (Bits per second to Kilobits per second)
3. Digital Storage (byte to kilobyte) - "DAVGOR"
4. Energy (Joules to Kilowatt Hour)
5. Sound Frequencies
6. Fuel Mileage
7. Mass (Pound to Ounce)
8. Angles (Sin Cos Tan) (This might require extra work)
9. Pressure
10. Speed
11. Temperature (This might be the easiest of them all)
12. Time - "DAVGOR"
13. Volume 

Create Database
	-perhaps we can use objects for each unit type with 2 fields [name,lengthInCm]
	-however, databases are faster at pulling data than C# is with object lists. It will be more efficient with a database



Create the logic
	-this should be simple. we will need 2 classes. One to pull data and one to calculate.
