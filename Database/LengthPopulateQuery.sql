/*David Gorden
Populates the Length Conversion table with the correct values truncate table script commented
out at the bottom in case any adjustments to table design are needed
*/
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(0,'Meter',1,1);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(1,'Decimeter',10,.1);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(2,'Centimeter',100,.01);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(3,'Millimeter',1000,.001);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(4,'Micrometer',10000,.0001);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(5,'Decameter',.1,10);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(6,'Hectmeter',.01,100);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(7,'Kilometer',.001,1000);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(8,'Megameter',.0001,10000);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(9,'Inch',39.3701,0.0254);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(10,'Foot',3.28084,0.3048);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(11,'Yard',0.9144,1.09361);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(12,'Mile',0.000621371,1609.34);
insert into LengthConversion(Id,ConName, ToMeter, FromMeter)
values(13,'Nautical Mile',0.000539957,1852);
/*
truncate table LengthConversion;
*/

