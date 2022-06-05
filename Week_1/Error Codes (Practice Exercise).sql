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

--OutPut:
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

--OutPut:

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

/*
Exercise 3:
Goal: Select all of the columns from the result when you JOIN the users table to the orders table

*/

--Answer:

SELECT  *
FROM dsv1069.users u
JOIN dsv1069.orders o
ON u.id = o.user_id

--OutPut:

created_at_duplicate_column_name_1	deleted_at	email_address	first_name	id	last_name	merged_at	parent_user_id	invoice_id	line_item_id	user_id	item_id	item_name	item_category	price	created_at	paid_at
2016-10-14 05:39:20		Riya_Gruber1974@mail.net	Riya	158891	Gruber			225682	340168	158891	920	fuzzy apparatus opener	apparatus	150	2017-03-18 22:38:13	2017-03-19 13:10:44
2016-10-14 05:39:20		Riya_Gruber1974@mail.net	Riya	158891	Gruber			225682	345073	158891	85	reflective apparatus	apparatus	390	2017-03-18 22:38:13	2017-03-19 13:10:44
2016-10-14 05:39:20		Riya_Gruber1974@mail.net	Riya	158891	Gruber			225682	266169	158891	93	reflective apparatus wrapper	apparatus	156	2017-03-18 22:38:13	2017-03-19 13:10:44
2016-10-14 05:39:20		Riya_Gruber1974@mail.net	Riya	158891	Gruber			225682	148386	158891	2720	rechargable apparatus	apparatus	390	2017-03-18 22:38:13	2017-03-19 13:10:44
2015-10-24 16:27:27		SNovak1966@mail.com	S	93994	Novak			229848	59244	93994	3629	digital apparatus opener	apparatus	165	2016-02-18 04:30:15	2016-02-20 15:08:49
2015-10-24 16:27:27		SNovak1966@mail.com	S	93994	Novak			229848	94696	93994	3360	apparatus opener	apparatus	150	2016-02-18 04:30:15	2016-02-20 15:08:49
2015-03-29 09:38:01		D_Powell1991@yahoo.edu	D	64712	Powell			88655	287644	64712	137	organic dongle refill	dongle	36	2015-09-05 09:37:12	2015-09-07 01:07:35
2017-04-12 23:16:55		Grace_Kumar@gmail.com	Grace	196712	Kumar			272561	397449	196712	1730	matte contraption	contraption	312.5	2017-10-08 04:03:50	2017-10-07 20:35:09
2017-04-12 23:16:55		Grace_Kumar@gmail.com	Grace	196712	Kumar			272561	21181	196712	3376	rechargable contraption	contraption	325	2017-10-08 04:03:50	2017-10-07 20:35:09
2017-04-12 23:16:55		Grace_Kumar@gmail.com	Grace	196712	Kumar			272561	362396	196712	2256	matte contraption storage_unit	contraption	781.25	2017-10-08 04:03:50	2017-10-07 20:35:09
2017-04-12 23:16:55		Grace_Kumar@gmail.com	Grace	196712	Kumar			272561	56549	196712	2580	analog contraption	contraption	225	2017-10-08 04:03:50	2017-10-07 20:35:09
2017-04-13 12:47:09		Maryam_Hassan@earthlink.edu	Maryam	196460	Hassan			345139	65410	196460	3937	industrial-strength contraption wrapper	contraption	300	2017-07-26 20:40:30	2017-07-25 23:22:35
2017-04-13 12:47:09		Maryam_Hassan@earthlink.edu	Maryam	196460	Hassan			345139	375647	196460	3109	glossy contraption	contraption	300	2017-07-26 20:40:30	2017-07-25 23:22:35
2017-04-13 12:47:09		Maryam_Hassan@earthlink.edu	Maryam	196460	Hassan			345139	395073	196460	1204	fuzzy contraption	contraption	250	2017-07-26 20:40:30	2017-07-25 23:22:35
2017-04-13 12:47:09		Maryam_Hassan@earthlink.edu	Maryam	196460	Hassan			345139	123019	196460	2363	digital contraption wrapper	contraption	110	2017-07-26 20:40:30	2017-07-25 23:22:35
2014-05-17 17:45:29		JanelleBrown@yahoo.com	Janelle	26445	Brown			51732	230446	26445	963	device	device	50	2014-06-12 15:16:04	2014-06-12 04:02:25
2014-05-17 17:45:29		JanelleBrown@yahoo.com	Janelle	26445	Brown			51732	169133	26445	1862	fuzzy device	device	50	2014-06-12 15:16:04	2014-06-12 04:02:25
2014-05-17 17:45:29		JanelleBrown@yahoo.com	Janelle	26445	Brown			51732	277805	26445	3219	extra-strength device charger	device	20	2014-06-12 15:16:04	2014-06-12 04:02:25
2014-05-17 17:45:29		JanelleBrown@yahoo.com	Janelle	26445	Brown			51732	131051	26445	854	fuzzy device carrying_case	device	30	2014-06-12 15:16:04	2014-06-12 04:02:25
2016-12-05 04:20:47		Zoe_Khoury@inbox.biz	Zoe	171657	Khoury			69297	65641	171657	2395	aerodynamic dongle	dongle	42	2017-06-14 09:27:44	2017-06-16 21:54:33
2016-12-05 04:20:47		Zoe_Khoury@inbox.biz	Zoe	171657	Khoury			69297	54956	171657	1698	extra-strength dongle storage_unit	dongle	150	2017-06-14 09:27:44	2017-06-16 21:54:33
2016-12-05 04:20:47		Zoe_Khoury@inbox.biz	Zoe	171657	Khoury			69297	383638	171657	2865	prize-winning dongle how-to-manual	dongle	0	2017-06-14 09:27:44	2017-06-16 21:54:33
2016-12-05 04:20:47		Zoe_Khoury@inbox.biz	Zoe	171657	Khoury			69297	13146	171657	3082	aerodynamic dongle cleaner	dongle	25.2	2017-06-14 09:27:44	2017-06-16 21:54:33
2017-02-10 13:33:13	2017-09-14 10:50:06	Mateo_Anand@earthlink.edu	Mateo	185769	Anand			254237	260420	185769	1100	fuzzy contraption charger	contraption	50	2017-04-26 07:08:47	2017-04-26 12:15:09
2017-02-10 13:33:13	2017-09-14 10:50:06	Mateo_Anand@earthlink.edu	Mateo	185769	Anand			254237	46540	185769	3932	reflective contraption refill	contraption	260	2017-04-26 07:08:47	2017-04-26 12:15:09
2017-02-10 13:33:13	2017-09-14 10:50:06	Mateo_Anand@earthlink.edu	Mateo	185769	Anand			254237	207391	185769	3109	glossy contraption	contraption	300	2017-04-26 07:08:47	2017-04-26 12:15:09
2016-08-26 17:12:58		SSokolov1992@yahoo.info	S	148813	Sokolov			172032	72347	148813	3799	miniature tool	tool	13.750000000000002	2017-01-08 05:52:21	2017-01-08 23:56:08
2016-04-21 00:38:32		Felipe_Kowalski@gmail.net	Felipe	128320	Kowalski			237635	209181	128320	3016	glossy dongle wrapper	dongle	14.4	2016-07-03 01:12:55	2016-07-04 22:41:40
2016-04-21 00:38:32		Felipe_Kowalski@gmail.net	Felipe	128320	Kowalski			237635	14263	128320	215	prize-winning dongle how-to-manual	dongle	0	2016-07-03 01:12:55	2016-07-04 22:41:40
2016-04-21 00:38:32		Felipe_Kowalski@gmail.net	Felipe	128320	Kowalski			334870	360130	128320	362	fuzzy tool refill	tool	20	2016-06-11 12:17:13	2016-06-10 00:48:51
2016-04-21 00:38:32		Felipe_Kowalski@gmail.net	Felipe	128320	Kowalski			334870	341268	128320	3449	analog tool warmer	tool	24.750000000000004	2016-06-11 12:17:13	2016-06-10 00:48:51
2016-04-21 00:38:32		Felipe_Kowalski@gmail.net	Felipe	128320	Kowalski			334870	236278	128320	2423	extra-strength tool how-to-manual	tool	0	2016-06-11 12:17:13	2016-06-10 00:48:51
2016-06-12 22:27:54		HosnaDhawan1988@yahoo.com	Hosna	135205	Dhawan			172645	137849	135205	1799	rechargable mechanism	mechanism	19.5	2016-12-04 00:52:13	2016-12-05 21:29:55
2016-06-12 22:27:54		HosnaDhawan1988@yahoo.com	Hosna	135205	Dhawan			172645	328219	135205	122	digital mechanism carrying_case	mechanism	9.9	2016-12-04 00:52:13	2016-12-05 21:29:55
2016-06-12 22:27:54		HosnaDhawan1988@yahoo.com	Hosna	135205	Dhawan			172645	388758	135205	2504	reflective mechanism charger	mechanism	3.9	2016-12-04 00:52:13	2016-12-05 21:29:55
2014-03-20 09:00:10		Peter_Chen@mail.biz	Peter	20583	Chen			241305	350562	20583	2599	organic device charger	device	15	2014-03-23 03:49:36	2014-03-21 09:56:43
2014-03-20 09:00:10		Peter_Chen@mail.biz	Peter	20583	Chen			241305	29904	20583	3413	reflective device	device	65	2014-03-23 03:49:36	2014-03-21 09:56:43
2016-03-14 01:18:03		Ben_McRobot1989@yahoo.org	Ben	119815	McRobot			368649	103763	119815	87	rechargable gadget how-to-manual	gadget	0	2016-09-18 02:02:17	2016-09-20 06:32:36
2016-03-14 01:18:03		Ben_McRobot1989@yahoo.org	Ben	119815	McRobot			368649	254242	119815	2857	industrial-strength gadget	gadget	267	2016-09-18 02:02:17	2016-09-20 06:32:36
2016-03-14 01:18:03		Ben_McRobot1989@yahoo.org	Ben	119815	McRobot			368649	63524	119815	3496	reflective dongle	dongle	39	2016-09-18 02:02:17	2016-09-20 06:32:36
2016-03-14 01:18:03		Ben_McRobot1989@yahoo.org	Ben	119815	McRobot			368649	306414	119815	3468	reflective contraption	contraption	325	2016-09-18 02:02:17	2016-09-20 06:32:36
2014-03-28 09:11:17		KobeMcRobotFace@yahoo.edu	Kobe	21514	McRobotFace			23120	311214	21514	612	industrial-strength instrument carrying_case	instrument	79.19999999999997	2014-04-04 11:58:35	2014-04-04 02:57:19
2014-03-28 09:11:17		KobeMcRobotFace@yahoo.edu	Kobe	21514	McRobotFace			23120	60272	21514	702	industrial-strength tool opener	tool	37.5	2014-04-04 11:58:35	2014-04-04 02:57:19
2014-03-28 09:11:17		KobeMcRobotFace@yahoo.edu	Kobe	21514	McRobotFace			23120	281136	21514	182	reflective widget	widget	3.9	2014-04-04 11:58:35	2014-04-04 02:57:19
2014-03-28 09:11:17		KobeMcRobotFace@yahoo.edu	Kobe	21514	McRobotFace			23120	60820	21514	367	rechargable contraption	contraption	325	2014-04-04 11:58:35	2014-04-04 02:57:19
2018-01-08 17:04:34		G_Nielsen@mail.net	G	263066	Nielsen			267306	399859	263066	3416	aerodynamic gadget opener	gadget	62.3	2018-01-10 15:19:28	2018-01-10 07:16:39
2018-01-08 17:04:34		G_Nielsen@mail.net	G	263066	Nielsen			267306	367685	263066	2116	glossy gadget storage_unit	gadget	267	2018-01-10 15:19:28	2018-01-10 07:16:39
2018-01-08 17:04:34		G_Nielsen@mail.net	G	263066	Nielsen			267306	366246	263066	3673	extra-strength gadget	gadget	178	2018-01-10 15:19:28	2018-01-10 07:16:39
2018-01-08 17:04:34		G_Nielsen@mail.net	G	263066	Nielsen			267306	266532	263066	2176	industrial-strength gadget	gadget	267	2018-01-10 15:19:28	2018-01-10 07:16:39
2017-05-06 00:37:33		EmilyHuang1966@gmail.edu	Emily	204792	Huang			156838	12010	204792	828	glossy device warmer	device	66	2017-10-15 17:25:09	2017-10-13 23:49:19
2017-05-06 00:37:33		EmilyHuang1966@gmail.edu	Emily	204792	Huang			156838	18338	204792	2730	glossy device	device	60	2017-10-15 17:25:09	2017-10-13 23:49:19
2015-06-06 14:16:39		Ariel_Powell1986@outlook.info	Ariel	75151	Powell			227631	261141	75151	214	analog device how-to-manual	device	0	2015-09-01 18:40:08	2015-09-01 21:11:32
2016-04-19 15:57:24		AnneComputer@outlook.biz	Anne	127828	Computer			9043	249225	127828	2446	industrial-strength module	module	300	2016-07-06 15:22:18	2016-07-07 03:13:14
2016-04-19 15:57:24		AnneComputer@outlook.biz	Anne	127828	Computer			9043	139809	127828	565	fuzzy module cleaner	module	60	2016-07-06 15:22:18	2016-07-07 03:13:14
2015-05-27 14:13:41		SakuraPowell@yahoo.com	Sakura	71798	Powell			112816	162731	71798	1853	matte dongle	dongle	37.5	2015-06-10 07:22:23	2015-06-10 08:17:38
2014-09-22 22:05:27		Emily_Martin@gmail.edu	Emily	39758	Martin			60057	115506	39758	3248	contraption refill	contraption	200	2014-12-04 01:06:27	2014-12-03 02:53:30
2014-09-22 22:05:27		Emily_Martin@gmail.edu	Emily	39758	Martin			60057	59171	39758	3585	matte contraption	contraption	312.5	2014-12-04 01:06:27	2014-12-03 02:53:30
2014-09-22 22:05:27		Emily_Martin@gmail.edu	Emily	39758	Martin			60057	105830	39758	1461	organic contraption refill	contraption	300	2014-12-04 01:06:27	2014-12-03 02:53:30
2014-09-22 22:05:27		Emily_Martin@gmail.edu	Emily	39758	Martin			60057	68244	39758	2747	contraption charger	contraption	50	2014-12-04 01:06:27	2014-12-03 02:53:30
2013-11-01 04:14:05		EHassan1956@outlook.edu	E	9442	Hassan			103631	248175	9442	3673	extra-strength gadget	gadget	178	2014-02-06 03:19:00	2014-02-06 20:38:15
2013-11-01 04:14:05		EHassan1956@outlook.edu	E	9442	Hassan			103631	49082	9442	3992	reflective gadget	gadget	115.7	2014-02-06 03:19:00	2014-02-06 20:38:15
2013-11-01 04:14:05		EHassan1956@outlook.edu	E	9442	Hassan			103631	45317	9442	699	analog gadget opener	gadget	40.05	2014-02-06 03:19:00	2014-02-06 20:38:15
2014-07-21 23:05:07		MKumar1985@gmail.info	M	32754	Kumar			261798	272875	32754	3271	miniature instrument refill	instrument	19.360000000000007	2014-11-07 07:18:52	2014-11-07 03:19:39
2014-07-21 23:05:07		MKumar1985@gmail.info	M	32754	Kumar			261798	387206	32754	3417	matte instrument	instrument	55	2014-11-07 07:18:52	2014-11-07 03:19:39
2014-07-21 23:05:07		MKumar1985@gmail.info	M	32754	Kumar			261798	170177	32754	3250	fuzzy instrument how-to-manual	instrument	0	2014-11-07 07:18:52	2014-11-07 03:19:39
2018-05-21 03:20:41		Omar_Martin@mail.info	Omar	292706	Martin			205291	338850	292706	3316	industrial-strength widget storage_unit	widget	22.5	2018-05-28 13:03:11	2018-05-27 20:58:35
2018-05-21 03:20:41		Omar_Martin@mail.info	Omar	292706	Martin			205291	259981	292706	1880	widget	widget	3	2018-05-28 13:03:11	2018-05-27 20:58:35
2017-05-18 09:35:51		C_Santos@gmail.com	C	206694	Santos			113826	362911	206694	58	organic tool refill	tool	30	2017-11-25 05:29:25	2017-11-24 12:13:57
2017-05-18 09:35:51		C_Santos@gmail.com	C	206694	Santos			113826	257692	206694	1441	fuzzy tool wrapper	tool	10	2017-11-25 05:29:25	2017-11-24 12:13:57
2017-05-18 09:35:51		C_Santos@gmail.com	C	206694	Santos			113826	255036	206694	2672	prize-winning tool refill	tool	22	2017-11-25 05:29:25	2017-11-24 12:13:57
2016-08-03 15:01:47		Diya_Ortiz1977@yahoo.com	Diya	146527	Ortiz			234803	205116	146527	1410	prize-winning mechanism refill	mechanism	13.2	2016-11-15 18:49:26	2016-11-14 21:04:53
2016-08-03 15:01:47		Diya_Ortiz1977@yahoo.com	Diya	146527	Ortiz			234803	253062	146527	1235	organic mechanism	mechanism	22.5	2016-11-15 18:49:26	2016-11-14 21:04:53
2016-08-03 15:01:47		Diya_Ortiz1977@yahoo.com	Diya	146527	Ortiz			234803	131072	146527	2959	digital mechanism wrapper	mechanism	6.6000000000000005	2016-11-15 18:49:26	2016-11-14 21:04:53
2016-08-03 15:01:47		Diya_Ortiz1977@yahoo.com	Diya	146527	Ortiz			234803	228517	146527	2348	rechargable mechanism	mechanism	19.5	2016-11-15 18:49:26	2016-11-14 21:04:53
2017-06-12 22:17:48		HZhou@gmail.com	H	213575	Zhou			297900	233243	213575	63	miniature device how-to-manual	device	0	2017-07-12 20:40:03	2017-07-13 01:16:06
2017-06-12 22:17:48		HZhou@gmail.com	H	213575	Zhou			297900	337346	213575	2444	aerodynamic device cleaner	device	42	2017-07-12 20:40:03	2017-07-13 01:16:06
2017-06-12 22:17:48		HZhou@gmail.com	H	213575	Zhou			297900	361689	213575	963	device	device	50	2017-07-12 20:40:03	2017-07-13 01:16:06
2017-06-12 22:17:48		HZhou@gmail.com	H	213575	Zhou			297900	163115	213575	3053	fuzzy device	device	50	2017-07-12 20:40:03	2017-07-13 01:16:06
2013-12-17 04:37:21		Victoria_Tamm@gmail.info	Victoria	12791	Tamm			48604	198581	12791	3964	reflective device storage_unit	device	162.5	2014-01-07 16:19:14	2014-01-10 10:46:34
2017-06-29 05:40:49		Elizabeth_Huang1964@inbox.info	Elizabeth	216120	Huang			254192	113185	216120	1180	extra-strength module cleaner	module	120	2017-08-12 09:02:51	2017-08-12 13:48:46
2017-06-29 05:40:49		Elizabeth_Huang1964@inbox.info	Elizabeth	216120	Huang			254192	311797	216120	994	industrial-strength module	module	300	2017-08-12 09:02:51	2017-08-12 13:48:46
2017-06-29 05:40:49		Elizabeth_Huang1964@inbox.info	Elizabeth	216120	Huang			254192	314003	216120	1576	glossy module wrapper	module	48	2017-08-12 09:02:51	2017-08-12 13:48:46
2017-06-29 05:40:49		Elizabeth_Huang1964@inbox.info	Elizabeth	216120	Huang			254192	204729	216120	3792	module warmer	module	110	2017-08-12 09:02:51	2017-08-12 13:48:46
2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami			263083	300442	23477	297	prize-winning tool wrapper	tool	11	2014-06-08 07:40:44	2014-06-07 09:12:59
2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami			263083	340740	23477	2199	aerodynamic tool carrying_case	tool	21	2014-06-08 07:40:44	2014-06-07 09:12:59
2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami			263083	373053	23477	1384	matte tool charger	tool	6.25	2014-06-08 07:40:44	2014-06-07 09:12:59
2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami			310357	367440	23477	940	reflective widget	widget	3.9	2014-05-30 22:36:23	2014-06-02 17:47:02
2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami			310357	144446	23477	2496	extra-strength widget opener	widget	3	2014-05-30 22:36:23	2014-06-02 17:47:02
2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami			332902	276874	23477	3067	matte tool warmer	tool	34.37500000000001	2014-09-19 22:33:34	2014-09-17 23:07:33
2014-04-12 23:42:29		Hosna_Alami@gmail.org	Hosna	23477	Alami			332902	200514	23477	1683	industrial-strength tool carrying_case	tool	45	2014-09-19 22:33:34	2014-09-17 23:07:33
2017-06-27 07:36:29		Davit_Saito@earthlink.net	Davit	213165	Saito			158875	307673	213165	2549	aerodynamic tool	tool	35	2017-09-14 05:17:31	2017-09-14 10:14:26
2017-06-27 07:36:29		Davit_Saito@earthlink.net	Davit	213165	Saito			158875	155365	213165	725	tool wrapper	tool	10	2017-09-14 05:17:31	2017-09-14 10:14:26
2014-11-19 23:48:52		PierreNielsen1959@earthlink.com	Pierre	47400	Nielsen			113279	226277	47400	3846	digital gadget opener	gadget	48.95	2015-05-21 09:53:26	2015-05-21 02:01:56
2014-11-19 23:48:52		PierreNielsen1959@earthlink.com	Pierre	47400	Nielsen			316091	216841	47400	485	contraption	contraption	250	2015-02-23 07:58:53	2015-02-22 04:27:29
2014-11-19 23:48:52		PierreNielsen1959@earthlink.com	Pierre	47400	Nielsen			316091	220238	47400	60	fuzzy contraption warmer	contraption	275	2015-02-23 07:58:53	2015-02-22 04:27:29
2014-11-19 23:48:52		PierreNielsen1959@earthlink.com	Pierre	47400	Nielsen			316091	80907	47400	2512	fuzzy contraption carrying_case	contraption	150	2015-02-23 07:58:53	2015-02-22 04:27:29
2014-11-19 23:48:52		PierreNielsen1959@earthlink.com	Pierre	47400	Nielsen			316091	168820	47400	19	fuzzy contraption refill	contraption	200	2015-02-23 07:58:53	2015-02-22 04:27:29
2016-09-02 10:28:17		Seo-yunWebster@gmail.biz	Seo-yun	151972	Webster			207687	185298	151972	0	reflective widget charger	widget	0.7800000000000001	2016-09-22 17:42:43	2016-09-23 22:39:57
2016-09-02 10:28:17		Seo-yunWebster@gmail.biz	Seo-yun	151972	Webster			360907	313641	151972	3197	analog contraption	contraption	225	2017-02-04 09:55:27	2017-02-05 22:58:31
2016-09-02 10:28:17		Seo-yunWebster@gmail.biz	Seo-yun	151972	Webster			360907	182531	151972	2968	aerodynamic contraption charger	contraption	70	2017-02-04 09:55:27	2017-02-05 22:58:31

