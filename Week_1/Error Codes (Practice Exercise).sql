/*Error Codes (Practice Exercise)

Author: Konstantinos Papacharalampous
Date: 01-06-2022

Note: When querying a table, remember to prepend dsv1069, which is the schema, or folder
that contains the course data.

*/

/*
Exercise 1:
Goal: Here we use users table to pull a list of user email addresses. Edit the query to pull email addresses, but only for non-deleted users.
*/

--Answer:

SELECT  email_address
FROM dsv1069.users
WHERE deleted_at IS NULL

OutPut:
+------------------------+-----------+--------------+
email_address
+------------------------+-----------+--------------+
ArataHopper@earthlink.info
Riya_Gruber1974@mail.net
Peter_Sousa@yahoo.info
D_Kowalski1962@gmail.com
SNovak1966@mail.com
Robot_Santos@yahoo.biz
Luis_Wilson1996@inbox.org
D_Powell1991@yahoo.edu
E_Hernandez1990@gmail.biz
L_McRobot@gmail.com
F_Fourie@earthlink.net
Katherine_Hassan1954@outlook.com
Grace_Kumar@gmail.com
Ben_Korhonen@gmail.net
M_Computer@gmail.com
Maryam_Hassan@earthlink.edu
AliTaylor1980@inbox.info
JanelleBrown@yahoo.com
N_Costa@mail.com
AnneRossi@gmail.edu
DiegoRussell1978@gmail.info
YKruger1994@gmail.org
Rebecca_Pillay1960@outlook.com
GeorgeWilson1959@gmail.com
BPhillips@yahoo.edu
Zoe_Khoury@inbox.biz
IsabellaScientist1960@outlook.edu
Yuna_Davis1960@earthlink.edu
Seo-yun_Rodriquez1993@yahoo.net
NathanVarghese1987@inbox.edu
R_Liu1979@gmail.com
M_Taylor@yahoo.org
SSokolov1992@yahoo.info
Fatima_Freeman@gmail.org
Diya_Wilson@yahoo.edu
Ariel_Watanabe1981@yahoo.net
J_Miller1988@yahoo.com
Lisa_Lopez@gmail.net
AKim@mail.net
SantiagoSokolov1961@earthlink.com
PCastillo1981@inbox.com
Katherine_Lee@inbox.com
A_Rossi@gmail.com
Felipe_Kowalski@gmail.net
Katherine_Adebayo1997@gmail.biz
HarutaSmith1954@inbox.biz
HosnaDhawan1988@yahoo.com
M_Webster1991@yahoo.com
JackPatel@outlook.com
SunitaLopez@gmail.com
DotComputer@inbox.info
Peter_Chen@mail.biz
JuanGonzalez@yahoo.com
Janelle_Freeman@yahoo.net
TVarghese2005@earthlink.net
Ben_McRobot1989@yahoo.org
EMiller1975@mail.com
ZekeRobotson@earthlink.com
F_Castillo2001@earthlink.com
KobeMcRobotFace@yahoo.edu
FComputer@gmail.biz
AMiller1970@yahoo.org
LisaFourie2000@mail.net
Hanah_Nielsen@yahoo.info
M_Agarwal2003@yahoo.net
MaryamAgarwal@inbox.com
JDiaz@inbox.org
TambikaNielsen1952@earthlink.net
PeterEvans@gmail.net
Halim_McRobot1950@earthlink.edu
MiaLiu2001@mail.org
SSchmidt1979@gmail.com
Tambika_Botson1972@mail.info
RodrigoChopra@gmail.org
BekimMiller@mail.org
AMueller@gmail.edu
G_Nielsen@mail.net
Amaira_Jones1990@gmail.com
Aya_Diaz1960@gmail.edu
ReemTanaka@earthlink.biz
Z_Kim1952@inbox.com
EmilyHuang1966@gmail.edu
M_Costa1958@earthlink.info
Aya_Sargsyan@gmail.biz
KHuang@earthlink.edu
E_Adams@gmail.edu
JDavis@earthlink.info
Data_Horvat1982@mail.net
Jacob_Acharya@gmail.com
Ariel_Powell1986@outlook.info
Juan_Brown1958@outlook.edu
Irene_Fourie1971@mail.edu
D_Lee1981@gmail.info
Mary_Janssens1980@gmail.info
Yuna_Adams1968@inbox.com
Mia_Liu@inbox.info
KhalidTaylor1980@mail.info
NalahBrown1960@mail.biz
AmairaBrown1984@mail.net
Lucas_Silva1956@outlook.com
+------------------------+-----------+--------------+

/*
Exercise 2:
Goal: Use the items table to count the number of items for sale in each category

*/

--Answer:

SELECT 
category, COUNT (id) AS ID_COUNT, COUNT(*) AS COUNT_NULL_VALUES_INCLUSIVE
-- I ran count on id column first as I know that is a PK so should not have null values
-- however to compare my hypothresis and numbers I run also a COUNT(*) which includes NULL Values
-- indeed output is the same :)
FROM dsv1069.items
GROUP BY category
ORDER BY category

OutPut:

+------------------------+-----------+--------------+
|category|	id_count|	count_null_values_inclusive|
+------------------------+-----------+--------------+
|apparatus|	 207	|207|
|contraption|	206	|206|
|device|	216	|216|
|dongle|	211	|211|
|gadget|	233	|233|
|instrument|	239	|239|
|mechanism|	225	|225|
|module|	227	|227|
|tool|	222	|222|
|widget|	212	2|12|
+------------------------+-----------+--------------+
