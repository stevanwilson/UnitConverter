/*David Gorden
Populates the Length Conversion table with the correct values truncate table script commented
out at the bottom in case any adjustments to table design are needed
*/
insert into LengthConversion(ConName, ToMeter)
values('Meter',1);
insert into LengthConversion(ConName, ToMeter)
values('Decimeter',10);
insert into LengthConversion(ConName, ToMeter)
values('Centimeter',100);
insert into LengthConversion(ConName, ToMeter)
values('Millimeter',1000);
insert into LengthConversion(ConName, ToMeter)
values('Micrometer',10000);
insert into LengthConversion(ConName, ToMeter)
values('Decameter',.1);
insert into LengthConversion(ConName, ToMeter)
values('Hectmeter',.01);
insert into LengthConversion(ConName, ToMeter)
values('Kilometer',.001);
insert into LengthConversion(ConName, ToMeter)
values('Megameter',.0001);
insert into LengthConversion(ConName, ToMeter)
values('Inch',39.3701);
insert into LengthConversion(ConName, ToMeter)
values('Foot',3.28084);
insert into LengthConversion(ConName, ToMeter)
values('Yard',0.9144);
insert into LengthConversion(ConName, ToMeter)
values('Mile',0.000621371);
insert into LengthConversion(ConName, ToMeter)
values('Nautical Mile',0.000539957);

/*
select * from LengthConversion
*/

/*
truncate table LengthConversion;
*/