/*
Exercise 4:
Check out the query below. This is not the right way to count the number of viewed_item events. Determine what is wrong and correct the error.

Starter Code:

SELECT
COUNT(event_id) AS events
FROM dsv1069.events
WHERE event_name = ‘view_item’
*/

--Answer:
-- If you run the quey you get an error: ERROR: column "‘view_item’" does not exist
--The WHERE clause statement is incorrect - use single quote instead as per below

SELECT
COUNT(event_id) AS events
FROM dsv1069.events
WHERE event_name = 'view_item'

--Output:

+------------------------+-----------+--------------+
|events|
+------------------------+-----------+--------------+
|525572|
+------------------------+-----------+--------------+

/*
Exercise 5:
Goal:Compute the number of items in the items table which have been ordered. The query 
below runs, but it isn’t right. Determine what is wrong and correct the error or start from scratch.
Starter Code:
--Error: This query runs but the number isn’t right

SELECT
  COUNT(item_id) as item_count
 FROM dsv1069.orders
 INNER JOIN dsv1069.items
 ON orders.item_id = items.id
 
 Error query outputs:
+------------------------+-----------+--------------+
| item_count|
+------------------------+-----------+--------------+
|47402|
+------------------------+-----------+--------------+
*/

--Answer:
--The output of the SQL provided runs and essentially would give a count of orders per item. E.g item table has item_id (1,2,3) the orders table might have though 3 orders
-- for say item_id 1 and nothing for the other two items. So the query provided would output 3 items ordered however it is only 1 item from the items table which have been ordered 3 times!
-- So effectively what we want to see is which products from the items table had at least one order and count those products. 

SELECT
  COUNT (id)
FROM
  dsv1069.items
WHERE
  id IN (
    SELECT
      DISTINCT item_id
    FROM
      dsv1069.orders
  )
  
--Output:

+------------------------+-----------+--------------+
|count|
+------------------------+-----------+--------------+
|2198|
+------------------------+-----------+--------------+

/*
Exercise 6:
-Goal: For each user figure out IF a user has ordered something, and when their first purchase 
was. The query below doesn’t return info for any of the users who haven’t ordered anything.

Starter Code:
SELECT 
  users.id AS user_id,
  MIN(orders.paid_at) AS min_paid_at
FROM 
  dsv1069.orders
INNER JOIN 
   dsv1069.users
ON 
 orders.user_id = users.id
GROUP BY
 users.id

*/
--Answer:
/*
The first problem with the provided query is that it does an innner join so it looks for the crOss section of available data ib both tables.
However, running instead something like the follwoing we can see that with OUTER JOIN we capture all data i.e User Ids who have made no orders and as a result will not be 
a row with their purchase info under orders table since there is no order to register. 

SELECT
  U.ID,
  O.user_id
FROM
  dsv1069.users U FULL
  OUTER JOIN dsv1069.orders O ON O.user_id = U.id
LIMIT
  5000;
  
  Following this, I just add a simple case statement to see if User has places an order or not. 
  N.B When you are using CASE expression, both output of case should return same datatype otherwise it will end up with CAST error.
  */
  
  SELECT
  U.ID,
  MIN(O.paid_at) AS min_paid_at,
  CASE
    WHEN O.invoice_id IS NULL THEN 'USER_HAS_NOT_ORDERED'
    ELSE 'YES_USER_HAS__ORDERED'
  END AS Has_User_Ordered
FROM
  dsv1069.users U 
  FULL OUTER JOIN dsv1069.orders O ON O.user_id = U.id
GROUP BY
  U.id,
  O.invoice_id
LIMIT
  12;

--Output:
+------------------------+-----------+--------------+
id	min_paid_at	has_user_ordered
+------------------------+-----------+--------------+
|121643|	|USER_HAS_NOT_ORDERED |
|131045|		|USER_HAS_NOT_ORDERED|
|113872|		|USER_HAS_NOT_ORDERED|
|89281|		|USER_HAS_NOT_ORDERED|
|288307|		|USER_HAS_NOT_ORDERED|
|169094|		|USER_HAS_NOT_ORDERED|
|84646|		|USER_HAS_NOT_ORDERED|
|49960|	2015-05-06 05:38:11|	YES_USER_HAS__ORDERED|
|190645|		|USER_HAS_NOT_ORDERED|
|208076|		|USER_HAS_NOT_ORDERED|
|242388|	|USER_HAS_NOT_ORDERED|
|107920|	2016-03-18 19:03:02|	YES_USER_HAS__ORDERED|
+------------------------+-----------+--------------+

/*
Exercise 7:
--Goal: Figure out what percent of users have ever viewed the user profile page, but this query
isn’t right. Check to make sure the number of users adds up, and if not, fix the query.

Starter Code:
SELECT
  (
    CASE
      WHEN first_view IS NULL THEN false
      ELSE TRUE
    END
  ) AS has_viewed_profile_page,
  COUNT(user_id) AS users
FROM
  (
    SELECT
      users.id AS user_id,
      MIN(event_time) AS first_view
    FROM
      dsv1069.users
      LEFT OUTER JOIN dsv1069.events ON EVENTS.user_id = users.id
    WHERE
      event_name = 'view_user_profile'
    GROUP BY
      users.id) first_profile_views
GROUP BY
  (
    CASE
      WHEN first_view IS NULL THEN false
      ELSE TRUE
    END
  )
  */
  
  --Answer: 2.59%
  --WiTHOUT use of CTE but note the multiplication by 1.0 - this is because SQL Server does integer division (MySQL does not). 
  --You can simply fix the problem by getting a real number rather than an integer by multiplying with 1.0 or CASTING one number to flot/decimap
  -- e.g. multiply by 1.0 to get 1.0 * 4 / 10 = 0.4
 -- https://stackoverflow.com/questions/32808849/divide-counts-from-two-different-sql-tables-without-a-join/32808935#32808935
 
  SELECT (
 1.0* (SELECT
      COUNT (DISTINCT user_id) 
    FROM
      dsv1069.events
    WHERE
      event_namE = 'view_user_profile'
  )
  /
 (SELECT
      COUNT(id)
    FROM
      dsv1069.users
  )
) * 100
AS Perc_Users

--Alternatively using a CTE and then CAST to convert the interget in nominator to a decimal to allow the division

 --using CTE - Common Table Expression
 WITH User_Viewed  AS --1st query in my CTE
(
    SELECT
      COUNT (DISTINCT user_id)  AS USER_VIEW
    FROM
      dsv1069.events
    WHERE
      event_name = 'view_user_profile'
  ),
  all_users AS (  --2nd query in my CTE
    SELECT
      COUNT(id) AS USERS
    FROM
      dsv1069.users
  )

SELECT (CAST(USER_VIEW AS DECIMAL)/USERS) * 100 -- casting as decimal or float otherwise the integer division would result ina zero
FROM  User_Viewed,  all_users
  
  --Output:
+------------------------+-----------+--------------+
|perc_users|
+------------------------+-----------+--------------+
|2.5900766355459215|
+------------------------+-----------+--------------+
