--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Ubuntu 12.2-2.pgdg18.04+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-2.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: sequence_empleado; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.sequence_empleado
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sequence_empleado OWNER TO root;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: empleado; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.empleado (
    nombre character varying(50),
    cargo character varying(100),
    salario numeric,
    tiempo boolean,
    departamento character varying(50),
    idempleado integer DEFAULT nextval('public.sequence_empleado'::regclass) NOT NULL
);


ALTER TABLE public.empleado OWNER TO root;

--
-- Name: agrupacionsalario; Type: VIEW; Schema: public; Owner: root
--

CREATE VIEW public.agrupacionsalario AS
 SELECT 'nombre'::text AS nombre,
    'cargo'::text AS cargo,
    'false'::text AS tiempo,
    sum(e.salario) AS salario,
    e.departamento
   FROM public.empleado e
  GROUP BY e.departamento, e.nombre, e.cargo, e.tiempo;


ALTER TABLE public.agrupacionsalario OWNER TO root;

--
-- Name: sequence_departamento; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.sequence_departamento
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sequence_departamento OWNER TO root;

--
-- Name: departamento; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.departamento (
    iddepartamento integer DEFAULT nextval('public.sequence_departamento'::regclass) NOT NULL,
    nombredepartamento character varying(50)
);


ALTER TABLE public.departamento OWNER TO root;

--
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.departamento (iddepartamento, nombredepartamento) FROM stdin;
1569	City Manager's Office
1570	City Attorney
1571	Executive
1572	Admin - Executive
1573	I&T Administration
1574	Office of the Chief - Administ
1575	Planning
1576	Administrative Management
1577	Development Administration
1578	Finance Administration
1579	Human Resources
1580	CLT Water Admin - Dir. Office
1581	Light Rail Administration
1582	SWS Department Head
1583	Director's Office Admin
1584	CM- Community Relations
1585	Economic Development-ADM
1586	CM-Corporate Comm & Marketing
1587	Administration - Director
1588	EPM Main Engineering
1589	Police Attorney
1590	Strategy & Budget
1591	Computer Technology Solutions
1592	I&T Process Governance
1593	Fire Deputy Chiefs
1594	I&T Enterprise Operations
1595	City Mgr - Internal Audit
1596	ERP
1597	Facil - Executive
1598	Finance - Executive
1599	I&T Applications
1600	Oper - Executive
1601	I&T Security
1602	Metro Division
1603	Administrative Services Group
1604	Office of Data & Analytics
1605	North Tryon Division
1606	Central Division
1607	Professional Standards Unit
1608	Westover Division
1609	Land Development
1610	Finance Procurement Management
1611	Fire Station 10
1612	Fire Station 42
1613	Fire Administration
1614	Special Events
1615	CLT Water Instr. Control & Ele
1616	BO - Executive
1617	Municipal Planning
1618	Admin-Public Affairs/Media Rel
1619	Real Time Crime Center
1620	Financial Management
1621	EPM BS Spratt
1622	EPM Land Development
1623	Traffic Safety
1624	Special Victims Division
1625	Public Affairs
1626	Airport Law Enforcement Divisi
1627	Independence Division
1628	Hickory Grove Division
1629	North Division
1630	CLT Water McAlpine Creek Plant
1631	Development NE Corridor
1632	University City Division
1633	Eastway Division
1634	Steele Creek Division
1635	CharMeck 311
1636	I&T Data
1637	HR Management System
1638	Talent Acquisition & Mgt
1639	I&T Service Management
1640	Special Operations Division
1641	Southeast Service Area
1642	Admin - Administrative Service
1643	Administration Division
1644	City Clerk
1645	Animal Care & Control Division
1646	Communications Division
1647	Implementation
1648	CLT Water Business Sys (IT)
1649	Tech - Executive
1650	I&T Enterprise Architecture
1651	CLT Water Business Office
1652	Finance Revenue
1653	I&T Servers
1654	Fire Emergency Management
1655	Fire Prevention
1656	Technology
1657	E&PM Storm Water
1658	CLT Water Engineering-Admin
1659	Regional Planning
1660	Freedom Division
1661	Risk Management
1662	Special Transportation Service
1663	Finance Accounting
1664	Violent Crime Division
1665	EPM Landscape Mgt
1666	Dev - Executive
1667	Finance Treasury
1668	Investigative Services Group -
1669	Bus General Management
1670	Field Services Group North - A
1671	Business Support Combined
1672	Public & Community Relations
1673	Field Services Group South - A
1674	Finance Business Systems
1675	Planning & Special Operations
1676	Community Engagement
1677	Internal Affairs Bureau
1678	Criminal Intel. and Analysis
1679	Fire Station 20
1680	Fire Station 1
1681	Fire Station 25
1682	Fire Station 39
1683	Fire Station 27
1684	Business Services
1685	Housing Combined
1686	Providence Division
1687	Community Wellness Division
1688	Light Rail Maintenance
1689	Admin-Finance
1690	Crime Lab Division
1691	HR/CR
1692	Design
1693	CLT Field Ops-Pipeline Rehab
1694	Recruiting Division
1695	Fire Station 17
1696	South Division
1697	Support Services Group - Admin
1698	Fleet Mgmt-Administration
1699	I&T Facilities
1700	CLTW Maintenance
1701	I&T Network
1702	Fire Logistics
1703	CLT Water Cust Service-Admin
1704	Special Programs
1705	Organization Dev & Learning
1706	Code Enforcement Combined
1707	Decision Analytics
1708	Public Safety Communications
1709	Southwest Service Area
1710	Northwest Service Area
1711	I&T Project Management
1712	EPM Real Estate
1713	Oper - Landside/Grd Trans
1714	Oper - Airside
1715	Human Resources Division
1716	CLT Water Field Ops Admin
1717	Maintenance Right of Way (MOW)
1718	CLT Water Lab Svc-Operations
1719	Information Technology
1720	SWS Administration
1721	Facil - Building Maintenance
1722	CLT Water Human Resources
1723	Oper - Airport Security
1724	Facil - Airside Maintenance (F
1725	I&T Relationship Management
1726	Director's Office Combined
1727	CLT Water EMD Administration
1728	SWS Operations - Collections A
1729	CLT Water Admininstration
1730	Economic Development-Sustainab
1731	Quality Assurance
1732	Fire Training
1733	Fire Station 41
1734	Transportation Systems
1735	SWS Technology
1736	Finance Office Firefighters Re
1737	Fire Station 13
1738	Fire Station 3
1739	Safety & Security
1740	Fire Station 32
1741	Fire Station 30
1742	Fire Station 38
1743	Fire Station 26
1744	Fire Investigations/Education
1745	E&PM Storm Water Water Quality
1746	Finance
1747	Court Services District Court
1748	Civil Emergency Unit
1749	Facilities
1750	Oper - Terminal Ops
1751	BO-Commercial Svcs/Pass
1752	Administration
1753	Utility Permitting
1754	CLT Water EMD Maintenance
1755	Facil - Fleet Maintenance
1756	CLT Water Backflow Prevention
1757	I&T Storage
1758	CLT Water Safety Team
1759	Aviation Unit
1760	Training Division
1761	Firearms Training Unit
1762	School Resources Officers
1763	SWS Public Information
1764	Armed Robbery/Sexual Assault D
1765	Development North Corridor
1766	CLT Water Eng-Install & Dev
1767	CLT Water Union County
1768	Procurement Services
1769	Charlotte Business Inclusion
1770	SWAT/Alert Team Unit
1771	Transit Unit
1772	Secondary Employment
1773	Property & Evidence Management
1774	Crime Scene Search Division
1775	Motorcycle & Reconstruction Un
1776	In-Service Training Unit
1777	Light Rail Operations
1778	CLT Water Procurement
1779	CM-Constituent Services
1780	Court Services - DA
1781	Facil - Janitorial/Housekeepin
1782	Bus Offic -CommercialSvs/Aviat
1783	Fire Station 4
1784	Fire Station 8
1785	Fire Station 23
1786	Fire Station 34
1787	Fire Station 15
1788	Fire Station 33
1789	Fire Station 7
1790	Fire Station 29
1791	EPM BS CMGC
1792	Fire Station 22
1793	Fire Station 9
1794	Fire Station 12
1795	Fire Station 18
1796	Charlotte Water Communications
1797	Fire Communications
1798	Fire Station 14
1799	CLT Water System Protection
1800	Community Engage Combined
1801	Fire Station 36
1802	Fire Station 19
1803	Fire Station 24
1804	Fire Station 40
1805	Fire Station 21
1806	Fire Station 2
1807	Fire Station 6
1808	Fire Station 16
1809	Fire Station 35
1810	Fire Station 37
1811	Fire Station 5
1812	Fire Station 11
1813	Fire Station 31
1814	Fire Station 28
1815	Fleet Mgmt-CDC
1816	CLT Wat General Commerce Zone
1817	Central District (Northpointe)
1818	Transportation Operations
1819	Canine Unit
1820	Non-Emergency Police Services
1821	Fleet Mgmt-Sweden Rd Shop
1822	North East District (Orr)
1823	SouthWest District (Sweden)
1824	Fleet Mgmt-Louise Ave Shop
1825	Revenues
1826	CLT Water West Tyvola Zone
1827	CLT Water Huntersville Zone
1828	Plan Reviewers
1829	CLT Water Sugar Creek Plant
1830	CLT Water McDowell Creek Plant
1831	CLT Water Locates
1832	CityLYNX
1833	Fleet Mgmt-Atando Ave Shop
1834	CLT Water Matthews Zone
1835	CLT Water Franklin Plant
1836	CLT Water Mallard Creek Plant
1837	CLT Water Dukes WTP
1838	CLT Water Vest Treatment Plt O
1839	Planning and Research
1840	SWS Operations - Yard Waste Co
1841	SWS Operations - Special Servi
1842	SWS Operations - Garbage Colle
1843	Youth Programs
1844	CLT Water - Water Maintenance
1845	EPM LSC Cemeteries Mgt
1846	Customer Service
1847	Fleet Mgmt-Tuckaseegee Rd Shop
1848	CLT Water Irwin Creek Plt OPS
1849	Admin - Legal Affairs
1850	Housing -Rehabilitation
1851	General Right of Way Managemen
1852	Fleet Mgmt-12th Street Shop
1853	Recruit Training Unit
1854	Operations – Gate Management
1855	Fleet Section
1856	SWS Operations - Bulky Collect
1857	Fleet Mgmt-Parts Operations
1858	SWS Operations - Rights of Way
1859	SWS Operations - Business Garb
1860	SWS Operations - South Corrido
1861	EPM BS CMGC Mail Rm
1862	Records Division
1863	SWS Operations-North Corridor
1864	Dev - Environmental
1865	Cadets
1866	Mayor &City Council
1867	SWS Customer Service
1868	Polygraph Section
1869	Fire Recruits
1870	Facil - Logistics
1871	SWS Operations - Street Sweepi
1872	Cyber Crime Unit
1873	Vanpool
1874	SWS Operations - Public Recept
1875	Zoning Combined
1876	CLT Water Sewer Lift
1877	SWS Human Resources
1878	SWS Operations - Dead Animal C
1879	Communications
1880	Telecom
1881	EPM Cultural Facilities-Disc P
1882	Passenger Vehicle for Hire Uni
1883	SWS Facilities
1884	Volunteer Unit
1885	CLT EMD WW Trt Pkg Plants
1886	SWS Safety
1887	SWS Contracted Services
1888	Alarm Ordinance Enforcement Un
1889	CLT Water Catawba Trt Plant
1890	Fleet Mgmt-Admin
1891	Finance Asset and Recovery Dis
1892	SMD Consolidated
1893	Health & Safety
1894	Facilities Section
1895	Field Services
1896	Crime Prevention Unit
\.


--
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.empleado (nombre, cargo, salario, tiempo, departamento, idempleado) FROM stdin;
Jackson Jonathan D	Fire Captain	88131.04	f	Fire Station 38	58054
Jones Marcus D.	City Manager	318000	f	City Manager's Office	57425
Jones III Charles Eugene	Fire Captain	88131.04	f	Fire Station 32	58055
Hagemann Robert E	City Attorney	248491.82	f	City Attorney	57427
Egner Matthew Brian	Fire Fighter I	45666.84	f	Fire Station 2	62620
Lewis Jr John M	Transit  Director	245924.3	f	Executive	57429
Hughes Muriel P	Police Sergeant	86063.77	f	Armed Robbery/Sexual Assault D	58256
Cagle Brent D	Aviation Director	236042.01	f	Admin - Executive	57431
Joy-Hogg Sabrina Beena	Deputy City Manager	225500	f	City Manager's Office	57432
Campbell Debra D	Assistant City Manager	207574.1	f	City Manager's Office	57433
Tazoh Tazifor Ndem	Economist	94545	f	Strategy & Budget	58257
Stovall Jeffrey W	Chief Information Officer	203561.04	f	I&T Administration	57435
Blow Charles J	Police Lieutenant	96214.73	f	Real Time Crime Center	58258
Putney Kerr Y	Police Chief	198286	f	Office of the Chief - Administ	57437
Eagle Kimberly S	Assistant City Manager	197600	f	City Manager's Office	57438
Irby William F	Police Sergeant	86063.77	f	Central Division	58259
Jaiyeoba Taiwo	Planning Director	197000	f	Planning	57440
Edwards C Stewart	Engineering Program Manager	94536.96	f	E&PM Storm Water	58260
Harrington Randy J	Chief Financial Officer	196945.34	f	Administrative Management	57442
Pleasant Danny Craig	Assistant City Manager	195000	f	City Manager's Office	57443
Young Katrina J.	Planning Program Manager	96191.91	f	Planning	58261
Muth John M	Transit Dep Dir of Development	194202.06	f	Development Administration	57445
Jessup Wesley B	Police Sergeant	86063.77	f	Special Operations Division	58262
Campbell Robert D	Finance Director	182965.57	f	Finance Administration	57447
Johnson Carolyn D.	Senior Deputy City Attorney	182060.15	f	City Attorney	57448
Christine Jr John L	Dep Aviation Director Oper	180000.46	f	Admin - Executive	57449
Terrell Craig Andrew	Internal Audit Supervisor IT	94525.33	f	City Mgr - Internal Audit	58263
Mumford Patrick Thomas	Business Services Mgr	176491.28	f	Human Resources	57451
Frederick Bette F	Engineering Program Manager	96187.39	f	EPM Main Engineering	58264
Lee Angela C	Utilities Director	175800	f	CLT Water Admin - Dir. Office	57453
Jones Jem A	Police Sergeant	86063.77	f	Special Victims Division	58265
Smith III Allen Clinton	Transit Rail Operations Manage	175100	f	Light Rail Administration	57455
Sangster Brandon Lee Allen	Fire Fighter I	47841.62	f	Fire Station 25	62621
Johnson Victoria Orena	Solid Waste Services Director	174580.74	f	SWS Department Head	57457
Nadolny Brian M	Transit Corridor Asst Proj Mgr	94457.78	f	Development North Corridor	58267
Wideman Pamela Jean	Dep Neighborhood Bus Svc Dir	173541.61	f	Director's Office Admin	57459
Spencer Shad L	Planning Program Manager	96183.81	f	Planning	58268
Ratchford Willie	Dir-Community Relations Comm	173143	f	CM- Community Relations	57461
Jurbala John M	Police Sergeant	86063.77	f	Airport Law Enforcement Divisi	58269
Yi Hyong	Organizational Innovation Dir	172559.14	f	Economic Development-ADM	57463
Pogue Dondi J	Police Lieutenant	94367.06	f	Real Time Crime Center	58270
Kelly Brent J	Chief Marketing Officer	170005.2	f	CM-Corporate Comm & Marketing	57465
Bergenson William Joseph	Labor Crew Chief II	46264.31	f	CLT Water West Tyvola Zone	62622
Babson Elizabeth B	Transportation Director	170000	f	Administration - Director	57467
Moody Roger D	Senior Engineer	96074.17	f	CLT Water Eng-Install & Dev	58272
Davis Michael Aidan	Engineering & Prop Mgt Directo	170000	f	EPM Main Engineering	57469
Kiefer Melissa S	Police Sergeant	86063.77	f	Special Victims Division	58273
Newbold Mark H	Deputy City Attorney	169324.68	f	Police Attorney	57471
Trull Brian A	Police Lieutenant	94367.06	f	Westover Division	58274
Reiger Phillip Lee	Str Bdg Dir & Sr Ops Advisor	168000	f	Strategy & Budget	57473
Simpson Sheila C	Human Resources Director	168000	f	Human Resources	57474
Root Hope	Deputy City Attorney	165509.23	f	City Attorney	57475
Kay Jason B	Special Assistant to City Mgr	162000	f	City Manager's Office	57476
Northrup Barbara D	Business System Spec Sr	94366.62	f	EPM Main Engineering	58275
Cody Crystal Dorene	Sr Business Systems Manager	161520.7	f	Computer Technology Solutions	57478
Fox Craig Russell	Engineering Program Manager	94350	f	Dev - Executive	58276
Dunkle Bradley R	Deputy Chief Info Officer	160291.68	f	I&T Process Governance	57480
White Cynthia L	Senior Asst City Attorney	158385.68	f	City Attorney	57481
Fenton Dana Collins	Intergovernmental Rel Manager	158006.54	f	City Manager's Office	57482
Houser Laurie A	Human Resources Analyst	94307	f	HR Management System	58277
Key Howard D	Deputy Fire Chief	156921.3	f	Fire Deputy Chiefs	57484
Hargrove Jr Ronald Lee	Deputy Utilities Director	156000	f	CLT Water Admin - Dir. Office	57485
Dick Kevin Seldon	Deputy Economic Dev Director	155465.63	f	Economic Development-ADM	57486
Saucedo Erasmo	Administrative Officer V	94280.9	f	EPM Main Engineering	58278
Davis IV Berton Emerson	Technology Services Officer	153780.4	f	I&T Enterprise Operations	57488
Williams Sonya E	Bus Systems Spec Lead	94267.8	f	Computer Technology Solutions	58279
McDowell Gregory	Internal Audit Manager	153716.6	f	City Mgr - Internal Audit	57490
Recktenwald Marc Daniel	Water Quality Program Manager	94028.85	f	E&PM Storm Water Water Quality	58280
North David T	Technology Services Officer	153661.78	f	ERP	57492
Stoyer Timothy Lee	Bus Systems Spec Lead	94002.08	f	ERP	58281
Hazen Christopher M	Airport Facilties Superintendt	152435.32	f	Facil - Executive	57494
Foster Veronica D	Senior Deputy Police Chief	151410.01	f	Office of the Chief - Administ	57495
Gallant Douglas E	Senior Deputy Police Chief	151410.01	f	Office of the Chief - Administ	57496
Vastola Sandra Diane	Communications Director	151000	f	CM-Corporate Comm & Marketing	57497
Ryland Sandy B	Investment Manager	94000	f	Finance Treasury	58282
Quinn Lori A	Information Tech Team Lead	93913.69	f	Decision Analytics	58283
Hill Jr Michael David	Airport Financial Svcs Manager	150589.13	f	Finance - Executive	57499
Gentry Haley H	Dep Aviation Dir Busn Innv	150578.35	f	Admin - Executive	57500
Jones Stepfan	Fire Captain - Spec Assign	88131.04	f	Fire Administration	58056
Snedecor D S	Application Services Manager	148269.14	f	I&T Applications	57502
McIntosh Christopher C.	Fire Captain	88131.04	f	Fire Station 13	58057
Mynatt II James Edwin	Airport Ops Superintendent	147594.48	f	Oper - Executive	57504
Campbell Cheryl W.	Bus Systems Spec Lead	96859.04	f	Computer Technology Solutions	58058
Moulton Randell K	Information Security Officer	146850.69	f	I&T Security	57506
McTighe Jr Robert D	Fire Captain	88131.04	f	Fire Station 13	58059
Thomas Jonathan D	Police Captain	101477.79	f	Metro Division	57508
Elliott Teresa M	Bus Systems Spec Lead	96774.51	f	ERP	58060
Foley Brian P	Police Captain	101419.86	f	Administrative Services Group	57510
Michael Chad T.	Fire Captain	88131.04	f	Fire Station 3	58061
Hefner Rebecca A	Data Analytics Manager	101372	f	Office of Data & Analytics	57512
Harrell Maria D.	Administrative Officer V	96657.41	f	Finance Administration	58062
Bryley Jacquelyn	Police Captain	101275.26	f	North Tryon Division	57514
Monteith Jeremy Ryan	Fire Captain	88131.04	f	Fire Station 13	58063
Robinson David C	Police Captain	101275.26	f	Central Division	57516
Saoui Mustapha A	Software Developer Intermediat	96651.98	f	Computer Technology Solutions	58064
Santaniello Mark T	Police Captain	101275.26	f	Professional Standards Unit	57518
Perdue Jason T	Fire Captain	88131.04	f	Fire Station 38	58065
Arrington Tonya Michelle	Police Captain	101274.75	f	Westover Division	57520
Battle Jessica Kristin	Assistant City Attorney II	101247.03	f	Police Attorney	57521
Nix Robert P	Accountant IV	96624.8	f	I&T Administration	58066
Grochoske Rickey Henry	Senior Engineer	101239.77	f	Land Development	57523
Rink Kevin M	Fire Captain	88131.04	f	Fire Station 17	58067
Ewing Karen P	Procurement Serv Asst Div Mgr	101106.87	f	Finance Procurement Management	57525
Nunn April Sprinkle	Software Developer Senior	100977.21	f	I&T Applications	57526
Fitzgerald Reuben B	Battalion Fire Chief	96524.48	f	Fire Station 1	58068
Mitchum II David M	Battalion Fire Chief	100913.52	f	Fire Station 10	57528
Rodgers Jr Jerry A	Fire Captain	88131.04	f	Fire Station 10	58069
Jones Samuel G	Battalion Fire Chief	100913.28	f	Fire Station 42	57530
Hogue Kenneth A	Battalion Fire Chief	96524.48	f	Fire Station 1	58070
Cannon Robert G	Battalion Fire Chief	100913.12	f	Fire Administration	57532
Sawyer Rodney B	Fire Captain	88131.04	f	Fire Station 38	58071
Garnes Jr Norman	Police Captain	100789.09	f	Special Events	57534
Richardson Jr Jeffrey L	Battalion Fire Chief	96524.48	f	Fire Station 1	58072
Queen Mike A.	Electrical Engineer Sr	100732.26	f	CLT Water Instr. Control & Ele	57536
Jenkins Kelly L	Bus Systems Spec Lead	100629.52	f	ERP	57537
Sanchez Donna Rae	Bus Systems Spec Lead	100490.22	f	Computer Technology Solutions	57538
Evans Richard Leslie	Fire Fighter I	45666.84	f	Fire Station 37	62623
Garnett Christopher Charles	Airport Operations Manager I	100397.19	f	BO - Executive	57540
Farness Janice Welfare	Database Administrator	100315.72	f	Computer Technology Solutions	57541
Smithers Allison Elizabeth	Assistant City Attorney II	100234.58	f	City Attorney	57542
Soto JuanPablo	Fire Captain	88131.04	f	Fire Station 26	58074
Newsome Tracy H	Transportation Planner III	100217.28	f	Municipal Planning	57544
Kasahara Kazuhito	Business System Spec Sr	100171.8	f	Computer Technology Solutions	57545
Kjeldsen Kristi Sue	Administrative Officer V	100141.22	f	Fire Administration	57546
Lewis Linda H.	Administrative Officer V	100141.22	f	Fire Administration	57547
Ross II Jason Maurice	Police Trainee	43492.38	f	Recruit Training Unit	62807
Davis Sarah L	Airport Operations Manager I	100120.53	f	Admin-Public Affairs/Media Rel	57549
Wilkinson Paul E	Chief Fire Investigator	96504.48	f	Fire Investigations/Education	58076
Watson Alexander	Police Lieutenant	100068.05	f	Real Time Crime Center	57551
Veith Lucas A.	Police Lieutenant	100049.74	f	Real Time Crime Center	57552
Staker Mark A	Fire Captain	88131.04	f	Fire Station 32	58077
Harris Rodney D	Administrative Officer V	100000	f	Financial Management	57554
Haynes Alex Lee	Business Systems Prog Manager	100000	f	Computer Technology Solutions	57555
McCoy Kathryn Susan Densford	Administrative Officer V	100000	f	BO - Executive	57556
Stikeleather James R	Fire Captain	88131.04	f	Fire Station 10	58078
Miller David M	Energy Manager	99974.89	f	EPM BS Spratt	57558
Taylor Maurice A.	Fire Captain	88131.04	f	Fire Station 10	58079
Ferguson Tommy L	Engineering Program Manager	99911.12	f	EPM Land Development	57560
Todd Jr William A	Fire Captain	88131.04	f	Fire Station 41	58080
Berry Angela M	Engineering Program Manager	99897	f	Traffic Safety	57562
Balamucki Bret	Police Lieutenant	99771.26	f	Central Division	57563
Vanhoy Charles E	Fire Captain	88131.04	f	Fire Station 41	58081
Barry Thomas E	Police Lieutenant	99771.26	f	Special Victims Division	57565
Carey IV Joseph W	Police Lieutenant	99771.26	f	Central Division	57566
Cochran Robert S	Police Lieutenant	99771.26	f	Metro Division	57567
Whitson Martin A	Fire Captain	88131.04	f	Fire Station 41	58082
Harris Andrew S	Police Lieutenant	99771.26	f	Public Affairs	57569
Withers Eric C	Fire Captain	88131.04	f	Fire Station 3	58083
Moorefield David L.	Police Lieutenant	99771.26	f	Airport Law Enforcement Divisi	57571
Schleich Eric	Police Trainee	43492.38	f	Recruit Training Unit	62808
Jackson Ryan W	Police Captain	99607.59	f	Independence Division	57573
Miller Craig M.	Water Quality Program Admin	88127.34	f	E&PM Storm Water Water Quality	58085
Harris David A	Police Captain	99607.56	f	Hickory Grove Division	57575
Deese Harold J	Business System Spec Sr	88094.88	f	CLT Water Business Sys (IT)	58086
Perry Emily	Senior Engineering Project Mgr	88072.63	f	E&PM Storm Water	58087
Thornton John L	Police Lieutenant	99584.63	f	North Division	57577
Bice Amy J.	Senior Engineering Project Mgr	88062.63	f	E&PM Storm Water	58088
Neely Sandy K	WW Treatment Plant Supv Sr	99550.66	f	CLT Water McAlpine Creek Plant	57579
Botkin Corky M	Senior Engineering Project Mgr	88016.68	f	E&PM Storm Water	58089
Mock Andrew	Transit Corridor Asst Proj Mgr	99525.44	f	Development NE Corridor	57581
Brown Kimberly Viola	Bus Systems Spec Lead	99495.73	f	ERP	57582
Cook Robert W.	Planning Program Manager	99348.09	f	Planning	57583
Mattocks Melvin Lee	Information Tech Administrator	87982.19	f	I&T Applications	58090
Brady Eric F	Police Lieutenant	99289.27	f	University City Division	57585
Jenkins Mike	Code Enforcement Coordinator	87895.84	f	Code Enforcement Combined	58091
Durant Steven M	Police Lieutenant	99289.27	f	Eastway Division	57587
Kaddoumi Mohamed	Senior Engineering Project Mgr	87894.1	f	Regional Planning	58092
Hummel James B	Police Lieutenant	99289.27	f	Steele Creek Division	57589
Laney James M	Business System Spec Sr	87677.87	f	EPM Main Engineering	58093
Palmer Stacey Lee	Business Systems Prog Manager	108720.44	f	CharMeck 311	57591
Das Suresh C	Software Developer Senior	108556.04	f	I&T Applications	57592
Elmore David W	Business Systems Manager	108543.87	f	ERP	57593
DeLong Todd	Housing & Neighborhood Svcs Di	108542.8	f	Economic Development-ADM	57594
Nussman Chad T.	Senior Engineering Project Mgr	87662.32	f	E&PM Storm Water	58094
O'Connell Brian Michael	Database Administrator Senior	108470.59	f	I&T Data	57596
Bradley Terry N	Community Programs Coord	87638.88	f	CM- Community Relations	58095
Burris Patricia Ann	Human Resour Program Mgr	108195	f	HR Management System	57598
Simensen Rebecca Michelle	Administrative Officer V	87627.36	f	Admin-Finance	58096
Ensley Sr Antoine Maurice	Human Resour Program Mgr	108195	f	Talent Acquisition & Mgt	57600
Fath Christina Alison-DePriest	Human Resour Program Mgr	108195	f	Human Resources	57601
Bower II Clyde Vernon	Business System Spec Sr	87606.08	f	EPM Main Engineering	58097
Young Laura J	IT Process Manager	108149.1	f	I&T Service Management	57603
Vershel Amy R	Senior Engineering Project Mgr	87596.97	f	CLT Water Engineering-Admin	58098
Brochu Steven	Police Captain	107993.8	f	Special Operations Division	57605
Dozier Martha Fortos	Police Captain	107993.8	f	Office of the Chief - Administ	57606
Hobbs Richard B	Planning Coordinator	87591.46	f	Planning	58099
Bowling Nelson K	Police Major	107944.2	f	Southeast Service Area	57608
Maglione Roslyn D	Police Captain	107943.85	f	Special Victims Division	57609
Miller Jordan B.	Senior Engineering Project Mgr	87580.8	f	E&PM Storm Water Water Quality	58100
Boone Babette T	Adminstrative Services Manager	107778.06	f	Admin - Administrative Service	57611
Cappetta Margaret Hunter	Administrative Officer I	45213.99	f	Economic Development-ADM	62624
Vang Susana Moua	Administrative Officer V	107741.72	f	Administration Division	57613
Kesel David P	Information Tech Administrator	107734.74	f	I&T Applications	57614
Nail Michael A.	Business Services Mgr	107614.71	f	EPM Main Engineering	57615
Gray Sean B	Information Tech Administrator	107354.05	f	I&T Enterprise Operations	57616
Peterson Jayne Andrews	Administrative Officer V	87557.36	f	Finance	58102
Kelly Stephanie C.	City Clerk	107128.57	f	City Clerk	57618
Rutledge Allan R	Police Captain	106952.9	f	University City Division	57619
Bartlett Nicole Litton	Senior Engineering Project Mgr	87550	f	CLT Water Engineering-Admin	58103
Bannerman III Charles W	Police Captain	106945.27	f	Animal Care & Control Division	57621
Okioga Irene Teshamulwa	Senior Engineering Project Mgr	87550	f	CLT Water Engineering-Admin	58104
Poston David B	Police Captain	106900.92	f	Communications Division	57623
Shah Mitali M	Accountant IV	87500.26	f	Finance Treasury	58105
Jordi Gus T	Engineering Program Manager	106685.52	f	Implementation	57625
Kavuri Sairam Prasad	Information Tech Administrator	106630.75	f	I&T Applications	57626
Curry Scott	Transportation Planner II	87500	f	Municipal Planning	58106
Hayes Bridget L.	Business Systems Prog Manager	106563.6	f	CLT Water Business Sys (IT)	57628
Jarman Martin Adam	Airport Operations Manager I	87439.5	f	Facil - Airside Maintenance (F	58107
Hilgers John A	Business Systems Prog Manager	106419.6	f	Tech - Executive	57630
Jones Donovan	Airport Operations Manager I	87439.5	f	BO - Executive	58108
Bailey John Robinson	Network Architect Senior	106396.5	f	I&T Enterprise Architecture	57632
Jordan Jimmy D	Airport Operations Manager I	87439.28	f	Dev - Executive	58109
Westfall Melissa Ann	Utilities Business Manager	106316.7	f	CLT Water Business Office	57634
Shah Dhaval Parimal	Assistant Financial Servcs Mgr	87373	f	Finance Accounting	58110
Walker Susan Lewis	Financial Services Manager	106226.3	f	Finance Revenue	57636
Sickles Laurie Jo	Building Services Manager	87324.32	f	EPM BS Spratt	58111
Hagstedt Gerard A	Information Tech Supervisor	106062.94	f	I&T Servers	57638
Humphrey Michael J	Data Analytics Supervisor	87323.21	f	Criminal Intel. and Analysis	58112
Hartsell John T	Battalion Fire Chief	105959.2	f	Fire Emergency Management	57640
Mrzygod III Stanley John	Engineering Program Manager	105918.48	f	EPM Main Engineering	57641
Russell Thomas W	Senior Engineering Project Mgr	87252.34	f	EPM Main Engineering	58113
Leonard Jonathan P	Fire Marshal	105864.72	f	Fire Prevention	57643
Dunn Jerry	Sr Network Commn Integrator	87195.98	f	I&T Network	58114
Cavalier Anthony Jay	Business Systems Supervisor	105764.45	f	Technology	57645
Price Ashleigh Martin	Administrative Officer V	87186.25	f	EPM Main Engineering	58115
Hammock Daryl M	Engineering Program Manager	105604.19	f	E&PM Storm Water	57647
Rhyne Jr James R	Senior Engineering Project Mgr	92592.58	f	Implementation	58116
O'Leary Kelly J.	Engineering Division Manager	105437.17	f	CLT Water Engineering-Admin	57649
Poonamalle Swaminathan	Information Tech Administrator	105411.12	f	I&T Applications	57650
Moore Jesse Ray	Network Architect Senior	105306	f	I&T Enterprise Architecture	57651
Gibbs Timothy D	Transportation Planner III	105272.2	f	Regional Planning	57653
Burgess Micah Reid	Senior Engineering Project Mgr	96500	f	CLT Field Ops-Pipeline Rehab	58117
Hummel Michelle M	Police Captain	105257.87	f	Freedom Division	57655
Cook Mark A.	Senior Engineer	92441.85	f	Implementation	58118
Brown Darlene P	Risk Mgt Financial Coord	105115.94	f	Risk Management	57657
Holley Adrian Levon	Database Administrator	105003.35	f	Computer Technology Solutions	57658
Keenan James Evans	Engineering Program Manager	96490.85	f	EPM Main Engineering	58119
Ballard Robert Lester	Special Transportation Manager	105000	f	Special Transportation Service	57660
Decker Brandy Kirsch	Bus Systems Spec Lead	92325.83	f	ERP	58120
Tyndall Christy A	Assistant Chief Accountant	105000	f	Finance Accounting	57662
Scheffer III Charles William	IT Project Manager Senior	105000	f	ERP	57663
Bliss Charles M	Engineering Division Manager	104793.7	f	CLT Water Engineering-Admin	57664
DeFoe Michael John	Information Tech Supervisor	104740.06	f	Computer Technology Solutions	57665
Landis Ashley	Engineering Program Manager	96460.09	f	Design	58121
Dozier Christopher N	Police Captain	104522.17	f	Violent Crime Division	57667
Rivera Gene C	Chief Criminalist	92274.32	f	Crime Lab Division	58122
Hall Jr George Q	Landscape Division Manager	104513.23	f	EPM Landscape Mgt	57669
Garbark IV Nathaniel Michael	Engineering Division Manager	104511.41	f	CLT Water Engineering-Admin	57670
Smith Teresa T	Assistant Finance Director	146167.29	f	Finance Administration	57671
Starrett Judith A	Senior Asst City Attorney	145589.43	f	City Attorney	57672
Lahbabi Leila Amal	Senior Asst City Attorney Ld	145448.36	f	City Attorney	57673
Merrell Kam A.	Plans Reviewer	92210.88	f	EPM Land Development	58123
McSwain Jeffrey W.	Airport Development Manager	143437.3	f	Dev - Executive	57675
Kramer Debra L	Administrative Officer IV	92137.59	f	I&T Administration	58124
Greer Scott Louis	City Treasurer	142083.67	f	Finance Treasury	57677
Fulton Richard Harcourt	Senior Asst City Attorney	141348.96	f	City Attorney	57678
Sussman Daniel	Police Officer	47841.62	f	South Division	62625
Graue Katrina T	Deputy Police Chief	141344.84	f	Investigative Services Group -	57680
Sherman Blanche	Transit Bus Svcs Manager	141000	f	Administration Division	57681
Hagler-Gray Terrie V.	Senior Asst City Attorney	139935.8	f	City Attorney	57682
Wiebke Mark D	Airport Engineer	138641.26	f	Dev - Executive	57683
Schwinghammer Gerard J.	Airport Technology Manager	137510.13	f	Tech - Executive	57684
Fox Linda Morris	Senior Asst City Attorney	137500.22	f	Police Attorney	57685
Cooper Catherine L.	Senior Asst City Attorney	137441.24	f	City Attorney	57686
Harris Marie W	Strategy & Budget Manager	137269.01	f	Strategy & Budget	57687
Estes Jeffrey W	Deputy Police Chief	137228	f	Administrative Services Group	57688
Gordon Kevin S	Deputy Fire Chief	136578	f	Fire Administration	57689
Granger Jr Richard O	Deputy Fire Chief	136578	f	Fire Deputy Chiefs	57690
Carlton Raymond E	Police Response Area Commander	92088.14	f	Court Services District Court	58126
Mobley Tangee Coble	Transit Operations Manager	136475	f	Bus General Management	57692
Ojaniit Jeffrey J	Police Response Area Commander	92088.14	f	Steele Creek Division	58127
Jennings Johnny L	Deputy Police Chief	136402.24	f	Field Services Group North - A	57694
Kaplan Theodore Austin	Airport Business Rev Manager	136057.51	f	BO - Executive	57695
Shell Gina T	Assistant Director Engineering	135963.35	f	EPM Main Engineering	57696
Pliszka Daniel J	Insurance & Risk Manager	135746.63	f	Risk Management	57697
Smith Jennifer G	Assistant City Engineer	135217.08	f	EPM Main Engineering	57698
Schleunes Anna Frederika	Senior Asst City Attorney	134607.03	f	City Attorney	57699
Brooks Brandon	Labor Crew Chief II	46264.31	f	EPM Landscape Mgt	62626
Campbell Norma Joan	Asst Neighborhood Bus Svcs Dir	134544.46	f	Business Support Combined	57701
Orlov William S	Police Response Area Commander	92088.14	f	Civil Emergency Unit	58129
Kinard Karl O	Transit Marketing & Tech Mgr	134507.27	f	Public & Community Relations	57703
Newman Al	IT Enterprise Architect	134411.35	f	I&T Enterprise Architecture	57704
Sullivan Benjamin Robert	Senior Asst City Attorney	134281	f	City Attorney	57705
Raju Ranjit C	Business Systems Manager	133604.42	f	Fire Administration	57706
Czerr David W.	Deputy Utilities Director	133592.64	f	CLT Water Admin - Dir. Office	57707
Coffman Shawn M	Deputy Utilities Director	133592	f	CLT Water Admin - Dir. Office	57708
Branham Bradley R	Senior Asst City Attorney Ld	133575.3	f	City Attorney	57709
Smith Debbie R	Deputy Transportation Dir	132534.62	f	Administration - Director	57710
Haddad Michael A	Sr Business Systems Manager	132294.32	f	Technology	57711
Emken Judith C	Senior Asst City Attorney	132211.75	f	Police Attorney	57712
Flowers Lisa Collins	Senior Asst City Attorney	131773.85	f	City Attorney	57713
James Lina E	Senior Asst City Attorney	131773.85	f	City Attorney	57714
Thomas Bradley J	Senior Asst City Attorney	131773.85	f	City Attorney	57715
Rosenschein Scott J	Police Response Area Commander	92088.14	f	Metro Division	58130
Voorhees Steven C	Deputy Police Chief	131156	f	Field Services Group South - A	57717
Weatherly Karen Culbreth	Senior Asst City Attorney	129876.24	f	City Attorney	57718
Elmore Gloria Kay	Procurement Services Div. Mgr.	129684.45	f	Finance Procurement Management	57719
Abbondanza Michael A.	Police Lieutenant	92063.25	f	North Tryon Division	58131
Goodman Mark R	Business Systems Manager	129304.14	f	Finance Business Systems	57721
Iskra Dennis	Airport Engineer	128507	f	Dev - Executive	57722
Evans Lebraun A	Police Lieutenant	92063.25	f	Community Engagement	58132
Kopf Lawrence J.	Transit Operations Manager	127946.41	f	Planning & Special Operations	57724
Powers III Thomas E.	Senior Asst City Attorney	127831.82	f	City Attorney	57725
Ethridge Traci M	Corporate Commun Asst Director	127748.02	f	CM-Corporate Comm & Marketing	57726
Hamilton Afrika	Police Trainee	45666.84	f	Recruit Training Unit	62627
Davis Thurston	Transit Oper Svc Mgr	92000	f	Facilities	58134
Warshauer Joel T	Asst Neighborhood Bus Svcs Dir	127308	f	Community Engagement	57728
Perlungher Richard R	Senior Asst City Attorney	127236.29	f	Police Attorney	57729
Smith III Andrew	Application Services Manager	126599.99	f	ERP	57730
Benfield II Harold	Information Security Supvr	125780	f	I&T Security	57731
Hall Tina	Operations Supervisor	92000	f	Light Rail Administration	58135
Hulsey Jacquelyn N	Police Captain	104311.77	f	Internal Affairs Bureau	57733
Coleman Vivian Davis	Trans Planning Prog Mgr	104224.8	f	Municipal Planning	57734
Brunson Allen Doyle	Business Systems Prog Manager	104132.59	f	CLT Water Business Sys (IT)	57735
Richards Sarah R	Financial Services Manager	104101.41	f	Finance Accounting	57736
Butler Ryan M.	Police Captain	104017.23	f	North Division	57737
Lawrence Jason B	Transportation Planner III	92000	f	Development NE Corridor	58136
Nguyen Monica Alexander	Data Analytics Manager	104008.51	f	Criminal Intel. and Analysis	57739
Mahoney Monica Renee	Police Investigation Tech	45181.84	f	Non-Emergency Police Services	62628
Bosche Jr Phillip	Battalion Fire Chief	103848.19	f	Fire Station 20	57741
Edge Martha Todd	Airport Operations Manager I	91816.45	f	Oper - Terminal Ops	58138
Harding III John R	Battalion Fire Chief	103848.19	f	Fire Station 1	57743
Jackson Sharron Y.	Police Support Technician	45181.79	f	Communications Division	62629
Moore David F	Battalion Fire Chief	103848.19	f	Fire Station 25	57745
Nantz Kenneth Shane	Battalion Fire Chief	103848.19	f	Fire Station 25	57746
Sharpe Gregory R	Battalion Fire Chief	103848.19	f	Fire Station 20	57747
Long Jennifer Shouse	Airport Operations Manager I	91815.42	f	BO-Commercial Svcs/Pass	58140
Steele Michael A	Battalion Fire Chief	103848.19	f	Fire Station 39	57749
Ford Michael John	Police Lieutenant	91689.68	f	Administrative Services Group	58141
Caputo Brandon A	Battalion Fire Chief	103848.02	f	Fire Station 27	57751
Ramsey Tim R	Battalion Fire Chief	103848.02	f	Fire Station 25	57752
Rogers Timothy A	Battalion Fire Chief	103848.02	f	Fire Station 20	57753
Skeris Peter J	Battalion Fire Chief	103848.02	f	Fire Station 42	57754
Summers Willie N	Battalion Fire Chief	103848.02	f	Fire Station 27	57755
Eskridge Holly	Economic Dev Ops Mgr Sr	103824	f	Economic Development-ADM	57756
Lim Gene H	Police Lieutenant	91689.68	f	Real Time Crime Center	58142
Lontz Todd C	Police Captain	103815.26	f	Business Services	57758
Rowland Kathy Kay	IT Project Manager	103766.25	f	CLT Water Business Sys (IT)	57759
Ratliff Celestine	Police Lieutenant	91689.68	f	Support Services Group - Admin	58143
Wooten Timothy Warren	Housing & Neighborhood Svcs Di	103574.33	f	Housing Combined	57761
Stephens William Herman	Information Tech Administrator	103348	f	Computer Technology Solutions	57762
Moore Chenisa Little	Police Investigation Tech	45181.79	f	University City Division	62630
Brisbon Cecil R	Police Captain	103306.36	f	Providence Division	57764
Dance Robert Jason	Police Captain	103306.36	f	Steele Creek Division	57765
Harris Michael A	Police Captain	103306.36	f	Professional Standards Unit	57766
Henson Harold W	Police Captain	103306.36	f	Internal Affairs Bureau	57767
Jones Charles L	Street Maint Operations Mgr	91500	f	Administration	58145
Wilson James A	Police Captain	103306.36	f	Community Wellness Division	57769
Gustis Matthew M.	Engineering Program Manager	91474.46	f	E&PM Storm Water	58146
Lee Gary Raymond	Rail Operations Manager	103222.46	f	Light Rail Maintenance	57771
Hoy Michael B	Engineering Program Manager	103189.79	f	EPM Main Engineering	57772
Paskoff Paul Stuart	Administrative Officer IV	103072.56	f	Office of the Chief - Administ	57773
Collins Gregg R	Police Captain	103004.88	f	Real Time Crime Center	57774
Hornbacher David A	Software Developer Intermediat	91347.9	f	Computer Technology Solutions	58147
Hair Stuart P	Airport Operations Manager II	102976.83	f	Admin-Finance	57776
Farley Jr Gerard E	Police Captain	102804.87	f	Real Time Crime Center	57777
Chambers Rebecca L	Engineering Program Manager	102483.65	f	EPM Main Engineering	57778
Archer Robert F.	Information Tech Administrator	91280.54	f	I&T Servers	58148
Enfinger Constance S	Chief Criminalist	102324.42	f	Crime Lab Division	57780
Howard Jr John G.	Planning Program Manager	91278.4	f	Planning	58149
Myers Gracie P.	Administrative Officer V	102232	f	HR/CR	57782
Tellis Torri L	Police Captain	101977.68	f	Eastway Division	57783
Cochrane Margaret L	Assistant City Attorney II	101966.91	f	City Attorney	57784
Hecksher Joe Julius	Administrative Officer V	91268.29	f	E&PM Storm Water	58150
Sorrentino Thomas A.	Senior Engineering Project Mgr	101933.56	f	Design	57786
Messer Holly Blake	Information Tech Administrator	91240.04	f	Tech - Executive	58151
Shirley Keith J	Engineering Program Manager	101790.38	f	CLT Field Ops-Pipeline Rehab	57788
King Nathan D	Police Captain	101779.66	f	Professional Standards Unit	57789
Bryant Keith Burgess	Senior Engineering Project Mgr	91159.52	f	Design	58152
Johnson Dave	Police Captain	101766.88	f	Recruiting Division	57791
Marlowe Stephen	Building Maintenance Supt	101690.24	f	EPM BS Spratt	57792
Taylor Robert B.	Bus Systems Spec Lead	101660.04	f	Finance Business Systems	57793
Graham II Robert W	Battalion Fire Chief	101642.79	f	Fire Station 1	57794
Phillips Teresa D	Police Support Technician	45181.79	f	Communications Division	62631
Myers Robert L	Battalion Fire Chief	101642.79	f	Fire Station 17	57796
Smith Loy N	Battalion Fire Chief	101642.79	f	Fire Station 10	57797
Horldt Bruce Allen	Senior Engineering Project Mgr	91159.52	f	Utility Permitting	58154
Wagner Christian S	Police Captain	101640	f	South Division	57799
Cuberson James Edward Napolean	Information Tech Administrator	101636.41	f	I&T Applications	57800
Wright James M	Police Captain	101482.43	f	Investigative Services Group -	57801
McDonald II Edward D	Transit Planning Manager	116688.38	f	Development Administration	57802
Anselmo Diego O	Police Major	116603.36	f	Support Services Group - Admin	57804
Bellamy Bruce E	Police Major	116405.87	f	Administrative Services Group	57805
Miller Samantha Elizabeth	Senior Engineering Project Mgr	91159.52	f	Design	58155
Trull Charles Christopher	Equipment Management Div Mgr	116283.66	f	Fleet Mgmt-Administration	57807
Obregon Felix A.	Senior Engineering Project Mgr	91159.52	f	Design	58156
Heller Daniel L	Data Center Services Manager	116266.21	f	I&T Facilities	57809
Goforth Kelly R	Transit Project Dev Manager	116232.78	f	Development NE Corridor	57810
Goelz Lisa A	Police Major	116027.03	f	Administrative Services Group	57811
Babson Anthony D.	Senior Engineering Project Mgr	91159.12	f	EPM Main Engineering	58157
Hunnicutt Travis Scott	Utilities Manager	116000	f	CLTW Maintenance	57813
Brezeale Brandon	Senior Engineer	91159.12	f	Design	58158
Gragg Rachel	IT Communicatons Svc Mgr	115956.89	f	I&T Network	57815
Vang Tou B	Senior Engineering Project Mgr	91159.07	f	E&PM Storm Water	58159
Owens Damian L	Division Fire Chief	115946.82	f	Fire Logistics	57817
Jain Subhash K	Application Development Manage	115894.84	f	I&T Applications	57818
Brickey Allison C.	Senior Engineering Project Mgr	91159.01	f	EPM Main Engineering	58160
Miller Steven K	Utilities Manager	115883.5	f	CLT Water Cust Service-Admin	57820
Howell Thurman Chad	Utilities Manager	115883	f	CLT Water Business Office	57821
Desai Kruti S	Engineering Division Manager	115847.4	f	E&PM Storm Water	57822
Wallace Veronica Sirlethia McGriff	Engineering Division Manager	115800	f	EPM Main Engineering	57823
Cisine Ted	Sr Business Systems Manager	115281.85	f	Tech - Executive	57824
Wood Rachel Smithson	Constituent Svcs Div Manager	114719	f	CM-Corporate Comm & Marketing	57825
Weathers Ronald C.	Engineering Division Manager	114394.81	f	CLT Water Engineering-Admin	57826
Page Bryan Andrew	Information Tech Administrator	91141.19	f	ERP	58161
Dennis Katherine Phipps-Mills	Public Services Division Mgr	114000	f	Special Programs	57828
Quinn Johanna Daniels	Trans Engineering Manager	114000	f	Land Development	57829
Price Ellen C	Deputy Solid Waste Svcs Dir	113798.88	f	SWS Department Head	57830
Hanes Valerie Jane  Valencia	Engineering Project Manager	91085.18	f	EPM Main Engineering	58162
Phillips Candice D	Human Resour Program Mgr	113791.83	f	Organization Dev & Learning	57832
Forney Quinton D.	Equipment Operator III	45179.15	f	SouthWest District (Sweden)	62632
Krise Benjamin D	N&BS Services Division Manager	113559.3	f	Code Enforcement Combined	57834
Campbell Robert A.	Electrical Engineer Sr	91049.49	f	CLT Water EMD Maintenance	58164
Shearer Keri Schaber	Data Services Manager	113533.97	f	Decision Analytics	57836
Roberts Michael R	Chief Electrical Engineer	113210.69	f	CLT Water Instr. Control & Ele	57837
Meka Aswani Kumar	Database Administrator Senior	113000	f	I&T Data	57838
Adams Tina P	Deputy Internal Audit Manager	112967.18	f	City Mgr - Internal Audit	57839
Feltman J. David	Transit Project Dev Manager	112715.32	f	Development Administration	57840
Graves Anthony G	Information Security Administr	112378.5	f	I&T Security	57841
Finger James Michael	Network Operations Supervisor	91032.88	f	Public Safety Communications	58165
Wilkerson Paul N.	Wireless Communications Mgr	112130.93	f	Public Safety Communications	57843
Tremblay Elizabeth Hensdill	Information Tech Administrator	91000	f	I&T Applications	58166
Smith Gerald M	Police Major	111729.18	f	Southwest Service Area	57845
Marsicano Marie R	Internal Audit Supervisor	90975.09	f	City Mgr - Internal Audit	58167
Campagna Michael A	Police Major	111182.24	f	Northwest Service Area	57847
Patterson Estella D	Police Major	111182.24	f	Internal Affairs Bureau	57848
Crayton Demitra H	311 Program Manager	110870.23	f	CharMeck 311	57849
Cuberson Dana Clemons	Assistant City Attorney II	110834	f	City Attorney	57850
Kelly David	Assistant City Attorney II	110834	f	Police Attorney	57851
Leslie-Fite Andrea Maria	Assistant City Attorney II	110834	f	City Attorney	57852
Johnson James David	Software Developer Senior	110571.75	f	CLT Water Business Sys (IT)	57853
Byrd Jr Francis Allen	Database Administrator	110315.58	f	ERP	57854
Price Maurice A	Sharepoint Administrator	90971.33	f	I&T Applications	58168
Scott Gershon Chuku Dudley	IT Project Manager Senior	110000	f	I&T Project Management	57856
Stewart Raquishela	N&BS Services Division Manager	110000	f	CharMeck 311	57857
Cash Thomas N	Server Administrator	109892.41	f	I&T Servers	57858
Liu Nianwei	Application Development Manage	109773.97	f	I&T Applications	57859
Miles Nicholas Robert	IT Client Services Manager	109643.55	f	I&T Service Management	57860
Calhoun III Thomas C	Business Systems Manager	109458.86	f	E&PM Storm Water	57861
Whichard Karen	Strategy & Budget Analyst	90965.65	f	Strategy & Budget	58169
Korolos Sherif F	Real Estate Division Manager	109274.49	f	EPM Real Estate	57863
Bonham Cynthia D	Battalion Fire Chief	109040.49	f	Fire Administration	57864
Winkles Jerry A	Battalion Fire Chief	109040.49	f	Fire Administration	57865
Hall Steven Robert	Database Administrator	108941.78	f	I&T Data	57866
Littlejohn Michelle D.	Business Services Mgr	108924.5	f	Administration - Director	57867
Stahnke Richard C	Police Lieutenant	99289.27	f	Special Events	57868
Gallup Anna Hayes	Travel Demand Modeling Prg Mgr	99228.61	f	Regional Planning	57869
Donald Deborah C	Information Tech Administrator	99212.91	f	I&T Applications	57870
Keyeux Jean Francois	Software Developer Senior	99184.52	f	CLT Water Business Sys (IT)	57871
Bouknight Wendell Jack	Software Developer Senior	99160.86	f	EPM Main Engineering	57872
Mack Jr Arthur	Labor Crew Chief I	45104.75	f	CLT Water West Tyvola Zone	62633
Boston Valerie M.	Airport Operations Manager II	99100.91	f	Oper - Landside/Grd Trans	57874
Simpson Thomas K	Police Trainee	43492.38	f	Recruit Training Unit	62809
Edwards David Michael	Airport Operations Manager II	99097.85	f	Oper - Airside	57876
Cristy David D	Police Lieutenant	99096.47	f	South Division	57877
Harless Jeffrey E	Police Lieutenant	99096.47	f	North Tryon Division	57878
Morrison James F	Police Lieutenant	99044.71	f	University City Division	57879
Kincaid Scott Ira	Airport Operations Manager I	90934.55	f	Facil - Fleet Maintenance	58171
Emmanuel Kamella Monique	Adminstrative Services Manager	99000	f	Human Resources Division	57881
King Marcus	Senior Engineering Project Mgr	90927.11	f	CLT Water Engineering-Admin	58172
Sanders Marion C	Utilities Operations Manager	98997.29	f	CLT Water Field Ops Admin	57883
Eudy Steven B	Business Systems Supervisor	98946.21	f	Criminal Intel. and Analysis	57884
Lopez Trisha Dawn	Animal Control Supervisor	45097.6	f	Animal Care & Control Division	62634
Newcomb Stephen	Rail Operations Manager	98893	f	Maintenance Right of Way (MOW)	57886
Krouse Mark A	Environmental Compliance Mgr	90858.39	f	CLT Water Backflow Prevention	58174
Thompson Myra Zabec	Laboratory Manager	98866.3	f	CLT Water Lab Svc-Operations	57888
Blum David T	Police Lieutenant	98809.61	f	Independence Division	57889
Childs Robert C	Police Lieutenant	98809.61	f	Hickory Grove Division	57890
Newell Fred A	Police Lieutenant	98809.61	f	Real Time Crime Center	57891
Godwin Christina Stuckman	IT Project Manager	98800	f	I&T Project Management	57892
Royston Anderson L	Police Lieutenant	98566.24	f	Freedom Division	57893
Hennessey Kevin Michael	Community Programs Coord	90783	f	Admin-Finance	58175
Shawver Timothy S.	Bus Systems Spec Lead	98564.78	f	Information Technology	57895
Anderson Kelsie L	Engineering Program Manager	98365	f	Land Development	57896
Hunter William T.	Business System Spec Sr	90646.09	f	EPM Main Engineering	58176
Moore Louie W	Administrative Officer V	98320.87	f	SWS Administration	57898
Barron Michael E	Police Lieutenant	98296.8	f	Real Time Crime Center	57899
Koch Bradford A	Police Lieutenant	98234.02	f	Public Affairs	57900
Frey Joseph A.	Senior Engineering Project Mgr	90620.48	f	EPM Main Engineering	58177
Pridgen Michael R	Airport Operations Manager II	98093.97	f	Facil - Building Maintenance	57902
Dusch Christopher C	Information Tech Administrator	98000	f	Tech - Executive	57903
Timmers Daniel L	Information Tech Administrator	98000	f	Tech - Executive	57904
Tufano Robert	Public Services Division Mgr	97891.89	f	Public Affairs	57905
Crooks Shawn E	Police Lieutenant	97852.62	f	Providence Division	57906
Farrell William S	Police Lieutenant	97821.94	f	Airport Law Enforcement Divisi	57907
Whitley Robert J	Police Lieutenant	97821.94	f	Special Operations Division	57908
Kelley Ronald Frederick	IT Client Support Manager	90614.51	f	I&T Service Management	58178
Ross Carolyn Elizabeth	Adminstrative Services Manager	97800	f	CLT Water Human Resources	57910
Lisenby Pamela A	Police Lieutenant	97662.62	f	Professional Standards Unit	57911
McNamee Joseph	Middleware Specialist	97477.51	f	I&T Data	57912
Pierotti Douglas L.	Senior Engineering Project Mgr	87143.74	f	EPM Main Engineering	58179
Woodard Jerome Douglas	Airport Operations Manager II	97470	f	Oper - Airport Security	57914
Yang Ling	Software Developer Senior	97423.72	f	I&T Applications	57915
Brooks Phil S	Information Tech Administrator	97393.92	f	I&T Enterprise Operations	57916
Tarlton Bryan C.	Engineering Program Manager	97331.58	f	EPM Main Engineering	57917
Meacci Charles Grant	Planning Program Manager	97277.66	f	Planning	57918
Chickoree Zerubabel S	Police Lieutenant	97191.17	f	Field Services Group South - A	57919
Vasireddy Ravi	Software Developer Intermediat	97174.45	f	Computer Technology Solutions	57920
Cowherd Charles N	Senior Engineering Project Mgr	87131.22	f	CLT Water Engineering-Admin	58180
Huskins Jonathan Chad	Airport Operations Manager II	97155	f	Facil - Airside Maintenance (F	57922
Chisholm Xzavier Marquis	IT Project Manager	97137.24	f	I&T Project Management	57923
Winslow James A.	Business Systems Prog Manager	97061.03	f	Technology	57924
Brim Kelvin A	Battalion Fire Chief	97031.84	f	Fire Station 27	57925
Cash Jr Bobby G.	Battalion Fire Chief	97031.84	f	Fire Station 39	57926
Farnum Jr David M.	Battalion Fire Chief	97031.84	f	Fire Station 42	57927
Field Justin Anthony	Battalion Fire Chief	97031.84	f	Fire Station 17	57928
Hasty Glyn S	Battalion Fire Chief	97031.84	f	Fire Station 17	57929
Queener Calhoun Fleming	Information Security Supvr	125780	f	I&T Security	57930
Johnson Jr Edward William	Transit Budget Manager	87125	f	Administration Division	58181
Oliver Sandra Bittle	IT Services Portfolio Manager	125354.74	f	I&T Relationship Management	57932
Huneycutt Lisa DeLane	Human Resour Program Mgr	125171	f	Human Resources	57933
Morrison Leslie James	Corporate PMO Manager	124960.82	f	I&T Project Management	57934
Waataja Jeffrey Paul	Data Services Manager	124954.64	f	I&T Data	57935
Schultz Jr David Charles	Latent Fingerprint Supervisor	87121.84	f	Crime Lab Division	58182
Richardson Keith M	Asst Neighborhood Bus Svcs Dir	124727.31	f	Director's Office Combined	57937
Mallett Pertrell Demelio	Bus Systems Spec Lead	87084.91	f	Director's Office Combined	58183
Jarrell Jacqueline A	Utilities Manager	124540.57	f	CLT Water EMD Administration	57939
Mattos Betty Jean	Chief Accountant	124080	f	Finance Accounting	57940
Thomas Gregory	Information Security Administr	123514.85	f	I&T Security	57941
Wally James Hampton	Engineering Project Manager	87066	f	EPM Main Engineering	58184
Jamison Rodney Maurice	Deputy Solid Waste Svcs Dir	122893.1	f	SWS Operations - Collections A	57943
Wilson Joseph C	Chief Engineer-Utilities	122871	f	CLT Water Engineering-Admin	57944
McKinney Edward James	Assistant Planning Director	122768	f	Planning	57945
Vaughn Miles	N&BS Services Division Manager	122402.56	f	Housing Combined	57946
Charlton Laurence	Database Administrator Senior	122067.64	f	I&T Data	57947
Robinson Donald Brian	Senior Engineering Project Mgr	87036.07	f	E&PM Storm Water	58185
Huber John C	Utilities Manager	121927.69	f	CLT Water Admininstration	57949
Cantrell Keri	Chief Engineer-Utilities	121577	f	CLT Water Engineering-Admin	57950
Crawford Gregory Allen	Real Estate Program Manager	86984.85	f	EPM Real Estate	58186
Phocas Robert John	N&BS Services Division Manager	121280.19	f	Economic Development-Sustainab	57952
Caudle Stacy L	Bus Systems Spec Lead	86960.14	f	Tech - Executive	58187
Khattak Saleem Shah	Trans Engineering Manager	121121.47	f	Administration - Director	57953
Groce Douglas N	Sr Business Systems Manager	120936.02	f	CLT Water Business Sys (IT)	57954
Mathis Matthew C	Crime Laboratory Director	120471.56	f	Crime Lab Division	57955
Hershberger Eric A	Strategy & Budget Manager	120312.38	f	Strategy & Budget	57956
Rossi Eve	DNA Analysis Team Leader	86868.04	f	Crime Lab Division	58188
Gray Celia Anne	Transit Quality Assurance Mgr	120125.7	f	Quality Assurance	57958
Selvey Cameron R	Police Major	120101.46	f	Investigative Services Group -	57959
Cunningham Brian J	Police Major	120059.66	f	Office of the Chief - Administ	57960
Davis Kent P	Division Fire Chief	119944.94	f	Fire Deputy Chiefs	57961
Carter Patricia	Human Resources Analyst	86789	f	Human Resources	58189
Foulk Michael L	Division Fire Chief	119944.94	f	Fire Training	57963
White Pamela Seward	Transit Scheduling Manager	86756.59	f	Planning & Special Operations	58190
Garrison Russell E	Division Fire Chief	119944.94	f	Fire Station 41	57965
McDaniel Paula D	Division Fire Chief	119944.94	f	Fire Deputy Chiefs	57966
Newman Daracus L	Division Fire Chief	119944.94	f	Fire Deputy Chiefs	57967
Harmon Laura A	Assistant Planning Director	119748.9	f	Planning	57968
Johnson Margaret Walsh	Assistant Planning Director	119748.9	f	Planning	57969
Bhanderi Hiteshkumar Samjubhai	Business Systems Prog Manager	119592.51	f	Fire Administration	57970
Weekly David B	Engineering Division Manager	119503.97	f	EPM Land Development	57971
Price Mark David	Database Administrator Senior	119482.72	f	I&T Data	57972
Faulk Austin Price	Adminstrative Services Manager	119092.31	f	I&T Administration	57973
High-Foster Kellie Sue	Business Services Mgr	118621.78	f	Office of the Chief - Administ	57974
Haas William L	Engineering Division Manager	118357.83	f	EPM Main Engineering	57975
Pearsall Sherie E	Police Major	118336.67	f	Administrative Services Group	57976
Parks William E	Strategy & Budget Manager	118220.75	f	Strategy & Budget	57977
Gallagher Daniel Raymond	Trans Planning Div Manager	118034.31	f	Municipal Planning	57978
Hendrickson Woodside Monifa Akim Sharla	Engineering Project Manager	86732.2	f	EPM Main Engineering	58191
Abel Jr Charles W	Trans Engineering Manager	118000	f	Transportation Systems	57980
Goddard Benjamin Christopher	Information Security Administr	117987.28	f	I&T Security	57981
Carter Christopher Hart	Water Quality Technician II	45096.29	f	CLT Water Lab Svc-Operations	62635
Reaves Edward Alexander	Business Systems Manager	117930.47	f	SWS Technology	57983
Symonds Douglas P.	IT Project Manager Senior	117836.25	f	I&T Project Management	57984
Adams Michael V	Police Major	117547.15	f	Investigative Services Group -	57985
McConnell Shawn	Data Storage Administrator	86664.84	f	I&T Storage	58193
Thiry Sandra J	Human Resour Program Mgr	117489.37	f	Finance Office Firefighters Re	57987
Rutledge Gary Lee	Information Tech Supervisor	117446.23	f	I&T Enterprise Operations	57988
Smathers Michael J	Police Major	117206.88	f	Field Services Group North - A	57989
Bennett David Jason	Software Developer Senior	116976.44	f	Computer Technology Solutions	57990
Brim Jill Marie	Transit Corridor Sen Proj Mgr	116784.25	f	Development NE Corridor	57991
Cishek Kathleen S	Senior Engineering Project Mgr	88595.5	f	EPM Main Engineering	57992
Collins II David O	Police Lieutenant	88589.28	f	Providence Division	57993
Colquitt Jason L	Police Lieutenant	88589.28	f	Professional Standards Unit	57994
Flatt Stephen T.	Police Lieutenant	88589.28	f	North Division	57995
Furr John D	Police Lieutenant	88589.28	f	Independence Division	57996
Jeter Demarco L	Police Lieutenant	88589.28	f	Steele Creek Division	57997
Manassah Susan A	Police Lieutenant	88589.28	f	Violent Crime Division	57998
Saunders Jared Lee	Police Lieutenant	88589.28	f	Freedom Division	57999
Anderson II Michael Smith	Police Lieutenant	88589.06	f	Real Time Crime Center	58000
Helton Jason B	Police Lieutenant	88589.06	f	Hickory Grove Division	58001
Hunt Shawn	Information Tech Administrator	88584.3	f	Tech - Executive	58002
Goins Ashley D	Information Tech Administrator	88580.64	f	Tech - Executive	58003
Deal William M	Senior Engineering Project Mgr	88578.19	f	CLT Water Engineering-Admin	58004
Hunter Sr Scott L	Battalion Fire Chief	97031.84	f	Fire Station 1	58005
Sullivan Michael K	Police Sergeant	88522.76	f	Westover Division	58006
Magnasco Matthew M.	Senior Engineer	88504	f	Design	58007
Miller Bruce E.	Senior Engineering Project Mgr	88499.17	f	EPM Main Engineering	58008
Smith Jr Thomas R.	Assistant Financial Servcs Mgr	88487.36	f	Finance Revenue	58009
Cantrell Emily Westbrook	Economic Dev Program Mgr	88376.39	f	Economic Development-ADM	58010
Kennedy Jeremy S	Fire Captain - Spec Assign	88131.04	f	Fire Training	58011
Johnson Joshua Eric	Battalion Fire Chief	97031.84	f	Fire Station 39	58012
Chapman Mark B	Senior Engineer	88334.4	f	EPM Land Development	58013
Westover Matthew A	Battalion Fire Chief	97031.84	f	Fire Station 10	58014
Emmons James J	Safety Supervisor	86618.15	f	EPM Main Engineering	58194
King Russell W	Fire Captain	88131.04	f	Fire Station 13	58016
Beonde Amelia Clay	Const Contracts Admin Coord Ld	88139.97	f	Finance Procurement Management	58017
VandeWoude James Scott	IT Project Manager	97000	f	Tech - Executive	58018
Rockwell Amy L	Business System Spec Sr	86616.04	f	EPM Main Engineering	58195
Lambeth James K	Fire Captain	88131.04	f	Fire Station 3	58020
Morrison Alan F.	Senior Engineer	88135.75	f	EPM Main Engineering	58021
Womer Joseph D	Business System Spec Sr	86579.54	f	Technology	58196
Chapman Kenneth Duvall	Safety Supervisor	96960.35	f	Safety & Security	58023
Lovett Aaron N	Fire Captain - Spec Assign	88131.04	f	Fire Training	58024
Alexander Derek P	Fire Captain	88131.04	f	Fire Station 17	58025
Vanderlip Jr William Joseph	Police Commun Services Supv	86400.58	f	Communications Division	58197
Allen Eric M	Fire Captain	88131.04	f	Fire Station 32	58027
Anderson Jr Larkin	Fire Captain	88131.04	f	Fire Station 30	58029
Ballew Mark D	Fire Captain	88131.04	f	Fire Station 3	58030
Beatty Brian Charles	Fire Captain - Spec Assign	88131.04	f	Fire Training	58031
Bradford Gary B	Fire Captain	88131.04	f	Fire Station 41	58032
Bright Jeffery L	Fire Captain	88131.04	f	Fire Station 10	58033
Brown James W	Fire Captain - Spec Assign	88131.04	f	Fire Training	58034
Caldwell Jr Walter C	Fire Captain - Spec Assign	88131.04	f	Fire Logistics	58035
Carr Kevin Roy	Fire Captain	88131.04	f	Fire Station 17	58036
Case Joshua L	Fire Captain	88131.04	f	Fire Station 3	58037
Cherry Joel Max	Fire Captain	88131.04	f	Fire Station 3	58038
Clymer II Thomas Lester	Fire Captain - Spec Assign	88131.04	f	Fire Training	58039
Cobb William J	Fire Captain	88131.04	f	Fire Station 41	58040
Cole Jr Troy D	Fire Captain	88131.04	f	Fire Station 17	58041
Cook II Henry L.	Fire Captain	88131.04	f	Fire Station 17	58042
Creason Jr Stephen A	Fire Captain	88131.04	f	Fire Station 10	58043
Curran III Kenneth M	Fire Captain	88131.04	f	Fire Station 10	58044
Foltz Derrick S	Fire Captain	88131.04	f	Fire Station 13	58045
Fullam Matthew J.	Fire Captain	88131.04	f	Fire Station 32	58046
Gilmore Jackie Kevin	Fire Captain - Spec Assign	88131.04	f	Fire Administration	58047
Gist Dennis P	Fire Captain - Spec Assign	88131.04	f	Fire Administration	58048
Gordon Michael B.	Fire Captain	88131.04	f	Fire Station 13	58049
Hensley Jr Gary Lee	Fire Captain	88131.04	f	Fire Station 32	58050
Hoffman Alan S	Fire Captain	88131.04	f	Fire Station 17	58051
Horne Charles S	Fire Captain	88131.04	f	Fire Station 32	58052
McInnis Wilbar B	Labor Crew Chief I	45079.92	f	CLT Wat General Commerce Zone	62636
Johnson Kimberly Marie	Business System Spec Sr	86303.81	f	SWS Technology	58198
Springs Theodore M	Survey Technician	45071.48	f	CLT Water Locates	62637
Simpson Charles V	Safety Coordinator-Senior	86291.46	f	CLT Water Safety Team	58200
Taillon Jane E	N&BS Operations Manager	86230.75	f	Code Enforcement Combined	58201
Gray James R	Bus Systems Spec Intrm	86202.12	f	Information Technology	58202
Miles Maria Nicole	Engineering Contracts Manager	86188.75	f	EPM Main Engineering	58203
Boone Jeffrey A.	Senior Engineering Project Mgr	86140.45	f	CLT Field Ops-Pipeline Rehab	58204
Aldridge Darren J	Police Sergeant	86063.77	f	Violent Crime Division	58205
Anderson Jr Clary Fredrick	Mason	45070.95	f	North East District (Orr)	62638
Anderson Kenneth S	Police Sergeant	86063.77	f	Aviation Unit	58207
Beam Richard T	Police Sergeant	86063.77	f	Eastway Division	58208
Bean Philip W	Police Sergeant	86063.77	f	Metro Division	58209
Blanton Bobby D	Police Sergeant	86063.77	f	Westover Division	58210
Booth John W	Police Sergeant	86063.77	f	Steele Creek Division	58211
Brown Jeffrey C	Police Sergeant	86063.77	f	South Division	58212
Burke Michael G	Police Sergeant	86063.77	f	Internal Affairs Bureau	58213
Cardaci Philip O	Police Sergeant	86063.77	f	Eastway Division	58214
Caroway Angela J	Police Sergeant	86063.77	f	Eastway Division	58215
Cherry Lydia	Police Sergeant	86063.77	f	Westover Division	58216
Christenbery Stephen D	Police Sergeant	86063.77	f	Steele Creek Division	58217
Couts Gregory G	Police Sergeant	86063.77	f	Internal Affairs Bureau	58218
Dearing Marsha A	Police Sergeant	86063.77	f	Internal Affairs Bureau	58219
Dempster Brandon	Software Developer Senior	94886.84	f	Fire Administration	58220
Decker Thomas Christopher	Police Sergeant	86063.77	f	Independence Division	58221
Demaioribus Angelo A.	Police Sergeant	86063.77	f	North Tryon Division	58222
Dority Jason P	Police Sergeant	86063.77	f	Independence Division	58223
Dunn Bradford Clayton	Police Sergeant	86063.77	f	Freedom Division	58224
Goines Ayesha Houston	Police Support Technician	45070.95	f	Communications Division	62639
Edmonds Michael S	Police Sergeant	86063.77	f	Training Division	58226
Eubanks Christopher P	Police Sergeant	86063.77	f	Airport Law Enforcement Divisi	58227
Fey Robert P	Police Sergeant	86063.77	f	Airport Law Enforcement Divisi	58228
Gallant Joan Furr	Police Sergeant	86063.77	f	Professional Standards Unit	58229
Georgion David A	Police Sergeant	86063.77	f	North Division	58230
Gorrod John C	Police Sergeant	86063.77	f	South Division	58231
Mason Martin J	Survey Technician	45070.95	f	CLT Water Engineering-Admin	62640
Graue Michael C	Police Sergeant	86063.77	f	Firearms Training Unit	58233
Greene Alan S.	Police Sergeant	86063.77	f	Westover Division	58234
Haithcock Jason T	Police Sergeant	86063.77	f	South Division	58235
Smith David B	Engineering Program Manager	96460	f	Utility Permitting	58236
Barry Julie Marie	Police Lieutenant	94825.15	f	Field Services Group North - A	58237
Anderson Lawrence Anthony	Sanitation Equip Operator Sr	45068.84	f	SWS Operations - Garbage Colle	62641
Hall Anthony Eugene	Police Sergeant	86063.77	f	School Resources Officers	58239
Hannan Miriam C.	Administrative Officer IV	94786	f	Admin - Administrative Service	58240
Grzymski Andrew T.	Trans Planning Prog Mgr	96438.97	f	Municipal Planning	58241
Hall Anthony L	Police Sergeant	86063.77	f	Hickory Grove Division	58242
Eaton Terry S	Information Tech Supervisor	94772.28	f	I&T Storage	58243
Ngong Lillian	Chief Criminalist	96421.96	f	Crime Lab Division	58244
Havens Jr Robert Gerald	Police Sergeant	86063.77	f	South Division	58245
Triplett Robert	Safety Supervisor	94725.45	f	CLT Water Safety Team	58246
Sanders Brian D	Police Lieutenant	96397.35	f	Real Time Crime Center	58247
Haywood Angela D	Police Sergeant	86063.77	f	Internal Affairs Bureau	58248
Curlin Teresa E	Human Resources Analyst	94668.07	f	Human Resources	58249
Wolfe David E	Engineering Program Manager	96376.7	f	EPM Main Engineering	58250
Hildenbrand Peter N	Police Sergeant	86063.77	f	Steele Creek Division	58251
Wilson Frederick A	Bus Systems Spec Lead	94621.95	f	Technology	58252
Williams Brandi	Public Service Coordinator	96316.5	f	SWS Public Information	58254
Kitchens John A	Police Lieutenant	93908.96	f	South Division	58284
Caviness Keith A	Police Lieutenant	93904.52	f	Westover Division	58285
Peacock Melanie W	Police Lieutenant	93904.52	f	Armed Robbery/Sexual Assault D	58286
Montgomery Sandra Lynn	Planning Coordinator	93895.39	f	Planning	58287
Friar Jeffery Edward	Engineering Program Manager	93810.96	f	Dev - Executive	58288
Fakhreddin Imad W	Senior Engineering Project Mgr	93781.31	f	EPM Main Engineering	58289
McCullough Melony C	Sr Planning Coordinator	93696.1	f	Planning	58290
Zambrana-Perez Pedro Juan	Safety Coordinator-Senior	93633.75	f	Safety & Security	58291
Wimberly Tonia Poston	Senior Engineering Project Mgr	93609.21	f	EPM Main Engineering	58292
Isenhour Chuck James	Sr Network Commn Integrator	93546.85	f	I&T Network	58293
Emanuel Laney	Business System Spec Sr	93520.56	f	Finance Business Systems	58294
Taylor Kimberly H.	Public Service Coordinator	93475.12	f	Public & Community Relations	58295
Brown III Ethan Allen	Senior Engineering Project Mgr	93395.66	f	CLT Field Ops-Pipeline Rehab	58296
Frye Shannon W	Planning Program Manager	93385.82	f	Planning	58297
Crawford La'Kesha S	Police Telecommunicator	45068.84	f	Communications Division	62642
Padgett Dawn K	Utilities Operations Manager	93299.62	f	CLT Water Union County	58299
Moore Sheevonya Nichole	Police Telecommunicator	45068.84	f	Communications Division	62643
Edes Daniel J.	Transit Procure&Contracts Admi	93296.43	f	Procurement Services	58301
Gortney Toni	Equipment Mgmt Ast Div Mgr	93237.48	f	Fleet Mgmt-Administration	58302
Smith Steven	Bus Systems Spec Lead	93219.1	f	Technology	58303
Eller William C	Senior Engineering Project Mgr	93207.08	f	CLT Water Engineering-Admin	58304
Garrell Randall Lee	Airport Operations Manager I	93175	f	Facil - Building Maintenance	58305
Scott Carolyn Loretta	Office Assistant V	45068.84	f	Special Victims Division	62644
Rosado Nancy Maria	Business Development Prgm Mgr	93037.15	f	Charlotte Business Inclusion	58307
Newcomb Larry Christopher	Debt Manager	93000.44	f	Finance Treasury	58308
Gavin Shawn Kelly	Information Tech Administrator	92999.18	f	I&T Applications	58309
Sell Luke G	Police Lieutenant	92992.78	f	Eastway Division	58310
Shull III Atwell C	Economic Dev Program Mgr	92900.61	f	Economic Development-ADM	58311
Watson Ashton Bryan	Engineering Program Manager	92864.3	f	Dev - Executive	58312
Gignac Joseph Anthony	Information Tech Administrator	92803.26	f	I&T Enterprise Operations	58313
Majercsik William M	Bus Systems Spec Lead	92751.62	f	E&PM Storm Water	58314
Hayes Ashley E	Police Telecommunicator	45052.88	f	Communications Division	62645
Kimbell Christopher A	Police Sergeant	86063.77	f	SWAT/Alert Team Unit	58316
Komis Caleb J	Police Sergeant	86063.77	f	Central Division	58317
Kraeger Andrew S	Police Sergeant	86063.77	f	University City Division	58318
Leclerc Christopher M	Police Sergeant	86063.77	f	Freedom Division	58319
Linto Anne M	Police Sergeant	86063.77	f	Airport Law Enforcement Divisi	58320
Mackel Rollin E	Police Sergeant	86063.77	f	Providence Division	58321
Maloney Stephen T	Police Sergeant	86063.77	f	Independence Division	58322
Martin Keith S	Police Sergeant	86063.77	f	Westover Division	58323
McManus Robert W	Police Sergeant	86063.77	f	Hickory Grove Division	58324
McSwain Jr Henry B	Police Sergeant	86063.77	f	Violent Crime Division	58325
Scott Emily M	Police Telecommunicator	45052.88	f	Communications Division	62646
Mentavlos George N	Police Sergeant	86063.77	f	Transit Unit	58327
Miller David J	Police Sergeant	86063.77	f	Recruiting Division	58328
Millett Jr Alfred B	Police Sergeant	86063.77	f	University City Division	58329
Milliken Joseph	Police Sergeant	86063.77	f	Eastway Division	58330
Miner Melvin J	Police Sergeant	86063.77	f	Central Division	58331
Oehler Lee A	Police Sergeant	86063.77	f	Internal Affairs Bureau	58332
Parker Timothy David	Police Sergeant	86063.77	f	Airport Law Enforcement Divisi	58333
Parnell Christopher C	Police Sergeant	86063.77	f	North Tryon Division	58334
Powell Lawrence R	Police Sergeant	86063.77	f	Firearms Training Unit	58335
Lail Sarah Elizabeth	Police Telecommunicator	45052.66	f	Communications Division	62647
Preston Michele M	Police Sergeant	86063.77	f	Secondary Employment	58337
Prince David Anderson	Police Sergeant	86063.77	f	Freedom Division	58338
Rainwater Philip B	Police Sergeant	86063.77	f	North Division	58339
Rankin Edward P	Police Sergeant	86063.77	f	North Division	58340
Nelson Meredith Suzanne	Police Telecommunicator	45052.66	f	Communications Division	62648
Reiner Joseph M	Police Sergeant	86063.77	f	Property & Evidence Management	58342
Reitz Ivan J	Police Sergeant	86063.77	f	University City Division	58343
Robson Arthur M	Police Sergeant	86063.77	f	Airport Law Enforcement Divisi	58344
Roosenberg Phillip L	Police Sergeant	86063.77	f	South Division	58345
Rozell IV Henry C	Police Sergeant	86063.77	f	Independence Division	58346
Scharf Brian C	Police Sergeant	86063.77	f	Armed Robbery/Sexual Assault D	58347
Pina Loretta Yvonne	Police Telecommunicator	45052.66	f	Communications Division	62649
Scheimreif Katherine A	Police Sergeant	86063.77	f	Crime Scene Search Division	58349
Sherwood Scott S	Police Sergeant	86063.77	f	Central Division	58350
Powell Amy M	Police Telecommunicator	45052.66	f	Communications Division	62650
Sloan David B	Police Sergeant	86063.77	f	Motorcycle & Reconstruction Un	58352
Sloop Michael D	Police Sergeant	86063.77	f	Internal Affairs Bureau	58353
Smith Brian K	Police Sergeant	86063.77	f	Providence Division	58354
Smith Michael S	Police Sergeant	86063.77	f	Providence Division	58355
Steppe Jonathan P	Police Sergeant	86063.77	f	Steele Creek Division	58356
Sterrett Jeffrey A.	Police Sergeant	86063.77	f	South Division	58357
Price Megan Elizabeth	Police Telecommunicator	45052.66	f	Communications Division	62651
Stukey Amy Elizabeth	Police Sergeant	86063.77	f	In-Service Training Unit	58359
Rogers Crystal Rose	Information Tech Administrator	96000	f	Tech - Executive	58360
Hines David K	Senior Engineering Project Mgr	95937.18	f	Municipal Planning	58361
Tolan Susan J	Engineering Program Manager	95894.63	f	E&PM Storm Water	58362
Scott Lauren Matthews	Trans Planning Div Manager	95878	f	Dev - Executive	58363
Kendall Ryan S.	Police Lieutenant	95787.14	f	Recruiting Division	58364
Behrendt Jon C	Utilities Operations Manager	95727.74	f	CLT Water Cust Service-Admin	58365
Daniels Scott E	Network Architect Senior	95726	f	I&T Network	58366
Keplinger Tamara W	Planning Program Manager	95627.37	f	Planning	58367
Bittle Anthony J.	Bus Systems Spec Lead	95500	f	Strategy & Budget	58368
Puthan Veetil Seena	Information Tech Administrator	95481	f	I&T Applications	58369
Ridgely Randolph Scott	Information Tech Administrator	95480.99	f	I&T Applications	58370
Grayson Daniel W	Information Tech Administrator	95391.78	f	I&T Enterprise Operations	58371
Waddell Tiffany Elizabeth	Adminstrative Services Manager	95355	f	Administrative Management	58372
McNelly Joel A	Police Lieutenant	95313.08	f	Property & Evidence Management	58373
Jarrett Jr Carl W	Engineering Program Manager	95289.24	f	EPM Main Engineering	58374
Hofert Brian W	Police Lieutenant	95283.71	f	Real Time Crime Center	58375
Taylor Jeffrey S	Questioned Documents Specialst	95038.04	f	Crime Lab Division	58376
Armstead Jr Benjamin Lee	Sharepoint Administrator	95017.5	f	I&T Applications	58377
Purser Tara Easley	Police Telecommunicator	45052.66	f	Communications Division	62652
Darby Marie E.	Transit Oper Svc Mgr	95000	f	Light Rail Operations	58379
Magee Kenneth Sean	Information Tech Administrator	95000	f	ERP	58380
Mitchell Terrence S	Police Lieutenant	94972.76	f	Training Division	58381
Ramos Ambar Martinez	Police Telecommunicator	45052.66	f	Communications Division	62653
Dolan Abby	Engineering Contracts Manager	94933.15	f	CLT Water Procurement	58383
Rehak Ashley Anna	Police Telecommunicator	45052.66	f	Communications Division	62654
Oliver Kimberly Rochelle	MCC Support Specialist Sr	90555.59	f	CM-Constituent Services	58385
Castillo Daniel T	Police Sergeant	90366.96	f	Steele Creek Division	58386
Flagg Ronald M	Police Sergeant	90366.96	f	University City Division	58387
Gromis Timothy B	Police Sergeant	90366.96	f	Freedom Division	58388
Miller Bryan H	Police Sergeant	90366.96	f	Internal Affairs Bureau	58389
Rodriguez Yessica Juarez	Police Telecommunicator	45052.66	f	Communications Division	62655
Narvaez Gilberto	Police Sergeant	90366.96	f	Court Services - DA	58391
Rendon Jesus Manuel	Police Sergeant	90366.96	f	University City Division	58392
Santiago Miguel A	Police Sergeant	90366.96	f	Internal Affairs Bureau	58393
Varnum Craig E	Police Sergeant	90366.96	f	Special Victims Division	58394
Neely Cheryl L	Sr Planning Coordinator	90344.7	f	Planning	58395
Leaver Daniel J	Senior Engineering Project Mgr	90318.41	f	EPM Main Engineering	58396
Kinnamon Martin L	Travel Demand Modeler Sr	90262.77	f	Regional Planning	58397
Cain Christine M	Crime Scene Technician	45051.95	f	Crime Scene Search Division	62656
Lynch Kevin Michael	Airport Operations Manager I	90060.17	f	Facil - Janitorial/Housekeepin	58399
Hunter Beverly Jo	Accounting Specialist Sr.	45048.79	f	Finance Accounting	62657
Carter Diane D	Airport Operations Manager I	90058.53	f	Bus Offic -CommercialSvs/Aviat	58401
Harborne Stuart	Real Estate Agent III	90000	f	EPM Real Estate	58402
Barriga Rosas Jean Paul Jorge	IT Project Manager Associate	90000	f	I&T Project Management	58403
Bolt Stephen Paul	Street Maint Operations Mgr	90000	f	Administration	58404
Stevenson Ernest E	Network Operations Supervisor	89846.9	f	Public Safety Communications	58405
Jarrell Jr Herman Arnold	Senior Engineering Project Mgr	89843.5	f	CLT Water Engineering-Admin	58406
Brim Jackie Wade	Survey Mapping Manager	89819.45	f	EPM Main Engineering	58407
Mason Patricia R.	Administrative Officer V	89802	f	Business Support Combined	58408
Widenhouse Michael A	Senior Engineering Project Mgr	89801.71	f	EPM Main Engineering	58409
Thorne William T	Senior Engineer	89771.06	f	Development NE Corridor	58410
Moore Meredith Sexton	Information Tech Administrator	89708.32	f	Decision Analytics	58411
Zink Robert M	Senior Engineer	89683.33	f	EPM Land Development	58412
Cornett Kathleen D	Sr Planning Coordinator	89639.81	f	Planning	58413
Whitesell Jan L	Sr Planning Coordinator	89632.19	f	Planning	58414
Davis Jeffrey Kenneth	Senior Engineering Project Mgr	89610	f	CLT Water Engineering-Admin	58415
Roberts David	Bus Systems Spec Lead	89573.9	f	Tech - Executive	58416
Lescott Tashiek C	Airport Operations Manager I	89548.78	f	Finance - Executive	58417
Siegel Joshua	Business System Spec Sr	89515.5	f	EPM Main Engineering	58418
Brunnick Wayne A	Senior Engineering Project Mgr	89438.17	f	CLT Field Ops-Pipeline Rehab	58419
Sinha Bhavana	Senior Engineer	89418	f	CLT Water Eng-Install & Dev	58420
Norman Stephen Christopher	Safety Supervisor	89407.62	f	Risk Management	58421
Willis Samantha L	GIS Supervisor	89375.16	f	E&PM Storm Water	58422
Sloop Geoffrey Craig	Senior Engineering Project Mgr	89335.82	f	Implementation	58423
Smith Brendan M	Senior Engineer	89324.3	f	EPM Land Development	58424
Poore Sandra L	Payroll Manager	89296.61	f	HR Management System	58425
Main Kent Ashley	Planning Coordinator	89264.73	f	Planning	58426
Martel Shannon Whipple	Bus Systems Spec Lead	88895.92	f	CLT Water Business Sys (IT)	58427
Weis Gary	Bus Systems Spec Lead	88895.92	f	CLT Water Business Sys (IT)	58428
Bell Gloria Saretha	Bus Systems Spec Lead	88895.92	f	CLT Water Business Sys (IT)	58429
Oakes Deborah	Bus Systems Spec Lead	88895.92	f	CLT Water Business Sys (IT)	58430
Drum Grey L	Bus Systems Spec Lead	88834.96	f	Tech - Executive	58431
Fisher Joshua A	Animal Shelter Manager	88813.48	f	Animal Care & Control Division	58432
Watley Theresa J.L.	Senior Engineering Project Mgr	88790.77	f	EPM Main Engineering	58433
Banbury James Taylor	Public Service Coordinator	88744.96	f	EPM Main Engineering	58434
Labadorf Kate K	Senior Engineering Project Mgr	88689.09	f	E&PM Storm Water	58435
Boeck Eric	Bus Systems Spec Lead	88639.42	f	Technology	58436
Taylor Timothy	Business System Spec Sr	88615.68	f	Technology	58437
Sussman David Michael	Police Sergeant	86063.77	f	Westover Division	58438
Tran Hai Tan	Fire Captain	83934.33	f	Fire Station 26	58439
Sweatt Scott N	Police Sergeant	86063.77	f	University City Division	58440
Lomas Christine A	Accounting Technician	45030.08	f	Finance Accounting	62658
Vander Kolk Travis Reade	Fire Captain	83934.33	f	Fire Station 4	58442
Thomas Benjamin J	Police Sergeant	86063.77	f	South Division	58443
Morris Willie J	Survey Technician	44979.12	f	CLT Water Engineering-Admin	62659
Wallace Rahragus Teray	Fire Captain	83934.33	f	Fire Station 8	58445
Carpenter Keith A	Senior Engineering Project Mgr	84504.5	f	EPM Main Engineering	58446
Vredeveld Jeremy D	Police Sergeant	86063.77	f	Eastway Division	58447
Black Gina V	Police Investigation Tech	44959.59	f	Westover Division	62660
Ward Paul E	Fire Captain	83934.33	f	Fire Station 23	58449
Wilson James G	Police Sergeant	86063.77	f	Airport Law Enforcement Divisi	58450
Khan Sadia Mujib	Engineering Project Manager	82544.68	f	EPM Main Engineering	58451
Conard Nathan Lloyd	Senior Engineer	84437.43	f	Transportation Systems	58452
Gant Evelyn Annette	Police Investigation Tech	44959.59	f	Non-Emergency Police Services	62661
Watts Jimmy H	Fire Captain	83934.33	f	Fire Station 34	58454
Wilson Paul J	Police Sergeant	86063.77	f	Providence Division	58455
Lombardi Pallas Christine	Transit Arts Program Manager	82421.41	f	Development Administration	58456
Van Tassell Tracy E.	Safety Coordinator-Senior	84358.43	f	Special Programs	58457
Law Jeanette Michelle	Police Investigation Tech	44959.59	f	Non-Emergency Police Services	62662
Westbrook Mathew T	Fire Captain	83934.33	f	Fire Station 15	58459
Winterhalter Steven P	Police Sergeant	86063.77	f	Violent Crime Division	58460
LeBlanc Ryan Frederick	Engineering Project Manager	82400	f	CLT Water Engineering-Admin	58461
Crofts Chandler G	Engineering Project Manager	84300.57	f	EPM Main Engineering	58462
Sanders Lisa H	Police Investigation Tech	44959.59	f	Special Victims Division	62663
White Seth D	Fire Captain	83934.33	f	Fire Station 33	58464
Wise Robert J	Police Sergeant	86063.77	f	North Tryon Division	58465
Gortney William Terry	Senior Engineer	82375.09	f	Transportation Systems	58466
Porter Timothy Drew	Chief Arborist	84286.82	f	EPM Landscape Mgt	58467
Gregory Shairon	Labor Crew Chief II	46263.25	f	CLT Wat General Commerce Zone	62664
Whitener David L	Fire Captain	83934.33	f	Fire Station 7	58469
Wood Jesse D	Police Sergeant	86063.77	f	Special Events	58470
Greentaner William J	Engineering Project Manager	82369.73	f	Implementation	58471
Faggart Robert Sterling	Safety Supervisor	84285.02	f	Safety & Security	58472
Valenski Andrew	Information Tech Administrator	86000	f	Decision Analytics	58473
Cruey Jerry D	Fire Captain	83934.33	f	Fire Station 39	58474
Wilson Brian W	Fire Captain	83934.33	f	Fire Station 25	58475
Rorie Candice L	Planning Coordinator	85935.9	f	Planning	58476
Turnbull Kevin James	Fire Fighter I	47841.62	f	Fire Station 24	62665
Damron III James O	Fire Captain	83934.33	f	Fire Station 29	58478
Humes Nicholas Alexander	Labor Crew Chief II	46263.25	f	North East District (Orr)	62666
Frederick Dianne Marie	Govt Plaza Property Mgr	82318.63	f	EPM BS CMGC	58480
Corwin Michael Pembroke	Treatment Plant Mechanic II	46264.31	f	CLT Water - Water Maintenance	62667
Wooten Jesse Ray	Fire Captain	83934.33	f	Fire Station 22	58482
Edwards-Wilson Jacquelyn	311 Program Manager	85910.92	f	CharMeck 311	58483
Ennis Matthew F	Engineering Project Manager	84255	f	Implementation	58484
Adams Diane M	Code Enforcement Coordinator	82276.62	f	Housing Combined	58485
Wosje Jonathan P.	Fire Captain	83934.33	f	Fire Station 1	58486
Queen Jaynes (Dolly) Tharpe	Administrative Officer I	47824.49	f	Police Attorney	62668
de Jonge Douglas J.	Fire Captain	83934.33	f	Fire Station 9	58488
Nelson Michael Edward	Server Administrator	85856.11	f	I&T Servers	58489
Holliday John Michael	Server Administrator	84209.8	f	I&T Servers	58490
Russik Evelyn Marie	Accountant III	82260.87	f	Administration Division	58491
Yost Matthew J	Fire Captain	83934.33	f	Fire Station 30	58492
Decker Joshua R	Fire Captain	83934.33	f	Fire Station 4	58493
Geller Katareena	Information Security Analyst	85846.88	f	I&T Security	58494
Witherell William Michael	Operations Supervisor	84191.57	f	EPM BS Spratt	58495
Beasley Alan Theodore	Bus Systems Spec Lead	82245.49	f	ERP	58496
Deora Uday S	IT Client Support Manager	83931.94	f	I&T Relationship Management	58497
Capps Matthew Thomas	GIS Technician	46263	f	CLT Water Engineering-Admin	62669
DeMaio Christopher Joseph	Fire Captain	83934.33	f	Fire Station 12	58499
Williams Michael K	Network Commun Integrator	85820.6	f	I&T Network	58500
McGee Danee	Engineering Project Manager	84130.04	f	E&PM Storm Water	58501
Macomber Maggie A	Senior Engineer	82143.5	f	CLT Water EMD Administration	58502
Forte Alexia R	Accountant IV	83866.05	f	Administration Division	58503
Dimmick Fields M	Fire Captain	83934.33	f	Fire Station 27	58504
Cunningham Camilla S	MCC Support Specialist Sr	85802	f	CM-Constituent Services	58505
Haynes Eldewins Mortimer	Transportation Planner II	84103.15	f	Regional Planning	58506
Lozner Douglas T.	Senior Engineering Project Mgr	82043.21	f	E&PM Storm Water	58507
Peterson Nanette	Administrative Officer IV	83862.92	f	EPM Land Development	58508
Collins Keith	GIS Technician	46263	f	CLT Water Engineering-Admin	62670
Dotoli Jr James	Fire Captain	83934.33	f	Fire Station 18	58510
Stuart Zachary	Police Trainee	43492.38	f	Recruit Training Unit	62810
Frost Jennifer Krupowicz	Public Services Division Mgr	85601.36	f	Charlotte Water Communications	58512
West Frances McCutcheon	Engineering Project Manager	84078	f	EPM Main Engineering	58513
Buchanan Stephen G.	Senior Engineer	82043	f	CLT Water Eng-Install & Dev	58514
Hauser Gregory	Fire Commun Services Supv	83853.31	f	Fire Communications	58516
Dunn George P	Fire Captain	83934.33	f	Fire Station 42	58517
Moua Sou	Business System Spec Sr	85560.4	f	EPM Land Development	58518
Farquharson La Vondra Edwards	Administrative Officer IV	84055.09	f	CM-Corporate Comm & Marketing	58519
Delzell Barry L.	Senior Engineer	82043	f	CLT Water Cust Service-Admin	58520
Jackson Jr Alfonza	Business System Spec Sr	83827	f	Technology	58521
DeBiase Michael Thomas	Heavy Equipment Srvc Tech Sr	46263	f	Facil - Fleet Maintenance	62671
Dygert Jonathan D	Fire Captain	83934.33	f	Fire Station 14	58523
Ferguson Quitain	Labor Crew Chief II	46263	f	Special Transportation Service	62672
Gintert III Dean W	Environmental Compliance Mgr	85550.77	f	CLT Water System Protection	58525
Bynum Desmond	Network Commun Integrator	84050	f	I&T Network	58526
Amos Justin M	Strategy & Budget Analyst	82000	f	Strategy & Budget	58527
Judd Daniel	Sr Network Commn Integrator	83785.35	f	Tech - Executive	58528
Gray Sabrena L	Business System Spec Sr	83760.14	f	CLT Water Business Sys (IT)	58529
Helms Matthew John	Business System Spec Sr	83760.14	f	CLT Water Business Sys (IT)	58530
Moeykens Aby Gail	DNA Analysis Team Leader	83730.14	f	Crime Lab Division	58531
Hair Brian M	Electrical Engineer	83614	f	CLT Water EMD Maintenance	58532
Lockler Steven Joseph	Utilities Operations Manager	83577.39	f	CLT Water EMD Administration	58533
Sasser Gabe S	Utilities Operations Manager	83577.39	f	CLT Water Admininstration	58534
Conine Walter Ashley	Business System Spec Sr	83557.33	f	CLT Water Business Sys (IT)	58535
White Richard Everette	Business System Spec Sr	83557.33	f	CLT Water Business Sys (IT)	58536
Boenisch Ashley Morgan	Engineering Project Manager	83414.37	f	Traffic Safety	58537
Hinson Isaac Jamin	Water Quality Program Admin	83401.93	f	E&PM Storm Water Water Quality	58538
Chapman Ellen H	Engineering Project Manager	83393.94	f	EPM Main Engineering	58539
Edwards Lloyd	Chief Maintenance Mechanic	83339.62	f	Facil - Building Maintenance	58540
Jeremie John L	Heavy Equipment Srvc Tech Sr	46263	f	Fleet Mgmt-Louise Ave Shop	62673
Storey Nicole Renee	Economic Dev Program Mgr	83288.29	f	Community Engage Combined	58542
Maliszewski Mark	311 Program Manager	83266.06	f	CharMeck 311	58543
Wrobleski Tamara Arlene	Insurance & Risk Coordinator	83147.09	f	Risk Management	58544
Leathers Amber Lynn	Sr Planning Coordinator	83124	f	Dev - Executive	58545
Downs Timothy Franklin	Water Quality Program Admin	83093.76	f	CLT Water Field Ops Admin	58546
Walker Johnella	Const Contracts Admin Coord Ld	83092.46	f	EPM Main Engineering	58547
Biermann Zelleka A.	Economic Dev Program Mgr	83072.48	f	Housing Combined	58548
Johnson Laura L	Engineering Project Coordinato	83029.49	f	Quality Assurance	58549
Alzate Carlos Alberto	Engineering Project Manager	83003.99	f	Land Development	58550
Lyons Randall James	Accountant IV	83000.03	f	Finance Treasury	58551
Bromirski Jason Robert	Senior Engineer	82998.85	f	CLT Water Field Ops Admin	58552
Hastedt Matthew Glenn	Accountant IV	82990	f	Finance Treasury	58553
Cerrato Jr Robert Joseph	Data Analytics Specialist Lead	82975	f	Office of Data & Analytics	58554
Charneskie Jr Philip Ralph	Const Contracts Admin Coord Ld	82972.57	f	Procurement Services	58555
Hall Kyle Michael	Senior Engineer	82920.22	f	E&PM Storm Water Water Quality	58556
Fulghum Miles J	Plan Review Engineer	82791.55	f	EPM Land Development	58557
Brown Dietrich	Operations Supervisor	82673.82	f	Special Transportation Service	58558
Purvis Thomas R	Engineering Project Manager	82611.54	f	E&PM Storm Water	58559
Goodwin Alan L	Planning Coordinator	82605.71	f	Planning	58560
Downs Shawn Ohara	Business System Spec Sr	82595.79	f	CLT Water Business Sys (IT)	58561
Oliver Kimberly Yvonne	Administrative Officer I	46263	f	CLT Water Field Ops Admin	62674
Ellison Jr William L	Fire Captain	83934.33	f	Fire Station 36	58563
Proffitt Shawn H	Content Webmaster Supervisor	85475.65	f	CM-Corporate Comm & Marketing	58564
Dasch Alicia Renee	Strategy & Budget Analyst	82000	f	Strategy & Budget	58565
Carpenter Kimberly	Senior Engineer	84000	f	CLT Water Engineering-Admin	58566
Padgett Dennis	Labor Crew Chief II	46263	f	Special Transportation Service	62675
Everson John R	Fire Captain	83934.33	f	Fire Station 19	58568
Harrington Mikkola E	Technical Systems Specialist	85467.16	f	Computer Technology Solutions	58569
Mashburn Casey D	Engineering Project Manager	82000	f	Design	58570
Howard Eric L	Senior Engineer	84000	f	CLT Water Engineering-Admin	58571
Williams Mary Peed	Community Relations Manager	83982.67	f	CM- Community Relations	58572
Ryback Emily Copeland	Business System Spec Sr	83962.95	f	CLT Water Business Sys (IT)	58573
Wilson II James Paul	Water Quality Program Admin	83938.86	f	EPM Land Development	58574
King Jr David A	Fire Captain - Spec Assign	83934.4	f	Fire Training	58575
Welty John R	Fire Captain - Spec Assign	83934.4	f	Fire Training	58576
Adams Jr James H	Fire Captain	83934.33	f	Fire Station 7	58577
Peters Jr Mark	Heavy Equipment Srvc Tech Sr	46263	f	Fleet Mgmt-Louise Ave Shop	62676
Amann Jr Thomas Michael	Fire Captain	83934.33	f	Fire Station 24	58579
Arrington Dillard R.	Fire Captain	83934.33	f	Fire Station 27	58580
Ashe Christopher N	Fire Captain	83934.33	f	Fire Station 4	58581
Sherwood Patrick J	Heavy Equipment Srvc Tech Sr	46263	f	Facil - Fleet Maintenance	62677
Baldwin Maos R	Fire Captain	83934.33	f	Fire Station 40	58583
Barbee Guerry N	Fire Captain	83934.33	f	Fire Station 18	58584
Barnard III Edgar Calhoun	Fire Captain	83934.33	f	Fire Station 40	58585
Barr Brian E	Fire Captain	83934.33	f	Fire Station 15	58586
Terry Aaron Kevin	Labor Crew Chief II	46263	f	SWS Operations - South Corrido	62678
Bell Timothy S	Fire Captain	83934.33	f	Fire Station 21	58588
Belton Justin S	Fire Captain	83934.33	f	Fire Station 20	58589
Benson Jerry D	Fire Captain	83934.33	f	Fire Station 33	58590
Booth John S	Fire Captain	83934.33	f	Fire Station 33	58591
Bradey Christopher L	Fire Captain	83934.33	f	Fire Station 2	58593
Bradford Lane B.	Fire Captain	83934.33	f	Fire Station 21	58594
Brewer Thomas G	Fire Captain	83934.33	f	Fire Station 2	58595
Cahill Karla Renee	Administrative Officer I	46262.73	f	Planning	62679
Bright Jr Randy Lee	Fire Captain	83934.33	f	Fire Station 6	58597
Callaway Rachel Elaine	Administrative Officer I	46259.2	f	CLT Water Human Resources	62680
Brown Timothy D	Fire Captain	83934.33	f	Fire Station 16	58599
Bryson Robert Montgomery	Fire Captain	83934.33	f	Fire Station 26	58600
Budzinski Timothy F	Fire Captain	83934.33	f	Fire Station 1	58601
Bumgarner Jeremy P	Fire Captain	83934.33	f	Fire Station 36	58602
Chapman Michael B	Fire Captain	83934.33	f	Fire Station 23	58603
Cherry Ronald E	Fire Captain	83934.33	f	Fire Station 41	58604
Clumpner Michael D	Fire Captain	83934.33	f	Fire Station 27	58605
Taylor Tracy	Administrative Officer I	46256.39	f	CLT Water Locates	62681
Cooper Darrick D	Fire Captain	83934.33	f	Fire Station 35	58607
Couick Jonathan K	Fire Captain	83934.33	f	Fire Station 9	58608
Cox Michael David	Fire Captain	83934.33	f	Fire Station 40	58609
Cranford Christopher A	Fire Captain	83934.33	f	Fire Station 26	58610
Cranford Edward W	Fire Captain	83934.33	f	Fire Station 2	58611
Creed Ryan M.	Fire Captain	83934.33	f	Fire Station 1	58612
Knight Jerry D	Fire Captain	83934.33	f	Fire Station 23	58613
Kenley Sharneice Renee	Criminialist Trainee	46242.29	f	Crime Lab Division	62682
Falls Brian C	Fire Captain	83934.33	f	Fire Station 37	58615
Jones Adam Michael	Contracts Admin Coordinator	85323.45	f	Finance Procurement Management	58616
Mendez Anthony S.	Engineering Project Manager	82000	f	Design	58617
Farrell Vincent D.	Fire Captain	83934.33	f	Fire Station 33	58618
Weicken Duretta L.	Office Assistant V	46228.42	f	Bus General Management	62683
Mackey Nathaniel C	Fire Captain	83934.33	f	Fire Station 5	58620
Grant Clyde L	Human Resources Analyst	85303	f	Human Resources	58621
Benton Paul Thomas	Engineering Project Manager	81999.84	f	Design	58622
Fasanaro Kenneth C	Fire Captain	83934.33	f	Fire Station 23	58623
Maddox Jr Bobby T	Fire Captain	83934.33	f	Fire Station 12	58624
Castongia Steven Michael	GIS Supervisor	85278.45	f	Municipal Planning	58625
Abbott David A	Police Sergeant	81965.52	f	Providence Division	58626
Potts Marcus D	Mason	46198.33	f	Central District (Northpointe)	62684
Fincher III Luther L	Fire Captain	83934.33	f	Fire Station 11	58628
Matera Francis P	Fire Captain	83934.33	f	Fire Station 24	58629
Matthews Jeffrey S	Fire Captain	83934.33	f	Fire Station 16	58630
McClain Thomas G	Fire Captain	83934.33	f	Fire Station 40	58631
Stevenson Vanessa R	Office Assistant V	46180.49	f	Procurement Services	62685
McCraven Jamie L	Fire Captain	83934.33	f	Fire Station 31	58633
McGee Brian N	Fire Captain	83934.33	f	Fire Station 25	58634
Merriwether Douglas K	Fire Captain	83934.33	f	Fire Station 36	58635
Moses Kevin R	Fire Captain	83934.33	f	Fire Station 35	58636
Myers Jay C	Fire Captain	83934.33	f	Fire Station 16	58637
Nastase Jay E	Fire Captain	83934.33	f	Fire Station 27	58638
Newell Kevin D	Fire Captain	83934.33	f	Fire Station 28	58640
Nicholson Gregory L	Fire Captain	83934.33	f	Fire Station 2	58641
Osborne Ellen D	Fire Captain	83934.33	f	Fire Station 18	58642
Paramore Darwin E	Fire Captain	83934.33	f	Fire Station 35	58643
Parks Derek S	Fire Captain	83934.33	f	Fire Station 1	58644
Parks Shawn E	Fire Captain	83934.33	f	Fire Station 6	58645
Patterson Lance H	Fire Captain	83934.33	f	Fire Station 34	58646
Perry Scott A	Fire Captain	83934.33	f	Fire Station 29	58647
Petraske Denise C	Fire Captain	83934.33	f	Fire Station 14	58648
Phillips Justin R	Fire Captain	83934.33	f	Fire Station 22	58649
Poole Jeremy Davis	Fire Captain	83934.33	f	Fire Station 22	58650
Pope Ryan Scott	Fire Captain	83934.33	f	Fire Station 23	58651
Ransom Timothy Alan	Fire Captain	83934.33	f	Fire Station 17	58652
Ratchford Troy A	Fire Captain	83934.33	f	Fire Station 37	58653
Redden Jeffrey B	Fire Captain	83934.33	f	Fire Station 42	58654
Richards Steven B	Fire Captain	83934.33	f	Fire Station 33	58655
Richardson Travis D	Fire Captain	83934.33	f	Fire Station 1	58656
Robinette Timothy A	Fire Captain	83934.33	f	Fire Station 8	58657
Royall Shawn L	Fire Captain	83934.33	f	Fire Station 23	58658
Rufert Christopher S	Fire Captain	83934.33	f	Fire Station 29	58659
Rummage Adam P	Fire Captain	83934.33	f	Fire Station 26	58660
Sanburg William Brady	Fire Captain	83934.33	f	Fire Station 20	58661
Satterwhite Ty B	Fire Captain	83934.33	f	Fire Station 11	58662
Schellhase Cory L	Fire Captain	83934.33	f	Fire Station 4	58663
Shumate Kenneth Terence	Fire Captain	83934.33	f	Fire Station 24	58664
Simpson Andrew G	Fire Captain	83934.33	f	Fire Station 40	58665
Smith III Roy S	Fire Captain	83934.33	f	Fire Station 7	58666
Smith Jeffrey H	Fire Captain	83934.33	f	Fire Station 6	58667
Smith Jonah E	Fire Captain	83934.33	f	Fire Station 20	58668
Smith Mark B	Fire Captain	83934.33	f	Fire Station 34	58669
Bostian Jeffrey David	Fire Inspector Certified	62928.01	f	Fire Prevention	58670
Bhoware Monika	Bus Systems Spec Intrm	63176	f	CLT Water Business Sys (IT)	58671
Watts Marvin L	Fire Fighter II	62839.98	f	Fire Station 9	58672
Forbes Justin Arthur	Fire Fighter II	63872.28	f	Fire Station 10	58673
Ingold James Lewis	Fire Fighter II	63872.28	f	Fire Station 13	58674
Labrador Minervino Antonio	Fire Fighter II	63872.28	f	Fire Station 2	58675
Parks Cory Ryan	Fire Fighter II	63872.28	f	Fire Station 10	58676
Ranson Justin Trent	Fire Fighter II	63872.28	f	Fire Station 10	58677
Nabers Scott N	Fleet Specification Analyst	63865.85	f	Fleet Mgmt-CDC	58679
Holder Richard Conley	Field Operations Supervisor	63864.08	f	EPM Landscape Mgt	58680
Mobley Darwin J.	Field Operations Supervisor	63844.87	f	CLT Water Cust Service-Admin	58681
Denis Nancy Yabace	Engineering Contracts Speciali	63834.02	f	EPM Main Engineering	58682
Conroy George B	Construction Inspector Senior	63821.05	f	EPM Main Engineering	58683
Odem Mark William	Transportation Elect.Tech II L	63797.3	f	Transportation Systems	58684
Jones Thomas Edward	Administrative Officer III	63679.72	f	City Attorney	58685
Osborne Brandy Lankford	Fire Telecommunicator III	63667.54	f	Fire Communications	58686
Jenkins Gary R	Equipment Operator III	46141.86	f	North East District (Orr)	62686
Wrobleski Steven J	Utilities Planner Scheduler	63620.81	f	CLT Wat General Commerce Zone	58688
Keith Adam Milo	Management Analyst	63604.55	f	Real Time Crime Center	58689
Floyd Christi Chandler	Economic Development Spec Sr	63586.02	f	Economic Development-ADM	58690
Jackson Jerrianne Berry	Economic Development Spec Sr	63586.02	f	Economic Development-ADM	58691
Elder Cedric Clark	Construction Inspector Senior	63510.7	f	EPM Main Engineering	58692
Abron Audrey	Division Training Specialist	63500	f	CLT Water Human Resources	58693
Jones Sherri	Division Training Specialist	63500	f	CLT Water Human Resources	58694
Mendoza Dunia Marisol	Police Telecommun Supv	63483.33	f	Communications Division	58695
Runge Laura Mintz	Administrative Officer III	63474.06	f	CLT Water Business Office	58696
Karkoski Emily Kay	Police Telecommunicator	46141.86	f	Communications Division	62687
Osborne Jeffrey Gerald	Field Operations Supervisor	63441.81	f	Central District (Northpointe)	58698
Blaser Leslie Claire Keena	Public Info Specialist Senior	63424.81	f	Director's Office Combined	58699
Bhavnani Louise	Public Info Specialist Senior	63424.41	f	Charlotte Water Communications	58700
Robinson Erica D	Public Info Specialist Senior	63424.41	f	SWS Public Information	58701
Carson Marta Rosario	Code Enforcement Inspector	63419.4	f	Code Enforcement Combined	58702
Rice Michael	Plans Reviewer	63419.35	f	CLT Water Backflow Prevention	58703
Benner Gary L	Construction Inspector	63418.87	f	EPM Land Development	58704
Newson Rayn Az-Shel	Police Telecommunicator	46141.86	f	Communications Division	62688
Glover Michael A	Field Operations Supervisor	63400.81	f	Transportation Operations	58706
Cross Judson P	Contracts Admin Specialist	63363	f	Finance Procurement Management	58707
Brown Jacqueline Y D	Quality Assurance Analyst	63346.41	f	Quality Assurance	58708
Grier Jason Everett	Police Officer	64150.58	f	Westover Division	58709
Foster Jason W.	Fire Fighter Engineer	64411.11	f	Fire Station 18	58710
Cobb David William	Fire Inspector Certified	62928.01	f	Fire Prevention	58711
Hagler Zackery Thomas	Police Officer	64150.58	f	Armed Robbery/Sexual Assault D	58712
White Timothy E	Fire Fighter II	62839.98	f	Fire Station 40	58713
Franz Michael J	Fire Fighter Engineer	64411.11	f	Fire Station 26	58714
Conrad David Jason	Fire Inspector Certified	62928.01	f	Fire Prevention	58715
Hall Brad C	Police Officer	64150.58	f	Central Division	58716
Wieczorek Douglas G	Fire Fighter II	62839.98	f	Fire Station 27	58717
Harris Robert Bryant	Fire Fighter Engineer	64411.11	f	Fire Station 6	58718
Hendrick William D	Fire Fighter Engineer	64411.11	f	Fire Station 40	58719
Holmes Michael T	Fire Fighter Engineer	64411.11	f	Fire Station 42	58720
Hoover III John K	Fire Fighter Engineer	64411.11	f	Fire Station 2	58721
Jernigan Douglas L	Fire Fighter Engineer	64411.11	f	Fire Station 29	58722
King Jr Harry T	Fire Fighter Engineer	64411.11	f	Fire Station 18	58723
Laney Bryant E	Fire Fighter Engineer	64411.11	f	Fire Station 15	58724
Lathan David S	Fire Fighter Engineer	64411.11	f	Fire Station 29	58725
Love Walter R	Fire Fighter Engineer	64411.11	f	Fire Station 15	58726
Salanger Shauna L	Administrative Officer III	63134.89	f	EPM Land Development	58727
Dickson Ruth Tyler	Fire Inspector Certified	62928.01	f	Fire Prevention	58728
Dishno Don Alan	Fire Inspector Certified	62928.01	f	Fire Prevention	58729
Graham William Wesley	Fire Inspector Certified	62928.01	f	Fire Prevention	58730
Wood Brian K.	Fire Fighter II	62839.98	f	Fire Station 29	58731
Baker Troy L	Engineering Services Supv	62927.67	f	Traffic Safety	58732
Haulsee Jr David Monroe	Police Officer	64150.58	f	Westover Division	58733
Wright Thomas M	Fire Fighter II	62839.98	f	Fire Station 17	58734
Walker Alton Gerald	311 Contact Center Prog  Admin	62914.44	f	CharMeck 311	58735
Hefner Matthew Logan	Police Officer	64150.58	f	Violent Crime Division	58736
Hamilton Tammy Boswell	Engineering Contracts Speciali	62834.97	f	EPM Main Engineering	58737
Wimbush Ledredus Deon	N&BS Program Coordinator	62907.15	f	Community Wellness Division	58738
Henderson Robert Casey	Police Officer	64150.58	f	Hickory Grove Division	58739
Trotter Chris	Arborist	62833.75	f	E&PM Storm Water	58740
Donovan Sally A	Administrative Officer III	62863.74	f	CLT Water Field Ops Admin	58741
Holmes William B	Police Officer	64150.58	f	South Division	58742
Almond Jason G.	Fire Fighter II	62803.09	f	Fire Station 23	58743
Harrison Gregory M	Administrative Officer III	62863.74	f	CLT Water Cust Service-Admin	58744
Homan Michael J.	Police Officer	64150.58	f	University City Division	58745
Ashe Timothy Lynn	Fire Fighter Engineer	62803.09	f	Fire Station 22	58746
Stevenson Doug G	Fleet Specification Analyst	62847.26	f	Fleet Mgmt-Administration	58747
Hoppe James A.	Police Officer	64150.58	f	Recruiting Division	58748
Barringer Justin D	Fire Fighter II	62803.09	f	Fire Station 40	58749
Anderson James T	Fire Fighter Engineer	62840.1	f	Fire Station 1	58750
Hostutler Andrew J.	Police Officer	64150.58	f	Airport Law Enforcement Divisi	58751
Belcher Jonathan Benton	Fire Fighter II	62803.09	f	Fire Station 5	58752
Colbert Douglass Jyoji	Fire Fighter Engineer	62840.1	f	Fire Station 29	58753
Isenhour Shana Brooke	Police Officer	64150.58	f	Violent Crime Division	58754
Rosas Diane	Accounting Technician	44060.74	f	Finance Accounting	63029
Celetti Chad Nicholas	Fire Fighter II	62803.09	f	Fire Station 13	58755
Murray Justen T	Fire Fighter Engineer	62840.1	f	Fire Station 2	58756
Jaco Vargas Jr Miguel Angel	Police Officer	64150.58	f	Real Time Crime Center	58757
Davis Matthew Justin	Fire Fighter II	62803.09	f	Fire Station 23	58758
Newman John Roland	Fire Fighter Engineer	62840.1	f	Fire Station 26	58759
Johnson Adrian Emanuel	Police Officer	64150.58	f	Community Engagement	58760
Filliben John Michael	Fire Fighter II	62803.09	f	Fire Station 32	58761
Tobias W Adam	Fire Fighter Engineer	62840.1	f	Fire Station 23	58762
Kimble Brandon Dale	Police Officer	64150.58	f	Providence Division	58763
Koll Brian Scott	Police Officer	64150.58	f	Violent Crime Division	58764
Kowaleski Ryan Lee	Police Officer	64150.58	f	North Division	58765
Kurcsak Brian E	Police Officer	64150.58	f	North Division	58766
Leung Danny K.	Police Officer	64150.58	f	Motorcycle & Reconstruction Un	58767
Lombardo Peter Michael	Police Officer	64150.58	f	Eastway Division	58768
Lovell Kevin Christopher	Police Officer	64150.58	f	Providence Division	58769
Monroe Lakia Chamaine	Police Officer	64150.58	f	Metro Division	58770
Murphy Kelly Marie	Police Officer	64150.58	f	Armed Robbery/Sexual Assault D	58771
Pack Franchot Raphael	Police Officer	64150.58	f	Violent Crime Division	58772
Parker Jenna Aileen	Police Officer	64150.58	f	Eastway Division	58773
Parnell Zachary William	Police Officer	64150.58	f	South Division	58774
Pearson Brian G	Police Officer	64150.58	f	Violent Crime Division	58775
Poplin Jonathan M	Police Officer	64150.58	f	Eastway Division	58776
Rahal Lucas J	Police Officer	64150.58	f	North Division	58777
Reibold Jr John B	Police Officer	64150.58	f	Motorcycle & Reconstruction Un	58778
Reno Anthony John	Police Officer	64150.58	f	Special Victims Division	58779
Richter Marc T	Police Officer	64150.58	f	Freedom Division	58780
Tucker Jacqueline	Special Transportn Dispatcher	46141.86	f	Special Transportation Service	62689
Shields Ryan E	Police Officer	64150.58	f	Canine Unit	58782
Skipper Caleb Chandler	Police Officer	64150.58	f	Metro Division	58783
Todd Stephen J	Police Officer	64150.58	f	Armed Robbery/Sexual Assault D	58784
Turner Marquis R	Police Officer	64150.58	f	Independence Division	58785
Wallin Jessica Ann	Police Officer	64150.58	f	Public Affairs	58786
Brady Zachary Michael	Division Training Specialist	63131.48	f	CLT Water Human Resources	58787
Tucker Jeremy Clement	Fire Fighter Engineer	62840.1	f	Fire Station 24	58788
Wood Stephen L.	Division Training Specialist	63131.48	f	CLT Water Human Resources	58789
Adams Jr Earl L	Fire Fighter II	62839.98	f	Fire Station 41	58790
Freeman Philip W	Division Training Specialist	63131	f	Community Engage Combined	58791
Alexander Roger S.	Fire Fighter II	62839.98	f	Fire Station 25	58792
Clark Ryan J	Police Officer	63093.63	f	Steele Creek Division	58793
Alwran Shawn Layne	Fire Fighter II	62839.98	f	Fire Station 39	58794
Healy Sean P	Police Officer	63093.63	f	Metro Division	58795
Forsythe Jr Otis Glenn	Fire Fighter II	62803.09	f	Fire Station 25	58796
Armstrong Darrell K	Fire Fighter II	62839.98	f	Fire Station 31	58797
Hurley Keith	Police Officer	63093.63	f	Freedom Division	58798
Hall III Clayton Lonnie	Fire Fighter II	62803.09	f	Fire Station 28	58799
Beman Jr Kenneth V	Fire Fighter II	62839.98	f	Fire Station 24	58800
Koonce Marrero David	Police Officer	63093.63	f	Independence Division	58801
Harris Jr Jerry Alexander	Fire Fighter II	62803.09	f	Fire Station 32	58802
Bumgardner Charlie A.	Fire Fighter II	62839.98	f	Fire Station 37	58803
McFry Louis William	Police Officer	63093.63	f	Eastway Division	58804
Hefner Houston Daniel	Fire Fighter II	62803.09	f	Fire Station 34	58805
Clark Jeffrey D	Fire Fighter II	62839.98	f	Fire Station 17	58806
Neal Sr Adam Charlie	Police Officer	63093.63	f	North Division	58807
Holland William L	Fire Fighter II	62803.09	f	Fire Station 16	58808
Curtis Jr Fred W	Fire Fighter II	62839.98	f	Fire Station 42	58809
Pupo Rodrigo E.	Police Officer	63093.63	f	Steele Creek Division	58810
Jones Jeremy Dean	Fire Fighter Engineer	62803.09	f	Fire Station 28	58811
Jordan Greggory Jon	Fire Fighter Engineer	62803.09	f	Fire Station 1	58812
Justice William Kyle	Fire Fighter Engineer	62803.09	f	Fire Station 4	58813
Lopez James	Fire Fighter Engineer	62803.09	f	Fire Station 26	58814
McCord Christopher Howard	Fire Fighter II	62803.09	f	Fire Station 8	58815
McCormac Douglas Edward	Fire Fighter II	62803.09	f	Fire Station 20	58816
Minton Travis A	Fire Fighter II	62803.09	f	Fire Station 21	58817
Nevins Corey Raymond	Fire Fighter II	62803.09	f	Fire Station 1	58818
Parks Paul L R	Fire Fighter II	62803.09	f	Fire Station 10	58819
Pearson Todd R	Fire Fighter II	62803.09	f	Fire Station 17	58820
Seymour Michael D	Fire Fighter II	62803.09	f	Fire Station 11	58821
Shank Joshua F	Fire Fighter II	62803.09	f	Fire Station 33	58822
Ward Tyler D.	Fire Fighter II	62803.09	f	Fire Station 23	58823
Humphreys Jason E.	Police Officer	62802.48	f	Hickory Grove Division	58824
McNeil Roman Gary	Police Officer	62802.48	f	Providence Division	58825
Weeden Jeremy R.	Administrative Officer III	62775.46	f	EPM Main Engineering	58826
Peeters Jacobus Lee	ITS Program Coordinator	62770	f	Implementation	58827
Baucom Kevin Ray	Police Officer	62765.5	f	Independence Division	58828
Campos Jose Luis	Police Officer	62765.5	f	Eastway Division	58829
Carter Jacqueline A	Police Officer	62765.5	f	Violent Crime Division	58830
Gerald Timothy B	Police Officer	74848.55	f	Independence Division	63488
Davies Justin Michael	Police Officer	62765.5	f	Non-Emergency Police Services	58832
Davis Anthony	Fire Fighter II	62839.98	f	Fire Station 40	58833
Dellinger Scott L	Fire Fighter II	62839.98	f	Fire Station 19	58834
Eury Rodney C	Fire Fighter II	62839.98	f	Fire Station 23	58835
Garlick Glen A.	Fire Fighter II	62839.98	f	Fire Station 23	58836
George Dana F	Fire Fighter II	62839.98	f	Fire Station 41	58837
Green David S	Fire Fighter II	62839.98	f	Fire Station 16	58838
Greene Christopher D	Fire Fighter II	62839.98	f	Fire Station 34	58839
Greene James R	Fire Fighter II	62839.98	f	Fire Station 42	58840
Grigston Ronald M	Fire Fighter II	62839.98	f	Fire Station 29	58841
Hager Jeffery C	Fire Fighter II	62839.98	f	Fire Station 18	58842
Holmes George C	Fire Fighter II	62839.98	f	Fire Station 12	58843
Hoyte Jr Eric C	Fire Fighter II	62839.98	f	Fire Station 14	58844
Hromada Jeremy M	Fire Fighter II	62839.98	f	Fire Station 9	58845
Jones Derrick L	Fire Fighter II	62839.98	f	Fire Station 34	58846
Kimrey Philip S	Fire Fighter II	62839.98	f	Fire Station 41	58847
Martin Jr Henry D	Fire Fighter II	62839.98	f	Fire Station 36	58848
Maynor Carlton G	Fire Fighter II	62839.98	f	Fire Station 18	58849
Ritter Jr Gary Franklin	Police Officer	63093.63	f	Hickory Grove Division	58850
Schieb Christopher M	Police Officer	63093.63	f	North Tryon Division	58851
Settlemyre Timothy S	Management Analyst	63072.9	f	Fleet Mgmt-Administration	58852
Huffman Peggy M.	MCC Support Specialist	63067	f	CM-Constituent Services	58853
Lo Furno Robin Lynne	Administrative Officer II	63067	f	CM-Constituent Services	58854
Xiong Casey	Police Officer	63004.58	f	Hickory Grove Division	58855
Shaw Charles F	Field Operations Supervisor	62978.14	f	Central District (Northpointe)	58856
Thomas Shaunne Nicole	Contracts Admin Specialist	62976	f	Finance Procurement Management	58857
Abramo Timothy M	Police Officer	62966.92	f	North Tryon Division	58858
Amos Luke E	Police Officer	62966.92	f	Metro Division	58859
Barnett Peggy Robinson	Police Officer	62966.92	f	Hickory Grove Division	58860
Burcham Glen Vincent	Police Officer	62966.92	f	Central Division	58861
Clyburn Jacqueline S	Police Officer	62966.92	f	Independence Division	58862
Davis Jr Calvin Kennedy	Police Officer	62966.92	f	Metro Division	58863
Frank Jessica Dawn	Police Officer	62966.92	f	Westover Division	58864
Hann Benjamin David	Police Officer	62966.92	f	University City Division	58865
Hosea James Anthony	Police Officer	62966.92	f	University City Division	58866
juhasz john michael	Police Officer	62966.92	f	University City Division	58867
Keele Andrew William	Police Officer	62966.92	f	Independence Division	58868
Kent Kyle Edward	Police Officer	62966.92	f	Freedom Division	58869
Levins Edward Brent	Police Officer	62966.92	f	Hickory Grove Division	58870
Meadows Timothy Mark	Police Officer	62966.92	f	Eastway Division	58871
Nicholas Jonathan E	Police Officer	62966.92	f	Eastway Division	58872
Palomba Nicholas Austin	Police Officer	62966.92	f	South Division	58873
Pate Jacob Turner	Police Officer	62966.92	f	North Division	58874
Rawls Samuel McLeod	Police Officer	62966.92	f	Hickory Grove Division	58875
Miller Mallory Rae	Police Officer	61607.71	f	Steele Creek Division	58876
Mullis David Gregory	Police Officer	61607.71	f	Independence Division	58877
Nunez Rene	Police Officer	61607.71	f	Eastway Division	58878
Porter Jeffrey Kemp	Police Officer	61607.71	f	Freedom Division	58879
Rodriguez Joaquin	Police Officer	61607.71	f	North Tryon Division	58880
Schaper Chris A	Police Officer	61607.71	f	North Division	58881
Sommerville Arthur Adam	Police Officer	61607.71	f	Central Division	58882
Spizzo Jonathan Patrick	Police Officer	61607.71	f	Westover Division	58883
Woolcock Kevin Lloyd	Police Officer	61607.71	f	University City Division	58884
Maben-Collins Edrina Yvette	Construction Inspector Senior	61596.9	f	E&PM Storm Water	58885
Crockett Leslie Eugene	Sanitation Equip Operator Sr	46140.8	f	SWS Operations - Garbage Colle	62690
Hobbs Thomas Jason	Heavy Equipment Srvc EVT Ld	61596.74	f	Fleet Mgmt-Sweden Rd Shop	58887
Richmond Vanessa Lynn	Airport Operations Supvr I	61596.73	f	Oper - Landside/Grd Trans	58888
Ross Tony Mitchell	Sanitation Equip Operator Sr	46140.8	f	SWS Operations - Garbage Colle	62691
Hubbard Jason A.	Construction Inspector Senior	61565.32	f	North East District (Orr)	58890
Sanders Eric Scott	Storekeeper Senior	46125.5	f	Facil - Logistics	62692
Hankins Donnell P	Construction Inspector Senior	61565.15	f	SouthWest District (Sweden)	58892
Pearce Kathryne H	Planning/Design Engineer	61561.74	f	EPM Landscape Mgt	58893
Robertson Kelly	Plans Reviewer	61552.56	f	EPM Land Development	58894
Botzko Heather Lyn	Construction Inspector Senior	61536.2	f	E&PM Storm Water	58895
Beachum Bryant Davis	Systems Maint Mechanic Sr	61527.63	f	EPM BS Spratt	58896
Hathcock Karla E	Claims Representative-Senior	61527	f	Risk Management	58897
Mockovciak Michael John	Claims Representative-Senior	61527	f	Risk Management	58898
Bird David G	Construction Inspector	61512.45	f	E&PM Storm Water	58899
Deans Sarah Kay	Construction Inspector	61512.45	f	E&PM Storm Water	58900
McVay Sr Frederick Antonio	Sanitation Equip Operator Sr	46075.91	f	SWS Operations - Garbage Colle	62693
Marrs III Eugene Clarence	Heavy Equipment Srvc Tech Mstr	61465.33	f	Fleet Mgmt-Louise Ave Shop	58902
Swann Steve M	Construction Inspector	61444.89	f	CLT Water Engineering-Admin	58903
Wray Terry L	Field Operations Supervisor	61423.11	f	Oper - Landside/Grd Trans	58904
Hill Jeremy W.	Construction Inspector Senior	61414.42	f	Central District (Northpointe)	58905
Barnes Charles T.	Administrative Officer III	61329.03	f	Administration	58906
Butler Terry Sean	Fire Fighter II	61307.3	f	Fire Station 36	58907
Hartsoe Matthew Wade	Fire Fighter Engineer	61307.3	f	Fire Station 11	58908
Herrera Michael M	Fire Fighter Engineer	61307.3	f	Fire Station 1	58909
Hoover Roger Eugene	Fire Fighter II	61307.3	f	Fire Station 18	58910
Johnston Joshua Daniel	Fire Fighter II	61307.3	f	Fire Station 15	58911
Tran Lam Tan	Fire Fighter II	61307.3	f	Fire Station 27	58912
Nwokocha Ifeanyi Don	Airport Operations Supvr I	61293.41	f	Oper - Landside/Grd Trans	58913
Brodzinski Brad Bryn	Fire Fighter II	61271.09	f	Fire Station 26	58914
Campbell Brian James	Fire Fighter II	61271.09	f	Fire Station 24	58915
Ewart Harrison B	Fire Fighter II	61271.09	f	Fire Station 2	58916
Givens David Andrew	Fire Fighter II	61271.09	f	Fire Station 12	58917
Grant Jr David	Fire Fighter II	61271.09	f	Fire Station 17	58918
Hudson Jamil S	Fire Fighter II	61271.09	f	Fire Station 11	58919
Jones Nathan Michael	Fire Fighter II	61271.09	f	Fire Station 15	58920
Kauer Steven T.	Fire Fighter II	61271.09	f	Fire Station 15	58921
Lindroth Todd A	Fire Fighter II	61271.09	f	Fire Station 8	58922
Rabeau Christopher Lawrence	Fire Fighter II	61271.09	f	Fire Station 23	58923
Sikes Brett C	Fire Fighter II	61271.09	f	Fire Station 23	58924
Stansberry James Kurtis	Fire Fighter II	61271.09	f	Fire Station 1	58925
Yow Thomas E	Fire Fighter II	61271.09	f	Fire Station 3	58926
Brown Stephen Gregory	Police Officer	61270.51	f	Airport Law Enforcement Divisi	58927
Burcham Susan M	Police Officer	61270.51	f	University City Division	58928
Bush Nicholas S.	Police Officer	61270.51	f	Motorcycle & Reconstruction Un	58929
Ferguson Brandon Len	Police Officer	61270.51	f	Airport Law Enforcement Divisi	58930
Logan Jr David L	Police Officer	61270.51	f	University City Division	58931
Meadows Darrell R	Police Officer	61270.51	f	North Division	58932
Mohammad Shabeer	Police Officer	61270.51	f	Westover Division	58933
Smereka Anthony Robert	Police Officer	61270.51	f	Hickory Grove Division	58934
Svancarek Scott Robert	Police Officer	61270.51	f	Aviation Unit	58935
Crum Nathan J	Police Officer	61234.65	f	Motorcycle & Reconstruction Un	58936
Dollar Joseph M	Police Officer	61234.65	f	Violent Crime Division	58937
Holmes Grant L	Police Officer	61234.65	f	Central Division	58938
Kiefer Timothy R	Police Officer	61234.65	f	Canine Unit	58939
Kupfer Justin James	Police Officer	61234.65	f	Special Events	58940
Porter Jason M	Police Officer	61234.65	f	Central Division	58941
Roberts Diana Guadalupe	Police Officer	61234.65	f	Special Victims Division	58942
Storc Michael R	Police Officer	61234.65	f	Independence Division	58943
Walters Amanda Cater	Police Officer	61234.65	f	Motorcycle & Reconstruction Un	58944
Wilson Matthew Ryan	Police Officer	61234.65	f	Freedom Division	58945
Burwell Tammy A.	Police Telecommunicator	46027.86	f	Communications Division	62694
Belcher Yashica	Administrative Officer III	61230	f	Revenues	58947
Roosen Steven G	Construction Inspector	61212.13	f	CLT Water Engineering-Admin	58948
Fisher Steven D	Content Webmaster	61200.2	f	CM-Corporate Comm & Marketing	58949
Yerkes Kelli M	Management Analyst	61198.83	f	Field Services Group North - A	58950
Lange Christopher Adam	Administrative Officer II	61102	f	Development NE Corridor	58951
Auten Kevin Jamison	Fire Fighter II	61095.22	f	Fire Station 18	58952
Bingler Richard Scott	Fire Fighter II	61095.22	f	Fire Station 1	58953
Brake Adam Tyler	Fire Fighter II	61095.22	f	Fire Station 11	58954
Calloway Se'Drekus Antoine	Fire Fighter II	61095.22	f	Fire Station 30	58955
Carow Matthew Steven	Fire Fighter II	61095.22	f	Fire Station 4	58956
Clark Matthew Alan	Fire Fighter II	61095.22	f	Fire Station 6	58957
Davis Nicholas Eugene	Fire Fighter II	61095.22	f	Fire Station 1	58958
Eland Drew M	Fire Fighter II	61095.22	f	Fire Station 6	58959
Floyd Jr Wiley Benjamin	Fire Fighter II	61095.22	f	Fire Station 2	58960
Hester Ryan Lee	Fire Fighter II	61095.22	f	Fire Station 1	58961
Jonas Corey Neal	Fire Fighter II	61095.22	f	Fire Station 13	58962
Kloefkorn Grant James	Fire Fighter II	61095.22	f	Fire Station 20	58963
Landrum Senterrio Mandriel	Fire Fighter II	61095.22	f	Fire Station 8	58964
Long Jeffrey Darrell	Fire Fighter II	61095.22	f	Fire Station 32	58965
Marks Lucas Spencer	Fire Fighter II	61095.22	f	Fire Station 18	58966
Morris Christopher Paul	Fire Fighter II	61095.22	f	Fire Station 22	58967
Niswander Levi Allan	Fire Fighter II	61095.22	f	Fire Station 1	58968
Nunez Moises Miguel	Fire Fighter II	61095.22	f	Fire Station 17	58969
Reynolds Dustin Eric	Fire Fighter II	61095.22	f	Fire Station 27	58970
Tuttle Maurice Malcom-Tramine	Fire Fighter II	61095.22	f	Fire Station 8	58971
Worrell II Thomas Jeffrey	Fire Fighter II	61095.22	f	Fire Station 9	58972
Schaffer III Theopelis L.	N&BS Program Coordinator	61074.9	f	Community Wellness Division	58973
Banham Phillip Richard	Police Officer	61058.83	f	North Tryon Division	58974
Childers Keelan Michael	Police Officer	61058.83	f	Violent Crime Division	58975
Collins Rebecca Elizabeth	Police Officer	61058.83	f	Violent Crime Division	58976
Echols Antonio Tremaine	Police Officer	61058.83	f	Violent Crime Division	58977
Gorrod Amanda Michelle	Police Officer	61058.83	f	Airport Law Enforcement Divisi	58978
Johnston Roderick William	Police Officer	61058.83	f	Hickory Grove Division	58979
Lucas Daniel Joseph	Police Officer	61058.83	f	Metro Division	58980
Nichol Cynthia Tomlinson	Police Telecommunicator	46027.86	f	Communications Division	62695
Lee Franklin J Barfield	Field Operations Supervisor	62026.37	f	CLT Water West Tyvola Zone	58982
Ennis Felicia Suzanne	Police Officer	60089.17	f	Providence Division	58983
Maier Stephen Thomas	Police Officer	61058.83	f	Eastway Division	58984
Green Damon E	Police Officer	60452.01	f	School Resources Officers	58985
Morton Jesse J	Police Officer	62765.5	f	Central Division	58986
Crawford Eric G	Police Officer	62585.61	f	Secondary Employment	58987
Balose Kecia S 	Engineering Contracts Speciali	60451.72	f	EPM Main Engineering	58988
Gail Trevor Mychael	Police Officer	62585.61	f	Real Time Crime Center	58989
Miller Kelvin Lorenzo	Field Operations Supervisor	62026.37	f	CLT Water Cust Service-Admin	58990
Miranda Christopher Peter	Police Officer	61058.83	f	Metro Division	58991
Pomeroy Brittany Michelle	Accountant II	60446.82	f	Administration Division	58992
Skelly Kristopher M	Police Officer	62765.5	f	Westover Division	58993
Goode III Wayne Wilbourne	Police Officer	62585.61	f	Metro Division	58994
Manning David Lydell	Sanitation Equip Operator Sr	46027.33	f	SWS Operations - Garbage Colle	62696
Williams Edric Raheem	Field Operations Supervisor	62026.36	f	CLT Water Huntersville Zone	58996
Morris Bradley Michael	Police Officer	61058.83	f	North Division	58997
Miller William Harry	Construction Inspector	60399.41	f	Dev - Executive	58998
Crump Jeannine	Administrative Officer III	62740.08	f	City Clerk	58999
Fontaine William L	Police Officer	60089.17	f	Steele Creek Division	59000
Harrington Brendan Dooley	Police Officer	62585.61	f	University City Division	59001
Barnes Anita	Rail Controller	62000	f	Light Rail Operations	59002
Sheffield Shon Paul	Police Officer	61058.83	f	Metro Division	59003
Bock Jeff M	Erosion Control Coordinator	60399.32	f	EPM Land Development	59004
Bowman Gary R	Construction Inspector	60399.32	f	CLT Field Ops-Pipeline Rehab	59005
Hall Ronald	Construction Inspector	60399.32	f	CLT Water Eng-Install & Dev	59006
Harper Joe L.	Construction Inspector	60399.32	f	EPM Main Engineering	59007
Hodges Virginia Rae	Erosion Control Coordinator	60399.32	f	EPM Land Development	59008
Hodges William D	Construction Inspector	60399.32	f	Utility Permitting	59009
Klyn Klaas J	Construction Inspector	60399.32	f	CLT Field Ops-Pipeline Rehab	59010
Shums Zafar S	Code Enforcement Inspector	60399.32	f	Code Enforcement Combined	59011
Russell Christie DuBose	Fire Inspector	60396.15	f	Fire Investigations/Education	59012
Brown Rebecca Sue	Facilities Services Coordinato	60349.72	f	Fire Administration	59013
Gunter Chad E.	Construction Inspector	60280.57	f	E&PM Storm Water	59014
Murrell Donna S.	Community Relations Spec	60277.36	f	CM- Community Relations	59015
Carmichael Jr Melvin	Sanitation Equipment Operator	46027.14	f	SWS Operations - Yard Waste Co	62697
Griffin Mark J.	Code Enforcement Inspector	60250.48	f	Plan Reviewers	59017
Karner James P	Graphic Artist	60250.48	f	Public & Community Relations	59018
McCauley Iris	Administrative Officer II	60242.39	f	HR/CR	59019
Smith Asia D.	Administrative Officer II	46000	f	Community Engagement	62698
Massie JC	WW Treatment Plant Op IV Sr	60227.5	f	CLT Water Sugar Creek Plant	59021
Bain Nicole Woodell	Police Telecommunicator	45964	f	Communications Division	62699
Dishman Brian Mack	WW Treatment Plant Op IV Sr	60227.26	f	CLT Water McDowell Creek Plant	59023
Phifer Chad Derrick	Construction Inspector Senior	60227.26	f	E&PM Storm Water	59024
McLarty Marc J	WW Treatment Plant Op IV Sr	60227.24	f	CLT Water Sugar Creek Plant	59025
Jackson Pravis D	Field Operations Supervisor	60220.16	f	CLT Wat General Commerce Zone	59026
Barber Jr James	Sanitation Team Leader	45963.99	f	SWS Safety	62700
Drakeford Reginald G.	Field Operations Supervisor	60219.77	f	CLT Water Locates	59028
Ouzts Tracy Lynn	Contracts Admin Specialist	60194	f	Facil - Building Maintenance	59029
Kilgo Bret M	Construction Inspector Senior	60187.15	f	Utility Permitting	59030
Phillips Shawn P	Transportation Analyst	60181.79	f	Design	59031
Watson Terrence E.	Administrative Officer II	60175.19	f	HR/CR	59032
Anderson Tiffany Sue	Police Officer	60104.78	f	University City Division	59033
Cottingham Matthew Ryan	Police Officer	60104.78	f	North Division	59034
Darden Charles Taylor	Police Officer	60104.78	f	North Division	59035
Dossett Jeremiah Nicholas	Police Officer	60104.78	f	Hickory Grove Division	59036
Fox Jesse Lee	Police Officer	60104.78	f	Westover Division	59037
Gallant Jr Douglas Edward	Police Officer	60104.78	f	North Tryon Division	59038
Garmon Jamie	Police Officer	60104.78	f	North Division	59039
Griffin John Lee	Police Officer	60104.78	f	Westover Division	59040
Guerra David Jeremy	Police Officer	60104.78	f	North Tryon Division	59041
Jones Daniel Cody	Police Officer	60104.78	f	Providence Division	59042
Miles Michael Jonathan	Police Officer	60104.78	f	Freedom Division	59043
Thompson Samantha Michele	Police Officer	60104.78	f	South Division	59044
Walker Bryan Scott	Police Officer	60104.78	f	Providence Division	59045
Matthews Jr Joseph A	Heavy Equipment Srvc Tech Ld	60100.48	f	Fleet Mgmt-Sweden Rd Shop	59046
Barringer Adam J	Police Officer	60089.17	f	Hickory Grove Division	59047
Blue Prince F. J. T.	Police Officer	60089.17	f	North Tryon Division	59048
Cantara Steven Gerard	Police Officer	60089.17	f	North Tryon Division	59049
Chomicki Robert S	Police Officer	60089.17	f	Independence Division	59050
Cooper Johnathan L	Police Officer	60089.17	f	Central Division	59051
Costner Matthew C	Police Officer	60089.17	f	Westover Division	59052
Downs Benjamin R.	Police Officer	60089.17	f	Independence Division	59053
Hibbler Michael Jamaal	Police Officer	62585.61	f	Special Victims Division	59054
Hysi Erion	Police Officer	62585.61	f	Providence Division	59055
Grant Chris Jared	Police Officer	60089.17	f	Metro Division	59056
Douglas Essence U.	Rail Controller	62000	f	Light Rail Operations	59057
James Miranda Wynn	Police Officer	62585.61	f	Violent Crime Division	59058
Keziah Michael Dean	Police Officer	60089.17	f	Hickory Grove Division	59059
Stafford Kevin Daniel	Police Officer	61058.83	f	Real Time Crime Center	59060
Land Robert Allen	Police Officer	60089.17	f	Independence Division	59061
Sanburg Erin Elizabeth	Contracts Admin Specialist Ld	62729.06	f	BO-Commercial Svcs/Pass	59062
Thompson Adam Tyler	Police Officer	61058.83	f	Independence Division	59063
Jordan Patricia Joanne	Internal Auditor	62000	f	City Mgr - Internal Audit	59064
Miller Brandon Prentice	Police Officer	60089.17	f	Public Affairs	59065
Bowers Mark Cameron	Police Officer	62694.52	f	Hickory Grove Division	59066
Jean-Paul Appolon	Police Officer	62585.61	f	Freedom Division	59067
Tran-Thompson Erik Michael	Police Officer	61058.83	f	Independence Division	59068
Kibala Herve H	Planning/Design Engineer	62000	f	EPM Main Engineering	59069
Mintz Thomas N	Police Officer	60089.17	f	Airport Law Enforcement Divisi	59070
Burnett Robert Knox	Police Officer	62694.52	f	Eastway Division	59071
Moore Jarrid Christopher	Police Officer	62585.61	f	North Tryon Division	59072
Bass Edward A	Administrative Officer III	61058.11	f	Finance Office Firefighters Re	59073
Williams Candace H	Fire Telecommunicator I Lead	45963.99	f	Fire Communications	62701
Lewis IV Frank Edward	Rail Controller	62000	f	CityLYNX	59075
Payne III Orville Edward	Police Officer	60089.17	f	Westover Division	59076
Garcia Joseph Alexander	Police Officer	62694.52	f	North Tryon Division	59077
Ockerman Tyler Steven	Police Officer	62585.61	f	Special Victims Division	59078
Boenisch Jeffrey S	Engineering Services Supv	61039.77	f	Utility Permitting	59079
Miles Michael	Rail Controller	62000	f	Light Rail Operations	59080
Perry Kenneth D	Police Officer	60089.17	f	South Division	59081
Guiler Lawrence Edwin	Police Officer	62694.52	f	Providence Division	59082
Paige III Frederick Roosevelt	Police Officer	62585.61	f	University City Division	59083
Burch Amanda A	MCC Support Specialist	61033.01	f	CM-Constituent Services	59084
Pelham Michael	Rail Controller	62000	f	Light Rail Operations	59085
Price Mark Roger	Police Officer	60089.17	f	Freedom Division	59086
Rollins Joshua Adam	Police Officer	62694.52	f	Central Division	59087
Rangolan Peter G. O.	Police Officer	62585.61	f	Eastway Division	59088
Smith Pamela B	Administrative Officer III	61032.76	f	Transportation Operations	59089
Davenport Brian Kenneth	Fire Inspector Certified	61999.25	f	Fire Prevention	59090
Skipper Joshua Campbell	Police Officer	60089.17	f	Eastway Division	59091
Johnson Holly Forbes	Fire Fighter I	45666.84	f	Fire Station 17	62702
Austin Douglas W	Light Equipment Srvc Tech Mstr	62669.92	f	Fleet Mgmt-Atando Ave Shop	59093
Regan Michael Troy	Police Officer	62585.61	f	Westover Division	59094
Perry Adam William	Administrative Officer III	61032.75	f	Fleet Mgmt-Administration	59095
Bolin Christopher Scott	Drainage Specialist	61998.03	f	E&PM Storm Water	59096
Slauter Benjamin J	Police Officer	60089.17	f	Central Division	59097
Potts Raymond Edwards	Equipment Operator III	47790.71	f	Central District (Northpointe)	62703
Willis Michael Buford	Field Operations Supervisor	62628.8	f	CLT Water Matthews Zone	59099
Schneider Eric Paul	Police Officer	62585.61	f	University City Division	59100
Siler Alison Lea	Administrative Officer III	61032.65	f	Admin - Administrative Service	59101
Bost Johnny	HVAC Technician Senior	61998.03	f	EPM BS CMGC	59102
Starnes Angela Dawn	Police Officer	60089.17	f	Airport Law Enforcement Divisi	59103
Suddreth Chase Ryan	Police Officer	60089.17	f	Metro Division	59104
Sullivan Wayne Cornelius	Police Officer	60089.17	f	Freedom Division	59105
Vang Dao	Police Officer	60089.17	f	University City Division	59106
Watkins Anthony Jerome	Police Officer	60089.17	f	Airport Law Enforcement Divisi	59107
Wilson Adam N	Police Officer	60089.17	f	North Division	59108
Womack Terrain Emanuel	Police Officer	60089.17	f	Providence Division	59109
Griffith Jason K	Construction Inspector	60085.81	f	CLT Water Engineering-Admin	59110
Edwards David William	Labor Crew Chief II	46264.31	f	EPM Landscape Mgt	62704
McBride John W	Water Chf Treatment Plant Op	60079.88	f	CLT Water Franklin Plant	59112
Butler Michael Patrick	WW Treatment Plant Op IV Sr	60079.47	f	CLT Water McAlpine Creek Plant	59113
Cunningham Beth	WW Treatment Plant Op IV Sr	60079.47	f	CLT Water McDowell Creek Plant	59114
Graham Katie A	WW Treatment Plant Op IV Sr	60079.47	f	CLT Water McDowell Creek Plant	59115
McConnell Jr Robert Glenn	WW Treatment Plant Op IV Sr	60079.47	f	CLT Water McAlpine Creek Plant	59116
Palmer James Laffenus	Airport Shuttlebus Dispatcher	47788.56	f	Oper - Landside/Grd Trans	62705
McIntyre Michael D.	WW Treatment Plant Op IV Sr	60079.47	f	CLT Water Mallard Creek Plant	59118
Smith Terrell Reid	WW Treatment Plant Op IV Sr	60079.47	f	CLT Water McAlpine Creek Plant	59119
Wallace April Darlene	Code Enforcement Inspector Ld	60079.47	f	Planning	59120
Williams William McKenzie	WW Treatment Plant Op IV Sr	60079.47	f	CLT Water Mallard Creek Plant	59121
Ramsey Cheryl D.	Internal Auditor	60000.2	f	City Mgr - Internal Audit	59122
Wilson Nichie	Administrative Officer III	60000.2	f	Community Engagement	59123
Miller Heather Lyn	Contracts Admin Specialist	60000	f	I&T Administration	59124
Stavros Nick	Graphic Artist Senior	60000	f	CM-Corporate Comm & Marketing	59125
Johnston Clayton William	Fire Fighter I	45666.84	f	Fire Station 29	62706
McEver Thomas E	Water Treatment Plant Opr A	59991.86	f	CLT Water Dukes WTP	59127
Campbell Amanda Marie	Police Officer	59968.67	f	Freedom Division	59128
Crisafulli Evan Patrick	Police Officer	59968.67	f	Westover Division	59129
Daigle Jordon Emory	Police Officer	59968.67	f	Freedom Division	59130
Dowell Samantha Christy	Police Officer	59968.67	f	University City Division	59131
Goode Jeremy Ramir	Police Officer	59968.67	f	Eastway Division	59132
Grew Patrick S	Police Officer	59968.67	f	Freedom Division	59133
Higa Jana Adnan	Police Officer	59968.67	f	Central Division	59134
Isaacs Jr Andrew Anthony	Police Officer	59968.67	f	Central Division	59135
Ivey Jordan Nathaniel	Police Officer	59968.67	f	Providence Division	59136
Johnson Jeremiah Robert	Police Officer	59968.67	f	Independence Division	59137
Krause Nicholas Richard Arnold	Police Officer	59968.67	f	Central Division	59138
Lee Johnny	Police Officer	59968.67	f	North Division	59139
McAlister Ashley Vanessa	Police Officer	59968.67	f	Hickory Grove Division	59140
McCraw Nathaniel Elliott	Police Officer	59968.67	f	Metro Division	59141
Milhazes Alex Anthony	Police Officer	59968.67	f	Hickory Grove Division	59142
Morgan Jr Michael Roberts	Police Officer	59968.67	f	Westover Division	59143
Sinnott Brandon Michael	Police Officer	62585.61	f	Metro Division	59144
Arango Mario Francisco	Fire Fighter II	62622.6	f	Fire Station 31	59145
Heller Karrie Ann	Fire Inspector Certified	61998.03	f	Fire Prevention	59146
Neal Terra G	Administrative Officer III	61032.6	f	CLT Water EMD Administration	59147
Sinnott Christian Michael	Police Officer	62585.61	f	Violent Crime Division	59148
Barfield Bryan Carlton	Fire Fighter II	62622.6	f	Fire Station 1	59149
Henderson Christopher Adam	HVAC Technician Senior	61998.03	f	Facil - Building Maintenance	59150
Conner Evan Lamar	Administrative Officer III	61032.6	f	Admin - Administrative Service	59151
Thompson Christopher	Police Officer	62585.61	f	North Division	59152
Battle Tremayne Deshawn	Fire Fighter II	62622.6	f	Fire Station 28	59153
May Diana H	Administrative Officer III	61032.6	f	BO-Commercial Svcs/Pass	59154
Johnson Joseph	HVAC Technician Senior	61998.03	f	EPM BS Spratt	59155
Vivas Richard	Police Officer	62585.61	f	Real Time Crime Center	59156
Blackmon Jr Reginald Valone	Fire Fighter II	62622.6	f	Fire Station 18	59157
Sanchez John	Administrative Officer III	61032.6	f	Financial Management	59158
Long Albert Ramon	Drainage Specialist	61998.03	f	E&PM Storm Water	59159
Wallace Cindy A	Police Officer	62585.61	f	Public Affairs	59160
Blumberg Joseph Brent	Fire Fighter II	62622.6	f	Fire Station 36	59161
Corner Marcia	Administrative Officer III	61032	f	CLT Water Cust Service-Admin	59162
Fulmore Silvester C	Training Specialist	61996.9	f	Light Rail Administration	59163
White Patrick Edward	Police Officer	62585.61	f	Independence Division	59164
Blumberg Robert P	Fire Fighter II	62622.6	f	Fire Station 27	59165
Love Frederica E	Administrative Officer II	61007.27	f	CLT Water Procurement	59166
Dixon Richard L	Field Operations Supervisor	61984.88	f	Light Rail Operations	59167
Whitley Elliott D	Police Officer	62585.61	f	Hickory Grove Division	59168
Boesmiller Mark Timothy	Fire Fighter II	62622.6	f	Fire Station 38	59169
Lavien Moses D	Transportation Elect. Tech II	60994.15	f	Transportation Systems	59170
Richardson Wanda A	Engineering Contracts Speciali	60956.34	f	EPM Main Engineering	59171
Ilnitskiy Veniamin (Ben)	Construction Inspector Senior	60912.79	f	E&PM Storm Water	59172
Hemly Brian T	Police Telecommun Supv	60887.49	f	Communications Division	59173
Bechtel Kristine E	Police Telecommun Supv	60876.12	f	Communications Division	59174
Prentice Joanna	Police Telecommun Supv	60875.92	f	Communications Division	59175
Stewart Jennifer Anne	Police Telecommun Supv	60875.52	f	Communications Division	59176
Fallie Margaret Denise	Administrative Officer I	46264.31	f	CLT Water Matthews Zone	62707
Nation Stephen E	Water Treatment Plant Opr A	60867.48	f	CLT Water Vest Treatment Plt O	59178
Davidson James C	Construction Inspector	60845.84	f	CLT Water Field Ops Admin	59179
Beaver Brian Keith	Instrument Technician	60809.77	f	CLT Water Instr. Control & Ele	59180
Lor Shoua	Conveyor Load Bridge Tech Sr	60802.56	f	Facil - Building Maintenance	59181
Gordon Kevin Alexander	Fire Fighter II	60794.68	f	Fire Station 13	59182
Price Jeffrey Alan	Instrument Technician	60780.49	f	CLT Water Instr. Control & Ele	59183
Roberts Todd J	Latent Fingerprint Examiner	60716.53	f	Crime Lab Division	59184
Clark Scott John	Equipment Shop Supervisor	60710.74	f	Fleet Mgmt-Sweden Rd Shop	59185
Drzewiecki Charlotte A	Construction Inspector	60697	f	E&PM Storm Water	59186
Haight Jr Richard C	Police Aircraft Mechanic	60693.83	f	Aviation Unit	59187
Broadway Mark D	Instrument Technician	60686.44	f	CLT Water Instr. Control & Ele	59188
Edwards Joshua E.	Construction Inspector Senior	60686.44	f	E&PM Storm Water	59189
Robinson Beverly Ann	Field Operations Supervisor	60648.65	f	Light Rail Operations	59190
Ezell Jr Roy A	Construction Inspector	60637.36	f	EPM Main Engineering	59191
Wilson Patrick S	Govt Plaza Security Coordinato	60601.47	f	EPM BS CMGC	59192
Fromm James H	Water Quality Technician II	47750.06	f	CLT Water Lab Svc-Operations	62708
Parks Morgan	Management Analyst	60575.55	f	Planning and Research	59194
Morsch Richard A	Heavy Equipment Srvc Tech Mstr	60507.52	f	Fleet Mgmt-Sweden Rd Shop	59195
Montanez Jr Samuel	Small Business Program Special	60484.51	f	Charlotte Business Inclusion	59196
Broome Julian D	Construction Inspector	60458.96	f	CLT Water Backflow Prevention	59197
Linkous Lee D	Construction Inspector	60458.96	f	CLT Water Eng-Install & Dev	59198
Stone Tamye Ruth	Construction Inspector	60458.96	f	CLT Water Engineering-Admin	59199
Williams Michael S	Construction Inspector	60458.92	f	CLT Water Engineering-Admin	59200
Belle Calvin Thomas	Police Officer	60452.01	f	Eastway Division	59201
Carson Tyronia P	Police Officer	60452.01	f	School Resources Officers	59202
Overstreet Diane A	Facilities Services Coordinato	62566.52	f	Fire Training	59203
Brooks Jared Matthew	Fire Fighter II	62622.6	f	Fire Station 13	59204
Lamia Theresa Marie	Administrative Officer III	62547.05	f	EPM Real Estate	59205
Cichy Jr Kenneth Allen	Fire Fighter II	62622.6	f	Fire Station 37	59206
Clark Olivia Kathleen	Administrative Officer III	62547	f	BO - Executive	59207
Little Daniel R	Police Officer	61963.63	f	School Resources Officers	59208
Coates Sherrod Demetris L	Fire Fighter II	62622.6	f	Fire Station 16	59209
Amos Andre Lenea	Special Transportation Supv	62508	f	Special Transportation Service	59210
Silcox Jerry R.	Police Officer	61963.63	f	School Resources Officers	59211
Curtis Sean Raymond	Fire Fighter II	62622.6	f	Fire Station 19	59212
Nziuki Tsakala B	Construction Inspector	62481.49	f	EPM Main Engineering	59213
Brown Robert Derrek	Laboratory Analyst III	62432	f	CLT Water Lab Svc-Operations	59214
Vogel Terriann C	Laboratory Analyst III	62432	f	CLT Water Lab Svc-Operations	59215
Cole II Frederick Blaine	Construction Inspector Senior	62326.32	f	E&PM Storm Water	59216
Thompson Jr Harold	Content Webmaster	62294.89	f	Director's Office Combined	59217
Hopper Melanie	Contracts Admin Specialist	62271.89	f	Risk Management	59218
Schultz Courtney	Public Info Specialist Senior	62260	f	Public & Community Relations	59219
Thompson Jr Ray Alan	Safety Coordinator	62222.21	f	Safety & Security	59220
Trogdon John	Construction Inspector	62213.9	f	EPM Main Engineering	59221
Bailey Shinika	Accountant II	62204.28	f	Revenues	59222
Hahm Scott W	Fleet Specification Analyst	62196.35	f	Fleet Mgmt-CDC	59223
Vilagos Jr Joseph J	Field Operations Supervisor	62162.58	f	North East District (Orr)	59224
Brewton Juanetta Jean	Rail Controller	62131.05	f	Light Rail Operations	59225
Cirilla Brandon Michael	Network Comm Integrator Assc	62118	f	Public Safety Communications	59226
Davis Christopher Brian	Field Operations Supervisor	62116.7	f	EPM Landscape Mgt	59227
Brewington Jacqueline Bush	Management Analyst	62097.17	f	Community Wellness Division	59228
Hibbs Erin E	Administrative Officer III	62052.17	f	Admin - Administrative Service	59229
High Michael	Engineering Contracts Speciali	62035.95	f	EPM Main Engineering	59230
Stanley Philip James	Field Operations Supervisor	62034.47	f	CLT Water Huntersville Zone	59231
Styers Mark A	Construction Inspector	62030.75	f	EPM Land Development	59232
Orr Lea Smith	Field Operations Supervisor	62027.1	f	Oper - Landside/Grd Trans	59233
Chilcot Jason C	Field Operations Supervisor	62026.37	f	CLT Wat General Commerce Zone	59234
Edwards Terrence M	Field Operations Supervisor	62026.37	f	CLT Wat General Commerce Zone	59235
Fort Christopher Michael	Field Operations Supervisor	62026.37	f	CLT Water West Tyvola Zone	59236
Gleaton Orantes A	Field Operations Supervisor	62026.37	f	CLT Water West Tyvola Zone	59237
Hodges Charles T	Code Enforcement Inspector	61961.61	f	Plan Reviewers	59238
Ely Austin Robert	Fire Fighter II	62622.6	f	Fire Station 4	59239
Holden Robert J	Facilities/Property Supervisor	61909	f	Facilities	59240
Eury III John Jacob	Fire Fighter II	62622.6	f	Fire Station 18	59241
Yungfleisch Shelly A	Construction Inspector	61908.83	f	EPM Land Development	59242
Ferreira Jr Michael	Fire Fighter II	62622.6	f	Fire Station 1	59243
Waite Tanya M	Facilities/Property Supervisor	61908.15	f	Facil - Janitorial/Housekeepin	59244
Fuller Andre Demetris	Fire Fighter II	62622.6	f	Fire Station 34	59245
Williams Christopher Mark	Rail Controller	61897.15	f	Light Rail Operations	59246
Griffin Robert Gordon	Fire Fighter II	62622.6	f	Fire Station 11	59247
McCollum Yashica	Purchasing Agent	61857.85	f	Finance Procurement Management	59248
Hall Calvin Antoine	Fire Fighter II	62622.6	f	Fire Station 42	59249
Hassenfritz Elizabeth H	Engineering Project Manager	61836.13	f	EPM Main Engineering	59250
Hall Leyungio Stagalee	Fire Fighter II	62622.6	f	Fire Station 26	59251
Tate David Michael	Purchasing Agent	61815.81	f	Finance Procurement Management	59252
Hill Jonathan Maxwell	Fire Fighter II	62622.6	f	Fire Station 13	59253
Williams Lacey Anne	Division Training Specialist	61800	f	Community Engagement	59254
Warner II Sherman	Field Operations Supervisor	61797.53	f	Transportation Operations	59255
Mason Leslie Eugene	Equipment Shop Supervisor	61787.98	f	Fleet Mgmt-Atando Ave Shop	59256
Duckett Damane Jerrel	Police Officer	61785.9	f	School Resources Officers	59257
Lencheski Lori	Economic Development Spec Sr	61747.22	f	Economic Development-ADM	59258
Dixon Kelly W	Field Operations Supervisor	61725.27	f	CLT Wat General Commerce Zone	59259
Llewellyn Cody Christian	Fire Fighter I	45666.84	f	Fire Station 6	62709
Anthony David L.	Field Operations Supervisor	61714	f	SWS Operations - Yard Waste Co	59261
Morris III Malcolm Knight	Fire Fighter I	45666.84	f	Fire Station 1	62710
Higgins Keithfaton Deshon	Field Operations Supervisor	61714	f	SWS Operations - Special Servi	59263
Shriner Nicholas James	Fire Fighter I	45666.84	f	Fire Station 4	62711
Walker LaShonya Shanesse	Field Operations Supervisor	61714	f	SWS Operations - Garbage Colle	59265
Nail Jason Carl	Field Operations Supervisor	61713.9	f	EPM Landscape Mgt	59266
Scott Tonya	Management Analyst	61653.76	f	Planning and Research	59267
Delano Francine Louise	Police Officer	61644.69	f	Westover Division	59268
Kendrick Jeffrey R	Police Officer	61644.69	f	Steele Creek Division	59269
Williams Vickie Lorraine	Police Officer	61644.69	f	Airport Law Enforcement Divisi	59270
Shook Martha J	Administrative Secretary I	61641.76	f	Fire Administration	59271
Castro Cubero David	Police Officer	61607.71	f	North Division	59272
Donaldson Jeremy Brian	Police Officer	61607.71	f	Westover Division	59273
Freeman Matthew Bradley	Police Officer	61607.71	f	Steele Creek Division	59274
John Deidre Nicole	Police Officer	61607.71	f	Freedom Division	59275
Meadors Jacob L.	Police Officer	61607.71	f	Freedom Division	59276
Mercedes Winsthon Javier	Police Officer	61607.71	f	Special Events	59277
Homan John Kevin	Fire Fighter II	62622.6	f	Fire Station 4	59278
Manning Judge Bryant	Fire Fighter II	62622.6	f	Fire Station 22	59279
Matthews Travis Dwayne	Fire Fighter II	62622.6	f	Fire Station 15	59280
Mulet David Gregg	Fire Fighter II	62622.6	f	Fire Station 22	59281
Murphy III Raymond Joseph	Fire Fighter II	62622.6	f	Fire Station 18	59282
Richardson Brett Aaron	Fire Fighter II	62622.6	f	Fire Station 2	59283
Rojas Fernando Daniel	Fire Fighter II	62622.6	f	Fire Station 42	59284
Roy Venessa Louise	Fire Fighter II	62622.6	f	Fire Station 28	59285
Smith Timothy Scott	Fire Fighter II	62622.6	f	Fire Station 9	59286
Ward Amanda Lee	Fire Fighter II	62622.6	f	Fire Station 18	59287
Bacogeorge Alex C	HVAC Technician Senior	62617.89	f	Facil - Building Maintenance	59288
Miller Alfred Garland	HVAC Technician Senior	62617.89	f	Facil - Building Maintenance	59289
Baswell Amy Temples	Police Officer	62585.61	f	Special Victims Division	59290
Sneed Dustin Alexander	Fire Fighter I	45666.84	f	Fire Station 35	62712
Bogues Jr Anthony	Police Officer	62585.61	f	Youth Programs	59292
Brigham Lesha Nicole	Police Officer	62585.61	f	Westover Division	59293
Brito Jonathan G	Police Officer	62585.61	f	Independence Division	59294
Carey Sara Elizabeth	Police Officer	62585.61	f	Special Victims Division	59295
Chapman Henry G.	Police Officer	62585.61	f	University City Division	59296
Chow Jonathan C	Police Officer	62585.61	f	Central Division	59297
Christy Jessica Nicole	Police Officer	62585.61	f	University City Division	59298
Akstin Megan A	Fire Fighter II	58151.44	f	Fire Station 5	59299
Arnold Jalen Quad'R	Fire Fighter II	58151.44	f	Fire Station 32	59300
Pharr Anna G	Administrative Officer I	59691.01	f	Training Division	59301
Hulett Collin Christopher	Field Operations Supervisor	58424.61	f	CityLYNX	59302
Marler Michael Justin	Fire Fighter II	59812.46	f	Fire Station 5	59303
Murphey Daniel Glenn	Signal Systems Specialist	57662.23	f	Transportation Systems	59304
Owen Micah James	Police Officer	59968.67	f	Hickory Grove Division	59305
Atwell Benjamin Kyle	Fire Fighter II	58151.44	f	Fire Station 4	59306
Beacham John Harwood	Fire Fighter II	58151.44	f	Fire Station 33	59307
Buie William David	Police Officer	58151.44	f	Freedom Division	59308
Cook Jason Kyle	Fire Fighter II	58151.44	f	Fire Station 12	59309
Fiallos Victoria Michelina	Police Officer	58151.44	f	Special Victims Division	59310
Byrd Victor E	Utilities Planner Scheduler	57208.88	f	CLT Wat General Commerce Zone	59311
Finis Shannon Michele	Police Officer	58151.44	f	Eastway Division	59312
Gonzalez Jr Frankie	Fire Fighter II	58151.44	f	Fire Station 4	59313
Goodwin Brenton Shawn	Fire Fighter II	58151.44	f	Fire Station 34	59314
Hall Jessica Gayle	Police Officer	58151.44	f	Special Victims Division	59315
Headley Nicholas Andrew	Fire Fighter II	58151.44	f	Fire Station 19	59316
Hibbs Tyson Lee	Fire Fighter II	58151.44	f	Fire Station 2	59317
Hines Joshua Caleb	Fire Fighter II	58151.44	f	Fire Station 33	59318
Howie Donald Jason	Fire Fighter II	58151.44	f	Fire Station 31	59319
Huffman Dustin Tracy	Fire Fighter II	58151.44	f	Fire Station 27	59320
Jenkins Reginald Matthew	Police Officer	58151.44	f	University City Division	59321
Leigh Amanda Rae	Fire Fighter II	58151.44	f	Fire Station 6	59322
Lemmond Colby Wriston	Fire Fighter II	58151.44	f	Fire Station 14	59323
Maas Anna Grace	Police Officer	58151.44	f	Canine Unit	59324
Parks Alan Gary	Fire Fighter II	58151.44	f	Fire Station 31	59325
Primm John Brodie	Survey Party Chief	58139.81	f	EPM Main Engineering	59326
Starnes Spencer Adam	Fire Fighter I	45666.84	f	Fire Station 39	62713
Wendt John R	Treatment Plant Mechanic II	58139.28	f	CLT Water - Water Maintenance	59328
Blando Anina Dene'	Administrative Officer II	58135.56	f	Finance	59329
Mullings Valerie	Financial Accountant I	58072.84	f	Finance Accounting	59330
Stewart Jacob Allen Odell	Fire Fighter I	45666.84	f	Fire Station 34	62714
Lewis Joya Domenique	Administrative Officer II	58046.75	f	EPM LSC Cemeteries Mgt	59332
Berens Rick D	Transportation Elect. Tech II	58019.47	f	Maintenance Right of Way (MOW)	59333
Ennis Sylvan Anthony	Transportation Elect. Tech II	58019.47	f	Light Rail Maintenance	59334
Woodward William Henry	Transportation Elect. Tech II	58019.47	f	Light Rail Maintenance	59335
Wigg IV William	Engineering Assistant	58013	f	Special Programs	59336
Yaffe Dora Emily	Economic Development Spec	58005.77	f	Community Engage Combined	59337
McClanahan Jr Jeffrey Brian	Planning/Design Engineer	58000	f	CLT Water Engineering-Admin	59338
Dorsey Deborah J	Claims Representative-Senior	57995.1	f	Risk Management	59339
Hillman Michael Henry	Construction Inspector	57968.87	f	CLT Field Ops-Pipeline Rehab	59340
Young Robin F	Neighborhood Devel Specialist	57921.98	f	Housing Combined	59341
West Tasha M	Neighborhood Devel Specialist	57921.98	f	Housing Combined	59342
Epps Barbara J.	Administrative Officer II	57905.65	f	EPM Main Engineering	59343
Bell Jordan Lee	Fire Fighter I	57899.56	f	Fire Station 10	59344
Bowman Zachry James	Fire Fighter II	57899.56	f	Fire Station 3	59345
Hayden Travis Lavar	Fire Fighter I	57899.56	f	Fire Station 32	59346
Saulpaugh Thomas Richard	Fire Fighter I	57899.56	f	Fire Station 3	59347
Storz Patrick	Erosion Control Coordinator	57889.63	f	EPM Land Development	59348
Betha Skyne Labelle	Small Business Program Special	57805.87	f	Charlotte Business Inclusion	59349
Smith Natasha Monique	Small Business Program Special	57805.87	f	Charlotte Business Inclusion	59350
Mathis Nyema Montae Hicks	Small Business Program Special	57805.7	f	Charlotte Business Inclusion	59351
Truitt II Ralph	Engineering Assistant	57760.66	f	Land Development	59352
Huffstickler Teresa S	Administrative Officer II	57741.07	f	CLT Water Admininstration	59353
Ruane Erika Jocelyne Palmer	Administrative Officer III	57680	f	Economic Development-Sustainab	59354
Sutton Mitchell Scott	Fire Fighter I	45666.84	f	Fire Station 4	62715
Carter Shirley M.	Customer/Revenue Service Spec.	57668.48	f	Customer Service	59356
Proffitt Michael R	Carpenter Senior	57665.32	f	EPM BS Spratt	59357
Edwards Amanda Westmoreland	Code Enforcement Inspector Ld	59045.51	f	Code Enforcement Combined	59358
Melton Tammie Baucom	Water Chf Treatment Plant Op	59637.04	f	CLT Water Franklin Plant	59359
Darnell Dennis A.	Conveyor Load Bridge Tech Sr	59636.78	f	Facil - Building Maintenance	59360
Pellicone Ryan Anthony	Police Officer	59968.67	f	Steele Creek Division	59361
Collins Lonnie G	Airport Operations Supvr I	59636.65	f	Oper - Terminal Ops	59362
Rosenberger Daniel Tilton	Police Officer	59968.67	f	Steele Creek Division	59363
Hendrix Jr Robert L	Engineering Assistant	57168.58	f	CLT Water Cust Service-Admin	59364
Turner Christopher John	Fire Fighter I	45666.84	f	Fire Station 26	62716
LeBoeuf Paul Jude	Equipment Shop Supervisor	59610.41	f	Fleet Mgmt-Tuckaseegee Rd Shop	59366
Massey Michael Scott	Fire Fighter II	59812.46	f	Fire Station 27	59367
LaMarre John C	Construction Inspector	57634.18	f	EPM Land Development	59368
Safrit William Nicholas	Police Officer	59968.67	f	Hickory Grove Division	59369
Lineberger Emily M	Administrative Officer II	58424.2	f	Fire Administration	59370
Matias Daniel Joseph	WW Treatment Plant Op IV	59045.51	f	CLT Water Mallard Creek Plant	59371
Crowell Margaret Pegues	Plans Reviewer	57133.82	f	CLT Water Backflow Prevention	59372
Hardison Joel D	Construction Inspector Senior	59603.93	f	E&PM Storm Water	59373
Watts Rusty Allen	Fire Fighter I	45666.84	f	Fire Station 21	62717
Metzler Jonathan	Fire Fighter II	59812.46	f	Fire Station 23	59374
Washam Robert A	Facilities Services Coordinato	57627.3	f	Fire Logistics	59375
Sanchez Derek David	Police Officer	59968.67	f	Independence Division	59376
Baker Rhonda Michelle	Utilities Planner Scheduler	58353.48	f	CLT Water Matthews Zone	59377
Montgomery Lila Michelle	Construction Inspector Senior	59045.51	f	E&PM Storm Water	59378
Hyde II Ted J	Plans Reviewer	57133.82	f	CLT Water Backflow Prevention	59379
Boyd Phillip A	Police Telecommun Supv	59596.98	f	Communications Division	59380
Moser Ryan Stephen	Fire Fighter II	59812.46	f	Fire Station 7	59381
Bost Randy Lane	Equipment Shop Supervisor	57594.6	f	Fleet Mgmt-Louise Ave Shop	59382
Studney Andrew Gregory	Police Officer	59968.67	f	Westover Division	59383
Branch Brandon Reid	Fire Fighter II	58353.42	f	Fire Station 16	59384
Powers Joshua Ray	Water Chf Treatment Plant Op	59045.51	f	CLT Water Franklin Plant	59385
Powell Millicent E	Community&Commerce Specialist	57122.65	f	Community Engagement	59386
Miller Tracy L.	Airport Operations Supvr I	59520.01	f	Oper - Airport Security	59387
Norton Robert Zack	Fire Fighter II	59812.46	f	Fire Station 2	59388
Bauer Sherry Wolfe	Video Producer/Director	57565.56	f	CM-Corporate Comm & Marketing	59389
Summerlin Michael Evan	Police Officer	59968.67	f	Eastway Division	59390
Holcomb Nathan James	Fire Fighter II	58353.42	f	Fire Station 28	59391
Sherow Courtne Harrison	Airport Operations Supvr I	59045.51	f	Oper - Landside/Grd Trans	59392
Adams Margery Alice	Police Officer	57112.88	f	Westover Division	59393
Williams Dustan Neal	Fire Fighter I	45666.84	f	Fire Station 6	62718
Cannie Justice S	WW Treatment Plant Op IV	59506.81	f	CLT Water Irwin Creek Plt OPS	59395
Ortiz Jr Jose	Fire Fighter II	59812.46	f	Fire Station 36	59396
Strother George G	Water Treatment Plant Opr A	57523.87	f	CLT Water Dukes WTP	59397
Wait Lauren R	Police Officer	59968.67	f	Freedom Division	59398
Ireland Timothy M	Fire Fighter II	58353.42	f	Fire Station 16	59399
Thackston III James Nathaniel	Construction Inspector Senior	59045.51	f	Implementation	59400
Amanfoh Kwabena Addai	Police Officer	57112.88	f	North Tryon Division	59401
Hill Betsy Lee	WW Treatment Plant Op IV	59506.81	f	CLT Water Irwin Creek Plt OPS	59402
Rodman Brian J	Fire Fighter II	59812.46	f	Fire Station 8	59403
Kiker Stephen Clay	Light Equipment Srvc Tech Ld	57521.23	f	Fleet Mgmt-Atando Ave Shop	59404
Moore Patrick Gerard	WW Treatment Plant Op IV	57520.84	f	CLT Water Union County	59405
Conner Richard Alan	WW Treatment Plant Op IV	57520.7	f	CLT Water Mallard Creek Plant	59406
Healy Johanna R	WW Treatment Plant Op IV	57520.7	f	CLT Water McDowell Creek Plant	59407
Woessner Aaron D	Heavy Equipment Srvc Tech Mstr	57520.7	f	Fleet Mgmt-Sweden Rd Shop	59408
Jarrell Steve Craig	Senior Tech Service Specialist	57512.19	f	Public Safety Communications	59409
Christman Robert Matthew	Planning/Design Engineer	57501	f	CLT Water Engineering-Admin	59410
Price Christy L.	Crime Scene Technician Sr	57499.06	f	Crime Scene Search Division	59411
Clark Rachel Kathryn	Crime Scene Technician Sr	57499.06	f	Crime Scene Search Division	59412
Brown Steven Christopher	Construction Inspector	57492.64	f	E&PM Storm Water	59413
Leach Tammy Lin	Construction Inspector	57436.25	f	CLT Water Engineering-Admin	59414
Twyman Bruce E	Construction Inspector	57436.25	f	CLT Water Engineering-Admin	59415
Williams Richard Alonzo	Water Treatment Plant Opr A	57434.14	f	CLT Water Vest Treatment Plt O	59416
Botello Pedro A	Transportation Elect. Tech II	57379.78	f	Maintenance Right of Way (MOW)	59417
Scammell Michael Martin	Transportation Elect. Tech II	57379.78	f	Maintenance Right of Way (MOW)	59418
Wyrick Anmarie Behymer	Code Enforcement Inspector	57379.58	f	Code Enforcement Combined	59419
Zerfoss Chad Douglas	Fire Fighter I	45666.84	f	Fire Station 3	62719
McShea Laurie Marie	Administrative Officer II	57376.72	f	Admin - Legal Affairs	59421
Johnson John Ryan	Environmental Compliance Spec	57358.67	f	CLT Water System Protection	59422
Leake Dennis W	Police Telecommunicator	57306.41	f	Communications Division	59423
Turner Michael T	Field Operations Supervisor	57280.15	f	Light Rail Operations	59424
Hill Cheryl Ann	Engineering Assistant	57277	f	E&PM Storm Water Water Quality	59425
Horn Christopher M	Equipment Shop Supervisor	57273.09	f	Fleet Mgmt-CDC	59426
Vorech Amy E	Drafting Technician	57244.13	f	Implementation	59427
Colby Jonathan Michael	Police Officer	57242.82	f	Central Division	59428
Decker Naomi Gwenyth	Police Officer	57242.82	f	Central Division	59429
Hollowell William Corddaro'de	Police Officer	57242.82	f	Steele Creek Division	59430
Jimenez Claudio Orlando	Police Officer	57242.82	f	Steele Creek Division	59431
Page Jonathan	Police Officer	57242.82	f	Metro Division	59432
Rubino Jesse	Police Officer	57242.82	f	Westover Division	59433
Thompson Andy Van	Police Officer	57242.82	f	North Division	59434
Anagnostis Nicky	Police Officer	57242.65	f	Airport Law Enforcement Divisi	59435
Andersen Jeremy Keith	Police Officer	57242.65	f	Steele Creek Division	59436
Brown Nathan Coy	Police Officer	57242.65	f	Independence Division	59437
Kim James Gihoon	Police Officer	57242.65	f	South Division	59438
Lindsay Andrew Mead	Police Officer	57242.65	f	South Division	59439
Nisavic Jennifer Tina	Police Officer	57242.65	f	Westover Division	59440
Elder Brian Thomas	Airport Operations Officer III	57240.44	f	Oper - Airside	59441
Neal Jr David W	Airport Operations Officer III	57240.44	f	Oper - Airside	59442
Walaszek Michael James	Airport Operations Officer III	57240.44	f	Oper - Airside	59443
Lee Sharon L	Administrative Officer II	57227.88	f	Human Resources	59444
Auman Adelaide M	Domestic Violence Counselor	57227.61	f	Special Victims Division	59445
Christiansen Michael J	Environmental Compliance Spec	57217.74	f	CLT Water System Protection	59446
Alvarez Kelly A.	Police Telecommun Supv	57213.71	f	Communications Division	59447
Giannini Amanda E.	Police Officer	74848.55	f	North Division	63489
Cordova Carina Lao	Police Telecommun Supv	57213.71	f	Communications Division	59448
Wood Mary Christine	Police Officer	59968.67	f	South Division	59449
Zagar Kelly Lee	Police Officer	59968.67	f	North Tryon Division	59450
Killough II Ney B	WW Treatment Plant Op IV	59506.81	f	CLT Water Union County	59451
Shelton Brian H.	Fire Fighter Engineer	59812.46	f	Fire Station 22	59452
Wagner Paul Thomas	Water Chf Treatment Plant Op	59045.51	f	CLT Water Franklin Plant	59453
Zagar Lynda	Police Officer	59968.67	f	Freedom Division	59454
Paprota Edward S.	Fire Fighter II	58353.42	f	Fire Station 26	59455
O'Neal Erick W.	Construction Inspector	59506.81	f	CLT Water Engineering-Admin	59456
Benfield Michael Shea	Police Officer	57112.88	f	Metro Division	59457
Hall Andre	Transportation Elect.Tech II L	59045	f	Maintenance Right of Way (MOW)	59458
Troutman Joshua James	Fire Fighter II	59812.46	f	Fire Station 7	59459
Peters Damian L	Fire Fighter II	58353.42	f	Fire Station 36	59460
Bowman John Turner	Police Officer	57112.88	f	Steele Creek Division	59461
Watson Reginald D	Construction Inspector	59506.81	f	CLT Water Eng-Install & Dev	59462
Gregory Lonnie Lee	Field Operations Supervisor	59036.58	f	Light Rail Operations	59463
Canterbury Carl E	Code Enforcement Inspector Ld	59932.27	f	Code Enforcement Combined	59464
Ebenhoeh Gregory C	Heavy Equipment Srvc Tech Ld	59792.35	f	Fleet Mgmt-Louise Ave Shop	59465
Simpson Joshua Neely	Fire Fighter Engineer	58353.42	f	Fire Station 27	59466
Braswell Mason Brian	Police Officer	57112.88	f	University City Division	59467
Williams James Haywood	Utilities Planner Scheduler	59479.68	f	CLT Water Huntersville Zone	59468
Bailey Dollie A. E.	WW Treatment Plant Op IV	59034.43	f	CLT Water Irwin Creek Plt OPS	59469
Novikov Oleg	IT Communications Technician	59932.27	f	Tech - Executive	59470
Jackson Mark Allen	Criminalist Drug Chemistry	59787.13	f	Crime Lab Division	59471
Taylor Brad S	Fire Fighter II	58353.42	f	Fire Station 23	59472
Carroll Jon J	Police Officer	57112.88	f	Steele Creek Division	59473
Robinson Kenneth E	Heavy Equipment Srvc Tech Mstr	59382.88	f	Fleet Mgmt-Louise Ave Shop	59474
Behre Jennifer R	Police Telecommun Supv	59023.55	f	Communications Division	59475
Sharp William Arlington	Airport Operations Officer II	45661.03	f	Oper - Airport Security	62720
Taylor Mikel Evan	Code Enforcement Inspector Ld	59932.27	f	Housing -Rehabilitation	59477
Briskey Douglas	Utilities Planner Scheduler	59786.49	f	CLT Water West Tyvola Zone	59478
Thomas Andrew Charles	Fire Fighter II	58353.42	f	Fire Station 20	59479
Crosby Jr Travis Devont	Police Officer	57112.88	f	Metro Division	59480
Daphness Reynold T	Systems Maint Mechanic Sr	59371.69	f	Facil - Building Maintenance	59481
Mulgrew Constance Lorena	Police Telecommun Supv	59022.96	f	Communications Division	59482
Waters Nelson Todd	Conveyor Load Bridge Tech Sr	59932.27	f	Facil - Building Maintenance	59483
Barringer Timothy Ryan	Instrument Technician	59784.43	f	CLT Water Instr. Control & Ele	59484
Wiatrowski Matthew A	Fire Fighter II	58353.42	f	Fire Station 27	59485
Davis Jr Robert William	Police Officer	57112.88	f	Metro Division	59486
Wright Karen L	Administrative Officer II	59362.98	f	EPM Real Estate	59487
Anders Daniel H	Airport Operations Officer I	45660.23	f	Oper - Airport Security	62721
Hepler Michael Shane	Special Events Coordinator	59009.44	f	General Right of Way Managemen	59489
Barnes Cameron Justin	WW Treatment Plant Op IV Sr	59932.22	f	CLT Water Irwin Creek Plt OPS	59490
Brathwaite III Darnley C	Police Officer	59776.66	f	Independence Division	59491
Wyckoff Timothy James	Fire Fighter Engineer	58353.42	f	Fire Station 40	59492
Diehl Gregory B	Police Officer	57112.88	f	Freedom Division	59493
Phillips Jennifer Veronique	Animal Control Supervisor	45636.76	f	Animal Care & Control Division	62722
Torres Jr Efrain	Light Equipment Srvc Tech Ld	59347.51	f	Fleet Mgmt-12th Street Shop	59495
Brock Michael G	Construction Inspector	58947.34	f	CLT Water Engineering-Admin	59496
Burgett Ching Fong Yuen	Administrative Officer II	58944.42	f	E&PM Storm Water	59497
Horn Jonathan P	Fire Telecommunicator III	58938.18	f	Fire Communications	59498
Gross Barbara L	Engineering Assistant	58891.82	f	CLT Water Cust Service-Admin	59499
Garner Demetrius	Field Operations Supervisor	58891	f	Light Rail Operations	59500
Reece Lori Ann	Code Enforcement Inspector	58889.76	f	Code Enforcement Combined	59501
Gregory Alex D	Code Enforcement Inspector	58889.29	f	Code Enforcement Combined	59502
Pope Jr Harry	Code Enforcement Inspector	58889.29	f	Code Enforcement Combined	59503
Austell Jr Dan W	Administrative Officer II	58847.01	f	Administrative Management	59504
Nelson Nakeya Tanese	Police Officer	58843.57	f	School Resources Officers	59505
Muncie III James Virgil	Heavy Equipment Srvc Tech Ld	58790.66	f	Fleet Mgmt-Louise Ave Shop	59506
Sweezer Richard E	Equipment Parts Manager	58780.59	f	Public Safety Communications	59507
Bell Lovely Gee	Code Enforcement Inspector	58744.67	f	Plan Reviewers	59508
Guy Jr Kenneth	Systems Maint Mechanic Sr	58743.2	f	EPM BS Spratt	59509
Mancato Peter Joseph	Field Operations Supervisor	58735.05	f	Light Rail Operations	59510
Albanese Cliff A	Police Officer	58674.01	f	Independence Division	59511
Banks David Anthony	Police Officer	58674.01	f	Freedom Division	59512
Barrett James Jerome	Police Officer	58674.01	f	North Tryon Division	59513
Bittenbender Ian Butler	Police Officer	58674.01	f	Hickory Grove Division	59514
Blount Dwayne Revell	Police Officer	58674.01	f	North Division	59515
Bojaj Eric M	Police Officer	58674.01	f	North Tryon Division	59516
Giglio II Robert Victor	Police Officer	58674.01	f	South Division	59517
Givens Jonathan Michael	Police Officer	58674.01	f	North Tryon Division	59518
Lambert Paul M	Police Officer	58674.01	f	Steele Creek Division	59519
Martin Christopher Todd	Police Officer	58674.01	f	Central Division	59520
Reynolds Corey Ryan	Police Officer	58674.01	f	North Tryon Division	59521
Rogers Brian K	Police Officer	58674.01	f	Providence Division	59522
Salazar William E	Police Officer	58674.01	f	North Tryon Division	59523
Salman Joshua	Police Officer	58674.01	f	Steele Creek Division	59524
Williams Corey Justin	Police Officer	58674.01	f	Hickory Grove Division	59525
Fleming Mary Kate	Environmental Compliance Spec	58663.39	f	CLT Water System Protection	59526
Price Phyllis T	Administrative Secretary I	58648.92	f	CM-Constituent Services	59527
Walker Albert Adam	Utilities Planner Scheduler	58639.52	f	CLT Water West Tyvola Zone	59528
Speer Jr Terry E	Systems Maint Mechanic Sr	58598.47	f	EPM BS Spratt	59529
Nantz James Patterson	Systems Maint Mechanic Sr	58508.21	f	EPM BS Spratt	59530
Coleman Tenya C	Community Relations Spec	58472.24	f	CM- Community Relations	59531
Perry Nicholas Alan	Heavy Equipment Srvc EVT	58430.65	f	Fleet Mgmt-Sweden Rd Shop	59532
Cooper Matthew Alan	Police Officer	59776.66	f	Independence Division	59533
Ash David L.	Police Officer	58318.71	f	Eastway Division	59534
Clement Richard J	Equipment Shop Supervisor	59322.44	f	Fleet Mgmt-Atando Ave Shop	59535
Doster Travis Terrell	Police Officer	57112.88	f	Providence Division	59536
Hager Taylor Lee	Police Officer	59776.66	f	Independence Division	59537
Fant Arthur Jenard	Police Officer	58318.71	f	North Division	59538
Gibbons Joshua Walter	Police Officer	58318.71	f	Westover Division	59539
Griffin Michael A	Police Officer	58318.71	f	University City Division	59540
Hyde Andrew Dennett	Police Officer	58318.71	f	Metro Division	59541
Graham Stephen C	Police Officer	74848.55	f	Providence Division	63490
Ingram Stephen	Police Trainee	58318.71	f	Recruit Training Unit	59543
Little Aaron Matthew	Police Officer	58318.71	f	North Division	59544
Matlock Christopher J.	Police Officer	58318.71	f	Providence Division	59545
Partridge Aaron J	Police Officer	58318.71	f	University City Division	59546
Rose John Franklin	Police Trainee	58318.71	f	Recruit Training Unit	59547
Shue Nathan A.	Police Trainee	58318.71	f	Recruit Training Unit	59548
Smith Joseph Shane	Police Officer	58318.71	f	North Division	59549
Thompson Jr Charles Timothy	Police Officer	58318.71	f	Airport Law Enforcement Divisi	59550
Wilkes Jr Craig R.	Police Officer	58318.71	f	Central Division	59551
Williams Amanda C	Police Officer	58318.71	f	Real Time Crime Center	59552
Bandieramonte Matthew Brian	Fire Fighter II	58318.17	f	Fire Station 17	59553
Bollinger Neil Thomas	Fire Fighter II	58318.17	f	Fire Station 20	59554
Clark Derrick Benton	Fire Fighter II	58318.17	f	Fire Station 4	59555
Crouse Andrew Tyler	Fire Fighter II	58318.17	f	Fire Station 24	59556
Davis Cody Lyle	Fire Fighter II	58318.17	f	Fire Station 42	59557
Evans Michael Eugene	Fire Fighter II	58318.17	f	Fire Station 16	59558
Glover Travis Jason	Fire Fighter II	58318.17	f	Fire Station 20	59559
Greenhalgh Gregory Ivan John	Fire Fighter II	58318.17	f	Fire Station 18	59560
Rockholt Roddy Jack	Fire Fighter II	58318.17	f	Fire Station 33	59561
Silvers Kenneth Matthew	Fire Fighter II	58318.17	f	Fire Station 23	59562
Slagle Joseph Eric	Fire Fighter II	58318.17	f	Fire Station 4	59563
Smith Jared Wayne	Fire Fighter II	58318.17	f	Fire Station 22	59564
Knight Mark C	Laboratory Analyst II	58307.35	f	CLT Water Lab Svc-Operations	59565
Moore Richard E	Purchasing Agent	58286.91	f	Finance Procurement Management	59566
Condron Ben Alexander	Police Officer	58283.43	f	Freedom Division	59567
Ross Michael Lawrence	Police Officer	58283.43	f	Hickory Grove Division	59568
Forrisi III Louis Peter	Purchasing Agent	58268.7	f	CLT Water Procurement	59569
Adams Rebecca B.	Purchasing Agent	58268.7	f	CLT Water Procurement	59570
Osborne William Rodney	Systems Maint Mechanic Sr	58243.22	f	EPM BS Spratt	59571
Perry Richard A	Construction Inspector	58227.42	f	EPM Main Engineering	59572
O'Malley John Christopher	Graphic Artist Senior	58173	f	Admin-Public Affairs/Media Rel	59573
Madenford Lindsay Erin	Contracts Admin Specialist	58166.19	f	Finance - Executive	59574
Carman David S	Water Chf Treatment Plant Op	59932.22	f	CLT Water Franklin Plant	59575
Kendziora Thomas A	Police Officer	59776.66	f	South Division	59576
Erlenbach Morgan Lynn	Police Officer	57112.88	f	Steele Creek Division	59577
Rud Derek D	Police Officer	59776.66	f	Metro Division	59578
VanHemel John David	Police Officer	59776.66	f	Freedom Division	59579
Foard Rebecca Joan	Police Officer	57112.88	f	Eastway Division	59580
Anderson Gary Michael	Fire Fighter II	59776.12	f	Fire Station 28	59581
Clements Brian C	Equipment Shop Supervisor	59322.44	f	Fleet Mgmt-Louise Ave Shop	59582
Cook Jr Raymond Dwight	WW Treatment Plant Op IV Sr	59932.22	f	CLT Water Irwin Creek Plt OPS	59583
Grobe Nicholas R	Police Officer	57112.88	f	Central Division	59584
Bryant Phillip Michael	Fire Fighter II	59776.12	f	Fire Station 13	59585
Burke Daniel Ryan	Fire Fighter II	59776.12	f	Fire Station 2	59586
Calle Henry Alberto	Fire Fighter II	59776.12	f	Fire Station 27	59587
Grigston James T	Fire Fighter II	59776.12	f	Fire Station 11	59588
Hardin Christopher Jason	Fire Fighter II	59776.12	f	Fire Station 3	59589
Hines Jr Dennis Raymond	Fire Fighter II	59776.12	f	Fire Station 26	59590
Hunter Steven Ingram	Fire Fighter II	59776.12	f	Fire Station 13	59591
Isenhour James Brett	Fire Fighter II	59776.12	f	Fire Station 22	59592
King Christopher Allen	Fire Fighter II	59776.12	f	Fire Station 29	59593
Loera Jose Adrian	Fire Fighter II	59776.12	f	Fire Station 21	59594
McKee Justin Lee	Fire Fighter II	59776.12	f	Fire Station 18	59595
Meadows Hunter C	Fire Fighter II	59776.12	f	Fire Station 27	59596
Rangel Joel Louis	Fire Fighter II	59776.12	f	Fire Station 2	59597
Royal III Daniel W	Fire Fighter II	59776.12	f	Fire Station 36	59598
Severance Michael K	Fire Fighter II	59776.12	f	Fire Station 24	59599
Sherrell Gregory Lee	Fire Fighter II	59776.12	f	Fire Station 10	59600
Squittieri James Edwards	Fire Fighter II	59776.12	f	Fire Station 18	59601
Stallings Brantley Gray	Fire Fighter II	59776.12	f	Fire Station 15	59602
Watts Michael Robert	Fire Fighter II	59776.12	f	Fire Station 5	59603
Garlitos Lori Addante	Administrative Officer II	59767.37	f	EPM Main Engineering	59604
Robinson Karen Washington	Administrative Officer II	59750.48	f	Planning	59605
Hardenbrook Nathan Paul	Police Officer	59740.81	f	Canine Unit	59606
Peden Luke Nicholas	Police Officer	59740.81	f	Violent Crime Division	59607
Ross David A	Police Officer	59740.81	f	University City Division	59608
Smith Rick Tanaw	Police Officer	59740.81	f	University City Division	59609
Short Ashley Ann	Claims Representative-Senior	59734.93	f	Risk Management	59610
Suddreth Lloyd N	Construction Inspector Senior	59727.96	f	EPM Main Engineering	59611
Contreras Yency Canaca	Police Officer	59708.92	f	Metro Division	59612
Corbitt Matthew Bailey	Police Officer	59708.92	f	Hickory Grove Division	59613
Kellner Emily Catherine S	Police Officer	59708.92	f	University City Division	59614
Morey Jr William Lewis	Equipment Shop Supervisor	59322	f	Fleet Mgmt-Sweden Rd Shop	59615
Cowden Matthew Allen	Airport Electronics Tech Ld	59932.22	f	Facil - Airside Maintenance (F	59616
Harrison Aesha	Police Telecommun Supv	59310.07	f	Communications Division	59617
Hall Misty	Police Officer	57112.88	f	Hickory Grove Division	59618
Duckworth Donna Jean	Water Chf Treatment Plant Op	59932.22	f	CLT Water Franklin Plant	59619
Lominick Christopher James	Code Enforcement Inspector Ld	59270.88	f	Code Enforcement Combined	59620
Havel Kevin L	Police Officer	57112.88	f	North Division	59621
Dazzo Anthony L	Service Order Specialist	45632.53	f	Fleet Mgmt-Atando Ave Shop	62723
Herron Raymond Anthony	Airport Operations Supvr I	59932.22	f	Operations – Gate Management	59623
Campbell Timothy L	Labor Crew Chief II	59264.02	f	Central District (Northpointe)	59624
Hearn Benjamin E	Police Officer	57112.88	f	Eastway Division	59625
Lynch George R	Airport Operations Supvr I	59932.22	f	Operations – Gate Management	59626
Amaniampong Patricia	Administrative Officer III	59255	f	Administrative Management	59627
Helms Brett Jonathan	Police Officer	57112.88	f	North Tryon Division	59628
Miller John A	Code Enforcement Inspector Ld	59932.22	f	Code Enforcement Combined	59629
Sutton John R	Code Enforcement Inspector Ld	59932.22	f	Housing -Rehabilitation	59630
Tirico Brian John	Fire Inspector	59932.22	f	Fire Prevention	59631
Tyson Jr Oscar Anthony	Airport Operations Supvr I	59932.22	f	Oper - Landside/Grd Trans	59632
Washburn Brendon J	Airport Operations Supvr I	59932.22	f	Oper - Terminal Ops	59633
Wingo Derek J	Airport Operations Supvr I	59932.22	f	Oper - Landside/Grd Trans	59634
Cooper Jr Ivory	Conveyor Load Bridge Tech Sr	59932.01	f	Facil - Building Maintenance	59635
Privette Justin Keith	Code Enforcement Inspector Ld	59932.01	f	Code Enforcement Combined	59636
Hitsman Jr Charles L	Code Enforcement Inspector Ld	59931.73	f	Housing -Rehabilitation	59637
Whitley Roderick Vann	Conveyor Load Bridge Tech	59931.17	f	Facil - Building Maintenance	59638
Stancil Mark C.	Construction Inspector Senior	59926.94	f	EPM Main Engineering	59639
Mason Ronald M	Neighborhood Devel Specialist	59918.98	f	Housing Combined	59640
Nortz Scott J	Instrument Technician	59878.91	f	CLT Water Instr. Control & Ele	59641
Kyle Lynne Anne	Administrative Officer II	59853.65	f	EPM Real Estate	59642
Brown Nyota	Administrative Officer II	59831.66	f	EPM Main Engineering	59643
Tibbs Kimberly S	Small Business Program Special	59829.07	f	Charlotte Business Inclusion	59644
Aldridge Matthew Vaughn	Fire Fighter II	59812.46	f	Fire Station 16	59645
Anderson Kirt D.	Fire Fighter II	59812.46	f	Fire Station 28	59646
Blackwelder Jr Steven D	Fire Fighter II	59812.46	f	Fire Station 23	59647
Clingerman Kyle Geoffrey	Fire Fighter II	59812.46	f	Fire Station 4	59648
Cunningham Robert B	Fire Fighter II	59812.46	f	Fire Station 7	59649
DeFranzo Edward J	Fire Fighter II	59812.46	f	Fire Station 23	59650
Dover Zachary Miller	Fire Fighter Engineer	59812.46	f	Fire Station 4	59651
Egner Ray Anthony	Fire Fighter II	59812.46	f	Fire Station 6	59652
Field Jeffrey S	Fire Fighter II	59812.46	f	Fire Station 26	59653
Hart Brandon Scott	Fire Fighter II	59812.46	f	Fire Station 35	59654
Ingram Christopher Eric	Fire Fighter II	59812.46	f	Fire Station 33	59655
Johnson Joshua D	Fire Fighter II	59812.46	f	Fire Station 2	59656
Henderson Chad Edward	Police Officer	57112.88	f	Eastway Division	59657
Hensley Zachary Joseph	Police Officer	57112.88	f	Metro Division	59658
Illuminati Timothy R	Police Officer	57112.88	f	Central Division	59659
Jenkins Robert Lewis	Police Officer	57112.88	f	University City Division	59660
Johnson Drew C	Police Officer	57112.88	f	North Division	59661
Kivette Adam Lee	Police Officer	57112.88	f	University City Division	59662
Koukopoulos John-Robert M	Police Officer	57112.88	f	Metro Division	59663
Law Quinn McQ	Police Officer	57112.88	f	Hickory Grove Division	59664
Mack Nicholas Chad	Police Officer	57112.88	f	Metro Division	59665
McAdoo III Julius Limuel	Police Officer	57112.88	f	Freedom Division	59666
McGrogan Julie A	Police Officer	57112.88	f	North Division	59667
Mellon Adam Taylor	Police Officer	57112.88	f	Steele Creek Division	59668
Miller Shatira Monea	Police Officer	57112.88	f	North Tryon Division	59669
Millsaps Richard Tyson	Police Officer	57112.88	f	University City Division	59670
Moore Daniel S	Police Officer	57112.88	f	Providence Division	59671
Mosher Michael Anthony	Police Officer	57112.88	f	Metro Division	59672
Nivens Jasmine Ranee'	Police Officer	57112.88	f	Freedom Division	59673
Pauling Corbin Jamal	Police Officer	57112.88	f	Metro Division	59674
Penny Keoshia Janine	Police Officer	57112.88	f	North Tryon Division	59675
Pharr Jr Anthony Lemon	Police Officer	57112.88	f	Westover Division	59676
Phillips Nathan D	Police Officer	57112.88	f	Providence Division	59677
Potter Bradley P	Police Officer	57112.88	f	University City Division	59678
Renkiewicz Jessie N	Police Officer	57112.88	f	South Division	59679
Rodriguez Maldonado Richard Jr	Police Officer	57112.88	f	Freedom Division	59680
Saunders Michael Oneil	Police Officer	57112.88	f	South Division	59681
Tawwab Rajaee Labeeb	Police Officer	57112.88	f	South Division	59682
Thomas Brenton Michael	Police Officer	57112.88	f	North Tryon Division	59683
VerSteeg Charity Michelle	Police Officer	57112.88	f	North Division	59684
Nicholson John Daniel	Construction Inspector Senior	59216.52	f	EPM Main Engineering	59685
Oxendine Crystal G	Police Telecommun Supv	59192.79	f	Communications Division	59686
Willinsky Joseph Scott	Crime Scene Technician Sr	59097.08	f	Crime Scene Search Division	59687
Braswell Wanda G	Administrative Officer I	59072.96	f	Technology	59688
Bueker Patrick Daniel	Fire Inspector	59060.82	f	Fire Prevention	59689
Cloninger Mitchell Alan	Fire Inspector	59060.82	f	Fire Prevention	59690
Hayman Ayesha Sherrie	Fire Inspector	59060.82	f	Fire Prevention	59691
Hobday Brittany Leigh	Fire Inspector	59060.82	f	Fire Prevention	59692
Oddo Marc Edward	Fire Inspector	59060.82	f	Fire Prevention	59693
Cook Nicholas	Transportation Elect.Tech II L	59050.26	f	Maintenance Right of Way (MOW)	59694
Castaneda David Jesse	Airport Operations Supvr I	59046.57	f	Oper - Airside	59695
Cormier Stacy	Code Enforcement Inspector Ld	59046.57	f	Plan Reviewers	59696
Coulanges Frantz	Airport Operations Supvr I	59046.57	f	Oper - Terminal Ops	59697
Curlee James E.	WW Treatment Plant Op IV Sr	59046.57	f	CLT Water Union County	59698
Foster Philip E.	Labor Crew Chief II	45580.61	f	CLT Water West Tyvola Zone	62724
Kracke Fred M	Fleet Specification Analyst	59046.57	f	Fleet Section	59700
Mahon James Marion	Code Enforcement Inspector Ld	59046.57	f	Housing Combined	59701
Messenger Daniel A	WW Treatment Plant Op IV Sr	59046.57	f	CLT Water Sugar Creek Plant	59702
Nard Greg D.	WW Treatment Plant Op IV Sr	59046.57	f	CLT Water Mallard Creek Plant	59703
Regeis John Anton	Airport Operations Supvr I	59046.57	f	Oper - Landside/Grd Trans	59704
Sanderson Jr Charles Ray	Conveyor Load Bridge Tech Sr	59046.57	f	Facil - Building Maintenance	59705
Smith Culbert Preston	Water Chf Treatment Plant Op	59046.57	f	CLT Water Franklin Plant	59706
Tat Eric Chum	Transportation Elect.Tech II L	59046.57	f	Light Rail Maintenance	59707
Vidal Edward A	WW Treatment Plant Op IV Sr	59046.57	f	CLT Water McAlpine Creek Plant	59708
Bernesser Jr Thomas James	Code Enforcement Inspector Ld	59045.51	f	Code Enforcement Combined	59709
Brandon Sr William Joseph	Conveyor Load Bridge Tech Sr	59045.51	f	Facil - Building Maintenance	59710
Griffith Jr Reuben	Administrative Officer I	45580.61	f	Professional Standards Unit	62725
McDonald Edison	Laborer	31200	f	SWS Operations - Bulky Collect	59712
Wilson Khrishna Andy Marauge	Airport Shuttlebus Driver	36248.46	f	Oper - Landside/Grd Trans	59713
Byers Anthony Eugene	Street Crew Member	31200	f	SouthWest District (Sweden)	59714
Washington Carl	Water Service Technician	35040.64	f	CLT Water Cust Service-Admin	59715
Martin DeMonte	Utilities Technician I	31313.85	f	CLT Water Matthews Zone	59716
McDowell James Lamonte	Laborer	31200	f	SWS Operations - Yard Waste Co	59717
Smith Charissa Michelle	Airport Shuttlebus Driver	36248.29	f	Oper - Landside/Grd Trans	59718
Carey Leroy	Street Crew Member	31200	f	Central District (Northpointe)	59719
Williams Keith Clanderous	Water Service Technician	35040.64	f	CLT Water Cust Service-Admin	59720
Smith Miaya A	Office Assistant IV	36249.3	f	Light Rail Maintenance	59721
Martin Dominique	Utilities Technician I	31313.85	f	CLT Wat General Commerce Zone	59722
McDowell Jerome	Laborer	31200	f	SWS Operations - Bulky Collect	59723
Clark Nicole Dove	Office Assistant IV	36248.25	f	CLT Water Mallard Creek Plant	59724
Carson Jr Rodney Randell	Street Crew Member	31200	f	Central District (Northpointe)	59725
Ratliff Daniel Michael	Water Service Technician	35040.18	f	CLT Water Cust Service-Admin	59726
Stewart Tracy	Special Transportation Driver	36249.3	f	Special Transportation Service	59727
Mobley Paul	Utilities Technician I	31313.85	f	CLT Wat General Commerce Zone	59728
Morgan Johnnie James	Utilities Technician I	31313.85	f	CLT Water Huntersville Zone	59729
Peduto Claudia	Office Assistant III	31313.85	f	Dev - Executive	59730
Peters Marqus	Utilities Technician I	31313.85	f	CLT Wat General Commerce Zone	59731
Phifer Demarco Espie	Utilities Technician I	31313.85	f	CLT Water Matthews Zone	59732
Reeves Quintin	Utilities Technician I	31313.85	f	CLT Wat General Commerce Zone	59733
Rice Lucious M	Equipment Operator I	31313.85	f	Facilities	59734
Richardson Eric	Utilities Technician I	31313.85	f	CLT Wat General Commerce Zone	59735
Roberts Jr Troy Dixon	Utilities Technician I	31313.85	f	CLT Water West Tyvola Zone	59736
Rutledge Stanley Eugene	Utilities Technician I	31313.85	f	CLT Water West Tyvola Zone	59737
Staton Sudayson M	Utilities Technician I	31313.85	f	CLT Water Matthews Zone	59738
steele santonio	Utilities Technician I	31313.85	f	CLT Water Matthews Zone	59739
Stinson II Michael Arnez	Utilities Technician I	31313.85	f	CLT Water West Tyvola Zone	59740
Vaughn Devan Christopher	Utilities Technician I	31313.85	f	CLT Wat General Commerce Zone	59741
Williams Arthur James	Utilities Technician I	31313.85	f	CLT Water Matthews Zone	59742
Williams Dewayne Lonnell	Utilities Technician I	31313.85	f	CLT Water West Tyvola Zone	59743
woodard odell George	Utilities Technician I	31313.85	f	CLT Water Huntersville Zone	59744
Zinibi Redouane	Utilities Technician I	31313.85	f	CLT Water West Tyvola Zone	59745
Glover Brandon Andrew	Utilities Technician I	31313.36	f	CLT Wat General Commerce Zone	59746
Allen Mark	Utilities Technician I	31313.32	f	CLT Wat General Commerce Zone	59747
Davis Derrick Bernard	Utilities Technician I	31313.32	f	CLT Wat General Commerce Zone	59748
Davis Michael	Utilities Technician I	31313.32	f	CLT Water Huntersville Zone	59749
EVANS COREY EUGENE	Utilities Technician I	31313.32	f	CLT Wat General Commerce Zone	59750
Harris Jr Edward Hamilton	Utilities Technician I	31313.32	f	CLT Water Matthews Zone	59751
McClain Jordan Marquis	Utilities Technician I	31313.32	f	CLT Wat General Commerce Zone	59752
Mcleod Timothy	Utilities Technician I	31313.32	f	CLT Water Matthews Zone	59753
Reid Jaron Wesley	Utilities Technician I	31313.32	f	CLT Water West Tyvola Zone	59754
Smith III Leon T	Utilities Technician I	31313.32	f	CLT Wat General Commerce Zone	59755
Jackson Jeffrey	Utilities Technician I	31313	f	CLT Water Matthews Zone	59756
Neal Nathan	Equipment Operator I	31313	f	Facilities	59757
Strong Tiffany Ruth	Special Transportation Driver	36249.3	f	Special Transportation Service	59758
Sullivan Tom D.	Airports Services Representati	36249.3	f	Facil - Janitorial/Housekeepin	59759
Turner Merlin Wayne	Utilities Technican II	36249.3	f	CLT Wat General Commerce Zone	59760
Vineyard Jermaine Coburn	Airfield Maintenance Tech I	36249.3	f	Facil - Airside Maintenance (F	59761
Watts Sonia	Special Transportation Driver	36249.3	f	Special Transportation Service	59762
Williams Diane Carol	Special Transportation Driver	36249.3	f	Special Transportation Service	59763
Wright Hattie E	Equipment Operator II	36249.3	f	SouthWest District (Sweden)	59764
Henderson Jr George Wesley	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59765
Nsiah John Osae	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59766
Brown II Paul	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59767
Bruku Kwasi	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59768
Caesar Yonnette C	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59769
Carroll Dena Wallace	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59770
Dollard Sylvia	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59771
Gaston Fritz G	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59772
Glenn Carla Lanette	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59773
Hammonds Lena Crittington	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59774
Henderson Brenda Louise	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59775
Hill Breeden Tawana Latasha	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59776
Hodges Nancy	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59777
James Sandra Robertson	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59778
Johnson Tomekya Shirell	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59779
Kowsky Cindy	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59780
Lawhorn Monike Charmos	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59781
Morais Michael Milton	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59782
Okemba Stephane	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59783
Outen Louis Levern	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59784
Simpson LaVerne Darlene	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59785
Thompson Tony Lee	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59786
Williams Jacqueline Demetria	Airport Shuttlebus Driver	36249.01	f	Oper - Landside/Grd Trans	59787
Artis Jr Romanuel	Equipment Operator II	36248.78	f	SouthWest District (Sweden)	59788
Bailey Michele Lee	Customer/Revenue Serv. Assist	36248.78	f	CLT Water Cust Service-Admin	59789
Shealy Angela Y	Administrative Officer I	45580.61	f	CLT Water Cust Service-Admin	62726
Bibbs Jr Jeffrey	Equipment Parts Technician	36248.78	f	Fleet Mgmt-Parts Operations	59791
Bond Sha-Sha L	Airports Services Representati	36248.78	f	Oper - Airport Security	59792
Caldwell Marquise	Utilities Technican II	36248.78	f	CLT Water West Tyvola Zone	59793
Carelock Carl Antonio	Utilities Technican II	36248.78	f	CLT Water Huntersville Zone	59794
Charlebois Adam s	Airfield Maintenance Tech I	36248.78	f	Facil - Airside Maintenance (F	59795
Godbolt Shannon	Office Assistant IV	36248.25	f	CLT Water EMD Maintenance	59796
McManus Brittany	Kennel Attendant	31200	f	Animal Care & Control Division	59797
Zamor Christopher E	Water Service Technician	35040.18	f	CLT Water Cust Service-Admin	59798
Cassell Nathaniel Demontre	Street Crew Member	31200	f	SouthWest District (Sweden)	59799
Smith Ryan Lee	Labor Crew Chief II	45580.08	f	CLT Water West Tyvola Zone	62727
Chambers Terry Durant	Laborer Sr	31200	f	SWS Operations - Rights of Way	59801
Meadows Mark Kevin	Manhole Inspector	31200	f	CLT Water Field Ops Admin	59802
Mickles Ricky	Manhole Inspector	31200	f	CLT Water Field Ops Admin	59803
Couvertier Jillian Belen	Customer/Revenue Serv. Assist	36248.16	f	CLT Water Cust Service-Admin	59804
Miller Gregory	Laborer	31200	f	SWS Operations - Garbage Colle	59805
Harris Damian	Special Transportation Driver	36248.16	f	Special Transportation Service	59806
Mills Michael Corey	Street Crew Member	31200	f	Central District (Northpointe)	59807
Swann Patricia Coyleen	Airport Shuttlebus Driver	36248.1	f	Oper - Landside/Grd Trans	59808
Clark Domaunia Traventa	Laborer	31200	f	SWS Operations - Yard Waste Co	59809
Mills Undray Containe	Street Crew Member	31200	f	Transportation Operations	59810
Batey Carly Ann	Fire Fighter I	45563.8	f	Fire Station 24	62728
Mitchell Jeffrey Bernard	Laborer	31200	f	SWS Operations - Business Garb	59812
Moore Cynthia L	Kennel Attendant	31200	f	Animal Care & Control Division	59813
Moyer Walter Lamont	Manhole Inspector	31200	f	CLT Water Field Ops Admin	59814
Nealy Joel Dewayne	Laborer	31200	f	SWS Operations - Yard Waste Co	59815
Nicholson Davey L	Laborer Sr	31200	f	SWS Operations - Rights of Way	59816
Nolley Brian Jamal	Laborer	31200	f	SWS Operations - Yard Waste Co	59817
Phelps Jr Brian Abery	Street Crew Member	31200	f	North East District (Orr)	59818
Reed Brian Scott	Street Crew Member	31200	f	North East District (Orr)	59819
Richardson Michael A	Laborer	31200	f	SWS Operations - Rights of Way	59820
Ritch Brandon Lee	Street Crew Member	31200	f	Transportation Operations	59821
Robinson Melvin Bernard	Laborer	31200	f	SWS Operations - Rights of Way	59822
Scott III Ernest Robert	Laborer	31200	f	SWS Operations - Yard Waste Co	59823
Scott Calvin White	Laborer	31200	f	SWS Operations - Yard Waste Co	59824
Carter Travis Lamont	Fire Fighter I	45563.8	f	Fire Station 16	62729
Shepard Devon Martan	Laborer Sr	31200	f	SWS Operations - South Corrido	59826
Simpson Gregory	Street Crew Member	31200	f	SouthWest District (Sweden)	59827
Smith Jr Reginald Bernard	Laborer	31200	f	SWS Operations - Yard Waste Co	59828
Smith Donnie Jerome Neely	Laborer Sr	31200	f	SWS Operations - South Corrido	59829
Smith Marquis Antione	Laborer Sr	31200	f	SWS Operations - Rights of Way	59830
Springs Brandon Jamar	Street Crew Member	31200	f	SouthWest District (Sweden)	59831
Staton Maurice	Street Crew Member	31200	f	North East District (Orr)	59832
Afework Tsigereda Kidane	Office Assistant III	34845.36	f	Admin - Administrative Service	59833
Cochran Joseph Andrew	Street Crew Member	31200	f	Transportation Operations	59834
Mahatha Carl R	Street Crew Member	34792.58	f	Central District (Northpointe)	59835
Crawford Aaron Devorn	Street Crew Member	31200	f	SouthWest District (Sweden)	59836
Walters Steven Demont	Sanitation Equipment Operator	34770.1	f	SWS Operations - Garbage Colle	59837
Crenshaw Calvin	Laborer	31200	f	SWS Operations - Rights of Way	59838
Crull Tessa J	Airports Services Representati	36248	f	Oper - Airport Security	59839
Massalay Morris V	Street Crew Member	34760.76	f	Transportation Operations	59840
Crowell Roger W	Kennel Attendant	31200	f	Animal Care & Control Division	59841
Fink Bailey	Animal Control Officer	36248	f	Animal Care & Control Division	59842
Alexander Gary B	Water Service Technician	34752.99	f	CLT Water Cust Service-Admin	59843
Crump Ashley McDonald	Kennel Attendant	31200	f	Animal Care & Control Division	59844
Ocasio Franco Jorge Yamil	Airports Services Representati	36248	f	Oper - Airport Security	59845
White Gwendolyn J	Rail Maintenance Assistant	34705.19	f	Light Rail Maintenance	59846
Cruz Orlando Jesus	Laborer Sr	31200	f	SWS Operations - South Corrido	59847
Payne Gregory	Office Assistant IV	36248	f	Human Resources Division	59848
Stewart Norma L. F.	Rail Maintenance Assistant	34704.96	f	Light Rail Maintenance	59849
Cureton Kusegi Dundecoao	Laborer	31200	f	SWS Operations - Bulky Collect	59850
Davis Dalton Alan	Airfield Maintenance Tech I	36247.72	f	Facil - Airside Maintenance (F	59851
Dobbins Spencer Ryan	Fire Fighter I	45563.8	f	Fire Station 36	62730
McCorkle Jr Robert L	Courier-Lead	34588.32	f	EPM BS CMGC Mail Rm	59853
Davidson Dominic Antoine	Laborer	31200	f	SWS Operations - Yard Waste Co	59854
Davis Derek	Street Crew Member	31200	f	SouthWest District (Sweden)	59855
Davis Gary Lee	Laborer	31200	f	SWS Operations - Rights of Way	59856
Douglas Brittany Michelle	Laborer	31200	f	Facil - Airside Maintenance (F	59857
El Bey Shiloh Metatron	Laborer	31200	f	SWS Operations - Yard Waste Co	59858
Everett Jr Aaron	Laborer	31200	f	SWS Operations - Rights of Way	59859
Eversley Ronald	Manhole Inspector	31200	f	CLT Water Field Ops Admin	59860
Featherstone Kerwin	Laborer	31200	f	SWS Operations - Rights of Way	59861
Forney Antoquie Jeremy	Laborer	31200	f	SWS Operations - Bulky Collect	59862
Freeman Adam	Street Crew Member	31200	f	Transportation Operations	59863
Freeman Shamika Janel	Street Crew Member	31200	f	North East District (Orr)	59864
Funderburk Tommy Lee	Street Crew Member	31200	f	North East District (Orr)	59865
Galvan Jose Martinez	Laborer	31200	f	SWS Operations - Garbage Colle	59866
Gibbs Rochelle Lamar	Laborer	31200	f	SWS Operations - Bulky Collect	59867
Gilbert William Eugene	Laborer	31200	f	SWS Operations - Yard Waste Co	59868
Gilmore Darryl Antoine	Laborer	31200	f	SWS Operations - Bulky Collect	59869
Gray Reginald Eugene	Laborer Sr	31200	f	SWS Operations - Yard Waste Co	59870
Gregory Lorenzo Rshid	Laborer	31200	f	SWS Operations - Yard Waste Co	59871
Hall Jonathan Q	Laborer	31200	f	Facil - Airside Maintenance (F	59872
Hammiel Jason Eugene	Laborer	31200	f	SWS Operations - South Corrido	59873
Williams Robert S	Street Crew Member	34558.23	f	Central District (Northpointe)	59874
Broaddus Bobby L	Laborer	34544.51	f	CLT Wat General Commerce Zone	59875
Brady Brian James	Water Service Technician	34522.87	f	CLT Water Cust Service-Admin	59876
Korf Geoffrey R	Special Transportation Driver	36233.6	f	Special Transportation Service	59877
Cloud Demyrio Laron	Water Service Technician	34522.87	f	CLT Water Cust Service-Admin	59878
McLendon Charles Lamar	Special Transportation Driver	36233.6	f	Special Transportation Service	59879
Mitchell Kalisa	Special Transportation Driver	36233.6	f	Special Transportation Service	59880
Eaves Sherry Ann	Service Dispatcher	34522.87	f	Administration	59881
Persen Smith Sheyla Amanda	Special Transportation Driver	36233.6	f	Special Transportation Service	59882
Velazquez Juan	Special Transportation Driver	36233.6	f	Special Transportation Service	59883
Garner Donald W	Water Service Technician	34522.87	f	CLT Water Cust Service-Admin	59884
Jackson LaVonne Denise	Water Service Technician	36191.52	f	CLT Water Cust Service-Admin	59885
Gonzalez Carlos M	Water Service Technician	34522.87	f	CLT Water Cust Service-Admin	59886
Plummer Amy L	Web Content Administrator	36189.66	f	E&PM Storm Water	59887
Labrador Mario Adan	Fire Fighter I	45563.8	f	Fire Station 41	62731
Marshall Lora Denise	Police Records Technician	34522.87	f	Records Division	59889
Broome Bryon J	Traffic Counter I	36064.05	f	Planning & Special Operations	59890
Gardner Marcus Don	Water Service Technician	34522.34	f	CLT Water Cust Service-Admin	59891
Murray Brishen Antoan	Water Service Technician	36014.43	f	CLT Water Cust Service-Admin	59892
Gaston Michael Antwain	Water Service Technician	34522.34	f	CLT Water Cust Service-Admin	59893
Barbee Malina R	Water Service Technician	36014.11	f	CLT Water Cust Service-Admin	59894
Hayer Mark A	Water Service Technician	34522.34	f	CLT Water Cust Service-Admin	59895
Hayes Dawn	Service Dispatcher	34522.34	f	CLT Water Field Ops Admin	59896
Jones Darian B	Water Service Technician	34522.34	f	CLT Water Cust Service-Admin	59897
LeGrand Christopher John	Water Service Technician	34522.34	f	CLT Water Cust Service-Admin	59898
Perry Cardero Clarence	Water Service Technician	34522.34	f	CLT Water Cust Service-Admin	59899
Reichel Joseph John	Water Service Technician	34522.34	f	CLT Water Cust Service-Admin	59900
Reid Kristin Corvette-Rene'	Water Service Technician	34522.34	f	CLT Water Cust Service-Admin	59901
Shepherd Travis Rashawn	Water Service Technician	34522.34	f	CLT Water Cust Service-Admin	59902
Thomas Jr Audwin Gregory	Water Service Technician	34522.34	f	CLT Water Cust Service-Admin	59903
Waddell Giovonie	Water Service Technician	34522.34	f	CLT Water Cust Service-Admin	59904
Singleton Denise R	Office Assistant IV	35880	f	EPM LSC Cemeteries Mgt	59905
Black Randall	Sanitation Equipment Operator	35777.23	f	SWS Operations - Garbage Colle	59906
Ratliff Jr Gregory Eric	Utilities Technican II	35714.12	f	CLT Wat General Commerce Zone	59907
Jackson Justin Denard	Utilities Technican II	35713.79	f	CLT Wat General Commerce Zone	59908
Spagna Kevin Michael	Equipment Operator II	35713.01	f	EPM Landscape Mgt	59909
Dixon Donna lynn	Equipment Operator II	35713	f	SouthWest District (Sweden)	59910
Santos Jaclyn Christine	Office Assistant IV	35713	f	Code Enforcement Combined	59911
Jinwright Joycelyn Renee	Customer/Revenue Serv. Assist	35712.9	f	Animal Care & Control Division	59912
Davis William A	Equipment Operator I	35662.92	f	EPM LSC Cemeteries Mgt	59913
Lanave Laurence Victor	Water Service Technician	35481.88	f	CLT Water Cust Service-Admin	59914
Gaither James Wylie	Sanitation Equipment Operator	35423	f	SWS Operations - Garbage Colle	59915
Robinson Kyle P.	Sanitation Equipment Operator	35422.9	f	SWS Operations - Rights of Way	59916
Scott Garry L	Equipment Operator I	35368.93	f	Facil - Airside Maintenance (F	59917
Davis Jr Silas T	Police Officer	1508	f	Secondary Employment	59918
Dickerson Sonja L	Police Officer	1508	f	Court Services - DA	59919
Dickson Vivian Vance	Police Officer	1508	f	Armed Robbery/Sexual Assault D	59920
Ellis Loraine P	Police Officer	1508	f	Secondary Employment	59921
Faulkner William C	Police Officer	1508	f	Armed Robbery/Sexual Assault D	59922
Fish John R	Police Officer	1508	f	Secondary Employment	59923
Fletcher Jerry S	Police Officer	1508	f	Airport Law Enforcement Divisi	59924
Franklin Joe T	Police Officer	1508	f	Secondary Employment	59925
Gehrke David P	Police Officer	1508	f	In-Service Training Unit	59926
Goodson Barry W	Police Officer	1508	f	Recruiting Division	59927
Haney Michael V	Police Officer	1508	f	Airport Law Enforcement Divisi	59928
Harris Milton A	Police Officer	1508	f	Secondary Employment	59929
Havens Kathleen Flynn	Police Officer	1508	f	Secondary Employment	59930
Hollifield Hershel P	Police Officer	1508	f	Aviation Unit	59931
Holmes Linda L	Police Officer	1508	f	Armed Robbery/Sexual Assault D	59932
Holshouser Jr Oswald D	Police Officer	1508	f	Airport Law Enforcement Divisi	59933
Huber Michael S	Police Officer	1508	f	Community Engagement	59934
Hunter Jeffrey L	Police Officer	1508	f	Recruiting Division	59935
Hunter Tammy S	Police Officer	1508	f	Court Services - DA	59936
James Burnice E	Police Officer	1508	f	Airport Law Enforcement Divisi	59937
Johnson Cynthia L	Police Officer	1508	f	Community Engagement	59938
Johnson Michelle P	Police Officer	1508	f	Secondary Employment	59939
Joles II Raymond C	Police Officer	1508	f	Secondary Employment	59940
Jones Kenneth L	Police Officer	1508	f	Secondary Employment	59941
Klein Jeffrey M	Police Officer	1508	f	Airport Law Enforcement Divisi	59942
Lambert Douglas W	Police Officer	1508	f	Recruiting Division	59943
Lewis Brian K	Police Officer	1508	f	Secondary Employment	59944
Malone Daniel C	Police Officer	1508	f	Airport Law Enforcement Divisi	59945
Maxfield Scott P	Police Officer	1508	f	Secondary Employment	59946
McCrae Daniel	Police Officer	1508	f	Secondary Employment	59947
McDaniel Joseph Anthony	Police Officer	1508	f	Airport Law Enforcement Divisi	59948
McMurray Charles W	Police Officer	1508	f	Secondary Employment	59949
Morton Bobby L	Police Officer	1508	f	Special Victims Division	59950
Naliboff Bruce David	Grad Intern	1508	f	Armed Robbery/Sexual Assault D	59951
Ostrove Ernest	Police Officer	1508	f	Secondary Employment	59952
Perry Pierrette K	Police Officer	1508	f	Recruiting Division	59953
Quiles Rene	Police Officer	1508	f	Airport Law Enforcement Divisi	59954
Redfern Jeffrey S	Police Officer	1508	f	Secondary Employment	59955
Rice Tony	Police Officer	1508	f	Violent Crime Division	59956
Rowland Mark W	Police Officer	1508	f	Secondary Employment	59957
Ruisi Jr John	Police Officer	1508	f	Secondary Employment	59958
Sanders Richard E	Police Officer	1508	f	In-Service Training Unit	59959
Scheppegrell David L	Police Officer	1508	f	Community Engagement	59960
Schul Kenneth M	Police Officer	1508	f	Recruiting Division	59961
Selogy Steven A	Police Officer	1508	f	Secondary Employment	59962
Setzer Howard P	Police Officer	1508	f	Secondary Employment	59963
Shumate Martin K	Police Officer	1508	f	Armed Robbery/Sexual Assault D	59964
Shy Michael K	Police Officer	1508	f	Secondary Employment	59965
Simono Steve R	Police Officer	1508	f	Secondary Employment	59966
Stewart Ernest L	Police Officer	1508	f	Secondary Employment	59967
Strother Nevayta F	Police Officer	1508	f	Community Engagement	59968
Taylor Joshua David	Laborer	31200	f	EPM BS CMGC	59969
Vinson Rita A	Police Officer	1508	f	Court Services - DA	59970
Roberts Frances Burch	Office Assistant III	23485.27	f	Special Transportation Service	59971
Mackey Shakeel	Building Maintenance Asst	809.64	f	EPM BS Spratt	59972
Tucker Karon Marguette	Laborer	31200	f	SWS Operations - Yard Waste Co	59973
Twitty-Davis Rashad Jaree	Laborer Sr	31200	f	SWS Operations - Rights of Way	59974
Vasquez Jr Eduardo Napoleon	Laborer Sr	31200	f	SWS Operations - Rights of Way	59975
Waddy Bradley Nathaniel	Street Crew Member	31200	f	North East District (Orr)	59976
Williams Jonette E	Kennel Attendant	31200	f	Animal Care & Control Division	59977
Willis Jr Forrist Henry	Laborer	31200	f	SWS Operations - Yard Waste Co	59978
Lee Travis Gerald	Fire Fighter I	45563.8	f	Fire Station 40	62732
Wilson Darell Lamonica	Laborer Sr	31200	f	SWS Operations-North Corridor	59980
Wilson Rodney	Laborer	31200	f	SWS Operations - Business Garb	59981
Woods Reginald Leon	Street Crew Member	31200	f	SouthWest District (Sweden)	59982
Wrisby Tyrone Damont	Laborer Sr	31200	f	SWS Operations - Rights of Way	59983
Yates Sr Lamar Allen	Street Crew Member	31200	f	Transportation Operations	59984
Brice Jarvis M.	Laborer	31091.48	f	EPM BS CMGC	59985
Le Dai Si	Airports Services Representati	30509.48	f	Oper - Terminal Ops	59986
Lewis III Richard R	Laborer	30313.99	f	SWS Operations - South Corrido	59987
Jenkins William F	Special Transportation Driver	29820.7	f	Special Transportation Service	59988
Shute Jr Abdul	Street Crew Member	29381.21	f	Transportation Operations	59989
Mace Austin Mitchell	Landscape Crew Member	29381	f	EPM Landscape Mgt	59990
Ebron Keandra	Apprentice	29198	f	Safety & Security	59991
Johansen Ellese Anne	Apprentice	29198	f	Technology	59992
Shaw Alexis Antonnia	Apprentice	29198	f	Administration Division	59993
Hamilton Joshua	Laborer	28260	f	SWS Operations - Yard Waste Co	59994
Hawthorne Jr James	Laborer	28260	f	SWS Operations - Yard Waste Co	59995
Kirkland J C	Laborer	28260	f	SWS Operations - Bulky Collect	59996
Thompson Arthur Lee	Laborer	28260	f	SWS Operations - Yard Waste Co	59997
Walker Samuel Ormonds	Laborer	28260	f	SWS Operations - Yard Waste Co	59998
Boston Derrick T	Laborer	28258.44	f	SWS Operations - Yard Waste Co	59999
Evans III Levi J	Special Transportation Driver	27942.26	f	Special Transportation Service	60000
Davis Angela Gail	Special Transportation Driver	27594.97	f	Special Transportation Service	60001
Hoskie Jamie L.	Special Transportation Driver	27594.97	f	Special Transportation Service	60002
Staton Lorita Crenshaw	Special Transportation Driver	27594.97	f	Special Transportation Service	60003
Avila Ambrosia Martinez	Airports Services Representati	27458.85	f	Oper - Terminal Ops	60004
Sharpe Paris	Airports Services Representati	27458.8	f	Oper - Terminal Ops	60005
Taylor Daniela Ilse	Airports Services Representati	27458.8	f	Oper - Terminal Ops	60006
Vasquez Chaver Elyana Merahi	Airports Services Representati	27458.8	f	Oper - Terminal Ops	60007
Bryant Sherika Letrese	Special Transportation Driver	27188.56	f	Special Transportation Service	60008
Johnson April Marie	Special Transportation Driver	27188.56	f	Special Transportation Service	60009
Mathis Jonathan Aaron	Special Transportation Driver	27188.56	f	Special Transportation Service	60010
Phillips Ivor	Special Transportation Driver	27188.56	f	Special Transportation Service	60011
Lakey Darnesha Rashay	Special Transportation Driver	27187.12	f	Special Transportation Service	60012
Ballard Felicia Monique	Special Transportation Driver	27186.98	f	Special Transportation Service	60013
Chambers Jr Roosevelt	Special Transportation Driver	27186.98	f	Special Transportation Service	60014
Jones LaTanya Albertina	Special Transportation Driver	27186.98	f	Special Transportation Service	60015
Outing Tia Chanel	Special Transportation Driver	27186.98	f	Special Transportation Service	60016
Talford William Eugene	Special Transportation Driver	27186.98	f	Special Transportation Service	60017
Wallace Ieshia V	Special Transportation Driver	27186.98	f	Special Transportation Service	60018
Walker Karon	Special Transportation Driver	26786.63	f	Special Transportation Service	60019
Duarte Hozana F	Airports Services Representati	24054.83	f	Oper - Terminal Ops	60020
Thomas Denise Yvette	Office Assistant III	23837.55	f	Special Transportation Service	60021
Mitchell Beth A	Police Telecommunicator	23720.39	f	Communications Division	60022
Myers Khiala Ross	Office Assistant III	23485.27	f	Special Transportation Service	60023
Wakeland Brian L	Police Officer	1508	f	Field Services Group South - A	60024
Palmer James	Office Assistant III	23485.27	f	Special Transportation Service	60025
Fowler Linda Ann	Office Assistant III	794.59	f	Special Transportation Service	60026
Bentley John Lesely	4 Yr UG Intern	789.36	f	Planning and Research	60027
Bharatam Brahmani	High School Intern	780	f	Fire Administration	60028
Davis Kathryn H	Office Assistant IV	780	f	Human Resources	60029
Dilly Sai Nishanth	High School Intern	780	f	Fire Administration	60030
Lyons Vincent	4 Yr UG Intern	780	f	Computer Technology Solutions	60031
Middleton Jr Douglas O	Grad Intern	780	f	CLT Water Business Office	60032
Morris Timothy Patrick	Fire Fighter I	45563.8	f	Fire Station 33	62733
Poe Jared Connor	4 Yr UG Intern	780	f	Dev - Environmental	60034
Raghavan Soundarya	High School Intern	780	f	Fire Administration	60035
Salley Dawn	Office Assistant V	780	f	E&PM Storm Water	60036
Smith KellyAnne	Office Assistant V	780	f	CLT Water Eng-Install & Dev	60037
Tyler Brittany	High School Intern	780	f	Criminal Intel. and Analysis	60038
Witt Megan E	Administrative Officer I	780	f	Economic Development-ADM	60039
Walker Charles B	Office Assistant IV	746.29	f	Fleet Mgmt-Atando Ave Shop	60040
Bolick John Michael	4 Yr UG Intern	728	f	Admin-Public Affairs/Media Rel	60041
Bolasingh Brendan	High School Intern	676	f	EPM Main Engineering	60042
Greentaner Tyler Joseph	Office Assistant V	676	f	EPM Main Engineering	60043
Johnson Corshonda Latreece	4 Yr UG Intern	676	f	Admin - Administrative Service	60044
Lee Tou Y	High School Intern	676	f	EPM Main Engineering	60045
Monteleone Steven	High School Intern	676	f	EPM Main Engineering	60046
Rich Jonathan Malachi	4 Yr UG Intern	676	f	Oper - Terminal Ops	60047
Smith Hayden Alexander	High School Intern	676	f	CLT Water Engineering-Admin	60048
Totherow Andrew James	Office Assistant V	676	f	EPM Main Engineering	60049
Coello Claudia	4 Yr UG Intern	624	f	CLT Water Business Sys (IT)	60050
McBryde Maggie Jane	High School Intern	624	f	Fire Investigations/Education	60051
Wilkerson Andrew P	High School Intern	624	f	Fire Administration	60052
O' Brien Kristopher Jay	Fire Fighter I	45563.8	f	Fire Station 33	62734
Auayang Francis Albert Miranda	Police Cadet	520	f	Cadets	60054
Barra Tidenek Marco	Police Cadet	520	f	Cadets	60055
Crews Tyler John	Police Cadet	520	f	Cadets	60056
Cunningham Amber Nicole	Police Cadet	520	f	Cadets	60057
Davis Joi	4 Yr UG Intern	520	f	Fleet Mgmt-Atando Ave Shop	60058
Hernandez Jr Phillip	Police Cadet	520	f	Cadets	60059
Kaiser Andrew Alexander	Police Cadet	520	f	Cadets	60060
Knutson Max	High School Intern	520	f	Fleet Mgmt-Atando Ave Shop	60061
Martinez Alan	High School Intern	520	f	Fleet Mgmt-Atando Ave Shop	60062
Martinez Alexis	High School Intern	520	f	Fleet Mgmt-Atando Ave Shop	60063
Vargas Carlos	High School Intern	520	f	Fleet Mgmt-Atando Ave Shop	60064
Roland Justin Keith	Fire Fighter I	45563.8	f	Fire Station 25	62735
Ajmera Dimple	Council Member	0	f	Mayor &City Council	60066
Bokhari Tariq S	Council Member	0	f	Mayor &City Council	60067
Driggs Edmund H	Council Member	0	f	Mayor &City Council	60068
Egleston Larken M	Council Member	0	f	Mayor &City Council	60069
Eiselt Julie J	Council Member	0	f	Mayor &City Council	60070
Harlow Howard J	Council Member	0	f	Mayor &City Council	60071
Lyles Viola Alexander	Mayor	0	f	Mayor &City Council	60072
Mayfield Clara LaWana	Council Member	0	f	Mayor &City Council	60073
Mitchell Jr James E	Council Member	0	f	Mayor &City Council	60074
Newton Matthew D	Council Member	0	f	Mayor &City Council	60075
Phipps Gregory A	Council Member	0	f	Mayor &City Council	60076
Winston Braxton D	Council Member	0	f	Mayor &City Council	60077
Way Keith A	Police Officer	1508	f	Community Engagement	60078
Williams James E	Police Officer	1508	f	Armed Robbery/Sexual Assault D	60079
Williams Shawn T	Police Officer	1508	f	Court Services - DA	60080
Woodley Joseph H	Police Officer	1508	f	Airport Law Enforcement Divisi	60081
Wrenn Andrew W	Police Officer	1508	f	Secondary Employment	60082
Nelson Nora M	Administrative Officer I	1492.43	f	EPM BS Spratt	60083
Hensley Margaret M	Engineering Assistant	1455.93	f	CLT Water Eng-Install & Dev	60084
McLaurin Desiree	Airport Operations Officer I	19032.47	f	Oper - Airside	60085
Faulkenberry Roger Dale	WW Treatment Plant Op IV Sr	1454.34	f	CLT Water McAlpine Creek Plant	60086
Burgess Donna D	Administrative Officer I	1404	f	Field Services Group North - A	60087
Lawrence Kip Shabazz	Airport Shuttlebus Driver	18814.2	f	Oper - Landside/Grd Trans	60088
Boone Jr Ted P	Systems Maintenance Mechanic	1362.86	f	Facil - Building Maintenance	60089
Holmes John J	Airport Shuttlebus Driver	18814.2	f	Oper - Landside/Grd Trans	60090
Aquilino Daniel M	Planning/Design Engineer	1352	f	Fire Administration	60091
Brucker Mark William	Airports Services Representati	18306.22	f	Oper - Terminal Ops	60092
Barrier George D	Planning/Design Engineer	1352	f	Fire Administration	60093
Norman Evelyn M	Airports Services Representati	18306.22	f	Oper - Terminal Ops	60094
Batts Phyllis B	Office Assistant V	1352	f	CM-Constituent Services	60095
Tiffany Linda H	Airports Services Representati	18306.22	f	Oper - Terminal Ops	60096
Efird Landon T	Planning/Design Engineer	1352	f	Fire Administration	60097
Harris Ronald	Airport Shuttlebus Driver	18306.01	f	Oper - Landside/Grd Trans	60098
Brooks Sandra G	Administrative Officer I	1300	f	Human Resources	60099
Knotts Sonya Leshon	Airport Shuttlebus Driver	18306.01	f	Oper - Landside/Grd Trans	60100
Cassells Harvey T	Administrative Officer II	1300	f	CLT Water Field Ops Admin	60101
Ligenza II John	Airport Shuttlebus Driver	18306.01	f	Oper - Landside/Grd Trans	60102
Stephens Jr Joseph R	Senior Tech Service Specialist	1300	f	Computer Technology Solutions	60103
Wilson Aneita Francia	Airports Services Representati	18306	f	Oper - Terminal Ops	60104
Revels John T	Administrative Officer I	1295.91	f	EPM Main Engineering	60105
Butler Lori L	Office Assistant IV	18124.65	f	Oper - Terminal Ops	60106
Brewer Laura S	Urban Forestry Specialist	1248	f	EPM Land Development	60107
Fuentes Jose Alejandro	Airports Services Representati	18124.65	f	Oper - Terminal Ops	60108
Mathis John Robert	WW Treatment Plant Op IV	1235.52	f	CLT Water EMD Administration	60109
Dawson Jeff L	Office Assistant IV	18116.8	f	Oper - Terminal Ops	60110
Christenbury Alice F	Eng Services Investigator	1196.48	f	EPM Land Development	60111
Kimble Ronald R.	Intergovernmental Rel Manager	5980	f	City Manager's Office	60112
Peeler Larry E	Administrative Officer I	1181.21	f	Administration	60113
Graham Harry K	Accountant IV	2808.37	f	City Mgr - Internal Audit	60114
Smith Benjamin Hern	Grad Intern	1144	f	CLT Water Engineering-Admin	60115
Trunk John C	Business Systems Manager	2649.92	f	CLT Water Business Office	60116
Kennedy Kaela Lecryston	Office Assistant V	1139.32	f	Community Engagement	60117
Crystal Gregory A.	Administrative Officer V	2600	f	Finance Administration	60118
Richardson Kevin	Office Assistant V	1139.32	f	Community Engagement	60119
Parker Michael Allan	Building Maintenance Asst	1092	f	Fire Training	60120
Shope Jacob Logan	Fire Fighter I	45563.8	f	Fire Station 24	62736
Hopkins Belinda Ann	Contract Technician	1053	f	SWS Customer Service	60122
Kennedy Sonda Sanders	Office Assistant V	1040	f	Planning	60123
Laney Mildred P	Office Assistant V	1040	f	City Clerk	60124
Ndiaye Papa Magatte	Grad Intern	1040	f	CM- Community Relations	60125
Sydney Karl	Airports Services Representati	1016.99	f	Oper - Terminal Ops	60126
Lahay Kenneth E	Airport Shuttlebus Driver	1016.98	f	Oper - Landside/Grd Trans	60127
Howe Janis Meacham	Office Assistant V	995.56	f	EPM BS Spratt	60128
Clark Lonna L	Airports Services Representati	991.57	f	Oper - Terminal Ops	60129
Gilmore Tammy M	Airport Shuttlebus Driver	966.12	f	Oper - Landside/Grd Trans	60130
Locklear Rosemary	Police Telecommunicator	950.98	f	Communications Division	60131
Mitchell Joan Elizabeth	Airports Services Representati	940.72	f	Oper - Terminal Ops	60132
Mitchell Joanerry Elizabeth	Airports Services Representati	940.72	f	Oper - Terminal Ops	60133
Clark Judy Little	Office Assistant V	936	f	Code Enforcement Combined	60134
Shelley Dolores	Police Investigation Tech	936	f	Non-Emergency Police Services	60135
Sellers Barbara Elaine	Police Telecommunicator	925.08	f	Communications Division	60136
Sharpe Haskell B	Airports Services Representati	915.3	f	Oper - Terminal Ops	60137
Key Malissa Evetta	Airport Shuttlebus Driver	915.29	f	Oper - Landside/Grd Trans	60138
Winston David C.	Airport Shuttlebus Driver	915.29	f	Oper - Landside/Grd Trans	60139
Bowers Carrie L	Office Assistant IV	906.23	f	Oper - Terminal Ops	60140
Andrews Kathy A	Office Assistant IV	897.52	f	Violent Crime Division	60141
Petro Gabriel	Utilities Technican II	892.84	f	E&PM Storm Water	60142
Webster Jr Robert D	Water Service Technician	850.2	f	CLT Water Cust Service-Admin	60143
Martin Thomasina P	Administrative Officer I	826.8	f	I&T Administration	60144
Humphrey Jim G	Transportation Planner III	2600	f	Administration - Director	60145
Steinman Norman	Transportation Planner III	2600	f	Municipal Planning	60146
Wagner Vinson Christa Caren	Administrative Officer I	2600	f	Economic Development-Sustainab	60147
McLelland Joseph W	Transportation Planner III	2567.6	f	Regional Planning	60148
Kornberg Andrew B	Police Major	2340	f	Office of the Chief - Administ	60149
Price Darrell A	Police Sergeant	2340	f	Armed Robbery/Sexual Assault D	60150
Robbins Ricky R	Police Sergeant	2340	f	Violent Crime Division	60151
McLelland Juliette L	Senior Engineering Project Mgr	2213.64	f	CLT Water Engineering-Admin	60152
Furr William J	Engineering Project Manager	2085.72	f	EPM Main Engineering	60153
McFadden Gary L	Police Officer	1905.66	f	Office of the Chief - Administ	60154
McNally Teresa E	Police Captain	1872	f	Administrative Services Group	60155
Marshall John L	Treatment Plant Maint Supv	1683.76	f	CLT Water - Water Maintenance	60156
Warren Natasha E	Urban Forestry Supervisor	1664	f	EPM Landscape Mgt	60157
Spence Thomas John	Fire Fighter I	45563.8	f	Fire Station 17	62737
Carroll Donald J	Polygraph Examiner	1638	f	Polygraph Section	60159
Alexander Jr Ernest C	Police Officer	1508	f	Recruiting Division	60160
Anderson Darlene C	Police Officer	1508	f	Secondary Employment	60161
Barnette Jr George M	Police Officer	1508	f	Recruiting Division	60162
Beaver Teresa L	Police Officer	1508	f	Civil Emergency Unit	60163
Bennett Donald C	Police Officer	1508	f	Secondary Employment	60164
Bostick William S	Police Officer	1508	f	Court Services - DA	60165
Boyce Reginald D	Police Officer	1508	f	Secondary Employment	60166
Briggs Andre L	Police Officer	1508	f	Violent Crime Division	60167
Brown Anthony G	Police Officer	1508	f	Recruiting Division	60168
Burton Jeffrey A	Police Officer	1508	f	Secondary Employment	60169
Cannon David J	Police Officer	1508	f	Secondary Employment	60170
Champion Robert M	Police Officer	1508	f	Secondary Employment	60171
Clark Kenneth R	Police Officer	1508	f	Airport Law Enforcement Divisi	60172
Cline Ronda L	Police Officer	1508	f	Airport Law Enforcement Divisi	60173
Conover Robert P	Police Officer	1508	f	Transit Unit	60174
Corwin Mark E	Police Officer	1508	f	Recruiting Division	60175
Crawford Anthony C	Police Officer	1508	f	Airport Law Enforcement Divisi	60176
Crawford Derrick L	Police Officer	1508	f	Community Engagement	60177
Huggins Ira D	Storekeeper	41073.92	f	CLT Water Matthews Zone	60178
Whitaker L'Shauna	Police Telecommunicator	41962.21	f	Communications Division	60179
Kendall Howell Joseph	Traffic Signal Electrician	41073.92	f	Transportation Operations	60180
Burton Sylvester L	Utilities Technican II	40276.95	f	CLT Water West Tyvola Zone	60181
Lyon-Justice Cheryl A	311 Contact Center Rep-Senior	41073.92	f	CharMeck 311	60182
Wise Quentin	Police Telecommunicator	41962.21	f	Communications Division	60183
Tinsley Frankie Markee	Fire Fighter I	45563.8	f	Fire Station 30	62738
Hamilton Brian Andrew	Fire Fighter Trainee	41421.64	f	Fire Recruits	60185
Schimmel Cynthia G	Office Assistant IV	40276.65	f	Code Enforcement Combined	60186
McNair Bobby Ray	Sanitation Equipment Operator	41073.92	f	SWS Operations - Business Garb	60187
Haggard Michele Marie	Office Assistant V	41962.13	f	Facil - Airside Maintenance (F	60188
Hansen Erika Inathe	Fire Fighter Trainee	41421.64	f	Fire Recruits	60189
Gaskin Jaquez Moree	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60190
Bedard Nancy L	Customer/Revenue Serv. Assist	40276.42	f	Animal Care & Control Division	60191
Vaughan Sandra Anna	Airport Shuttlebus Driver	40679.05	f	Oper - Landside/Grd Trans	60192
Gordon Malaikah Jabarra	Claims Assistant	42591.64	f	Risk Management	60193
Garvin Davion A	Labor Crew Chief I	40981.56	f	CLT Water Huntersville Zone	60194
Padgett Sheree Olivia	Police Investigation Tech	40564.07	f	Non-Emergency Police Services	60195
Berry Aquarius Jovet	Sanitation Equip Operator Sr	41962	f	SWS Operations - Garbage Colle	60196
Harrold Joshua	Fire Fighter Trainee	41421.64	f	Fire Recruits	60197
Hagans Darius Cornell	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60198
Hamel Steven A	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60199
Hoke Corey Neagle	Equipment Operator III	41962.74	f	SouthWest District (Sweden)	60200
Koch Brent Stuart	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60201
Ludwig Jeffrey Christopher	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60202
McConneyhead Xavier Tyrell	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60203
McIver Tiffiny Nicole	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60204
Delille Djenane	311 Contact Center Rep-Lead	41963.27	f	CharMeck 311	60420
McQuiller Emery Demario	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60205
Morgan Jr Johnny	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60206
Parson Sheree S	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60207
Stepney Mark Steven	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60208
Wiley Erika Kelly	Office Assistant V	41962.74	f	SWS Customer Service	60209
Winchester Fred Lee	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60210
Wright Ramada Latonish	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60211
Henriquez Gustavo Ernesto	311 Contact Center Rep-Senior	41962.71	f	CharMeck 311	60212
Kish Scott W	Animal Control Officer-Senior	41962.71	f	Animal Care & Control Division	60213
Lockhart Dontarius Maurice	Sanitation Equipment Operator	41962.71	f	SWS Operations - Yard Waste Co	60214
Glispie Wayne Steven	Airport Shuttlebus Dispatcher	41962.71	f	Oper - Landside/Grd Trans	60215
Jones Kenneth Tyrone	Airport Shuttlebus Dispatcher	41962.71	f	Oper - Landside/Grd Trans	60216
Anderson-Bailey Alonna Marie	311 Contact Center Rep-Lead	41962.21	f	CharMeck 311	60217
Brancazio Dominick Joseph	Police Telecommunicator	41962.21	f	Communications Division	60218
Brown Tiffany Gill	Police Telecommunicator	41962.21	f	Communications Division	60219
Buelow Alyssa Brooks	Police Telecommunicator	41962.21	f	Communications Division	60220
Burke David Michael	Equipment Operator III	41962.21	f	SouthWest District (Sweden)	60221
Burris Ti-Rocka Nicole	Police Telecommunicator	41962.21	f	Communications Division	60222
Cooley Laura C	Police Telecommunicator	41962.21	f	Communications Division	60223
Dance Nathan	Police Telecommunicator	41962.21	f	Communications Division	60224
Dishong Samantha Noel	Police Telecommunicator	41962.21	f	Communications Division	60225
Ellison Jana Qunae	Office Assistant V	41962.21	f	Court Services District Court	60226
Forney Felicia T	Police Telecommunicator	41962.21	f	Communications Division	60227
Foster Shannon Lee	Police Telecommunicator	41962.21	f	Communications Division	60228
Fredrich Phillip	Treatment Plant Mechanic I	41962.21	f	CLT Water EMD Maintenance	60229
Gaetani Kevin Wayne	Police Telecommunicator	41962.21	f	Communications Division	60230
Grier Charmeeka L	Police Telecommunicator	41962.21	f	Communications Division	60231
Hamilton Sr Mickle Lamar	Equipment Operator III	41962.21	f	Central District (Northpointe)	60232
Hammond Candace Lavelle	Police Telecommunicator	41962.21	f	Communications Division	60233
Johnson Sade	Police Telecommunicator	41962.21	f	Communications Division	60234
Johnson-McNeil Donna L	311 Contact Center Rep-Lead	41962.21	f	CharMeck 311	60235
Manners Amanda Sorrell	Police Telecommunicator	41962.21	f	Communications Division	60236
Mayhew Brandon Clay	Equipment Operator III	41962.21	f	EPM Landscape Mgt	60237
McClure Lindsay Emma	Police Telecommunicator	41962.21	f	Communications Division	60238
Nauss Travis Henry	Police Telecommunicator	41962.21	f	Communications Division	60239
Nguyen Trinh Ngoc	Office Assistant V	41962.21	f	CLT Water Business Office	60240
Peoples Brandon	Equipment Operator III	41962.21	f	CLT Water Huntersville Zone	60241
Persson Danielle	Police Telecommunicator	41962.21	f	Communications Division	60242
Reed Nicholas Aaron	Office Assistant V	41962.21	f	CLT Water Admininstration	60243
Rice Karen M	Police Telecommunicator	41962.21	f	Communications Division	60244
Venable Kimberly	Police Telecommunicator	41962.21	f	Communications Division	60245
Walker Hazel L	Equipment Operator III	41962.21	f	Central District (Northpointe)	60246
Hazen Joseph Scott	Fire Fighter I	41421.64	f	Fire Station 31	60247
Traywick Penny Lee	Office Assistant IV	42583.43	f	Administration Division	60248
McGinnis James L.	Equipment Operator II	40981.56	f	Central District (Northpointe)	60249
Pearson Miriam Aretia	Administrative Officer I	42529.35	f	Community Engagement	60250
Hendrix Jake William	Fire Fighter I	41421.64	f	Fire Station 25	60251
Parrish Jennifer D	311 Contact Center Rep-Senior	40564.07	f	CharMeck 311	60252
Gale Rebecca Stevens	Police Telecommunicator	41962	f	Communications Division	60253
Bowens Samuel R	Special Transportation Driver	40276.42	f	Special Transportation Service	60254
Bucciarelli Stephanie Nicole	Police Property Control Tech	40663.94	f	Property & Evidence Management	60255
Williams Jr Melvin Ervin	Sr. Water Service Technician	40963.61	f	CLT Water Cust Service-Admin	60256
Brown Craig R	Utilities Technican II	40276.42	f	CLT Water Matthews Zone	60257
Inthanonh Sangkhom	Fire Fighter Trainee	41421.64	f	Fire Recruits	60258
Fuller Marvin D.	Sr. Water Service Technician	40663.87	f	CLT Water Matthews Zone	60259
Mckenzie Glenn William	Sanitation Equip Operator Sr	41962	f	SWS Operations - Garbage Colle	60260
Rivas Yukiko	Police Investigation Tech	40564.07	f	Non-Emergency Police Services	60261
Brewington Paul	Mason	40939.86	f	Central District (Northpointe)	60262
Meadows Rodriguez P	Sanitation Equip Operator Sr	42487.37	f	SWS Operations - Garbage Colle	60263
Clyburn Jr Theron G	Water Meter Repair Technician	40276.42	f	CLT Water Cust Service-Admin	60264
Jonas Jonathan Keith	Fire Fighter Trainee	41421.64	f	Fire Recruits	60265
Elliott Grayling	Traffic Signal Electrician	40663.87	f	Transportation Operations	60266
Nixon Thomas Kevin	Sanitation Equip Operator Sr	41962	f	SWS Operations - Garbage Colle	60267
Roseboro Shelton G.	Sanitation Equipment Operator	40564.07	f	SWS Operations - Yard Waste Co	60268
McIlwain Aaron	Utilities Technican II	40914	f	CLT Wat General Commerce Zone	60269
Banhan Abraham	Equipment Operator III	42487	f	SWS Operations - Rights of Way	60270
Conner Julia Gilmore	Animal Control Officer	40276.42	f	Animal Care & Control Division	60271
Karagias Luke micheal	Fire Fighter I	41421.64	f	Fire Station 17	60272
Gore Christopher Alan	Survey Technician	40663.87	f	EPM Main Engineering	60273
Townes Darnell	Sanitation Equip Operator Sr	41962	f	SWS Operations - Garbage Colle	60274
Taylor Antran M	Survey Technician	40564.07	f	CLT Water Locates	60275
Aldridge Michael A	Equipment Operator II	40880.75	f	SouthWest District (Sweden)	60276
Wallace Gonzo Rico	Survey Technician	42466.26	f	CLT Water Engineering-Admin	60277
Constance Linda P	Customer/Revenue Serv. Assist	40276.42	f	Animal Care & Control Division	60278
Kreigsman Wesley Brian	Fire Fighter Trainee	41421.64	f	Fire Recruits	60279
Hopkins Teela Tanique	Police Investigation Tech	40663.87	f	Crime Lab Division	60280
miller desmond fontaine	Treatment Plant Mechanic I	41961.68	f	CLT Water Union County	60281
Washington Ronnell Bernard	Sanitation Equipment Operator	40564.07	f	SWS Operations - Bulky Collect	60282
White LaToya S	311 Contact Center Rep-Senior	40564.07	f	CharMeck 311	60283
Williams Frederick Dwight	Survey Technician	40564.07	f	CLT Water Locates	60284
Wilmsen Michael C	Airfield Maintenance Tech II	40564.07	f	Facil - Airside Maintenance (F	60285
Yacobellis Rebecca Ashley	Police Investigation Tech	40564.07	f	Non-Emergency Police Services	60286
Young Zekia A	311 Contact Center Rep-Senior	40564.07	f	CharMeck 311	60287
McCombs Warren	Sr. Water Service Technician	40563.96	f	CLT Water Cust Service-Admin	60288
Meaders Jacqueline LaTanya	311 Contact Center Rep-Senior	40563.96	f	CharMeck 311	60289
Rodgers Kevin Mitchell	Survey Technician	40563.96	f	CLT Water Locates	60290
Ellis Jr Benny Joe	Service Order Specialist	45520.11	f	Fleet Mgmt-12th Street Shop	62739
Banner Michael Grant	Storekeeper	40563.96	f	Facil - Logistics	60292
Bethea Shenique Meta	311 Contact Center Rep-Senior	40563.96	f	CharMeck 311	60293
Bryant Lonnie L	Mason	45515.36	f	North East District (Orr)	62740
Jordan Chenail Larfate	Sanitation Equipment Operator	40563.96	f	SWS Operations - Street Sweepi	60295
Pauling Bryant	Sanitation Equipment Operator	40563.96	f	SWS Operations - Street Sweepi	60296
Hood Aquitest Lamar	Labor Crew Chief I	40563.46	f	CLT Water Matthews Zone	60297
Kirk George E.	Labor Crew Chief I	40563.46	f	CLT Wat General Commerce Zone	60298
Warner Mark Roger	Labor Crew Chief I	40563.46	f	CLT Water Huntersville Zone	60299
White Joseph Wiley	Labor Crew Chief I	40563.46	f	CLT Water West Tyvola Zone	60300
Williams Jr Johnny A	Labor Crew Chief I	40563.46	f	CLT Water Matthews Zone	60301
Sullivan Lester L	Accounting Specialist Sr.	40544.01	f	Finance Accounting	60302
Johnson Lynda M	Accounting Specialist Sr.	40543.97	f	Finance Accounting	60303
Biggerstaff Kendall Paige	Fire Telecommunicator I	40523.96	f	Fire Communications	60304
Davis Amy Nicole	Fire Telecommunicator I	40523.96	f	Fire Communications	60305
McCall Cody Brooks	Fire Telecommunicator I	40523.96	f	Fire Communications	60306
Moore Ryan Mckinley	Fire Telecommunicator I	40523.96	f	Fire Communications	60307
Scafide Sarah	Fire Telecommunicator I	40523.96	f	Fire Communications	60308
Shurley Daniel Joseph	Fire Telecommunicator I	40523.96	f	Fire Communications	60309
Westbrook Stephanie Karma	Fire Telecommunicator I	40523.96	f	Fire Communications	60310
Teno David Lann	Equipment Operator II	40443.2	f	EPM Landscape Mgt	60311
Hall Gerald Anthony	Sr. Water Service Technician	40405.73	f	CLT Wat General Commerce Zone	60312
Richardson Jr Harry J	Labor Crew Chief I	40405.73	f	CLT Water Huntersville Zone	60313
Caldwell James Ray	Utilities Technican II	40389.9	f	CLT Water Matthews Zone	60314
Christian Anthony	Utilities Technican II	40366.14	f	CLT Water Matthews Zone	60315
Chovit Alexis J	Airfield Maintenance Tech II	40364.13	f	Facil - Airside Maintenance (F	60316
Johnson Daniel Carling	Sanitation Equipment Operator	40364.13	f	SWS Operations - Street Sweepi	60317
Young Willie	Light Equipment Service Tech	40364.13	f	Facil - Fleet Maintenance	60318
Branch Kristi Lynn	Fire Telecommunicator I	40364.03	f	Fire Communications	60319
Ennis Ashleigh Gray	Fire Telecommunicator I	40364.03	f	Fire Communications	60320
Gabriel Charles D	Light Equipment Service Tech	40364.03	f	Facil - Fleet Maintenance	60321
Golding Glenn Thomas	Fire Telecommunicator I	40364.03	f	Fire Communications	60322
Kettenburg Joshua Edward	Airfield Maintenance Tech II	40364.03	f	Facil - Airside Maintenance (F	60323
Moffett Kenneth Wayne	Light Equipment Service Tech	40364.03	f	Facil - Fleet Maintenance	60324
Mullins Kayla Renee'	Fire Telecommunicator I	40364.03	f	Fire Communications	60325
Raymer John Kenneth	Light Equipment Service Tech	40364.03	f	Facil - Fleet Maintenance	60326
Williams Bernard M	Labor Crew Chief I	40345.03	f	CLT Water Matthews Zone	60327
Simpson Lowell	Utilities Technican II	40290.14	f	CLT Water West Tyvola Zone	60328
Hagemann Linda Lee	Customer/Revenue Serv. Assist	40276.42	f	Animal Care & Control Division	60329
Lawing Cameron Blake	Fire Fighter I	41421.64	f	Fire Station 17	60330
Johnson Demetrai L	Office Assistant IV	40276.42	f	Special Victims Division	60331
Canty Luwania Y	Office Assistant IV	40880.75	f	CLT Water Field Ops Admin	60332
Emery James Kenneth	Airfield Maintenance Tech II	42450.43	f	Facil - Airside Maintenance (F	60333
Parrish Chanda Renee	Labor Crew Chief I	40663.87	f	SouthWest District (Sweden)	60334
Shroyer Traci Michelle	Police Property Control Tech	41955.32	f	Property & Evidence Management	60335
Clements Pansy K	Office Assistant IV	40880.75	f	Code Enforcement Combined	60336
Waldon Edward Eugene	Special Transportn Dispatcher	41949.54	f	Special Transportation Service	60337
Knox Joyce Marie	Customer/Revenue Serv. Assist	40276.42	f	CLT Water Cust Service-Admin	60338
Hicks Hattie M	Office Assistant IV	40880.75	f	Code Enforcement Combined	60339
Rose Shardal L.	Office Assistant V	42425.09	f	Violent Crime Division	60340
Woody David H	Animal Control Officer-Senior	40663.87	f	Animal Care & Control Division	60341
Cherry Harold Gregory	Equipment Operator II	41902.57	f	Central District (Northpointe)	60342
Lafon Donna H	Customer/Revenue Serv. Assist	40276.42	f	Animal Care & Control Division	60343
Duncan Lillie M	Airport Shuttlebus Driver	40880.46	f	Oper - Landside/Grd Trans	60344
McLaughlin Curtis John	Mason	42387.46	f	North East District (Orr)	60345
Worthy Christopher Morgan	Police Investigation Tech	40663.87	f	Non-Emergency Police Services	60346
Finch Jaii B.	Survey Technician	45515.36	f	EPM Main Engineering	62741
Ganzert Christopher George	Mason	41895.71	f	North East District (Orr)	60347
Ouya Margaret McBride	Animal Control Officer	40276.42	f	Animal Care & Control Division	60348
Martin Norris DeVonde	Airport Shuttlebus Driver	40880.46	f	Oper - Landside/Grd Trans	60349
Cuthbertson Avis Olympia	Office Assistant V	42382.87	f	SWS Administration	60350
Barnette Corey Laman	Mason	40663.82	f	Central District (Northpointe)	60351
Blackmon Julie M	Police Property Control Tech	41852.43	f	Property & Evidence Management	60352
Rader James L.	Special Transportation Driver	40276.42	f	Special Transportation Service	60353
Ensley Sharon D	Police Property Control Tech	40879.76	f	Property & Evidence Management	60354
Villegas Reymundo	Equipment Operator III	42381.83	f	CLT Water Matthews Zone	60355
Butler Tomika Elise Latimer	Police Support Technician	40663.82	f	Communications Division	60356
Bolden Michael Jovante	Labor Crew Chief I	41801.19	f	CLT Water West Tyvola Zone	60357
Roberts Marian B	Special Transportation Driver	40276.42	f	Special Transportation Service	60358
Rowe Danielle N.	Police Support Technician	40863.86	f	Communications Division	60359
Thompson Patrina V	Airport Operations Officer I	42377.04	f	Oper - Airport Security	60360
Marseille Curtis Elijah	Fire Fighter Trainee	41421.64	f	Fire Recruits	60361
Byland Christopher Randall	Police Support Technician	40663.82	f	Communications Division	60362
Canup James Eugene	Sanitation Equipment Operator	41792.79	f	SWS Operations - Bulky Collect	60363
Underwood Philip B	Special Transportation Driver	40276.42	f	Special Transportation Service	60364
McLemore Michael Ian	Survey Technician	40828.5	f	EPM Main Engineering	60365
Wallace William T	Airport Operations Officer I	42377.04	f	Oper - Airport Security	60366
Mason Raymond Patrick	Fire Fighter Trainee	41421.64	f	Fire Recruits	60367
Hairston Donald E	Mason	40663.82	f	Central District (Northpointe)	60368
Lewis Neil	Mason	40663.82	f	North East District (Orr)	60369
McKnight Howard Delmon	Mason	40663.82	f	Central District (Northpointe)	60370
Rice Nathan Michael	Police Support Technician	40663.82	f	Communications Division	60371
Smith Daniel Edward	Mason	40663.82	f	North East District (Orr)	60372
Butler Corey T	Labor Crew Chief I	40663.37	f	CLT Water Matthews Zone	60373
Miller Jr Bobby	Labor Crew Chief I	40663.37	f	CLT Wat General Commerce Zone	60374
Smith Cassandra F	Airport Shuttlebus Driver	40658.7	f	Oper - Landside/Grd Trans	60375
Lockhart Linda J	Storekeeper	40636.38	f	Fire Logistics	60376
Carter Stan C	Utilities Technican II	40616.32	f	CLT Wat General Commerce Zone	60377
Brown Lucy Calcagno	311 Contact Center Rep	40564.22	f	CharMeck 311	60378
Navarrete-Carrion Simeon Gabriel	311 Contact Center Rep	40564.22	f	CharMeck 311	60379
Villatoro Dianna Katherine	311 Contact Center Rep	40564.22	f	CharMeck 311	60380
Alsop Matthew A	311 Contact Center Rep-Senior	40564.07	f	CharMeck 311	60381
Bednarik Brandon	Airfield Maintenance Tech II	40564.07	f	Facil - Airside Maintenance (F	60382
Blakley Johnny Lavonte	Sanitation Equipment Operator	40564.07	f	SWS Operations - Yard Waste Co	60383
Brewster Gene S	Storekeeper	40564.07	f	Light Rail Administration	60384
Brice Rodney Tyrone	Sanitation Equipment Operator	40564.07	f	SWS Operations - Yard Waste Co	60385
Callender Robert John	Survey Technician	40564.07	f	CLT Water Locates	60386
Campbell Julian	311 Contact Center Rep-Senior	40564.07	f	CharMeck 311	60387
Colon Tanya Anne	311 Contact Center Rep-Senior	40564.07	f	CharMeck 311	60388
Davis Raymond Edward	Sanitation Equipment Operator	40564.07	f	SWS Operations - Bulky Collect	60389
Davis Shavon Molique	311 Contact Center Rep-Senior	40564.07	f	CharMeck 311	60390
Dempsey Daniel Demoin	Survey Technician	40564.07	f	CLT Water Locates	60391
Garcia Marlene Enid	311 Contact Center Rep-Senior	40564.07	f	CharMeck 311	60392
Gaugler Daniel Curtis	Survey Technician	40564.07	f	CLT Water Locates	60393
Heller Serina Lynn	311 Contact Center Rep	40564.07	f	CharMeck 311	60394
Hodge Jr Franklin Lorenzo	Sanitation Equipment Operator	40564.07	f	SWS Operations - Yard Waste Co	60395
Hurt Jr James Allen	Survey Technician	40564.07	f	CLT Water Locates	60396
Jackson Jasmine Michelle	311 Contact Center Rep-Senior	40564.07	f	CharMeck 311	60397
Jackson Jimmy L	Storekeeper	40564.07	f	Light Rail Administration	60398
Joyner Lambert Maurice	311 Contact Center Rep	40564.07	f	CharMeck 311	60399
Layton Robert Roy	Storekeeper	40564.07	f	CLT Water Huntersville Zone	60400
Mack Maurice Allen	Indust Meter Repair Technician	40564.07	f	CLT Water Cust Service-Admin	60401
McClure Gary Austin	Survey Technician	40564.07	f	CLT Water Locates	60402
McKinney Dante Dominick	Sanitation Equipment Operator	40564.07	f	SWS Operations - Bulky Collect	60403
McNair Marlene	311 Contact Center Rep-Senior	40564.07	f	CharMeck 311	60404
Miller Jr Ronald Ricardo	Survey Technician	40564.07	f	CLT Water Locates	60405
Valverde Emileth	311 Contact Center Rep	42185.55	f	CharMeck 311	60406
Harris Phillip T.	Mason	42184.62	f	North East District (Orr)	60407
Allison Cassandra Copp	311 Contact Center Rep-Senior	42184.42	f	CharMeck 311	60408
Yen Tzu-Chung	Animal Control Officer-Senior	42184.42	f	Animal Care & Control Division	60409
Vick Kristin Taylor Hogg	Police Investigation Tech	42115.8	f	Criminal Intel. and Analysis	60410
Stafford Rickie	Equipment Operator II	42109.47	f	North East District (Orr)	60411
Kashimawo Muyideen Abedowale	Labor Crew Chief I	42088.88	f	CLT Water Matthews Zone	60412
Sykes Ronald Roy	Lift Station Technician	47732.65	f	CLT Water Sewer Lift	62742
Homes Sharon E	Police Investigation Tech	42012.88	f	Cyber Crime Unit	60414
Ardrey Ricky A.	Equipment Operator II	42005.49	f	North East District (Orr)	60415
Smith Ronald W	Equipment Operator II	42005.49	f	Transportation Operations	60416
Williams Michelle Lynn	Police Investigation Tech	41998.21	f	Community Wellness Division	60417
Arrington Terasia S	Police Telecommunicator	41963.27	f	Communications Division	60418
Brown Kenya	Office Assistant V	41963.27	f	Housing -Rehabilitation	60419
Houser Cathy S.	Special Transportn Dispatcher	41963.27	f	Special Transportation Service	60421
Jackson Kenney F	Office Assistant V	41963.27	f	Fire Administration	60422
Kemp Ashleigh Lynne	Office Assistant V	41963.27	f	Court Services - DA	60423
Land Janicia	Special Transportn Dispatcher	41963.27	f	Special Transportation Service	60424
Massenburg Lorie Ann	Office Assistant IV	41963.27	f	Facilities	60425
Robinson Sharon D	Service Order Specialist	41963.27	f	Fleet Mgmt-Louise Ave Shop	60426
Ross Kevin A	Treatment Plant Mechanic I	41963.27	f	CLT Water Union County	60427
Scott Alexis	Police Telecommunicator	41963.27	f	Communications Division	60428
Simms Nicole E.	Special Transportn Dispatcher	41963.27	f	Special Transportation Service	60429
Thomson Megan	Police Telecommunicator	41963.27	f	Communications Division	60430
Weatherholt Jill A	Office Assistant V	41963.27	f	Court Services - DA	60431
Zeigler Kimberly D.	Police Telecommunicator	41963.27	f	Communications Division	60432
Tinajero Rubi Esmeralda	311 Contact Center Rep	41962.98	f	CharMeck 311	60433
Akers James Charles	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60434
Alba Jose M	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60435
Askew Calvin E	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60436
Bailey Sr Christopher Lee	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60437
Barbosa Raul	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60438
Black Jermaine Dunbar	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60439
Boykin Loletia Richardson	Office Assistant V	41962.74	f	SWS Operations - Collections A	60440
Brown Jr Bennie James	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60441
Elder Steven Tymel	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60442
Garris Shamar Brevon	Sanitation Equip Operator Sr	41962.74	f	SWS Operations - Garbage Colle	60443
McGee Tyler Gray	Fire Fighter I	41421.64	f	Fire Station 34	60444
Carrothers Constance H.	Office Assistant IV	40792.08	f	Code Enforcement Combined	60445
Turner Edward	Water Meter Repair Technician	41766.2	f	CLT Water Cust Service-Admin	60446
Wilkinson Esther Y	Office Assistant IV	40276.42	f	CLT Water McDowell Creek Plant	60447
Alexander Katrina Y	Special Transportation Driver	40780.1	f	Special Transportation Service	60448
Black Sharon L.	Special Transportation Driver	40779.94	f	Special Transportation Service	60449
Byers Inger Bridgette	Special Transportation Driver	40779.94	f	Special Transportation Service	60450
Campbell Stephanie Maxzida	Special Transportation Driver	40779.94	f	Special Transportation Service	60451
McLeod Sharon Yvette	Special Transportation Driver	40779.94	f	Special Transportation Service	60452
Simmons Donald R	Customer/Revenue Serv. Assist	40779.94	f	Customer Service	60453
Singleton Tina Yvette	Special Transportation Driver	40779.94	f	Special Transportation Service	60454
Huffstetler Arnold D	Labor Crew Chief II	46264.31	f	Transportation Operations	62743
Wiggins Kimberley Nicole	Customer/Revenue Serv. Assist	40779.94	f	Vanpool	60456
Hinson Jannell Denise	Special Transportation Driver	40779.87	f	Special Transportation Service	60457
Siu Joseph	Tree Trimmer	40778.37	f	EPM Landscape Mgt	60458
Balose Jr Daniel Conrad	Sr. Water Service Technician	40763.58	f	CLT Water West Tyvola Zone	60459
Brooks Moses K	Sr. Water Service Technician	40763.58	f	CLT Water Field Ops Admin	60460
Cummings Delmond T	Labor Crew Chief I	40763.58	f	CLT Water Field Ops Admin	60461
Harris Scott Bradford	Labor Crew Chief I	40763.58	f	Transportation Operations	60462
Hinson Andrew Gad	Indust Meter Repair Technician	40763.58	f	CLT Water Cust Service-Admin	60463
Howard Benjamin Riley	Mason	40763.58	f	Central District (Northpointe)	60464
McGuire Alexander Patrick	Fire Fighter Trainee	41421.64	f	Fire Recruits	60465
Howze Anthony	Mason	40763.58	f	Central District (Northpointe)	60466
Kenyon Tom R	Sign Fabricator	40763.58	f	Transportation Operations	60467
Lingerfelt Ashton Taylor	Water Treatment Plant Opr C	40763.58	f	CLT Water Franklin Plant	60468
Rabun Arthur M	Labor Crew Chief I	40763.58	f	Transportation Operations	60469
Sherrill Justin Oneil	Water Treatment Plant Opr C	40763.58	f	CLT Water Franklin Plant	60470
Smith Devere Bentley	Sr. Water Service Technician	40763.58	f	CLT Water Cust Service-Admin	60471
Timmons William Louis	Indust Meter Repair Technician	40763.58	f	CLT Water Cust Service-Admin	60472
Woods Broderick Donnell	Labor Crew Chief I	40763.58	f	SouthWest District (Sweden)	60473
Smith Timothy Javaris	Labor Crew Chief I	40763.28	f	CLT Water West Tyvola Zone	60474
Funderburk Brian	Mason	40739.3	f	Central District (Northpointe)	60475
Lackey Timothy Wayne	Indust Meter Repair Technician	40721.88	f	CLT Water Cust Service-Admin	60476
Sifford Nahshun Dedrick	Customer/Revenue Serv. Assist	40679.41	f	CLT Water Cust Service-Admin	60477
Harris Shauna Catrece	Airport Shuttlebus Driver	40679.21	f	Oper - Landside/Grd Trans	60478
Davis Albert	Airport Shuttlebus Driver	40679.05	f	Oper - Landside/Grd Trans	60479
King Vonell E.	Airport Shuttlebus Driver	40679.05	f	Oper - Landside/Grd Trans	60480
Withers Lionel A	Special Transportation Driver	40276.42	f	Special Transportation Service	60481
Harden Tonya Welch	311 Contact Center Rep-Senior	41690.39	f	CharMeck 311	60482
Yates Boimah Z	Animal Control Officer	40276.42	f	Animal Care & Control Division	60483
McNeil Christopher Brooks	Sanitation Equipment Operator	41690.39	f	SWS Operations - Yard Waste Co	60484
Young Alicia Jean	Airport Shuttlebus Driver	40276.31	f	Oper - Landside/Grd Trans	60485
Olzewski Pamela Jo	311 Contact Center Rep-Senior	41690.39	f	CharMeck 311	60486
Alamirew Getachew	Airport Shuttlebus Driver	40276.31	f	Oper - Landside/Grd Trans	60487
Carr Charles Earnest	Sanitation Equipment Operator	41690.15	f	SWS Operations - Bulky Collect	60488
Wilson Barbara Denise	Airport Shuttlebus Driver	40276.31	f	Oper - Landside/Grd Trans	60489
McManus Gene Howard	Fire Fighter I	41421.64	f	Fire Station 24	60490
Rendleman Ivan	Sanitation Equipment Operator	41690.15	f	SWS Operations - Rights of Way	60491
Pappas Jordan	Sr. Water Service Technician	40161.36	f	CLT Water Cust Service-Admin	60492
Mejia Miguel Angel	Fire Fighter Trainee	41421.64	f	Fire Recruits	60493
Smith Stacey Maurice	Sanitation Equipment Operator	41690.15	f	SWS Operations - Yard Waste Co	60494
Grass Karen G	Accounting Specialist Sr.	41669.61	f	Finance Accounting	60495
Haggins Cleveland A	Labor Crew Chief I	41596.28	f	CLT Water West Tyvola Zone	60496
Raley Charles Junior	Utilities Technican II	41575.86	f	CLT Water West Tyvola Zone	60497
Bentley Debbie Cheryl	Special Transportation Driver	41521.62	f	Special Transportation Service	60498
Taylor Robert B	Sanitation Equipment Operator	41484.78	f	SWS Operations - Rights of Way	60499
Creech Terry G	Fire Telecommunicator I	41484.55	f	Fire Communications	60500
Diggs Michael Anthony	Sanitation Equipment Operator	41484.55	f	SWS Operations - Business Garb	60501
Aggabao Russell	Fire Fighter Trainee	41421.64	f	Fire Recruits	60502
Barbee Phillip Edward	Fire Fighter Trainee	41421.64	f	Fire Recruits	60503
Blackwelder Andrew Michael	Fire Fighter I	41421.64	f	Fire Station 9	60504
Brazil Scott Curtis	Fire Fighter Trainee	41421.64	f	Fire Recruits	60505
Brown Curtis Michael	Fire Fighter I	41421.64	f	Fire Station 31	60506
Bruce William Jared	Fire Fighter Trainee	41421.64	f	Fire Recruits	60507
Budd David Patrick	Fire Fighter Trainee	41421.64	f	Fire Recruits	60508
Butler Austin Daniel	Fire Fighter I	41421.64	f	Fire Station 41	60509
Butler Thuy Tran	Fire Fighter Trainee	41421.64	f	Fire Recruits	60510
Calilao Armen Keo	Fire Fighter Trainee	41421.64	f	Fire Recruits	60511
Cash Travis Larry	Fire Fighter I	41421.64	f	Fire Station 38	60512
Conley Tyler Alexander	Fire Fighter I	41421.64	f	Fire Station 33	60513
Cox Kevin Whitley	Fire Fighter Trainee	41421.64	f	Fire Recruits	60514
Edwards Julian Finnell	Fire Fighter Trainee	41421.64	f	Fire Recruits	60515
Ennis Dylan Blake	Fire Fighter Trainee	41421.64	f	Fire Recruits	60516
Estridge Bryson Cole	Fire Fighter Trainee	41421.64	f	Fire Recruits	60517
Fields Jeffrey Michael	Fire Fighter Trainee	41421.64	f	Fire Recruits	60518
Glasper Tyre Deshaun	Fire Fighter Trainee	41421.64	f	Fire Recruits	60519
Graham Andrew Quinton	Fire Fighter Trainee	41421.64	f	Fire Recruits	60520
Halsey Brandon S	Fire Fighter I	41421.64	f	Fire Station 31	60521
Meylor Mark Anthony Nal	Fire Fighter I	41421.64	f	Fire Station 30	60522
Morales Carlos Alberto	Fire Fighter Trainee	41421.64	f	Fire Recruits	60523
Mullis Tanner James	Fire Fighter Trainee	41421.64	f	Fire Recruits	60524
Nash II Frank A	Fire Fighter Trainee	41421.64	f	Fire Recruits	60525
Perez Christopher Lee	Fire Fighter Trainee	41421.64	f	Fire Recruits	60526
Pisani Vincent	Fire Fighter Trainee	41421.64	f	Fire Recruits	60527
Powell Nathanael Douglas	Fire Fighter Trainee	41421.64	f	Fire Recruits	60528
Rickards Erin	Fire Fighter I	41421.64	f	Fire Station 40	60529
Ross IV George Osborn	Fire Fighter Trainee	41421.64	f	Fire Recruits	60530
Ross Mark Daniel	Fire Fighter I	41421.64	f	Fire Station 31	60531
Schleiffer Zachary Franklin	Fire Fighter Trainee	41421.64	f	Fire Recruits	60532
Shippy Jimmy Lee	Fire Fighter I	41421.64	f	Fire Station 30	60533
Staton Jr Seabern	Fire Fighter Trainee	41421.64	f	Fire Recruits	60534
Stockbridge Brian Daniel	Fire Fighter Trainee	41421.64	f	Fire Recruits	60535
Talavera Christopher Andy	Fire Fighter I	41421.64	f	Fire Station 16	60536
Toms Matthew Clifford	Fire Fighter Trainee	41421.64	f	Fire Recruits	60537
Wade Brandon M	Fire Fighter I	41421.64	f	Fire Station 24	60538
Watts II Brian Alston	Fire Fighter Trainee	41421.64	f	Fire Recruits	60539
Edwards Rebecca Gayle	Office Assistant IV	41392.72	f	Violent Crime Division	60540
Ford III Simmie L	Office Assistant V	41342.98	f	Fire Prevention	60541
Reid Shynekqwa Nicole	Office Assistant V	41342.65	f	SWS Operations - Special Servi	60542
Gore Quantrell Emanuel	Sanitation Equip Operator Sr	41342.57	f	SWS Operations - Garbage Colle	60543
Gray Lester B	Service Dispatcher	41316.71	f	CLT Water Field Ops Admin	60544
Worthy Sr Antonio Miguel	Labor Crew Chief I	41291.91	f	CLT Wat General Commerce Zone	60545
Guthrie Cedric Reeves	Equipment Operator II	41282.93	f	SouthWest District (Sweden)	60546
McDonald Raymond A	Equipment Operator II	41282.93	f	Transportation Operations	60547
Phillips Emmett Benedict	Water Treatment Plant Opr C	41281.35	f	CLT Water Vest Treatment Plt O	60548
Price Monica L	Police Investigation Tech	41156.26	f	Special Events	60549
Mason Robert F	Equipment Operator II	41142.54	f	Facil - Airside Maintenance (F	60550
Belle Kim S	Labor Crew Chief I	41112.83	f	CLT Wat General Commerce Zone	60551
Almonte Juan A	Mason	41073.92	f	North East District (Orr)	60552
Brown Toby	Accounting Specialist Sr.	41073.92	f	Finance Accounting	60553
Burney Monica Dolores	Labor Crew Chief I	41073.92	f	Central District (Northpointe)	60554
Conner Michael L.	Animal Control Officer-Senior	41073.92	f	Animal Care & Control Division	60555
Singh Brian H	Equipment Operator II	40031.52	f	North East District (Orr)	60556
Davis Larry Donnell	Labor Crew Chief I	39965.54	f	CLT Wat General Commerce Zone	60557
Henkle Nicholas Ray	Storekeeper	39965.02	f	Fire Logistics	60558
Onativia Fernando Jesus	311 Contact Center Rep	39964.75	f	CharMeck 311	60559
Fisher-Lee Carmelita	Office Assistant IV	39964.74	f	HR/CR	60560
Barbee Jared W	Storekeeper	39964.61	f	Light Rail Administration	60561
Carswell Tiara Benfield	Police Investigation Tech	39964.61	f	Non-Emergency Police Services	60562
Self Matthew David	Airfield Maintenance Tech II	39964.61	f	Facil - Airside Maintenance (F	60563
Smith Sharon E	Police Support Technician	39964.61	f	Communications Division	60564
Moore David Wayne	Fire Equipment Technician	47732.39	f	Fire Logistics	62744
Alford Kenneth Devon	Sanitation Equipment Operator	39964.49	f	SWS Operations - Public Recept	60566
Grant Peter M	Police Officer	74848.55	f	South Division	63491
Anderson Michael S	Labor Crew Chief I	39964.49	f	CLT Water Matthews Zone	60567
Arango Jorge R	Survey Technician	39964.49	f	CLT Water Locates	60568
Barger Vickie Lynn	311 Contact Center Rep-Senior	39964.49	f	CharMeck 311	60569
Bell Demetrius A.	Sr. Water Service Technician	39964.49	f	CLT Wat General Commerce Zone	60570
Boyd Jaraun Ladaire	Sanitation Equipment Operator	39964.49	f	SWS Operations - Business Garb	60571
Brady Christopher Wayne	Light Equipment Service Tech	39964.49	f	Facil - Fleet Maintenance	60572
Bruinius Mark William	Mason	39964.49	f	SouthWest District (Sweden)	60573
Byrd Robert L	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60574
Camm Deandra J	311 Contact Center Rep-Senior	39964.49	f	CharMeck 311	60575
Cavin Kelley Leath	Police Investigation Tech	39964.49	f	Non-Emergency Police Services	60576
Clinton Delaine Yancey	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60577
Craven Jonathon K	Water Treatment Plant Opr C	39964.49	f	CLT Water Franklin Plant	60578
Crowell Christopher M	Indust Meter Repair Technician	39964.49	f	CLT Water Cust Service-Admin	60579
Davis Jr Earl William	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60580
Davis Sr Jamil Malik	Labor Crew Chief I	39964.49	f	CLT Wat General Commerce Zone	60581
Davis Savien J	Labor Crew Chief I	39964.49	f	SouthWest District (Sweden)	60582
Dodd Delayo	Police Investigation Tech	39964.49	f	Non-Emergency Police Services	60583
Wright Leslie James	Police Property Control Tech	38061.77	f	Property & Evidence Management	60584
Dukes Shalonda Nicole	Police Support Technician	39964.49	f	Communications Division	60585
Besse Hannah Renee	Customer/Revenue Serv Asst Sr	38061.24	f	CLT Water Cust Service-Admin	60586
Batts Breannah Nakia	311 Contact Center Rep	38061	f	CharMeck 311	60587
Broaddus Jasmine Symone	311 Contact Center Rep	38061	f	CharMeck 311	60588
Earl Collin Andrew	Fire Telecommunicator I	39964.49	f	Fire Communications	60589
Buggs Coretta Ann	311 Contact Center Rep	38061	f	CharMeck 311	60590
Ejimofor Christian	Police Investigation Tech	39964.49	f	Non-Emergency Police Services	60591
Roberts Seh Jerome	Water Service Technician	36986.64	f	CLT Water Cust Service-Admin	60592
Robinson Beverly Monet-Rochelle	Special Transportation Driver	36793.47	f	Special Transportation Service	60593
Gunter Angela Renee	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60594
Phifer Larry	311 Contact Center Rep	38061	f	CharMeck 311	60595
England Angela	Labor Crew Chief I	39964.49	f	Central District (Northpointe)	60596
Harrison LaNette Michelle	311 Contact Center Rep	38632.7	f	CharMeck 311	60597
Dent-Bey Essence S	Office Assistant IV	36974.5	f	North East District (Orr)	60598
Robinson Bobby Joe	Utilities Technican II	36793.47	f	CLT Water West Tyvola Zone	60599
Hill IV Charlie	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60600
Shufford Tia Evette	Customer/Revenue Serv Asst Sr	38061	f	Finance Revenue	60601
Escalante Cesar Armando	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60602
Lewis Mary Beatrice	311 Contact Center Rep	38632.7	f	CharMeck 311	60603
Fox Crystal Lee	Customer/Revenue Serv. Assist	36974.5	f	CLT Water Cust Service-Admin	60604
Roseboro Jeron Eugene	Utilities Technican II	36793.47	f	CLT Water West Tyvola Zone	60605
McAlister Gert Raymond	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60606
White Kapria Kapri	311 Contact Center Rep	38061	f	CharMeck 311	60607
Estes Nicholas Dean	Fire Telecommunicator I	39964.49	f	Fire Communications	60608
Robinson Hope	311 Contact Center Rep	38632.7	f	CharMeck 311	60609
Manning Brian Keith	Utilities Technican II	36974.5	f	CLT Water West Tyvola Zone	60610
Smith Sr Thomas Algernon	Water Service Technician	36793.47	f	CLT Water Cust Service-Admin	60611
Theobalt William Karl	Fire Telecommunicator I	39964.49	f	Fire Communications	60612
Reaves Angela Garland	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60613
Young Diamen Denise	311 Contact Center Rep	38061	f	CharMeck 311	60614
Garlington Jr Eddie Lester	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60615
Brownlee Karena Lavern	Customer/Revenue Serv Asst Sr	38632.59	f	CLT Water Cust Service-Admin	60616
Simmons Joel O	Equipment Operator II	36974.5	f	Central District (Northpointe)	60617
Smith Kareem	Utilities Technican II	36793.47	f	CLT Wat General Commerce Zone	60618
Burch Charnese	311 Contact Center Rep-Senior	39373.88	f	CharMeck 311	60619
Thompson Daren J	Sr. Water Service Technician	39964.49	f	CLT Water Cust Service-Admin	60620
Singletary Cornielus	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60621
Arthur Chardonai	311 Contact Center Rep	38043.82	f	CharMeck 311	60622
Gary Markus L	Light Equipment Service Tech	39964.49	f	Facil - Fleet Maintenance	60623
McKinney Cynthia Lynn	Veterinary Technician	38632.59	f	Animal Care & Control Division	60624
Simons Andre Llewllyn	Water Meter Repair Technician	36974.5	f	CLT Water Cust Service-Admin	60625
Taylor Christopher Michael	Special Transportation Driver	36793.47	f	Special Transportation Service	60626
Chappell-Isom Mary Elizabeth	Accounting Specialist Sr.	39373.88	f	Finance Accounting	60627
Ingram Ashley N	311 Contact Center Rep-Senior	39373.88	f	CharMeck 311	60628
RODRIGUEZ HENRY	Survey Technician	39373.88	f	CLT Water Locates	60629
Wilder Sherice Denise	Sanitation Equipment Operator	39373.88	f	SWS Operations - Rights of Way	60630
Williams Harlan H	Equipment Operator II	39285.74	f	Central District (Northpointe)	60631
Burch Kimberlee Clarece	Special Transportation Driver	39269.9	f	Special Transportation Service	60632
Forney Albina M	Special Transportation Driver	39269.9	f	Special Transportation Service	60633
Henry Leslie D	Office Assistant IV	39269.9	f	Central District (Northpointe)	60634
Hill Angela M	Special Transportation Driver	39269.9	f	Special Transportation Service	60635
Hudson Milton C.	Equipment Operator II	39269.9	f	Central District (Northpointe)	60636
Coffey Shawn D.	Building Maintenance Asst	37901.85	f	Fire Training	60777
McLean Lymon Monta	Special Transportation Driver	39269.9	f	Special Transportation Service	60637
Patterson Dassie D	Special Transportation Driver	39269.9	f	Special Transportation Service	60638
Ramsey Scott M	Equipment Operator II	39269.9	f	North East District (Orr)	60639
Garnes Sheryl L	Special Transportation Driver	39173.39	f	Special Transportation Service	60640
Robinson Shelton R	Utilities Technican II	39103.12	f	CLT Water Huntersville Zone	60641
Alicea-Rivera Jose L.	Treatment Plant Mech Asst	38941.81	f	CLT Water Irwin Creek Plt OPS	60642
Felstow Jeremy W	Animal Control Officer	38932.11	f	Animal Care & Control Division	60643
Guy Roger Leon	Equipment Operator II	38932.11	f	Central District (Northpointe)	60644
McClain Jimmy D.	Utilities Technican II	38932.11	f	CLT Water Matthews Zone	60645
Santiago Jose A	Equipment Operator II	38932.11	f	North East District (Orr)	60646
O'Dell Jr Gordon J	Utilities Technican II	38915.75	f	CLT Wat General Commerce Zone	60647
Chisholm Roderick D	Customer/Revenue Serv. Assist	38888.3	f	CLT Water Cust Service-Admin	60648
Nash Tremaine Trashawn	Treatment Plant Mech Asst	38846.12	f	CLT Water Mallard Creek Plant	60649
Griffin Sherrilynn O	Customer/Revenue Serv. Assist	38836.58	f	Customer Service	60650
Turner Mary Ellen	Office Assistant IV	38836.58	f	Code Enforcement Combined	60651
Barrett Jr John M	Sign And Marking Technician	38823.01	f	Transportation Operations	60652
Ray Brandon Preston	Sign And Marking Technician	38823.01	f	Transportation Operations	60653
Brewster Lavon Anthony	Sign And Marking Technician	38822.86	f	Transportation Operations	60654
Glenn Marcus Lamont	Sign And Marking Technician	38822.86	f	Transportation Operations	60655
McCachren Zackery R	Sign And Marking Technician	38822.86	f	Transportation Operations	60656
Nix John Alvin	Sign And Marking Technician	38822.86	f	Transportation Operations	60657
Smith Johnathan Lee	Pesticide Applicator	38822.86	f	EPM Landscape Mgt	60658
Lubejko Nadine Marie	Office Assistant IV	38748.97	f	Light Rail Maintenance	60659
Lorth Don	Water Service Technician	38741.98	f	CLT Water Cust Service-Admin	60660
Alston Donna Miller	Customer/Revenue Serv. Assist	38741.05	f	Customer Service	60661
VanSickle Dana Lynn	Animal Trainer	38728.06	f	Animal Care & Control Division	60662
O'Nele Kimberly Amelia	Customer/Revenue Serv Asst Sr	38727.85	f	Customer Service	60663
Douglas Dwayne O	Police Property Control Tech	38727.85	f	Property & Evidence Management	60664
Oates Alfred Gene	Equipment Operator II	38721.52	f	EPM LSC Cemeteries Mgt	60665
Mathes Ryan Alexander	Tree Trimmer	38708.85	f	EPM Landscape Mgt	60666
Connor Larry Darnell	Airport Shuttlebus Driver	38644.71	f	Oper - Landside/Grd Trans	60667
Murillo Manuel	Airport Shuttlebus Driver	38644.71	f	Oper - Landside/Grd Trans	60668
Abernathy Teresa M	WW Treatment Plant Op I	38633.38	f	CLT Water Union County	60669
Sanchez Caridad	Office Assistant IV	38632.9	f	Animal Care & Control Division	60670
Foday Johnnett Madiana	Police Property Control Tech	38632.85	f	Property & Evidence Management	60671
Friend William A	311 Contact Center Rep	38632.85	f	CharMeck 311	60672
Jones Robert Darren	Tree Trimmer	38632.85	f	EPM Landscape Mgt	60673
Bacote Robin Antonia	311 Contact Center Rep	38632.7	f	CharMeck 311	60674
Gonzalez Edwiges Valeria	Airport Operations Officer I	38632.7	f	Oper - Airport Security	60675
Gitro Daniel Mark	Fire Telecommunicator I	39964.49	f	Fire Communications	60676
Torok Martin Joseph	Utilities Technican II	36793.47	f	CLT Wat General Commerce Zone	60677
Broaddus Kevin Lamont	Customer/Revenue Serv Asst Sr	38613.32	f	Finance Revenue	60678
Gregory Gary Marquis	Sanitation Equipment Operator	39964.49	f	SWS Operations - Bulky Collect	60679
Walker Jr Hullen Christopher	Equipment Operator II	36974.5	f	Central District (Northpointe)	60680
Barkley John Stephen	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60681
Thurman Kalina Erica	Police Investigation Tech	39964.49	f	Non-Emergency Police Services	60682
Caldwell Jamar D	311 Contact Center Rep	38043.82	f	CharMeck 311	60683
Tyndall Jennifer	Accounting Specialist Sr.	39964.49	f	Finance Accounting	60684
Vann Steven Jeffrey	Sanitation Equipment Operator	39964.49	f	SWS Operations - Rights of Way	60685
Carthern Jimia Nicolette	311 Contact Center Rep	38043.82	f	CharMeck 311	60686
Abegaze Adam A	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60687
Walker Damico Latwonn	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60688
Grier Randy Alexander	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60689
Hursey Natasha Worelds	311 Contact Center Rep	38043.82	f	CharMeck 311	60690
Lavoie John Louis	Equipment Operator II	36974.49	f	SouthWest District (Sweden)	60691
Burch Rhonda H	Customer/Revenue Serv Asst Sr	38613.32	f	Finance Revenue	60692
Andom Awet H	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60693
van Nurden Anthony	Utilities Technican II	36793.47	f	CLT Water Matthews Zone	60694
Walker Eric Rashad	Sanitation Equipment Operator	39964.49	f	SWS Operations - Bulky Collect	60695
Guess Eric	Sanitation Equipment Operator	39964.49	f	SWS Operations - Public Recept	60696
Purcell Ashley	311 Contact Center Rep	38043.82	f	CharMeck 311	60697
Hunter Ralph Calvin	Treatment Plant Mech Asst	36973.67	f	CLT Water Sugar Creek Plant	60698
Kiker Jennifer M	Customer/Revenue Serv Asst Sr	38613.32	f	Finance Revenue	60699
Bell Tameca Octavia	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60700
Williams LaShika Renee	Customer/Revenue Serv. Assist	36793.47	f	Customer Service	60701
Walker Jay Tremaine	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60702
Harper Jamal	Traffic Signal Electrician	39964.49	f	Transportation Operations	60703
Bailey Cathy S	Office Assistant IV	38003.76	f	Director's Office Combined	60704
Nallo Abibatu A.	Asst Maintenance Mechanic	36896.92	f	Facil - Building Maintenance	60705
Stowe David Thomas	Utilities Technican II	38453.4	f	CLT Water West Tyvola Zone	60706
Booker Laura	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60707
Williams Shalanda Deshelle	Special Transportation Driver	36793.47	f	Special Transportation Service	60708
White Nathan	Mason	39964.49	f	SouthWest District (Sweden)	60709
Harris Dominic Antonio	Labor Crew Chief I	39964.49	f	CLT Water Huntersville Zone	60710
McIlwain Michelle R	Water Service Technician	37960.43	f	CLT Water Cust Service-Admin	60711
Cullins Robin Gregory	Equipment Operator II	36883.86	f	Central District (Northpointe)	60712
Jones Deborah Leigh	Animal Health Technician	36883.86	f	Animal Care & Control Division	60713
Williams Brandon Jamal	Office Assistant IV	36883.86	f	Special Transportation Service	60714
Baker Joshua Ian	Equipment Operator II	36883.72	f	Central District (Northpointe)	60715
Bustos Gabriela A	Customer/Revenue Serv. Assist	36883.72	f	Customer Service	60716
Conyers Keith Donell	Equipment Operator II	36883.72	f	SouthWest District (Sweden)	60717
Craig Ronnie L.	Equipment Operator II	36883.72	f	North East District (Orr)	60718
Diekhaus Ryan James	Animal Control Officer	36883.72	f	Animal Care & Control Division	60719
McLaughlin Joseph Henry	Equipment Operator II	36883.72	f	North East District (Orr)	60720
McManus Charles J	Animal Control Officer	36883.72	f	Animal Care & Control Division	60721
Morrison Justin Nathaniel	Animal Control Officer	36883.72	f	Animal Care & Control Division	60722
Perry Cody Eugene	Animal Control Officer	36883.72	f	Animal Care & Control Division	60723
Price Randal R	Equipment Operator II	36883.72	f	North East District (Orr)	60724
Scott Sharon	Equipment Operator II	36883.72	f	Central District (Northpointe)	60725
Spurgeon Curtrise LeOntyne	Office Assistant IV	36883.72	f	Community Engagement	60726
Waritay Darlingston Kamara	Animal Control Officer	36883.72	f	Animal Care & Control Division	60727
Wynn Jonathan Manuel	Utilities Technican II	36883.72	f	CLT Water Matthews Zone	60728
Kite Sasha	Animal Control Officer	36883.67	f	Animal Care & Control Division	60729
Fiedler Debra Susan	Office Assistant IV	36865.77	f	EPM Landscape Mgt	60730
Allen Mae Pearl	Office Assistant IV	36798.22	f	CLT Water Field Ops Admin	60731
Aska Olga Victoria	Special Transportation Driver	36793.47	f	Special Transportation Service	60732
Bennett Lakisha Michelle	Special Transportation Driver	36793.47	f	Special Transportation Service	60733
Bright Joshua Ray	Equipment Operator II	36793.47	f	EPM Landscape Mgt	60734
Caldwell LaTera	Special Transportation Driver	36793.47	f	Special Transportation Service	60735
Clayton Jr Henry Earl	Airfield Maintenance Tech I	36793.47	f	Facil - Airside Maintenance (F	60736
Dean Kimberly Grace	Special Transportation Driver	36793.47	f	Special Transportation Service	60737
Dunlap LaTasha Rochelle-Ann	Special Transportation Driver	36793.47	f	Special Transportation Service	60738
Foust Marion Alfonzo	Special Transportation Driver	36793.47	f	Special Transportation Service	60739
Francis Deidre Camille	Customer/Revenue Serv. Assist	36793.47	f	Customer Service	60740
Hickling Kurt Antoine	Customer/Revenue Serv. Assist	36793.47	f	Customer Service	60741
Howell Joshua Scott	Airfield Maintenance Tech I	36793.47	f	Facil - Airside Maintenance (F	60742
Huntley Latasha Yvette	Special Transportation Driver	36793.47	f	Special Transportation Service	60743
Johnson Tonka Cherise	Special Transportation Driver	36793.47	f	Special Transportation Service	60744
Kelty Tiffany Laki	Special Transportation Driver	36793.47	f	Special Transportation Service	60745
Kwiagaye Jr Jon-Alexander	Customer/Revenue Serv. Assist	36793.47	f	Revenues	60746
Lee David DeBerry	Airports Services Representati	36793.47	f	Oper - Airport Security	60747
Lipsey Rhonda Renee'	Special Transportation Driver	36793.47	f	Special Transportation Service	60748
McGill Teveta Sasha	Special Transportation Driver	36793.47	f	Special Transportation Service	60749
Mitchell Jerman Alexander	Special Transportation Driver	36793.47	f	Special Transportation Service	60750
Richardson Lindora Chene	Special Transportation Driver	36793.47	f	Special Transportation Service	60751
Zepu Isaac W	Water Meter Repair Technician	36793.47	f	CLT Water Cust Service-Admin	60752
Young Andrew	Traffic Signal Electrician	39964.49	f	Transportation Operations	60753
Craig Ronnie Eugene	Utilities Technican II	36793.24	f	CLT Wat General Commerce Zone	60754
Gray Morris Dolleh	Water Service Technician	37960.37	f	CLT Water Cust Service-Admin	60755
Haugh Julie A	311 Contact Center Rep-Senior	39964.49	f	CharMeck 311	60756
Collins Sue	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60757
Cammer William Edward	Equipment Operator II	38417.51	f	EPM LSC Cemeteries Mgt	60758
Gwaltney Marcus Dean	Water Service Technician	37960.37	f	CLT Water Cust Service-Admin	60759
Sonne Troy Damian	Utilities Technican II	38359.45	f	CLT Water West Tyvola Zone	60760
Herbert Cameron Andrew	Water Service Technician	37960.37	f	CLT Water Cust Service-Admin	60761
Fuchs Louis P	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60762
Iseah Michael David	Utilities Technican II	38358.92	f	CLT Water Matthews Zone	60763
Herrera Reinel De Jesus Sanchez	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60764
Lee Duperzel A.	Utilities Technican II	37908.18	f	CLT Water Matthews Zone	60765
Eudy Daniel Thomas	Mason	39964.08	f	SouthWest District (Sweden)	60766
Martin Clara Marjorie	Animal Control Officer	36793.24	f	Animal Care & Control Division	60767
Harrell Joseph Scott	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60768
Porter Aaron	Utilities Technican II	38358.92	f	CLT Water Matthews Zone	60769
Jenkins Denna Patrice	Sanitation Equipment Operator	39964.49	f	SWS Operations - Bulky Collect	60770
Shirley Fredrick Dewayne	Utilities Technican II	37908.18	f	CLT Wat General Commerce Zone	60771
Peeples Shaunn Alexis	Survey Technician	39964.08	f	CLT Water Locates	60772
Sanders Jatonia	Water Meter Repair Technician	36793.24	f	CLT Water Cust Service-Admin	60773
Harris Ashley S	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60774
Hightower Doretta	Office Assistant IV	38267.61	f	Oper - Terminal Ops	60775
Johnson Martquell Treshawn	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60776
Skorupski Phil Nicholas	Mason	39964.08	f	SouthWest District (Sweden)	60778
Savage Darnell R	Water Meter Repair Technician	36793.24	f	CLT Water Cust Service-Admin	60779
Holmes Hazel	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60780
Gray Jr Denis	Utilities Technican II	38264.97	f	CLT Wat General Commerce Zone	60781
Keaton Frank Colla	Sr. Water Service Technician	39964.49	f	CLT Water Cust Service-Admin	60782
Huntley Amesia	Traffic Counter II	37866.48	f	Planning & Special Operations	60783
Smith Picasso Richard Fernand	Sanitation Equipment Operator	39964.08	f	SWS Operations - Yard Waste Co	60784
Alvarado Ruth Del Carmen	Customer/Revenue Serv. Assist	36793.04	f	Customer Service	60785
Howard Reginald	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60786
Walker Timothy Sylester	Utilities Technican II	38264.97	f	CLT Wat General Commerce Zone	60787
Kelly Brian	311 Contact Center Rep-Senior	39964.49	f	CharMeck 311	60788
Baldwin Deffery	Utilities Technican II	37814.76	f	CLT Water West Tyvola Zone	60789
Buckley Alexandra N	Water Treatment Plant Opr C	39964	f	CLT Water Dukes WTP	60790
Davis Nickole Maurice	Airports Services Representati	36793.04	f	Oper - Airport Security	60791
Hubert Norman V	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60792
Chandler Albert Jerone	Utilities Technican II	38264.97	f	CLT Wat General Commerce Zone	60793
Kent Morgan Josephine	Fire Telecommunicator I	39964.49	f	Fire Communications	60794
King Coyt	Mason	39964.49	f	SouthWest District (Sweden)	60795
Krisel Summer Lynn	Fire Telecommunicator I	39964.49	f	Fire Communications	60796
Krueger Nelson	Labor Crew Chief I	39964.49	f	North East District (Orr)	60797
Losh Matthew Jude	Fire Telecommunicator I	39964.49	f	Fire Communications	60798
McIver Jamie Dwayne	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60799
Meadows Brian	Sign Fabricator	39964.49	f	Transportation Operations	60800
Morton Laura Elizabeth	Police Support Technician	39964.49	f	Communications Division	60801
Myers Gregory M	Labor Crew Chief I	39964.49	f	CLT Water Matthews Zone	60802
Norman Chloe Rae	Police Investigation Tech	39964.49	f	Non-Emergency Police Services	60803
Nwaorgu Steve O	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60804
Pennington Kelley Marie	Fire Telecommunicator I	39964.49	f	Fire Communications	60805
Perkel Jeffrey Lawrence	Fire Telecommunicator I	39964.49	f	Fire Communications	60806
Price Mark Alan	Sanitation Equipment Operator	39964.49	f	SWS Operations - Business Garb	60807
Richardson Robert L	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60808
Robbins Dawn W	311 Contact Center Rep-Senior	39964.49	f	CharMeck 311	60809
Roberts Entonio Lemond	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60810
Sadler Jr Phillip Arnaz	Sanitation Equipment Operator	39964.49	f	SWS Operations - Bulky Collect	60811
Satmiento Angel Miguel	Traffic Signal Electrician	39964.49	f	Transportation Operations	60812
Saunders Toni Luco	Labor Crew Chief I	39964.49	f	North East District (Orr)	60813
Schuler III John Michael	Fire Telecommunicator I	39964.49	f	Fire Communications	60814
Shedd Jamie Burton	Survey Technician	39964.49	f	CLT Water Locates	60815
Smith Sr David Bradley	Survey Technician	39964.49	f	CLT Water Locates	60816
Smoke Thomas Daniel Graef	Sr. Water Service Technician	39964.49	f	CLT Water Cust Service-Admin	60817
Spriggs Sr Eugene Edward	Labor Crew Chief I	39964.49	f	CLT Wat General Commerce Zone	60818
Springs Devyn	Accounting Specialist Sr.	39964.49	f	Finance Accounting	60819
Stecher Matthew James	Animal Control Officer-Senior	39964.49	f	Animal Care & Control Division	60820
Stevens Jimmy Rashon	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60821
Stitt Damian Lavar	Mason	39964.49	f	SouthWest District (Sweden)	60822
Sullivan Sr Raymond Lee	Sanitation Equipment Operator	39964.49	f	SWS Operations - Yard Waste Co	60823
Jones Anthony	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60824
Davis James R	Customer/Revenue Serv. Assist	38262.33	f	Animal Care & Control Division	60825
Grier Leigh-Ashley Elaine	Customer/Revenue Serv. Assist	36793.04	f	Customer Service	60826
Leach Ebony Anya	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60827
Bennett Leonard	Special Transportation Driver	37814.76	f	Special Transportation Service	60828
Hodge Bryan Clay	Special Transportation Driver	38262.33	f	Special Transportation Service	60829
Carnatzie Mary Beth Ellen	Police Support Technician	39964	f	Communications Division	60830
Hill Kurt	Equipment Operator II	36793.04	f	SouthWest District (Sweden)	60831
McCall Samantha Rene	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60832
Blackwell Roberta Lynne	Customer/Revenue Serv. Assist	37814.76	f	Customer Service	60833
Hopkins Nicholas Ryan	Animal Control Officer	37814.76	f	Animal Care & Control Division	60834
Miller Janine	Special Transportation Driver	37814.76	f	Special Transportation Service	60835
Stephens-Lindsey Antrina Dequan	Special Transportation Driver	37814.76	f	Special Transportation Service	60836
Taylor Charles	Customer/Revenue Serv. Assist	37814.76	f	Revenues	60837
Berry III Henry Lee	Utilities Technican II	37814.66	f	CLT Water Matthews Zone	60838
Simpson Tony Valentino	Utilities Technican II	37814.66	f	CLT Water West Tyvola Zone	60839
Dolschenko Kim Fowler	Office Assistant IV	37782.56	f	Administration	60840
Weaver Norman James	Utilities Technican II	37698.64	f	CLT Water West Tyvola Zone	60841
James Gary Dewayne	Traffic Counter II	37685.45	f	Design	60842
Hailu Sebsbie Dege	Airport Shuttlebus Driver	37628.64	f	Oper - Landside/Grd Trans	60843
Funderburk Kenneth DeShawn	Airport Shuttlebus Driver	37628.54	f	Oper - Landside/Grd Trans	60844
Washington Octavia Lynn	Office Assistant IV	37608.92	f	Violent Crime Division	60845
Cochran Kathleen	311 Contact Center Rep	37499.18	f	CharMeck 311	60846
Collins Maurice Damon	Service Dispatcher	37399.38	f	CLT Water Field Ops Admin	60847
Proffitt Clara W	Water Service Technician	37399.38	f	CLT Water Cust Service-Admin	60848
Friday Jeremy	Water Meter Repair Technician	37375.63	f	CLT Water Cust Service-Admin	60849
Tindal Henry DJuan	Utilities Technican II	37353.99	f	CLT Water West Tyvola Zone	60850
Guidry Keary Marcus	Animal Control Officer	37337.1	f	Animal Care & Control Division	60851
Ellis Derek Matthew	Utilities Technican II	37285.9	f	CLT Water Matthews Zone	60852
Johnson Eric K	Rail Maintenance Assistant	37260.57	f	Light Rail Maintenance	60853
Robinson Caronda Nicole	Special Transportation Driver	37255.82	f	Special Transportation Service	60854
Taylor James	Equipment Operator II	37255.82	f	EPM Landscape Mgt	60855
Curry Reginald E	Building Maintenance Asst	37079.53	f	CLT Water Franklin Plant	60856
Hunt Alice Grace	Office Assistant IV	36997.72	f	Admin - Administrative Service	60857
McNeil Herbert	Special Transportation Driver	36793.04	f	Special Transportation Service	60858
Kendrick Nelson Lee	Equipment Operator II	38262.33	f	North East District (Orr)	60859
Chealey Jr Charles Landers	Sanitation Equipment Operator	39964	f	SWS Operations - Yard Waste Co	60860
Richardson Davareon Deche	Utilities Technican II	36793.04	f	CLT Wat General Commerce Zone	60861
Montgomery Alison Mae	Special Transportation Driver	38262.33	f	Special Transportation Service	60862
Dheming Carlos E	Sanitation Equipment Operator	39964	f	SWS Operations - Yard Waste Co	60863
Taylor Timothy D	Airport Shuttlebus Driver	36792.75	f	Oper - Landside/Grd Trans	60864
Pressley Scott Eugene	Special Transportation Driver	38262.33	f	Special Transportation Service	60865
Gilbert Devin	Water Treatment Plant Opr C	39964	f	CLT Water Dukes WTP	60866
Alicea Michael Angelo	Airport Shuttlebus Driver	36792.67	f	Oper - Landside/Grd Trans	60867
Merritt Ruth	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60868
Robinson Stephanie Belk	Special Transportation Driver	38262.33	f	Special Transportation Service	60869
Hamilton Tyler Devon	Storekeeper	39964	f	Light Rail Administration	60870
Jones Catherine	Airport Shuttlebus Driver	36792.67	f	Oper - Landside/Grd Trans	60871
Wilson Melinda Buchanan	Airport Shuttlebus Driver	36792.67	f	Oper - Landside/Grd Trans	60872
Withers-Brewster Crystal	Customer/Revenue Serv. Assist	36774.99	f	Finance Revenue	60873
Caple Maren Constance	Office Assistant IV	36760.74	f	Code Enforcement Combined	60874
Banks Branden Lamar	Airports Services Representati	36611.9	f	Oper - Airport Security	60875
Digsby Harlon Christopher	Airports Services Representati	36611.9	f	Oper - Airport Security	60876
Dinkins Clark Gabriel	Airports Services Representati	36611.9	f	Oper - Airport Security	60877
Jackson Antoine	Special Transportation Driver	36611.9	f	Special Transportation Service	60878
Jones Joe Louis	Airports Services Representati	36611.9	f	Oper - Airport Security	60879
Lloyd Jarron	Airports Services Representati	36611.9	f	Oper - Airport Security	60880
Messick Chase Allen	Airfield Maintenance Tech I	36611.9	f	Facil - Airside Maintenance (F	60881
Ntomena Luntaladio Benny	Airports Services Representati	36611.9	f	Oper - Airport Security	60882
White Brittany	Airports Services Representati	36611.9	f	Oper - Airport Security	60883
Whitley Gregory Christopher	Airports Services Representati	36611.8	f	Oper - Airport Security	60884
Alexis Frankie Gerard	Airport Shuttlebus Driver	36611.5	f	Oper - Landside/Grd Trans	60885
Herron Jemilla Alicia	Airport Shuttlebus Driver	36611.5	f	Oper - Landside/Grd Trans	60886
Asiedu Eric Kwame	Airport Shuttlebus Driver	36611.5	f	Oper - Landside/Grd Trans	60887
Gary Victoria Dykes	Airport Shuttlebus Driver	36611.5	f	Oper - Landside/Grd Trans	60888
Moore Sr Derrick Charles	Airport Shuttlebus Driver	36611.5	f	Oper - Landside/Grd Trans	60889
Adams Eric Lamont	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60890
Allen Wayland O'Bryan	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60891
Anderson Jr Leroy	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60892
Bailey Michelle Nicole	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60893
Callender Jr Thomas Eugene	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60894
Collins Zina Bonita	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60895
Fryer Henry Bernard	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60896
Gunn Gwendolyn	Airport Shuttlebus Driver	36611.47	f	Oper - Landside/Grd Trans	60897
Wallace Timothy D.	Equipment Operator II	38262.33	f	North East District (Orr)	60898
Myers Keith Francis	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60899
Watson Jerina Devonne	Special Transportation Driver	38262.33	f	Special Transportation Service	60900
Reisenauer Jenafer	Police Investigation Tech	39964	f	Court Services District Court	60901
Person Tori	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60902
Young Margarett Ann	Customer/Revenue Serv Asst Sr	38248.08	f	CLT Water Cust Service-Admin	60903
Caudle Beth L.	Office Assistant IV	39957.13	f	Court Services District Court	60904
Smith Carriett	Airport Shuttlebus Driver	36611.45	f	Oper - Landside/Grd Trans	60905
Martin Febee	Customer/Revenue Serv. Assist	38187.21	f	CLT Water Cust Service-Admin	60906
Jimenez Vanessa	311 Contact Center Rep	39946.02	f	CharMeck 311	60907
Gayle Volster Seon	Airfield Maintenance Tech I	36531.15	f	Facil - Airside Maintenance (F	60908
Holler Matthew Daniel	Equipment Operator II	36428.07	f	Transportation Operations	60909
Sheelor Jacquelyn	Office Assistant IV	36251.94	f	EPM Main Engineering	60910
Johnson Deja Monique	Special Transportation Driver	36249.5	f	Special Transportation Service	60911
Kamm Justin M	Airports Services Representati	36249.5	f	Oper - Airport Security	60912
Veckruise Jr Raymond Richard	Airports Services Representati	36249.5	f	Oper - Airport Security	60913
Afework Dawit	Customer/Revenue Serv. Assist	36249.3	f	Revenues	60914
Broome Teresa Davis	Special Transportation Driver	36249.3	f	Special Transportation Service	60915
Bryant Tiffany R	Special Transportation Driver	36249.3	f	Special Transportation Service	60916
Burney Bonita A	Special Transportation Driver	36249.3	f	Special Transportation Service	60917
Caffray Kathleen Anne	Animal Control Officer	36249.3	f	Animal Care & Control Division	60918
Campbell Terry Edward	Airfield Maintenance Tech I	36249.3	f	Facil - Airside Maintenance (F	60919
Carter Donovan Romail	Customer/Revenue Serv. Assist	36249.3	f	Finance Revenue	60920
Carvajal Carlos Andres	Customer/Revenue Serv. Assist	36249.3	f	Revenues	60921
Cureton Tracy Denise	Special Transportation Driver	36249.3	f	Special Transportation Service	60922
Dobson Ananasa	Customer/Revenue Serv. Assist	36249.3	f	CLT Water Cust Service-Admin	60923
Dunlap JaLonda Nichel	Special Transportation Driver	36249.3	f	Special Transportation Service	60924
Floyd Phylica Juneice	Special Transportation Driver	36249.3	f	Special Transportation Service	60925
Funderburk Shekina Lanise	Special Transportation Driver	36249.3	f	Special Transportation Service	60926
Gaskins Archie Lee	Equipment Operator II	36249.3	f	Oper - Landside/Grd Trans	60927
Hernandez Torres Ayrton Jair	Animal Control Officer	36249.3	f	Animal Care & Control Division	60928
Knight Glenn J	Special Transportation Driver	36249.3	f	Special Transportation Service	60929
Lambert Joshua Ryan	Animal Control Officer	36249.3	f	Animal Care & Control Division	60930
Langdon Tracy Sean	Airfield Maintenance Tech I	36249.3	f	Facil - Airside Maintenance (F	60931
Lasheb Dihya Kahina	Office Assistant IV	36249.3	f	Oper - Terminal Ops	60932
Lee Kayla Denea	Customer/Revenue Serv. Assist	36249.3	f	Customer Service	60933
Smith Samuel A	Water Service Technician	38147.27	f	CLT Water Cust Service-Admin	60934
Bergen Debra H.	Office Assistant IV	38094.29	f	Recruiting Division	60935
Kavanaugh Angie Jaimes	311 Contact Center Rep	39946.02	f	CharMeck 311	60936
Nesmith III Willie	Utilities Technican II	38077.08	f	CLT Wat General Commerce Zone	60937
Anderson Aaron Antonio	Storekeeper	39943.9	f	Light Rail Administration	60938
Olvera Martha Patricia	Animal Health Technician	38061.97	f	Animal Care & Control Division	60939
Coles-Mitchell Sharon	Office Assistant IV	39859.46	f	Property & Evidence Management	60940
Boatwright Rodney Darnell	Tree Trimmer	38061.77	f	EPM Landscape Mgt	60941
Ellington Josephine Sinclair	Customer/Revenue Serv. Assist	39859.46	f	Revenues	60942
Bradley Daniel	WW Treatment Plant Op I	38061.77	f	CLT Water McAlpine Creek Plant	60943
Gibson Sharon E.	Office Assistant IV	39859.46	f	CLT Water Field Ops Admin	60944
Drammeh Ndeybintu	Airport Operations Officer I	38061.77	f	Oper - Airport Security	60945
Dockery Shuron Clarke	Police Property Control Tech	39803.51	f	Property & Evidence Management	60946
Sigmon II Kenneth Gaither	Equipment Parts Technician	39783.45	f	Fleet Mgmt-Parts Operations	60947
Bardlavens Demetrius La'Chelle	Customer/Revenue Serv. Assist	39760.76	f	Revenues	60948
Benton Laura Alice	Special Transportation Driver	39760.76	f	Special Transportation Service	60949
Buckhalter Twanda Shree	Special Transportation Driver	39760.76	f	Special Transportation Service	60950
Hicklen Angela M	Special Transportation Driver	39760.76	f	Special Transportation Service	60951
Murphy Furtuesquier	Special Transportation Driver	39760.76	f	Special Transportation Service	60952
Obie Melissa	Special Transportation Driver	39760.76	f	Special Transportation Service	60953
Peay Bernice	Special Transportation Driver	39760.76	f	Special Transportation Service	60954
Barksdale-Byfield LaShawn Shere	Airport Shuttlebus Driver	39661.88	f	Oper - Landside/Grd Trans	60955
Phillips Ronald Alan	Airport Shuttlebus Driver	39661.88	f	Oper - Landside/Grd Trans	60956
Asfaha Tebe	Airport Shuttlebus Driver	39661.72	f	Oper - Landside/Grd Trans	60957
King Joann A	Office Assistant IV	39601.89	f	Land Development	60958
Christopher Kerry Marie	Customer/Revenue Serv Asst Sr	39452.52	f	Customer Service	60959
Davis Sharon Bernadette	Office Assistant IV	39438.89	f	Secondary Employment	60960
Barringer Dominic D	Equipment Operator II	39374.41	f	North East District (Orr)	60961
Jeffrey Tia Harriet Jeanett	311 Contact Center Rep	39374.13	f	CharMeck 311	60962
Mercado Campo Laura	311 Contact Center Rep	39374.13	f	CharMeck 311	60963
Ortez Mendoza Kristy Maria	311 Contact Center Rep	39374.13	f	CharMeck 311	60964
Brown Lacreshia Shauntae	Sanitation Equipment Operator	39374.1	f	SWS Operations - Yard Waste Co	60965
Navratil Erin C	Police Investigation Tech	39374	f	North Division	60966
Bryant Mozelle M. M.	311 Contact Center Rep-Senior	39373.88	f	CharMeck 311	60967
Dumpson Tyrell Jason	311 Contact Center Rep	38061.77	f	CharMeck 311	60968
Fields Schleace Risharda	311 Contact Center Rep	38061.77	f	CharMeck 311	60969
Franks Erick	WW Treatment Plant Op I	38061.77	f	CLT Water Mallard Creek Plant	60970
Friday Thomasina	Central Cashier	38061.77	f	Finance Revenue	60971
Gaither Rickey Lamar	Tree Trimmer	38061.77	f	EPM Landscape Mgt	60972
Garrett Tracy Cheri	311 Contact Center Rep	38061.77	f	CharMeck 311	60973
Giangrande Roger A	311 Contact Center Rep	38061.77	f	CharMeck 311	60974
Karriker Justin Ryan	Tree Trimmer	38061.77	f	EPM Landscape Mgt	60975
Lamela Fiorella D	Airport Operations Officer I	38061.77	f	Oper - Airport Security	60976
Mumm Christopher Gerard	311 Contact Center Rep	38061.77	f	CharMeck 311	60977
Ramsey Cameron	Tree Trimmer	38061.77	f	EPM Landscape Mgt	60978
Reynolds Erin Lindsey	Police Property Control Tech	38061.77	f	Property & Evidence Management	60979
Salmeron Xiomara Marisol	Airport Operations Officer I	38061.77	f	Oper - Airport Security	60980
Salter Kenya Dion	Police Property Control Tech	38061.77	f	Property & Evidence Management	60981
Simpson India Sheana	Police Property Control Tech	38061.77	f	Property & Evidence Management	60982
Vanderburg Cameron J	WW Treatment Plant Op I	38061.77	f	CLT Water Irwin Creek Plt OPS	60983
Witherell Angelica	Police Records Technician	34522.34	f	Records Division	60984
Cherry Alexandria Brooke	Animal Control Officer	36248.78	f	Animal Care & Control Division	60985
Hayden Norman Eugene	Utilities Technician I	31705.47	f	CLT Water Matthews Zone	60986
Broussard-Hill Cheryl D	Equipment Operator I	35342.02	f	Vanpool	60987
Madrid Carlos	Airports Services Representati	36249.3	f	Oper - Airport Security	60988
Childers Matthew J	Water Service Technician	34522.28	f	CLT Water Cust Service-Admin	60989
McAllister Stephen Lee	Water Service Technician	34522.28	f	CLT Water Cust Service-Admin	60990
Wilson Jr Thomas Eugene	Water Service Technician	34522.28	f	CLT Water Cust Service-Admin	60991
Jackson Pamela J	Street Crew Member	34473.79	f	North East District (Orr)	60992
Steele James R.	Street Crew Member	34473.79	f	SouthWest District (Sweden)	60993
Evans Shayolanda Michele	Equipment Operator I	34347.11	f	Vanpool	60994
Frost Veronica R.	Traffic Counter I	34299.08	f	Planning & Special Operations	60995
Jones Gerrod A	Labor Crew Chief II	46264.31	f	North East District (Orr)	62745
Fore Portia Ramsona	Office Assistant IV	34255.54	f	Zoning Combined	60997
Byers Cameron Marquise	Water Service Technician	34012.65	f	CLT Water Cust Service-Admin	60998
Foster Sr Johnny	Airport Shuttlebus Driver	34012.65	f	Oper - Landside/Grd Trans	60999
Green William M	Water Service Technician	34012.65	f	CLT Water Cust Service-Admin	61000
Mann Michael D	Landscape Crew Member	33963.93	f	EPM Landscape Mgt	61001
Miller Daryl L	Laborer Sr	33633	f	SWS Operations - Rights of Way	61002
Jones James A	Laborer Sr	33467.27	f	SWS Operations - Rights of Way	61003
Johnson Dawn D	Rail Maintenance Assistant	33372.08	f	Light Rail Maintenance	61004
Woodall Brandi Latisha	Rail Maintenance Assistant	33371.78	f	Light Rail Maintenance	61005
Wallace Kevin Allen	Equipment Operator I	33187.01	f	Facilities	61006
Rondina Ellen Victoria	Office Assistant IV	33171.93	f	Community Engagement	61007
Johnson Bruce Kevin	Street Crew Member	33136.34	f	Central District (Northpointe)	61008
Blanco Jahaira Cristina	Asst Maintenance Mechanic	32878.77	f	Facil - Building Maintenance	61009
Francis Jason	Asst Maintenance Mechanic	32878.77	f	Facil - Building Maintenance	61010
Mayfield Melvin Lamont	Rail Maintenance Assistant	32878.77	f	Light Rail Maintenance	61011
Peebles Michael Alexander	Asst Maintenance Mechanic	32878.77	f	Facil - Building Maintenance	61012
Gladney Willie Henry	Rail Maintenance Assistant	32878	f	Light Rail Maintenance	61013
Rodriguez II Pedro	Rail Maintenance Assistant	32878	f	Light Rail Maintenance	61014
Wolford Alexander	Rail Maintenance Assistant	32878	f	Light Rail Maintenance	61015
McDougald Steve Trenton	Courier	32574.76	f	EPM BS CMGC Mail Rm	61016
Armata Alexander	Apprentice	32323.2	f	Facil - Building Maintenance	61017
Woods Jahmad Antoine	Street Crew Member	32307.69	f	SouthWest District (Sweden)	61018
McCoy Kiesa M.	Kennel Attendant	32031.13	f	Animal Care & Control Division	61019
Walsh Christine A	Administrative Officer I	47656.12	f	Transportation Operations	62746
Young Daniel D	Laborer	32031.13	f	CLT Water Sewer Lift	61021
Ross Jaraude R	Street Crew Member	32030.6	f	North East District (Orr)	61022
Coleman Rodney L	Laborer	31952.48	f	SWS Operations - Rights of Way	61023
Singley Maurice Jamont	Laborer	31952.48	f	SWS Operations - Bulky Collect	61024
Stitt Wayne P	Laborer	31952.33	f	SWS Operations - Bulky Collect	61025
Evans Michael Anthony	Laborer Sr	31950.7	f	SWS Operations - Rights of Way	61026
Wallace Issie L	Manhole Inspector	31929.26	f	CLT Water Field Ops Admin	61027
Macedon Sr Harold P	Street Crew Member	31923.97	f	Transportation Operations	61028
Morton Christopher Adam	Equipment Operator I	31845.87	f	EPM LSC Cemeteries Mgt	61029
Isabell IV Arthur Jabar	Utilities Technician I	31783.59	f	CLT Wat General Commerce Zone	61030
Johnson Simon	Utilities Technician I	31783.59	f	CLT Water Huntersville Zone	61031
Legrand Timothy Aneza	Utilities Technician I	31783.59	f	CLT Water West Tyvola Zone	61032
Thompson Andre S	Equipment Operator I	31783.59	f	Facilities	61033
Graham Octavius Donta	Utilities Technician I	31783.55	f	CLT Water Matthews Zone	61034
Townsend Deparis De'vonte	Utilities Technician I	31783.55	f	CLT Water West Tyvola Zone	61035
Butler Brandon L	Street Crew Member	31746	f	Central District (Northpointe)	61036
Callahan Jr Jackson	Street Crew Member	31746	f	North East District (Orr)	61037
Saravalli Kenneth Ray	Street Crew Member	31746	f	Transportation Operations	61038
Smith Jr Christopher Earl	Street Crew Member	31746	f	Central District (Northpointe)	61039
Davis Zach	Utilities Technician I	31312.84	f	CLT Water Huntersville Zone	61040
Hammond Gerald Wayne	Street Crew Member	31200	f	Central District (Northpointe)	61041
McCloud Steven	Utilities Technican II	36248.77	f	CLT Wat General Commerce Zone	61042
McCorbin Lovester Bernard	Utilities Technician I	31705.47	f	CLT Water Matthews Zone	61043
Mason Jerry	Utilities Technician I	31704.95	f	CLT Wat General Commerce Zone	61044
Modrak Nicholas James	Building Maintenance Asst	35312.46	f	Facilities	61045
Harris Demarius Juan	Laborer	31200	f	SWS Operations - Yard Waste Co	61046
Harris Lee	Utilities Technician I	31312.84	f	CLT Water Huntersville Zone	61047
Avino Brian	Treatment Plant Mech Asst	36248.7	f	CLT Water McDowell Creek Plant	61048
Coates Lamont A	Utilities Technican II	36248.78	f	CLT Water Huntersville Zone	61049
English Angela	Office Assistant III	35227.67	f	Special Transportation Service	61050
Hart Jr Cody Eugene	Laborer	31200	f	SWS Operations - Yard Waste Co	61051
Foster Kenneth Anthony	Utilities Technician I	31304	f	CLT Water Huntersville Zone	61052
Harrison James M.	Manhole Inspector	31668	f	CLT Water Field Ops Admin	61053
Marseille Patrick Antoine	Special Transportation Driver	36249.3	f	Special Transportation Service	61054
Hathcock John	Laborer	31200	f	CLT Wat General Commerce Zone	61055
Josey Scott A	Service Dispatcher	35213.23	f	CLT Water Field Ops Admin	61056
Redfearn III Wilbert	Laborer	31668	f	CLT Water West Tyvola Zone	61057
Davis II Anthony	Utilities Technican II	36248.78	f	CLT Water Field Ops Admin	61058
Miller Bridgette K	Customer/Revenue Serv. Assist	36249.3	f	Customer Service	61059
Hayden Michael L	Laborer	31200	f	SWS Operations - Yard Waste Co	61060
Norman Jr Lonnie Lee	Utilities Technician I	31304	f	CLT Wat General Commerce Zone	61061
Johnson Springs Brianna	Office Assistant IV	36248.7	f	Admin - Administrative Service	61062
Paschal Kevin	Water Service Technician	35213.23	f	CLT Water Cust Service-Admin	61063
Morrow Jr Robert	Laborer Sr	31478.52	f	SWS Operations - Rights of Way	61064
Dukes Melvin	Utilities Technican II	36248.78	f	CLT Water Huntersville Zone	61065
Miller Deborah Mintz	Customer/Revenue Serv. Assist	36249.3	f	Revenues	61066
Hill Zatasha Tynette	Laborer	31200	f	SWS Operations - Garbage Colle	61067
Aguilh Shiller Pierre	Laborer	31200	f	SWS Operations - Yard Waste Co	61068
Teague Jordan Preston	Airfield Maintenance Tech I	36248.52	f	Facil - Airside Maintenance (F	61069
Sencion Eddy	Water Service Technician	35213.23	f	CLT Water Cust Service-Admin	61070
Barringer Brandon Marcell	Utilities Technician I	31313.85	f	CLT Water West Tyvola Zone	61071
Fleming Steven	Utilities Technican II	36248.78	f	CLT Wat General Commerce Zone	61072
Myers II Kenneth	Customer/Revenue Serv. Assist	36249.3	f	Revenues	61073
Hobbs Timothy Lee	Laborer Sr	31200	f	SWS Operations - Rights of Way	61074
Alexander Brian	Street Crew Member	31200	f	Transportation Operations	61075
Kouider Mohamed	Airport Shuttlebus Driver	36248.46	f	Oper - Landside/Grd Trans	61076
Whitener Jennifer Lynn	Service Dispatcher	35213.23	f	CLT Water Field Ops Admin	61077
Burton Demetrius	Utilities Technician I	31313.85	f	CLT Water Huntersville Zone	61078
Flemmings Jason D	Customer/Revenue Serv. Assist	36248.78	f	CLT Water Cust Service-Admin	61079
Gellar Adalee	Office Assistant IV	36248.78	f	Animal Care & Control Division	61080
Glee Jr Richard	Equipment Operator II	36248.78	f	CLT Wat General Commerce Zone	61081
Goodwin Little John	Airports Services Representati	36248.78	f	Oper - Airport Security	61082
Hammond Haley Ann	Animal Health Technician	36248.78	f	Animal Care & Control Division	61083
Hayes Chase	Equipment Operator II	36248.78	f	EPM Landscape Mgt	61084
Hunt Dontrevious	Equipment Operator II	36248.78	f	SouthWest District (Sweden)	61085
Hyde Brian Dale	Equipment Operator II	36248.78	f	SouthWest District (Sweden)	61086
Jones Jagarrian Jamon	Equipment Operator II	36248.78	f	North East District (Orr)	61087
Jones Lamont	Equipment Operator II	36248.78	f	SouthWest District (Sweden)	61088
Ladd Derek	Light Equipment Srvc Tech Assc	36248.78	f	Fleet Mgmt-CDC	61089
Leach Jr Bobby	Utilities Technican II	36248.78	f	CLT Wat General Commerce Zone	61090
Lorenzo Ambiorix	Water Meter Repair Technician	36248.78	f	CLT Water Cust Service-Admin	61091
Martin Kyle Wendell	Utilities Technican II	36248.78	f	CLT Water West Tyvola Zone	61092
McLeod David	Equipment Operator II	36248.78	f	North East District (Orr)	61093
Miller Jr Rodney Edgar	Utilities Technican II	36248.78	f	CLT Water West Tyvola Zone	61094
Miller Dahfae J	Airports Services Representati	36248.78	f	Oper - Airport Security	61095
Montoya Yeiminzon Ospina	Utilities Technican II	36248.78	f	CLT Water Matthews Zone	61096
Moore Jr Thomas	Utilities Technican II	36248.78	f	CLT Water Matthews Zone	61097
Moore Jatravian James	Utilities Technican II	36248.78	f	CLT Water Matthews Zone	61098
Myrick Keith Glenn	Equipment Operator II	36248.78	f	Central District (Northpointe)	61099
Ouzts Ronald E	Equipment Operator II	36248.78	f	North East District (Orr)	61100
Owens Tierra Elizabeth Shavelle	Airports Services Representati	36248.78	f	Oper - Airport Security	61101
Pomales Luisa Maria	Customer/Revenue Serv. Assist	36248.78	f	CLT Water Cust Service-Admin	61102
Richards Jr Carlyle Everald	Utilities Technican II	36248.78	f	CLT Water West Tyvola Zone	61103
Robinson Antonio	Utilities Technican II	36248.78	f	CLT Water Matthews Zone	61104
Robinson Jeffrey Jetane	Utilities Technican II	36248.78	f	CLT Water Huntersville Zone	61105
Rogers Robert Benjamin	Animal Control Officer	36248.78	f	Animal Care & Control Division	61106
Sanders Beverlee Jicole	Office Assistant IV	36248.78	f	SWS Public Information	61107
Scott Arlington Jasmaine	Utilities Technican II	36248.78	f	CLT Wat General Commerce Zone	61108
Smalls Deirdre Emmaline	Office Assistant IV	36248.78	f	Crime Lab Division	61109
Smith Coriante Denane	Utilities Technican II	36248.78	f	CLT Water West Tyvola Zone	61110
Stinson Jr Ronnie Kiante	Utilities Technican II	36248.78	f	CLT Water West Tyvola Zone	61111
THOMPSON EMMETT	Equipment Operator II	36248.78	f	North East District (Orr)	61112
Turner Craig W	Light Equipment Srvc Tech Assc	36248.78	f	Fleet Mgmt-CDC	61113
Upsher Duane Robert	Utilities Technican II	36248.78	f	CLT Water West Tyvola Zone	61114
Watson Dominique	Utilities Technican II	36248.78	f	CLT Wat General Commerce Zone	61115
Watson Garrick Andy	Utilities Technican II	36248.78	f	CLT Wat General Commerce Zone	61116
White Fernando Omar	Utilities Technican II	36248.78	f	CLT Water West Tyvola Zone	61117
White Ronnette Devonne	Office Assistant IV	36248.78	f	SWS Operations - Collections A	61118
Williams II Michael D	Airports Services Representati	36248.78	f	Oper - Airport Security	61119
Willis Kelsey	Animal Control Officer	36248.78	f	Animal Care & Control Division	61120
Yeager Amy Lynn	Customer/Revenue Serv. Assist	36248.78	f	Animal Care & Control Division	61121
Youngblood Jennifer	Animal Health Technician	36248.78	f	Animal Care & Control Division	61122
Zavala Jonathan	Utilities Technican II	36248.78	f	CLT Water Matthews Zone	61123
Austin Sheryl D	Airport Shuttlebus Driver	36248.46	f	Oper - Landside/Grd Trans	61124
Nunez Gislena Yadira	Customer/Revenue Serv. Assist	36249.3	f	Customer Service	61125
Weekly Angela H	Engineering Project Coordinato	35206.31	f	E&PM Storm Water	61126
Burris-Nash Patricia Ladravia Denise	Airport Shuttlebus Driver	36248.46	f	Oper - Landside/Grd Trans	61127
Potts Kelsey Jamil	Special Transportation Driver	36249.3	f	Special Transportation Service	61128
Curry Dawoine Antonio	Utilities Technician I	31313.85	f	CLT Wat General Commerce Zone	61129
Almishan Mohamed Mansour Yaqoub	Laborer Sr	31200	f	SWS Operations - South Corrido	61130
Howard Jeffery	Street Crew Member	31200	f	North East District (Orr)	61131
Ivey Weylyn Lakima Sharele	Laborer	31200	f	SWS Operations - Yard Waste Co	61132
Jacobs Daniel Bruce	Kennel Attendant	31200	f	Animal Care & Control Division	61133
Johnson Sr Demario B	Laborer Sr	31200	f	SWS Operations-North Corridor	61134
Joyce Jimmy Ray	Laborer	31200	f	SWS Operations - Yard Waste Co	61135
Joyner Peter D	Street Crew Member	31200	f	Central District (Northpointe)	61136
Areche Zenon	Laborer	31200	f	SWS Operations - Yard Waste Co	61137
Land Dorminique Darnyel	Laborer	31200	f	SWS Operations - Yard Waste Co	61138
Dent Sr Edward Jerome	Utilities Technician I	31313.85	f	CLT Water Matthews Zone	61139
Carter Rayford	Airport Shuttlebus Driver	36248.46	f	Oper - Landside/Grd Trans	61140
Ingram Elizabeth C	Police Records Technician	35127.2	f	Records Division	61141
Baker Nicholas Alexander	Street Crew Member	31200	f	Transportation Operations	61142
Lathan II Montega Raifield	Kennel Attendant	31200	f	Animal Care & Control Division	61143
Fite Justin Matthew	Utilities Technician I	31313.85	f	CLT Wat General Commerce Zone	61144
Hill-Stone Latanasha Latoya	Airport Shuttlebus Driver	36248.46	f	Oper - Landside/Grd Trans	61145
Rice Shun	Service Dispatcher	35127.02	f	Administration	61146
Barrino Bobby Charles	Laborer Sr	31200	f	SWS Operations - Rights of Way	61147
Lockhart Melvin	Laborer	31200	f	SWS Operations - Rights of Way	61148
Puckett Michael Scott	Utilities Technican II	36249.3	f	CLT Water Matthews Zone	61149
Gay James J	Utilities Technician I	31313.85	f	CLT Water West Tyvola Zone	61150
Howell Desiree Monique	Airport Shuttlebus Driver	36248.46	f	Oper - Landside/Grd Trans	61151
Sanders Summer Marie	Police Records Technician	35126.99	f	Records Division	61152
Bass Tony Dorel	Laborer	31200	f	SWS Operations - Bulky Collect	61153
Mann John Michael	Street Crew Member	31200	f	SouthWest District (Sweden)	61154
Rivers Alexis N	Customer/Revenue Serv. Assist	36249.3	f	Finance Revenue	61155
Gleaton Sr Derrin Le'mar	Utilities Technician I	31313.85	f	CLT Wat General Commerce Zone	61156
Howie Tracy LaShawn	Airport Shuttlebus Driver	36248.46	f	Oper - Landside/Grd Trans	61157
McClure Christopher D	Courier	35077.06	f	EPM BS CMGC Mail Rm	61158
Battle Charles Edward	Laborer	31200	f	SWS Operations - Yard Waste Co	61159
Matthews Roland	Laborer	31200	f	SWS Operations - Yard Waste Co	61160
McMillan Terry Michael	Labor Crew Chief II	46264.31	f	EPM Landscape Mgt	62747
Roseboro Lajetta Davonne	Office Assistant IV	36249.3	f	SWS Human Resources	61162
Golden Jarrod	Utilities Technician I	31313.85	f	CLT Wat General Commerce Zone	61163
Starnes Jonathan Daniel	Asst Maintenance Mechanic	35052.25	f	Facil - Building Maintenance	61164
Mcmillian Armand Myrick	Airport Shuttlebus Driver	36248.46	f	Oper - Landside/Grd Trans	61165
Galarreta Pedro Eduardo	Water Service Technician	35040.68	f	CLT Water Cust Service-Admin	61166
Bennett David Lee	Street Crew Member	31200	f	SouthWest District (Sweden)	61167
Schaeffer Shilee	Animal Health Technician	36249.3	f	Animal Care & Control Division	61168
Hanes Brandon Fitzgerald	Utilities Technician I	31313.85	f	CLT Water West Tyvola Zone	61169
Scales Cheri Renee	Airport Shuttlebus Driver	36248.46	f	Oper - Landside/Grd Trans	61170
Blackmon Emmanuel	Laborer Sr	31200	f	SWS Operations - South Corrido	61171
Applins Andre James	Water Service Technician	35040.64	f	CLT Water Cust Service-Admin	61172
Maxwell Vincent Ramon	Laborer Sr	31200	f	SWS Operations - Special Servi	61173
Hansley Bradley	Utilities Technician I	31313.85	f	CLT Wat General Commerce Zone	61174
Brown Jr Jamal Thomas	Street Crew Member	31200	f	SouthWest District (Sweden)	61175
Ensley Darien Marcus	Water Service Technician	35040.64	f	CLT Water Cust Service-Admin	61176
Howey III Ben F	Labor Crew Chief I	47653.4	f	CLT Water Huntersville Zone	62748
McClure Christopher L	Laborer	31200	f	SWS Operations - Dead Animal C	61178
Sullivan Randy	Airport Shuttlebus Driver	36248.46	f	Oper - Landside/Grd Trans	61179
Iddrisu Shette	Utilities Technician I	31313.85	f	CLT Water Huntersville Zone	61180
Brown Mishak Rodriguez	Laborer	31200	f	SWS Operations - Yard Waste Co	61181
Jackson Sterling Everett	Water Service Technician	35040.64	f	CLT Water Cust Service-Admin	61182
McCrimmon Whitaker	Laborer	31200	f	SWS Operations - Rights of Way	61183
Toussaint Charles	Airport Shuttlebus Driver	36248.46	f	Oper - Landside/Grd Trans	61184
Leggett Fred	Utilities Technician I	31313.85	f	CLT Wat General Commerce Zone	61185
Burkett Malik K	Storekeeper	31200	f	Fire Logistics	61186
Sienko Matthew Edwin	Water Service Technician	35040.64	f	CLT Water Cust Service-Admin	61187
Baltimore Marianne M	Police Officer	68044.13	f	Metro Division	61188
Poston Edgar DeWayne	Police Officer	68003.31	f	Providence Division	61189
Fahami Nader	Fire Inspector Certified	68001.18	f	Fire Prevention	61190
Bashore Wendy Catherine	Administrative Officer III	67942.59	f	Housing Combined	61191
Borelli Thomas J	Police Officer	68044.13	f	South Division	61192
Mroz Scott Andrew	Fire Investigator Certified	67909.39	f	Fire Investigations/Education	61193
Bowman Suzanne E	Police Officer	68044.13	f	Airport Law Enforcement Divisi	61194
Van Voorhies John R.	Fire Investigator Certified	67909.39	f	Fire Investigations/Education	61195
Raulerson Mark E	Fire Fighter Engineer	70852.22	f	Fire Station 41	61196
Bunton Frederick D	Plan Review Engineer	68751.81	f	CLT Water Eng-Install & Dev	61197
Brammer II Fredericke C	Police Officer	68044.13	f	North Division	61198
Keller David B	Fire Fighter Engineer	67631.66	f	Fire Station 6	61199
Chantry Erin Elizabeth McGirt	Principal Planner	70013.58	f	Planning	61200
Hill Terry L	Administrative Officer III	67842.81	f	Business Support Combined	61201
Reed David E	Fire Fighter Engineer	70852.22	f	Fire Station 17	61202
Shytle John R	Fire Fighter Engineer	69124.11	f	Fire Station 32	61203
Blee Carrie S	Police Officer	69281.3	f	Firearms Training Unit	61204
Barksdale Rickey L	Construction Supervisor	68745.19	f	EPM BS CMGC	61205
Buckler Ryan K.	Police Officer	68044.13	f	Steele Creek Division	61206
Kline Joseph R	Fire Fighter Engineer	67631.66	f	Fire Station 7	61207
Jeter Janet Davis	Administrative Officer III	67842.81	f	Business Support Combined	61208
Moss Germaine	Labor Crew Chief II	46264.31	f	SWS Operations - Rights of Way	62749
Mitchell Amy Leigh Graham	Public Info Specialist Senior	70000	f	Communications	61210
Robitaille Todd T	Fire Fighter Engineer	70852.22	f	Fire Station 32	61211
Usery Marcus A	Fire Fighter Engineer	69124.11	f	Fire Station 13	61212
Brown Karen Ashley	Police Officer	69281.3	f	Hickory Grove Division	61213
Quevedo Eduardo Alejandro	Police Officer	68743.16	f	Armed Robbery/Sexual Assault D	61214
Burleson Billie R	Police Officer	68044.13	f	Hickory Grove Division	61215
Lindley Andrew P	Fire Fighter Engineer	67631.66	f	Fire Station 42	61216
DeSilva Janice W	Accountant II	67835.86	f	Finance - Executive	61217
Robinson Jr Donald W	Safety Coordinator	70000	f	SWS Operations - Collections A	61218
Scheeder E Clark	Fire Fighter Engineer	70852.22	f	Fire Station 31	61219
Ayscue David A	Fire Fighter II	69123.98	f	Fire Station 32	61220
Burkard Todd W	Police Officer	69281.3	f	Violent Crime Division	61221
Whitley Preston Lavon	Environmental Compliance Supv	68736.32	f	CLT Water System Protection	61222
Butler Jason B.	Police Officer	68044.13	f	North Division	61223
Mack John	Fire Fighter Engineer	67631.66	f	Fire Station 41	61224
Sargent Kerry A	Administrative Officer III	67828.86	f	Business Support Combined	61225
Ingram Christopher J	Transportation Planner II	69922.94	f	Planning & Special Operations	61226
Sherrill Christopher M.	Fire Fighter Engineer	70852.22	f	Fire Station 33	61227
Bowman David R	Fire Fighter II	69123.98	f	Fire Station 3	61228
Capotosta Peter J	Police Officer	69281.3	f	Canine Unit	61229
Chien Yi-Chen	Plan Review Engineer	68705.86	f	EPM Land Development	61230
Colligan William T	Police Officer	68044.13	f	Central Division	61231
McBryde Joseph E	Fire Fighter Engineer	67631.66	f	Fire Station 3	61232
Clipston Amy G	Administrative Officer III	67814	f	Business Support Combined	61233
Dolschenko Steven A	Fire Inspector Certified	69920.31	f	Fire Prevention	61234
Storie William F.	Fire Fighter Engineer	70852.22	f	Fire Station 2	61235
Bradshaw Zachary K	Fire Fighter II	69123.98	f	Fire Station 17	61236
Chickoree Gabriel I	Police Officer	69281.3	f	In-Service Training Unit	61237
Poissant Linda B	Construction Supervisor	68651.61	f	Utility Permitting	61238
Dozier Kevin B	Police Officer	68044.13	f	North Division	61239
Foster Mitzi M	Police Officer	68044.13	f	Freedom Division	61240
Fraser Seth D	Police Officer	68044.13	f	South Division	61241
Gilyard Stephenie I	Police Officer	68044.13	f	Providence Division	61242
Gormican Cathleen Nicole	Police Officer	68044.13	f	South Division	61243
Green Charles K	Police Officer	68044.13	f	Steele Creek Division	61244
Harrington Jeff M	Police Officer	68044.13	f	Freedom Division	61245
Hopkins Brendan S	Police Officer	68044.13	f	Freedom Division	61246
Hurst Troy A	Police Officer	68044.13	f	Hickory Grove Division	61247
Jones Michael G	Police Officer	68044.13	f	South Division	61248
Kanos Ann Collins	Police Officer	68044.13	f	South Division	61249
Link Wayne Sigmon	Police Officer	68044.13	f	Field Services Group South - A	61250
McCoy Joseph M	Police Officer	68044.13	f	Hickory Grove Division	61251
Milton Robert Douglas	Police Officer	68044.13	f	Airport Law Enforcement Divisi	61252
Morton Thomas T	Police Officer	68044.13	f	University City Division	61253
Mozingo Todd A	Police Officer	68044.13	f	Eastway Division	61254
Muller Andrew K.	Police Officer	68044.13	f	North Tryon Division	61255
Mullis Alvin J	Police Officer	68044.13	f	Providence Division	61256
Mullis David M	Police Officer	68044.13	f	Central Division	61257
Mullis Jonathan	Police Officer	68044.13	f	Airport Law Enforcement Divisi	61258
Mullis Robert B	Police Officer	68044.13	f	Steele Creek Division	61259
Nance David L	Police Officer	68044.13	f	Central Division	61260
Owen Wade K	Police Officer	68044.13	f	South Division	61261
Pearson Joseph E	Police Officer	68044.13	f	Freedom Division	61262
Powers Stephen W	Police Officer	68044.13	f	North Division	61263
Roberts III Robert L	Police Officer	68044.13	f	North Division	61264
Ross Vaughn L	Police Officer	68044.13	f	Hickory Grove Division	61265
Sayre Charles T	Police Officer	68044.13	f	North Division	61266
Secondi William Albert	Police Officer	68044.13	f	North Division	61267
Slater Timothy J	Police Officer	68044.13	f	Central Division	61268
Smith Michael F.	Police Officer	68044.13	f	South Division	61269
Soto Darrell B	Police Officer	68044.13	f	North Division	61270
Stuart Glen Allan	Police Officer	68044.13	f	South Division	61271
Taylor Darryl K	Police Officer	68044.13	f	University City Division	61272
Tindell David M	Police Officer	68044.13	f	Independence Division	61273
Travis Michael W.	Police Officer	68044.13	f	North Division	61274
Vandenberg III Oliver W	Police Officer	68044.13	f	North Division	61275
Watts Matthew W.	Police Officer	68044.13	f	Independence Division	61276
West Alan L	Police Officer	68044.13	f	Westover Division	61277
Doan Mike	Police Officer	68003.31	f	North Tryon Division	61278
Guy Jason C	Police Officer	68003.31	f	North Division	61279
Morales Eric	Police Officer	68003.31	f	Airport Law Enforcement Divisi	61280
Cook III Robert B	Fire Fighter II	69123.98	f	Fire Station 13	61281
McDonald Charles T	Fire Fighter Engineer	67631.66	f	Fire Station 17	61282
Cote Matthew John	Fire Fighter II	69123.98	f	Fire Station 7	61283
McGinnis Jon M	Fire Fighter Engineer	67631.66	f	Fire Station 3	61284
Strickland Christopher R.	Fire Fighter Engineer	70852.22	f	Fire Station 32	61285
Guthrie Stephen M	Fire Inspector Certified	69920.31	f	Fire Prevention	61286
Hall Danny L	Fire Fighter II	69123.98	f	Fire Station 36	61287
Folk Michael B	Relief Captain	76130.91	f	Fire Station 18	63571
DiDonato Christopher M	Police Officer	69281.3	f	North Division	61288
Frazier Joe H.	Field Operations Supervisor	68600.2	f	Light Rail Operations	61289
Fahrenholz Charles A	Police Officer	69281.3	f	Metro Division	61290
Williams Tierra	Administrative Officer III	67814	f	Human Resources Division	61291
Hall Joseph F	Fire Fighter II	69123.98	f	Fire Station 10	61292
Turner Richard C	Fire Fighter Engineer	70852.22	f	Fire Station 37	61293
Honeycutt David Morrison	Drainage Specialist	69920.31	f	E&PM Storm Water	61294
McIntosh Jason A	Fire Fighter Engineer	67631.66	f	Fire Station 16	61295
Smith Matthew C	Construction Supervisor	68585.84	f	CLT Water Eng-Install & Dev	61296
Marler Jonathan M.	Fire Fighter II	69123.98	f	Fire Station 38	61297
Falls Shirley E	Police Officer	69281.3	f	Community Engagement	61298
Williamson David Eugene	Fire Inspector Certified	69920.31	f	Fire Prevention	61299
Wolfe Vincent James	Fire Fighter Engineer	70852.22	f	Fire Station 32	61300
Miller Curtis W	Fire Fighter Engineer	67631.66	f	Fire Station 41	61301
Ellington Frank Warren	Equipment Parts Manager	68563.5	f	Fleet Mgmt-Parts Operations	61302
McCullum Steven A	Fire Fighter II	69123.98	f	Fire Station 29	61303
Ferguson Thomas E	Police Officer	69281.3	f	North Division	61304
Bajic Nikolina	Police Officer	67809.15	f	Providence Division	61305
Johnson Robert E	Chief Maintenance Mechanic	69917.67	f	EPM BS Spratt	61306
Jones III Richard C.	Police Officer	70810.2	f	Violent Crime Division	61307
Moore Jr Robert E	Fire Fighter Engineer	67631.66	f	Fire Station 23	61308
Green Jr Jerry M	N&BS Area Supervisor	68552.19	f	Code Enforcement Combined	61309
Newell Richard Dearmond	Fire Fighter II	69123.98	f	Fire Station 17	61310
Hart Jr Alvin L	Police Officer	69281.3	f	Violent Crime Division	61311
Cruz Christopher E	Police Officer	67809.15	f	South Division	61312
Frazier Roosevelt	Police Officer	67809.15	f	Eastway Division	61313
Gunning John P	Police Officer	67809.15	f	Freedom Division	61314
Huffman Amanda D	Police Officer	67809.15	f	University City Division	61315
Hughes Charmaine	Police Officer	67809.15	f	Freedom Division	61316
Kabbash Suzanna M.	Police Officer	67809.15	f	Steele Creek Division	61317
Knaff Lorenzo	Police Officer	67809.15	f	Airport Law Enforcement Divisi	61318
Kwo Cheng Pin	Police Officer	67809.15	f	South Division	61319
Lang Hong	Police Officer	67809.15	f	Independence Division	61320
Redelfs Erik H	Police Officer	67809.15	f	Steele Creek Division	61321
Walker Jason D	Police Officer	67809.15	f	Westover Division	61322
Alexander Pamela	Administrative Officer III	67781.21	f	Business Support Combined	61323
Gardon Daniel Joseph	Real Estate Agent II	67740	f	Admin-Finance	61324
Samuels David	Senior Tech Service Specialist	67663.51	f	Public Safety Communications	61325
Austin Alan J	Fire Fighter Engineer	67631.66	f	Fire Station 41	61326
Bradley Jonathan R.	Fire Fighter Engineer	67631.66	f	Fire Station 2	61327
Braham Gregory M	Fire Fighter Engineer	67631.66	f	Fire Station 13	61328
Brown Steven A	Fire Fighter Engineer	67631.66	f	Fire Station 31	61329
Carriker IV John A	Fire Fighter Engineer	67631.66	f	Fire Station 1	61330
Caskey David M	Fire Fighter Engineer	67631.66	f	Fire Station 23	61331
Cochran William Brett	Fire Fighter Engineer	67631.66	f	Fire Station 17	61332
Dixon Jeffrey E	Fire Fighter Engineer	67631.66	f	Fire Station 3	61333
Dowdey Paul William	Fire Fighter Engineer	67631.66	f	Fire Station 39	61334
Dowell Kenneth L	Fire Fighter Engineer	67631.66	f	Fire Station 18	61335
Edwards Richard J.	Fire Fighter Engineer	67631.66	f	Fire Station 20	61336
Erwin Wayne L	Fire Fighter Engineer	67631.66	f	Fire Station 41	61337
Fields William S.	Fire Fighter Engineer	67631.66	f	Fire Station 5	61338
Fink Todd M	Fire Fighter Engineer	67631.66	f	Fire Station 33	61339
Gandy David W	Fire Fighter Engineer	67631.66	f	Fire Station 18	61340
Gersdorff David K	Fire Fighter Engineer	67631.66	f	Fire Station 26	61341
Grissom John L	Fire Fighter Engineer	67631.66	f	Fire Station 41	61342
Haynes Harlan A	Fire Fighter Engineer	67631.66	f	Fire Station 10	61343
Henkle Joseph H	Fire Fighter Engineer	67631.66	f	Fire Station 21	61344
Holt Mitchell V	Fire Fighter Engineer	67631.66	f	Fire Station 35	61345
Howell John F	Fire Fighter Engineer	67631.66	f	Fire Station 41	61346
Humphries Clinton D	Fire Fighter Engineer	67631.66	f	Fire Station 17	61347
Hunning Richard Chadwick	Fire Fighter Engineer	67631.66	f	Fire Station 27	61348
Hutchison R. Ryan	Fire Fighter Engineer	67631.66	f	Fire Station 4	61349
Helms Roger D	Police Officer	69281.3	f	Metro Division	61350
Macklin Terrell L	Police Officer	70810.2	f	Special Operations Division	61351
Stevenson Jeffrey D	Fire Fighter II	69123.98	f	Fire Station 10	61352
Hough Richard A	Police Officer	69281.3	f	Central Division	61353
Walters Fred N	Chief Maintenance Mechanic	69917.67	f	EPM BS Spratt	61354
Bradley Jr Eugene L	N&BS Area Supervisor	68551.31	f	Community Engagement	61355
Parker Sean M.	Police Officer	70810.2	f	Non-Emergency Police Services	61356
Tarsia Jr John S	Fire Fighter II	69123.98	f	Fire Station 4	61357
Tolbert Gregory S.	Fire Fighter II	69123.98	f	Fire Station 3	61358
Walker Charles A	Fire Fighter II	69123.98	f	Fire Station 17	61359
Lazo Alex	Accountant II	69119.84	f	Finance Accounting	61360
Alvear Guillermo J.	Police Officer	69102.55	f	Hickory Grove Division	61361
Contreras Argenis	Police Officer	69102.55	f	North Tryon Division	61362
Foggie Karen Renae	Police Officer	69102.55	f	North Tryon Division	61363
Gompers Jonathan A	Police Officer	69102.55	f	Providence Division	61364
Hildebrand Thomas W.	Police Officer	69102.55	f	Steele Creek Division	61365
Howell Patrick B	Police Officer	69102.55	f	Westover Division	61366
Medrano Kenia	Police Officer	69102.55	f	Providence Division	61367
Phan Tam	Police Officer	69102.55	f	Westover Division	61368
Pinckney Christopher Byron	Police Officer	69102.55	f	Metro Division	61369
Preston Jr Robert A	Police Officer	69102.55	f	Metro Division	61370
Reiber Charlissa L	Police Officer	69102.55	f	Metro Division	61371
Serio Jr Thomas S	Police Officer	69102.55	f	Metro Division	61372
Stout Eric T	Police Officer	69102.55	f	Steele Creek Division	61373
Bumgarner II Bruce D	Police Officer	69082.73	f	University City Division	61374
Causey John L.	Police Officer	69082.73	f	South Division	61375
Embrey Wayne Christopher	Police Officer	69082.73	f	Training Division	61376
Gathings David S.	Police Officer	69082.73	f	North Division	61377
Mayo Derrick A.	Police Officer	69082.73	f	Special Victims Division	61378
Spottswood James A	Police Officer	69082.73	f	Metro Division	61379
Tropeano David J.	Police Officer	69082.73	f	Central Division	61380
Pohlheber Jennifer Ann	Criminalist Firearms Toolmarks	69077.03	f	Crime Lab Division	61381
Fetterly Robert	Network Commun Integrator	69019	f	Public Safety Communications	61382
Lawrence Timothy Brian	Equipment Shop Manager	69010	f	Fleet Mgmt-Louise Ave Shop	61383
Kiser Jonathan B	Relief Captain	76130.91	f	Fire Station 27	63572
Bruster Sonya Michelle	Management Analyst	69000	f	Telecom	61385
Moore Jerry D	Police Telecommun Supv	68931.96	f	Communications Division	61386
Whittey Joseph A	HVAC Technician Senior	68886.87	f	Facil - Building Maintenance	61387
Bradley Clark	Rail Maintenance Of Way Superv	68878.85	f	Maintenance Right of Way (MOW)	61388
Tkachuk Michael J	Accountant II	68825.41	f	CLT Water Business Office	61389
Reid Dukes Laurie S	Arborist	68786.39	f	EPM Landscape Mgt	61390
Cunningham Brian Tremmier	Fire Fighter II	68784.33	f	Fire Administration	61391
Jones Eric O	Fire Fighter II	68784.33	f	Fire Station 3	61392
Walker Matthew James	Fire Fighter II	68784.33	f	Fire Station 3	61393
Parham Lindsey Annette	Accountant II	68755.75	f	Finance Revenue	61394
Morton Michael S	Fire Fighter Engineer	67631.66	f	Fire Station 23	61395
Short III John Joseph	N&BS Area Supervisor	68551.31	f	Community Engagement	61396
Beteta W Denice	Housing Services Supv	68549.99	f	Housing Combined	61397
Harris Randy G.	N&BS Area Supervisor	68547.11	f	Community Engagement	61398
Paxton Chad E.	Police Officer	70810.2	f	Airport Law Enforcement Divisi	61399
Wise Douglas K	Water Quality Program Speciali	69780.97	f	CLT Water EMD Administration	61400
Humphrey Na'imah Elise	Training Specialist	68543.75	f	Administration	61401
Jackson Beth	Police Officer	69281.3	f	South Division	61402
Taylor Richard T	Police Officer	70810.2	f	Providence Division	61403
Grisewood Peter Kitson	Urban Forestry Supervisor	69769.29	f	EPM Land Development	61404
Roh Alicia Dandar	Energy Sustainability Coordina	69766.65	f	Dev - Executive	61405
Marchbanks James Reagan	Data Analytics Specialist	69765.55	f	Criminal Intel. and Analysis	61406
Henderson Jeremy R	Equipment Shop Manager	69751.5	f	Fleet Mgmt-Sweden Rd Shop	61407
Shaver III Edwin E	Fire Investigator Certified	69745.6	f	Fire Investigations/Education	61408
Cudd Christopher Michael	Police Officer	69703.79	f	Airport Law Enforcement Divisi	61409
Murfitt Robert A.	Police Officer	69703.79	f	Airport Law Enforcement Divisi	61410
Thompson Marcus D.	Police Officer	69703.79	f	North Tryon Division	61411
West Benjamin E.	Police Officer	69703.79	f	North Division	61412
Garrett Brian K	Administrative Officer III	69613.37	f	SWS Operations - Collections A	61413
Smith Curtis G	Water Quality Program Speciali	69612.33	f	CLT Water Admininstration	61414
Vlahos Deonisios T	HVAC Technician Senior	69576.18	f	Facil - Building Maintenance	61415
Kyaw William P	HVAC Technician Senior	69575.9	f	Facil - Building Maintenance	61416
Brown III Anderson S.	Police Officer	69503.73	f	Independence Division	61417
Cabarcas-Ortega Nestor	Police Officer	69503.73	f	Airport Law Enforcement Divisi	61418
Carr James Kendall	Police Officer	69503.73	f	Hickory Grove Division	61419
Klimasewiski Bryan Peter	Police Officer	69503.73	f	Metro Division	61420
Kodad Kristopher S.	Police Officer	69503.73	f	Central Division	61421
Marotta John Scott	Police Officer	69503.73	f	Airport Law Enforcement Divisi	61422
Pendergrast Joseph M	Police Officer	69503.73	f	Central Division	61423
Thompson Brian H	Police Officer	69503.73	f	Providence Division	61424
Thompson Marko D.	Police Officer	69503.73	f	Airport Law Enforcement Divisi	61425
Torres Jose Orlando	Police Officer	69503.73	f	Eastway Division	61426
Van Almen Joshua Nathaniel	Police Officer	69503.73	f	North Tryon Division	61427
Wassenaar Jean Louise	Police Officer	69503.73	f	Metro Division	61428
Whitley Jamie P.	Police Officer	69503.73	f	North Division	61429
Wilson Christopher Clifford	Police Officer	69503.73	f	Airport Law Enforcement Divisi	61430
Yandle Billy C.	Police Officer	69503.73	f	Metro Division	61431
Hooper Wilson B	Administrative Officer III	69432.61	f	Finance Procurement Management	61432
Calhoun Kimberly Schrum	Real Estate Agent II	69383.25	f	EPM Real Estate	61433
Abdum-Muhaymin Jibril	Data Analytics Specialist	69380.1	f	Criminal Intel. and Analysis	61434
Black Bryan Rashad	Data Analytics Specialist	69380.1	f	Criminal Intel. and Analysis	61435
Ngo Vinh Tuan	Data Analytics Specialist	69380.1	f	Criminal Intel. and Analysis	61436
Williams Kendric Lemar	Data Analytics Specialist	69380.1	f	Criminal Intel. and Analysis	61437
Coley Camden T.	Public Info Specialist Senior	69369.97	f	Charlotte Water Communications	61438
Reynoso Jorge Arturo	Small Business Program Special	69348.91	f	Charlotte Business Inclusion	61439
Shores Sonya A	Police Telecommun Supv	69300.29	f	Communications Division	61440
Warren Tabitha Carnes	Public Info Specialist Senior	69294.68	f	EPM Main Engineering	61441
Blalock Steven A	Police Officer	69281.3	f	Armed Robbery/Sexual Assault D	61442
Padgett William B	Fire Fighter Engineer	67631.66	f	Fire Station 11	61443
Klass Robert	Police Officer	69281.3	f	Special Operations Division	61444
Lester Olin Mark	Police Officer	69281.3	f	Canine Unit	61445
Lopez Jr Carlos	Police Officer	69281.3	f	Canine Unit	61446
Martin Dawn Marie	Police Officer	69281.3	f	Violent Crime Division	61447
Martin Russell Amos	Police Officer	69281.3	f	Eastway Division	61448
Martin Susan Marie	Police Officer	69281.3	f	Metro Division	61449
Morell Robert M	Police Officer	69281.3	f	Westover Division	61450
O'Dell Lori Anne	Police Officer	69281.3	f	Special Victims Division	61451
Ott Jason T	Police Officer	69281.3	f	Providence Division	61452
Porter Matthew E	Police Officer	69281.3	f	Aviation Unit	61453
Post Tammy L	Police Officer	69281.3	f	Westover Division	61454
Proctor Harlan D	Police Officer	69281.3	f	Hickory Grove Division	61455
Ring Donna L	Police Officer	69281.3	f	Violent Crime Division	61456
Sammis Matthew A	Police Officer	69281.3	f	Motorcycle & Reconstruction Un	61457
Sanner Jr Regis D	Police Officer	69281.3	f	Motorcycle & Reconstruction Un	61458
Selph Joseph M	Police Officer	69281.3	f	Freedom Division	61459
Straub Douglas M	Police Officer	69281.3	f	Hickory Grove Division	61460
Stuesse Kevin M	Police Officer	69281.3	f	Special Victims Division	61461
Tisdale Brad	Police Officer	69281.3	f	Violent Crime Division	61462
Trietley Keith R	Police Officer	69281.3	f	Public Affairs	61463
Watson Todd W	Police Officer	69281.3	f	Eastway Division	61464
Watts Jr Gerald A	Police Officer	69281.3	f	Armed Robbery/Sexual Assault D	61465
Welch James T	Police Officer	69281.3	f	Criminal Intel. and Analysis	61466
White Kip J	Police Officer	69281.3	f	Firearms Training Unit	61467
Whitesel Stephen A	Police Officer	69281.3	f	South Division	61468
Williams Richard Alan	Police Officer	69281.3	f	Independence Division	61469
Black Jeffrey Ray	Contract Estimator Supervisor	69264.01	f	Administration	61470
Dellert-O'Keef Judith M.	Public Info Specialist Senior	69220.96	f	Special Programs	61471
Rowland Laura Michelle	Administrative Officer III	69203.85	f	EPM Main Engineering	61472
Sossamon Leisa Moore	Real Estate Agent II	69173	f	EPM Real Estate	61473
Byron Patricia A	Criminalist DNA Analyst	69129.1	f	Crime Lab Division	61474
Barone Stephen Patrick	Fire Fighter Engineer	69124.11	f	Fire Station 3	61475
Colson Michael J	Fire Fighter Engineer	69124.11	f	Fire Station 33	61476
Griffin Julie Quinn	Fire Fighter Engineer	69124.11	f	Fire Station 16	61477
Joyner Brian C	Fire Fighter Engineer	69124.11	f	Fire Station 30	61478
Lee Kathleen Anne	Fire Fighter Engineer	69124.11	f	Fire Station 17	61479
McNay Anthony King	Fire Fighter Engineer	69124.11	f	Fire Station 16	61480
Webster Jr Ronald L	Police Officer	70810.2	f	Independence Division	61481
Pate Scottie L.	Fire Fighter Engineer	67631.66	f	Fire Station 30	61482
Knicely Melissa D	Public Info Specialist Senior	68520.2	f	Animal Care & Control Division	61483
Picerno Christopher T	Chief Locksmith	70722.56	f	Oper - Airport Security	61484
Poovey Glenn E	Fire Fighter Engineer	67631.66	f	Fire Station 21	61485
Flemming Michelle Marie	Principal Planner	70686.2	f	Planning	61486
Reagan Lance E.	Fire Fighter Engineer	67631.66	f	Fire Station 16	61487
Amer Mohammad A.	Criminalist DNA Analyst	70664.66	f	Crime Lab Division	61488
Sawtelle III Matthew Trimble	Fire Fighter Engineer	67631.66	f	Fire Station 23	61489
Richards Tonie D	Claims Manager	70595.69	f	Risk Management	61490
Joyner Shirell Denise	Accountant II	68513.98	f	Administration Division	61491
Schott Kenneth P	Fire Fighter Engineer	67631.66	f	Fire Station 13	61492
Staten Sr Henry Lewis	Safety Coordinator-Senior	70579.74	f	Safety & Security	61493
Ayers Kelsey	Bus Systems Spec Intrm	68500	f	E&PM Storm Water	61494
Whitner Roberta Renee	Real Estate Agent II	68500	f	EPM Real Estate	61495
Byrum Amanda L	Real Estate Agent II	68413.63	f	EPM Real Estate	61496
Daley Sarah Elizabeth	Environmental Compliance Supv	68404.26	f	CLT Water System Protection	61497
Brown Jr Kenneth	Corporate Comm Specialist Sr	68383.76	f	CM-Corporate Comm & Marketing	61498
Suddeth Crashana	Bus Systems Spec Intrm	68378.82	f	Human Resources Division	61499
Davis Kristin Marie	N&BS Area Supervisor	68346.26	f	Code Enforcement Combined	61500
Freeze Jessica Lynn	N&BS Area Supervisor	68346	f	Code Enforcement Combined	61501
Taylor Jr Marvin Ray	N&BS Area Supervisor	68346	f	Code Enforcement Combined	61502
Fowler Dennis Mark	N&BS Area Supervisor	68345.81	f	Zoning Combined	61503
Moore Donald C.	N&BS Area Supervisor	68345.72	f	Plan Reviewers	61504
Berryhill Alexander P	Accountant II	68335.68	f	Administration Division	61505
Osborne Garrick Maurice	Content Webmaster	68318.01	f	Computer Technology Solutions	61506
Matoke Kaunda M	Contract Estimator	68255.62	f	Transportation Operations	61507
Tatum Stefanie Kinney	Lab Quality Assurance Analyst	68244.09	f	CLT Water Lab Svc-Operations	61508
Purgason Keith Allen	WW Chf Treatment Plant Op	68244.01	f	CLT Water McAlpine Creek Plant	61509
Ellison Martin	Rail Maintenance Of Way Superv	68217	f	Maintenance Right of Way (MOW)	61510
Creech Jean Gaty	Utilities Residuals Coord	68213.81	f	CLT Water EMD Administration	61511
Bryan Jennifer Victoria	Landscape Supervisor	68200.61	f	Facil - Airside Maintenance (F	61512
Shea Kelly Elizabeth	Criminalist DNA Analyst	68181.66	f	Crime Lab Division	61513
Basham Timothy D	Fire Inspector Certified	68172.23	f	Fire Prevention	61514
Cloninger Adam B	Fire Inspector Certified	68172.23	f	Fire Prevention	61515
Domras Michael R	Drainage Specialist	68172.23	f	E&PM Storm Water	61516
Gilchrist Montray A.	Police Officer	68159.99	f	School Resources Officers	61517
Hardy Teyawna D	Police Officer	68159.99	f	School Resources Officers	61518
Lewis Justin Evans	Police Officer	68159.99	f	School Resources Officers	61519
Ruff II Tyrone M	Police Officer	68159.99	f	School Resources Officers	61520
Hazel Sarah	Asst To The City Manager I	68140.8	f	City Manager's Office	61521
Allen Marvin Darnell	Construction Supervisor	68087.64	f	EPM Main Engineering	61522
Sauer Kimberly T.	N&BS Area Supervisor	68086.83	f	Code Enforcement Combined	61523
Bright Krystal Mercer	Real Estate Agent II	68082.73	f	EPM Real Estate	61524
Armlin James R.	Police Officer	68044.13	f	Independence Division	61525
Armstrong Jr Wayne	Police Officer	68044.13	f	University City Division	61526
Phifer Steve H.	Transportation Electronics Sup	70572.5	f	Transportation Systems	61527
Swallows Richard J.	Data Analytics Specialist	70536.44	f	Criminal Intel. and Analysis	61528
Draughn Samuel L	Treatment Operations Coord.	70523.05	f	CLT Water Franklin Plant	61529
Medina Frangey Edward	Fire Fighter II	70503.39	f	Fire Station 7	61530
Whitaker Melinda Sawyer	Veterinarian	70493.4	f	Animal Care & Control Division	61531
Shupe Frank H	Fire Fighter Engineer	67631.66	f	Fire Station 5	61532
Ackerman Julian Scott	Construction Supervisor	70491.34	f	E&PM Storm Water	61533
Stewart Timothy P	Fire Fighter Engineer	67631.66	f	Fire Station 17	61534
Charlesworth Ann Michelson	Criminalist Drug Chemistry	70478.13	f	Crime Lab Division	61535
Page Jeffrey Blake	Police Officer	70408.81	f	Steele Creek Division	61536
Weaver Jean-Charles	Environmental Program Coord	70317.59	f	Dev - Executive	61537
Brooks Henry Leland	Energy Mgt Specialist	70252.29	f	EPM BS Spratt	61538
Meyers James Joseph	Fire Inspector Senior	70243.85	f	Fire Prevention	61539
Behlke Kristen Thomas	Public Info Specialist Senior	70220.17	f	EPM Main Engineering	61540
Doll Peter Thomas	Construction Supervisor	70177.6	f	EPM Main Engineering	61541
Grant Mahroo Jasmine	Human Resources Analyst Assc	70169	f	Talent Acquisition & Mgt	61542
Love Stephanie Bradley	Human Resources Analyst	70169	f	Human Resources	61543
Lopina Philip J .	Construction Supervisor	70119.94	f	E&PM Storm Water	61544
Helms Curtis W.	Construction Supervisor	70118.04	f	Administration	61545
Harrison Lewis Bryan	Construction Supervisor	70117.35	f	E&PM Storm Water	61546
Conard Timothy S	Technology Support Coordinator	70106.35	f	CLT Water Business Sys (IT)	61547
Blanchett Matthew P.	Police Officer	70106.08	f	School Resources Officers	61548
Cauley Laurence G	Police Officer	70106.08	f	School Resources Officers	61549
Flowers James J	Police Officer	70106.08	f	School Resources Officers	61550
Glenn Artis T	Police Officer	70106.08	f	School Resources Officers	61551
Jackson Rodney W	Police Officer	70106.08	f	School Resources Officers	61552
Lipscomb Richard L	Police Officer	70106.08	f	School Resources Officers	61553
Pharr Maurice A	Police Officer	70106.08	f	School Resources Officers	61554
Sutton William F	Police Officer	70106.08	f	School Resources Officers	61555
Flanders Norman Robert	Rail Maintenance Of Way Superv	70093.07	f	Maintenance Right of Way (MOW)	61556
Pulitzer Heather	Accountant II	70089.5	f	Administration Division	61557
Shanaberger Erin Turner	Water Quality Program Speciali	70021.2	f	E&PM Storm Water Water Quality	61558
Suhr Brett M.	Fire Fighter Engineer	67631.66	f	Fire Station 10	61559
Vogel Michael W	Fire Fighter Engineer	67631.66	f	Fire Station 32	61560
Washington Terrell Hammid	Fire Fighter Engineer	67631.66	f	Fire Station 28	61561
White Dennis R	Fire Fighter Engineer	67631.66	f	Fire Station 10	61562
Williams Thomas R	Fire Fighter Engineer	67631.66	f	Fire Station 27	61563
Woodard Dwayne E	Fire Fighter Engineer	67631.66	f	Fire Station 10	61564
Yount Kelly T.	Fire Fighter Engineer	67631.66	f	Fire Station 41	61565
Betts Alex David	Police Officer	67591.55	f	Airport Law Enforcement Divisi	61566
Milbourn Cory Ray	Police Officer	67591.55	f	Canine Unit	61567
DeLong Hillary Ryan	Public Info Specialist Senior	67590.76	f	Public & Community Relations	61568
Menasco Lisa A	Water Quality Program Speciali	67584.78	f	CLT Water Lab Svc-Operations	61569
Pierce Cynthia D	Administrative Officer III	67573.09	f	SWS Administration	61570
Dupree Wilson Junior	Technical Systems Specialist	67572	f	Tech - Executive	61571
Clapp Adam Jason	Construction Supervisor	67562.1	f	E&PM Storm Water	61572
Dodd Alyssa Renee	Public Info Specialist Senior	67519.6	f	E&PM Storm Water	61573
Johnson Stanley Freeman	Chief Maintenance Mechanic	67515.12	f	Facil - Building Maintenance	61574
Carter Jerry B	Police Officer	67475.11	f	Independence Division	61575
Corrado Bryan David	Police Officer	67475.11	f	South Division	61576
Foggie Candace M	Police Officer	67475.11	f	Eastway Division	61577
Knowles Joshua S	Police Officer	67475.11	f	Steele Creek Division	61578
Pagan Christopher Anibal	Police Officer	67475.11	f	Steele Creek Division	61579
Pallone William A	Police Officer	67475.11	f	Eastway Division	61580
Sennett Christopher Miller	Police Officer	67475.11	f	Hickory Grove Division	61581
Wages Rachel Ann	Police Officer	67475.11	f	Hickory Grove Division	61582
Waller Corey Scott	Police Officer	67475.11	f	South Division	61583
Wiggins Kevin Douglas	Police Officer	67475.11	f	North Tryon Division	61584
Kerns Nancy W	Latent Fingerprint Examiner	67472.37	f	Crime Lab Division	61585
Combs David Chase	Fire Fighter II	67438.03	f	Fire Station 13	61586
Gates Jr Horace Lowell	Fire Fighter Engineer	67438.03	f	Fire Station 19	61587
Honeycutt Jonathan H	Fire Fighter II	67438.03	f	Fire Station 29	61588
Nixon Jeffrey G	Fire Fighter II	67438.03	f	Fire Station 39	61589
Clayton David W	Police Officer	65982.19	f	Violent Crime Division	61590
Cumberworth Colin C.	Police Officer	65982.19	f	South Division	61591
Cupples III Clyde M	Police Officer	65982.19	f	Freedom Division	61592
Decker Daniel N	Police Officer	65982.19	f	Hickory Grove Division	61593
Dillingham Anthony J	Police Officer	65982.19	f	Central Division	61594
Faulkenberry David R	Police Officer	65982.19	f	Central Division	61595
Franklin James S	Police Officer	65982.19	f	Central Division	61596
Gormican Robert C	Police Officer	65982.19	f	Motorcycle & Reconstruction Un	61597
Greene Jr Richard L	Police Officer	65982.19	f	Real Time Crime Center	61598
Hartley Robert B	Police Officer	65982.19	f	Community Engagement	61599
Helms Christine M	Police Officer	65982.19	f	Cyber Crime Unit	61600
Herron Eric C	Police Officer	65982.19	f	Non-Emergency Police Services	61601
Hopkins Gregory S	Police Officer	65982.19	f	Special Victims Division	61602
Horne Gregory L	Police Officer	65982.19	f	Freedom Division	61603
Hudson David J	Police Officer	65982.19	f	Metro Division	61604
Humphrey Christopher A	Police Officer	65982.19	f	Freedom Division	61605
Hurlocker Jr John L	Police Officer	65982.19	f	University City Division	61606
Ignaczak Piotr Stefan	Police Officer	65982.19	f	South Division	61607
Jean-Jumeau Reney	Police Officer	65982.19	f	Westover Division	61608
Kerl Wende Guerin	Police Officer	65982.19	f	Metro Division	61609
King Michael V	Police Officer	65982.19	f	Central Division	61610
Lowery Lee M	Police Officer	65982.19	f	Airport Law Enforcement Divisi	61611
McKee Norma Jean	Police Officer	65982.19	f	Violent Crime Division	61612
Neely Regina Y	Police Officer	65982.19	f	Westover Division	61613
Overman Bryan K	Police Officer	65982.19	f	Violent Crime Division	61614
Phillips Andrew D	Police Officer	65982.19	f	Special Victims Division	61615
Reitano Francis B	Police Officer	65982.19	f	North Division	61616
Rost Gene E	Police Officer	65982.19	f	University City Division	61617
Russell James D	Police Officer	65982.19	f	South Division	61618
Walker Darren	Police Officer	65982.19	f	Non-Emergency Police Services	61619
Webster Chad A.	Police Officer	65982.19	f	University City Division	61620
Williams Chandos H	Police Officer	65982.19	f	Hickory Grove Division	61621
Williams Robert B	Police Officer	65982.19	f	South Division	61622
Williams Steven A	Police Officer	65982.19	f	Motorcycle & Reconstruction Un	61623
Brewer Michael S	Fire Fighter II	65981.98	f	Fire Station 10	61624
Hawthorne III Thomas J	Fire Fighter II	65793.71	f	Fire Station 16	61625
Tysinger Daniel A	Fire Fighter II	67438.03	f	Fire Station 13	61626
Wright Melissa A	Police Officer	65982.19	f	South Division	61627
Haney Keith Michael	Fire Fighter Engineer	65982.11	f	Fire Station 24	61628
Hutto Anthony L.	Fire Fighter Engineer	65982.11	f	Fire Station 6	61629
Kahdemann Stefan	Fire Fighter Engineer	65982.11	f	Fire Station 32	61630
LaPiana Mark S	Fire Fighter Engineer	65982.11	f	Fire Station 31	61631
Lee Bill L	Fire Fighter Engineer	65982.11	f	Fire Station 12	61632
Lemmond Justin M	Fire Fighter Engineer	65982.11	f	Fire Station 40	61633
Maschi Richard Thomas	Fire Fighter Engineer	65982.11	f	Fire Station 10	61634
Merrill Derek A	Fire Fighter Engineer	65982.11	f	Fire Station 1	61635
Nixon Jonathan R	Fire Fighter Engineer	65982.11	f	Fire Station 18	61636
Shimsky Tyler John	Fire Fighter Engineer	65982.11	f	Fire Station 12	61637
Anthony Stafford J	Fire Fighter II	65981.98	f	Fire Station 41	61638
Baretsky Peter	Fire Fighter II	65981.98	f	Fire Station 32	61639
Barnard Betsy L	Fire Fighter II	65981.98	f	Fire Station 41	61640
Bellina Richard S	Fire Fighter II	65981.98	f	Fire Station 10	61641
Blackwelder Thomas J	Fire Fighter II	65981.98	f	Fire Station 17	61642
Gass Travis McLean	Chief Construction Inspector	66139.67	f	CLT Water Engineering-Admin	61643
Haddad Brian Andrew	Bus Systems Spec Intrm	65317.45	f	Fire Administration	61644
Monroe Nathaniel R	Police Officer	66098.09	f	North Tryon Division	61645
Whitcomb Gail D.	Administrative Officer II	66592.59	f	Director's Office Combined	61646
Burgess John G	Fire Fighter II	65981.98	f	Fire Station 9	61647
Walton Ryan M	Fire Fighter Engineer	67438.03	f	Fire Station 8	61648
Hedrick Joshua Matthew	Fire Fighter Engineer	65793.71	f	Fire Station 28	61649
Morehead Ethan N	Police Officer	66098.09	f	Independence Division	61650
Reese III Jackie Leonard	Chief Construction Inspector	66139.67	f	CLT Water Engineering-Admin	61651
Levine Mindy E.	MCC Support Specialist	65274.35	f	CM-Constituent Services	61652
Capps Jr Samuel Robert	Fire Fighter II	65981.98	f	Fire Station 37	61653
Botzenmayer Ryan A.	Police Officer	67397.56	f	Cadets	61654
Hutchison Dustin T	Fire Fighter II	65793.71	f	Fire Station 5	61655
Nabb Evan Gregory	Police Officer	66098.09	f	Steele Creek Division	61656
Mount James Ramsey	Management Analyst	66103.97	f	Field Services Group North - A	61657
Neal Daniel Downing	Construction Inspector Senior	65246.11	f	EPM Main Engineering	61658
Chapman Jr Ronald E	Fire Fighter II	65981.98	f	Fire Station 33	61659
Francus Gregory A	Fire Inspector	66590.94	f	Fire Investigations/Education	61660
Dodd Krista Lee	Police Officer	67397.56	f	University City Division	61661
Long Kimani Anthony	Fire Fighter II	65793.71	f	Fire Station 18	61662
Nelson Shawn Allen	Police Officer	66098.09	f	Independence Division	61663
Hagerman Angela Alcala	Real Estate Agent II	66099.74	f	EPM Real Estate	61664
Padgett Heather Lynn	Accountant II	65228.39	f	CLT Water Business Office	61665
Clark Jason S	Fire Fighter II	65981.98	f	Fire Station 6	61666
Patterson Roxie A	Management Analyst	66589.21	f	CLT Water Field Ops Admin	61667
Dyer Christopher L	Police Officer	67397.56	f	Training Division	61668
Maxwell Craig Alan	Fire Fighter Engineer	65793.71	f	Fire Station 17	61669
O'Neal Rebecca Caitlin	Police Officer	66098.09	f	Airport Law Enforcement Divisi	61670
Millea Julie Ellen	Real Estate Agent II	66099.74	f	EPM Real Estate	61671
Thompson Jaime L	Accountant II	65228.36	f	Finance - Executive	61672
Cook Patrick A	Fire Fighter II	65981.98	f	Fire Station 5	61673
Mason III Jacob Bill	HVAC Technician Senior	66588.3	f	EPM BS Spratt	61674
Cornette Adrian L	Fire Fighter II	65981.98	f	Fire Station 28	61675
Etter Billy Jackson	Police Officer	67397.56	f	Training Division	61676
Darlington Peter B	Fire Fighter II	65981.98	f	Fire Station 24	61677
Frazita Kristina M	Police Officer	67397.56	f	Recruiting Division	61678
McPeters Zachary T	Fire Fighter II	65793.71	f	Fire Station 1	61679
Revels Torry Lynn Orth	Real Estate Agent II	66099.74	f	EPM Real Estate	61680
Ezekiel David P.	Fire Fighter II	65981.98	f	Fire Station 24	61681
Kennerly Daniel Reid	Police Officer	67397.56	f	University City Division	61682
Sechler Erich Michael	GIS Analyst	65176.32	f	CLT Water Engineering-Admin	61683
Duncan Charlenea Sims	Community&Commerce Specialist	66566.88	f	Community Engagement	61684
Ottelin Brandon Conrad	Police Officer	66098.09	f	Steele Creek Division	61685
Riggins David Hamilton	Fire Fighter II	65793.71	f	Fire Station 12	61686
Sun William	GIS Analyst	65176.2	f	Fire Administration	61687
Hager Tyrone L	Fire Fighter II	65981.98	f	Fire Station 41	61688
Hudgins Robert A.	Rail Car Maintenance Superviso	66557.54	f	Light Rail Maintenance	61689
Parrott Mark William	Police Officer	66098.09	f	North Tryon Division	61690
Key Andrew M.	Police Officer	67397.56	f	Special Victims Division	61691
Arthurs Joie	Real Estate Agent I	66099.15	f	Bus Offic -CommercialSvs/Aviat	61692
Rosario Henry Q	Fire Fighter II	65793.71	f	Fire Station 16	61693
Phillips Zettie Chunn	Administrative Officer II	65157.07	f	HR/CR	61694
Henderson Nicholas Kent	Fire Fighter II	65981.98	f	Fire Station 2	61695
Moulliet Jr Charles Richard	Rail Car Maintenance Superviso	66557.54	f	Light Rail Maintenance	61696
Pearson Kelly Suzanne	Police Officer	66098.09	f	Freedom Division	61697
Lampley Kamesha Bridges	Police Officer	67397.56	f	Recruiting Division	61698
Andrichuk Daniel J	Police Officer	66098.09	f	Providence Division	61699
Sain Scott M	Fire Fighter II	65793.71	f	Fire Station 35	61700
Batchelor Gail M.	Public Information Specialist	65122.42	f	Public & Community Relations	61701
Honeycutt Brian K	Fire Fighter II	65981.98	f	Fire Station 38	61702
Cherry Terrence Radford	Rail Car Maintenance Superviso	66557.49	f	Light Rail Maintenance	61703
Pfeiffer William Stephen	Police Officer	66098.09	f	Westover Division	61704
Walters Christopher Gary	Police Officer	67397.56	f	Recruiting Division	61705
Aquino Aimee Irene	Police Officer	66098.09	f	Hickory Grove Division	61706
Smith Ashley J	Fire Fighter II	65793.71	f	Fire Station 12	61707
Arnold Lisa Kay	Plan Review Engineer	65121.3	f	EPM Land Development	61708
Jones Rahsarn Jabbar	Fire Fighter II	65981.98	f	Fire Station 17	61709
York Tommy D	Rail Car Maintenance Superviso	66557.49	f	Light Rail Maintenance	61710
Pickler Elizabeth Boyette	Police Officer	66098.09	f	Airport Law Enforcement Divisi	61711
Ward Shaun Lavell	Police Officer	67397.56	f	Training Division	61712
Arpino Paul M	Police Officer	66098.09	f	Freedom Division	61713
Snyder Casey Byron	Fire Fighter Engineer	65793.71	f	Fire Station 31	61714
Swett Tracy Thompson	Administrative Officer III	65118	f	Human Resources	61715
Lambert David Timothy	Fire Fighter II	65981.98	f	Fire Station 4	61716
Thompson Jr Dennis Charles	Rail Car Maintenance Superviso	66557	f	Light Rail Maintenance	61717
Prentice Andrew J	Police Officer	66098.09	f	Central Division	61718
Keyes Tracey A.	Contracts Admin Specialist Ld	67326.43	f	Finance Procurement Management	61719
Allen Lorna Leigh	Principal Planner	67320.75	f	Planning	61720
Stark Rachel Emiko Mukai	Principal Planner	67320.75	f	Planning	61721
Pak Chae Hyon	Bus Systems Spec Intrm	67252.19	f	Director's Office Combined	61722
Walker Vanessa	Bus Systems Spec Intrm	67249.52	f	Administration	61723
Lojko Catherine D	Public Info Specialist Senior	67247.86	f	E&PM Storm Water	61724
Lacagnina Michael	Equipment Parts Manager	67229.29	f	Light Rail Administration	61725
Gaines Jonathan	Bus Systems Spec Intrm	67210	f	Finance Accounting	61726
Guy Shannin Nicole	Criminalist DNA Analyst	67194	f	Crime Lab Division	61727
Roncase Anthony Christopher	Criminalist DNA Analyst	67194	f	Crime Lab Division	61728
Arciniegas Mosquera Silvia A.	Bus Systems Spec Intrm	67184.4	f	Finance Business Systems	61729
Duke La-Tashia D.	Bus Systems Spec Intrm	67184.4	f	Finance Business Systems	61730
Emmerich Dennis M	Bus Systems Spec Intrm	67184.4	f	Finance Business Systems	61731
Frederick Mitchell C	Treatment Plant Maint Supv	67172.88	f	CLT Water EMD Maintenance	61732
Panicco Hannah Sanborn	Emergency Management Planner	67163.2	f	Fire Emergency Management	61733
Wooten Benjamin Clay	Emergency Management Planner	67163.2	f	Fire Emergency Management	61734
Butler Demetria Janiese	Administrative Officer III	67160.12	f	Fire Administration	61735
Rebman Alisha Hamilton	Administrative Officer III	67160.07	f	Fire Administration	61736
Saraceno Matthew B	Fire Fighter II	67106.44	f	Fire Station 3	61737
Shuford Bryan H	Fire Fighter II	67106.44	f	Fire Station 13	61738
Paul Jonathan Ryan	Plan Review Engineer	67075.02	f	CLT Water Eng-Install & Dev	61739
Hinson Shannon	Plan Review Engineer	67075	f	CLT Water Eng-Install & Dev	61740
Anderson Katie Ann	Police Officer	67066.52	f	Training Division	61741
Jackson Allie Glenn	Bus Systems Spec Intrm	67054.68	f	CharMeck 311	61742
Lederer Ashley	Management Analyst	67000	f	City Manager's Office	61743
Crago Grant Carson	Construction Supervisor	66973.76	f	E&PM Storm Water	61744
McAdoo Marcus Aaron	Equipment Shop Manager	66950	f	Fleet Mgmt-12th Street Shop	61745
Spinelli Anthony	WW Chf Treatment Plant Op	66906.04	f	CLT Water McDowell Creek Plant	61746
Stewart Sandra L	Administrative Officer III	66905.99	f	Planning	61747
Aphayarath Pontip	Bus Systems Spec Intrm	66893.1	f	Planning	61748
Capote Eugene	Rail Car Maintenance Superviso	66879.07	f	Light Rail Maintenance	61749
Nixon LeeVester D	Airport Electronics Tech Sr	66877.83	f	Facil - Building Maintenance	61750
Caldwell Ericka	HR Training Specialist	66866	f	Human Resources	61751
Wine Stuart	GIS Analyst	66794	f	EPM Main Engineering	61752
Hedrick David A	Contract Estimator	66755.09	f	Administration	61753
Mahoney III Robert D.	Administrative Officer III	66701.76	f	SWS Operations - Collections A	61754
Brown Gary Martelle	Police Officer	66688.34	f	School Resources Officers	61755
Pellisero II William	Internal Auditor	66628.13	f	City Mgr - Internal Audit	61756
Kukowski Rebecca Leah	Administrative Officer III	65100	f	CLT Water Human Resources	61757
Locklair Daniel A.	Fire Fighter II	65981.98	f	Fire Station 38	61758
Spratling Jason T	Fire Fighter II	65793.71	f	Fire Station 7	61759
Martin III James A	Fire Fighter II	65981.98	f	Fire Station 15	61760
Bailey Alvin B	Police Officer	65099.92	f	School Resources Officers	61761
Phalen II Michael Wallace	Chief Maintenance Mechanic	65098.32	f	Facil - Building Maintenance	61762
Antio James J	Chief Construction Inspector	65097.8	f	CLT Water Engineering-Admin	61763
Pilarski Michael	Airport Operations Supv II	65097.8	f	Oper - Airside	61764
Ramsey Micah Jonathan	Police Officer	66098.09	f	Eastway Division	61765
Unterstein Jeffrey Michael	Airport Operations Supv II	65097.8	f	Oper - Airside	61766
Walcott Eric Anthony	Chief Maintenance Mechanic	65097.8	f	Facil - Building Maintenance	61767
Bagnasco Daniel Steven	Police Officer	66098.09	f	North Division	61768
Rankine Ryan L	Police Officer	66098.09	f	Independence Division	61769
Zoeckler Brian J	Airport Operations Supv II	65097.8	f	Oper - Airside	61770
Merritt Andrew S	Fire Fighter II	65981.98	f	Fire Station 20	61771
Barba Jennifer Dunn	Police Officer	66098.09	f	South Division	61772
Tucker Willie Earl	Fire Fighter II	65793.71	f	Fire Station 18	61773
Redford Daniel C	Police Officer	66098.09	f	Steele Creek Division	61774
Chancellor Theodore Eric	Airport Operations Supv II	65097	f	Oper - Airside	61775
Blackwell Michael Julian	Police Officer	66098.09	f	Westover Division	61776
Mitchell Jr Bill M.	Fire Fighter II	65981.98	f	Fire Station 10	61777
Warlick Kevin M	Fire Fighter II	65793.71	f	Fire Station 2	61778
Barnes Kim Ellen	N&BS Area Supervisor	66554.48	f	Community Engagement	61779
Whisnant Robert Nicolas	Fire Fighter II	65793.71	f	Fire Station 38	61780
Shelley-Henson Monica A	Contracts Admin Specialist	66550.85	f	CLT Water Procurement	61781
Wood Adam R	Fire Fighter Engineer	65793.71	f	Fire Station 3	61782
Redzepovic Elvir	Police Officer	66098.09	f	North Tryon Division	61783
Moose Howard A	Fire Fighter II	65981.98	f	Fire Station 40	61784
Brcik Michelle Lyn	Police Officer	66098.09	f	Metro Division	61785
Gaertner Mary Carruthers	N&BS Program Coordinator	66547.07	f	Housing Combined	61786
Rustemov Mirza NMN	Airport Operations Supv II	65097	f	Oper - Airport Security	61787
Acker-Estes Emily	Police Officer	65754.33	f	Canine Unit	61788
Reedy Mitchell E	Police Officer	66098.09	f	Metro Division	61789
Ogden James L	Fire Fighter II	65981.98	f	Fire Station 10	61790
Brennan Mara Elizabeth	Police Officer	66098.09	f	Providence Division	61791
Pfeiffer Rebecca H	N&BS Program Coordinator	66547.07	f	Housing Combined	61792
Walls Flemming O	Utilities Planner Scheduler	65089.08	f	CLT Water Matthews Zone	61793
Beamer William Cole	Police Officer	65754.33	f	Westover Division	61794
Spindler Justin M	Police Officer	66098.09	f	Central Division	61795
Rennie Steven J	Fire Fighter II	65981.98	f	Fire Station 32	61796
Brown Spencer Keon	Police Officer	66098.09	f	Providence Division	61797
Pickard James	HVAC Technician Senior	66543.02	f	EPM BS Spratt	61798
McCluney Ricky R	Heavy Equipment Srvc Tech Mstr	65021.27	f	Fleet Mgmt-Louise Ave Shop	61799
Brooks Kenan Barika	Police Officer	65754.33	f	South Division	61800
Sterrett Stephen C	Police Officer	66098.09	f	South Division	61801
Rikard Jeremy L	Fire Fighter II	65981.98	f	Fire Station 18	61802
Bynoe Tangelia J	Police Officer	66098.09	f	University City Division	61803
Wiggins Steven R	HVAC Technician Senior	66542.91	f	EPM BS Spratt	61804
Crockett Kim	Administrative Officer III	65000	f	Financial Management	61805
Edwards Bruce Anthony	Police Officer	65754.33	f	Recruiting Division	61806
Stewart Jess Keating	Police Officer	66098.09	f	Providence Division	61807
Stubblefield Lauren R.	Police Officer	66098.09	f	North Tryon Division	61808
Sudimack Brian T	Police Officer	66098.09	f	South Division	61809
Tolley Christopher Robert	Police Officer	66098.09	f	North Tryon Division	61810
Vang Lou T	Police Officer	66098.09	f	North Tryon Division	61811
Wassel Mark John	Police Officer	66098.09	f	Airport Law Enforcement Divisi	61812
Webb Mark James	Police Officer	66098.09	f	North Division	61813
Whitner Jared R	Police Officer	66098.09	f	Westover Division	61814
Williams Clemson Bernard	Police Officer	66098.09	f	Independence Division	61815
Womble Michael W	Police Officer	66098.09	f	Westover Division	61816
Pittman Paul Otis	Conveyor Load Bridge Tech Ld	66097.45	f	Facil - Building Maintenance	61817
McGilton Patrick W.	ITS Program Coordinator	66095.49	f	Traffic Safety	61818
Blann Jr Danny Herbert	Rail Controller	66095.1	f	Light Rail Operations	61819
Barker Patricia H	Administrative Officer II	66077.23	f	Field Services Group North - A	61820
Christenbury Jr Robert Wilson	Conveyor Load Bridge Tech Ld	66074.27	f	Facil - Building Maintenance	61821
Almond Coy Ricky	Airport Operations Supv II	66074.23	f	Oper - Airside	61822
Armstrong Chad Everette	Chief Maintenance Mechanic	66074.23	f	EPM BS Spratt	61823
Cassell Lester C	Chief Maintenance Mechanic	66074.23	f	Facil - Airside Maintenance (F	61824
Clatworthy Jason Daniel	Chief Maintenance Mechanic	66074.23	f	Facil - Building Maintenance	61825
Davis Dwayne Kelly	Fire Investigator Certified	66074.23	f	Fire Investigations/Education	61826
Davis Robert Loren	Airport Operations Supv II	66074.23	f	Oper - Airport Security	61827
Heinen John Alexander	Fire Investigator Certified	66074.23	f	Fire Investigations/Education	61828
Kelly Dennis Jerome	Chief Maintenance Mechanic	66074.23	f	Facil - Building Maintenance	61829
Nunes William Mathew	Airport Operations Supv II	66074.23	f	Oper - Airport Security	61830
Rathbone Ervin R	Chief Maintenance Mechanic	66074.23	f	Facil - Airside Maintenance (F	61831
Wall Eric Richard	Fire Investigator Certified	66074.23	f	Fire Investigations/Education	61832
Wheeler Charlotte Sophia	Fire Investigator Certified	66074.23	f	Fire Investigations/Education	61833
Helms Gale Moser	Administrative Officer III	66037.91	f	Finance Procurement Management	61834
Appleman Aaron S	Police Officer	65982.19	f	Central Division	61835
Banner Cynthia Abigail Dawkins	Police Officer	65982.19	f	Armed Robbery/Sexual Assault D	61836
Blackwood Paul A	Police Officer	65982.19	f	Metro Division	61837
Bunting Roy E	Police Officer	65982.19	f	Providence Division	61838
Wallace Ronald E.	Treatment Plant Maint Supv	66523.65	f	CLT Water Union County	61839
Isner Kerry B	Police Officer	65754.33	f	Airport Law Enforcement Divisi	61840
Evans Tracey	Administrative Officer III	65000	f	Human Resources Division	61841
Stines John K	Fire Fighter II	65981.98	f	Fire Station 10	61842
Coronel Ricardo Alberto	Police Officer	66497.21	f	School Resources Officers	61843
King Jeffrey Mark	Police Officer	65754.33	f	Special Victims Division	61844
Holm Christian Alan	Corporate Comm Specialist Sr	65000	f	CM-Constituent Services	61845
Tadlock III William D	Fire Fighter II	65981.98	f	Fire Station 33	61846
Green Daryl LeBrandon	Police Officer	66497.21	f	School Resources Officers	61847
Kinstler Adelaide Ethel	Police Officer	65754.33	f	North Division	61848
Simpson Brent Matthew	Police Officer	65754.33	f	Training Division	61849
Tucker Gregory P	Police Officer	65754.33	f	Canine Unit	61850
Grant Delvon Monray	Airport Operations Supv II	65748.77	f	Oper - Airport Security	61851
Wooten IV Oscar	Airport Operations Supv II	65748.77	f	Oper - Airport Security	61852
Hirschy Megan Ruth	Bus Systems Spec Intrm	65627.63	f	Computer Technology Solutions	61853
Moore Jr Dalton W	Management Analyst	65595.82	f	Criminal Intel. and Analysis	61854
Proctor Phyllis Gail	Administrative Officer III	65594.58	f	Admin - Administrative Service	61855
Briggs Robert M	Plans Reviewer	65577.04	f	CLT Water Backflow Prevention	61856
Lambrecht Patrick M	Field Operations Supervisor	65471.12	f	Light Rail Operations	61857
Balatsias John Christopher	Fire Fighter II	65469.09	f	Fire Station 10	61858
Kasso Omar Alecssandre	Fire Fighter II	65469.09	f	Fire Station 3	61859
Llewellyn Clayton G	Fire Fighter II	65469.09	f	Fire Station 10	61860
McCarn Jarad Thomas	Fire Fighter II	65469.09	f	Fire Station 13	61861
McCormick IV Edward James	Fire Fighter II	65469.09	f	Fire Station 10	61862
Watts Gregory Ryan	Fire Fighter II	65469.09	f	Fire Station 17	61863
Wilson Ryan M	Fire Fighter II	65469.09	f	Fire Station 17	61864
White Anita R	Engineering Contracts Speciali	65456.83	f	EPM Main Engineering	61865
Brown Matthew Benson	Emergency Management Planner	65454	f	Fire Administration	61866
Perault Cordell	HVAC Technician Senior	65442.98	f	Facil - Building Maintenance	61867
Alvarez Jr Claudio Andres	Police Officer	65430.41	f	Eastway Division	61868
Goncalves Thomas Michael	Police Officer	65430.41	f	Violent Crime Division	61869
Le Hai Thanh	Police Officer	65430.41	f	Recruiting Division	61870
Maynard Angela B	Assistant to City Mgr Office	65389.14	f	City Manager's Office	61871
Currence Sharnelle Gerice	Public Info Specialist Senior	65349	f	E&PM Storm Water Water Quality	61872
Phillips Shaun Thomas	Planning/Design Engineer	65343.72	f	EPM Landscape Mgt	61873
Dorofeeva Alina	GIS Analyst	65334.64	f	Municipal Planning	61874
Peyton Harry L.	Bus Systems Spec Intrm	65317.49	f	Fire Administration	61875
Campbell Jonathan C	Police Officer	66098.09	f	Metro Division	61876
Jones Ebony Monique	Administrative Officer III	65000	f	Financial Management	61877
Thompson Bradley O	Fire Fighter II	65981.98	f	Fire Station 41	61878
Mahaley Jr Clifford Eugene	Police Officer	66497.21	f	School Resources Officers	61879
Turbyfill James A	Fire Fighter II	65981.98	f	Fire Station 21	61880
Carlton Ryan Andrew	Police Officer	66098.09	f	South Division	61881
Richardson Reginald Valentino	Police Officer	66497.21	f	School Resources Officers	61882
Lucas Robert	Administrative Officer III	65000	f	Human Resources Division	61883
Turpin III Philip B	Fire Fighter II	65981.98	f	Fire Station 29	61884
Chidester II Thomas Edward	Police Officer	66098.09	f	Steele Creek Division	61885
Sellers Mary Gail	Training Specialist	66453.54	f	Admin - Administrative Service	61886
Mills Jeremy Clay	Corporate Comm Specialist Sr	65000	f	CM-Constituent Services	61887
Unnasch David L	Fire Fighter II	65981.98	f	Fire Station 38	61888
Crotty Karen Marie	Police Officer	66098.09	f	Providence Division	61889
Hill Aaron R	Field Operations Supervisor	66427.2	f	CLT Wat General Commerce Zone	61890
Pressley Heather Smith	Division Training Specialist	65000	f	CLT Water Human Resources	61891
Richardson Pamela D	Administrative Officer III	65000	f	Property & Evidence Management	61892
Scott Alicia	Management Analyst	65000	f	Strategy & Budget	61893
Sexton Shawn Patrick	Technical Systems Specialist	65000	f	I&T Enterprise Operations	61894
Price Michael Justin	Administrative Officer III	64983.93	f	E&PM Storm Water	61895
Monroe Craig	Arborist	64960.38	f	EPM Landscape Mgt	61896
Banahene Demetric	Content Webmaster	64959.92	f	Public & Community Relations	61897
Lewis Markesha	311 Contact Center Prog  Admin	64959.54	f	CharMeck 311	61898
Viar Jr Carlton L.	311 Contact Center Prog  Admin	64958.92	f	CharMeck 311	61899
Douglas Ryan Joshua	Bus Systems Spec Intrm	64944	f	Computer Technology Solutions	61900
Nicholson Amy Lynn	Content Webmaster	64941.91	f	Charlotte Water Communications	61901
Ruff Erik	Laboratory Analyst III	64929.81	f	CLT Water Lab Svc-Operations	61902
Weddington Lewkytra Lynee	Accountant II	64911.94	f	Finance Treasury	61903
Ellis Casey J	Treatment Plant Maint Supv	64901.33	f	CLT Water EMD Maintenance	61904
Taylor William Ernie	Treatment Plant Maint Supv	64901.12	f	CLT Water EMD Maintenance	61905
Webb Timothy Chad	Treatment Plant Maint Supv	64901.12	f	CLT Water EMD Maintenance	61906
Moen Caitlin Elizabeth	Administrative Officer III	64896	f	Admin - Administrative Service	61907
Bullard William S	Systems Maint Mechanic Sr	64889.32	f	Facil - Building Maintenance	61908
Houston William S	Police Officer	64875.01	f	School Resources Officers	61909
Quinichett III Paul Otis	Police Officer	64875.01	f	School Resources Officers	61910
Roseboro Christopher Lamont	Police Officer	64875.01	f	School Resources Officers	61911
Walling Kevin Stewart	Fire Fighter II	65981.98	f	Fire Station 32	61912
DePriest Christopher D	Police Officer	66098.09	f	Hickory Grove Division	61913
Pellicone Zachary Ryan	Construction Supervisor	66427.2	f	CLT Water Engineering-Admin	61914
Walsh Kenneth R.	Fire Fighter II	65981.98	f	Fire Station 18	61915
Deroba Aaron Jacob	Police Officer	66098.09	f	North Division	61916
Maxson Robert Scott	Construction Supervisor	66426.97	f	CLT Water Engineering-Admin	61917
Webb Aaron L.	Fire Fighter II	65981.98	f	Fire Station 10	61918
Earls Craig M	Police Officer	66098.09	f	Steele Creek Division	61919
Kish Leigh Ann	Fire Inspector Certified	66424.69	f	Fire Prevention	61920
Williams Scott A.	Fire Fighter II	65981.98	f	Fire Station 28	61921
Erb Eric B	Police Officer	66098.09	f	Steele Creek Division	61922
Lowery Fredrick William	Fire Inspector Certified	66424.69	f	Fire Prevention	61923
Wright Ernest S	Fire Fighter II	65981.98	f	Fire Station 23	61924
Faulkner Stephen Alan	Police Officer	66098.09	f	Central Division	61925
Wilson III Claude Gilmore	Fire Inspector Certified	66424.69	f	Fire Prevention	61926
Harris Erin	Public Info Specialist Senior	65966.03	f	Admin-Public Affairs/Media Rel	61927
Flynn Daniel Patrick	Police Officer	66098.09	f	South Division	61928
Bolick Jacob Wayne	WW Chf Treatment Plant Op	66399.88	f	CLT Water Irwin Creek Plt OPS	61929
Gibson Joshua Guy	Police Officer	65942.6	f	Central Division	61930
Forbes Michael A	Police Officer	66098.09	f	Westover Division	61931
Workman April E.	Police Officer	65942.6	f	South Division	61932
Taylor Angela Y	Chief Maintenance Mechanic	66399.88	f	Facil - Building Maintenance	61933
Lines Michael	Equipment Shop Supervisor	65837.45	f	Fleet Mgmt-12th Street Shop	61934
Fulton Matthew R	Police Officer	66098.09	f	Freedom Division	61935
Ayd Daniel Jerome	Airport Operations Supv II	66399.81	f	Oper - Airside	61936
Chandler Marshall Allen	Police Officer	65829.05	f	University City Division	61937
Garcia Rafael A	Police Officer	66098.09	f	Freedom Division	61938
Slachciak Donna	WW Chf Treatment Plant Op	66399.81	f	CLT Water Sugar Creek Plant	61939
Lee Sangwon	Police Officer	65829.05	f	Central Division	61940
Gibbons Michael P.	Police Officer	66098.09	f	Providence Division	61941
Handy Jason K.	Police Officer	66384.56	f	Eastway Division	61942
Robinson Gabriel William	Police Officer	65829.05	f	North Tryon Division	61943
Hanson Mark Brian	Police Officer	66098.09	f	Independence Division	61944
Soares Mario Rui D T	Police Officer	66384.56	f	North Tryon Division	61945
Adkins Randel D.	Fire Fighter II	65793.71	f	Fire Station 41	61946
Helms Andrew J	Police Officer	66098.09	f	Independence Division	61947
John Gideon Simeon	Police Officer	66344.47	f	University City Division	61948
Bailey Ryan Patrick	Fire Fighter II	65793.71	f	Fire Station 5	61949
Hill Ronald David	Police Officer	66098.09	f	Steele Creek Division	61950
Maldonado Gonzalez Luis F.	Police Officer	66344.47	f	University City Division	61951
Bell Bart Alan	Fire Fighter II	65793.71	f	Fire Station 10	61952
Hoffmann Rachael Elisabeth	Police Officer	66098.09	f	Airport Law Enforcement Divisi	61953
Mazzeo Dominick	Police Officer	66344.47	f	Airport Law Enforcement Divisi	61954
Bergen Matthew Kevin	Fire Fighter Engineer	65793.71	f	Fire Station 25	61955
Holland Michael G.	Police Officer	66098.09	f	Steele Creek Division	61956
Horne Ernest David	Safety Coordinator	66341.68	f	Risk Management	61957
DePoto Eric C	Fire Fighter II	65793.71	f	Fire Station 3	61958
Howard Samuel C	Police Officer	66098.09	f	North Tryon Division	61959
Berti Matthew J	Safety Coordinator	66341	f	Safety & Security	61960
Garland Terri Katherine	Fire Fighter II	65793.71	f	Fire Station 8	61961
James Gairy	Police Officer	66098.09	f	Central Division	61962
Helms Louis S	Conveyor Load Bridge Tech Sr	66262.65	f	Facil - Building Maintenance	61963
Gibson David John-wesley	Fire Fighter II	65793.71	f	Fire Station 5	61964
Jones Adam B	Police Officer	66098.09	f	Steele Creek Division	61965
Weidemann Eric O.	Construction Supervisor	66254.5	f	Utility Permitting	61966
Gilmore Brian Eugene	Fire Fighter II	65793.71	f	Fire Station 2	61967
Jones Kevin L	Police Officer	66098.09	f	Providence Division	61968
Green Larina L.	Graphic Artist Senior	66253.16	f	Public & Community Relations	61969
Hager Stevie Bernard	Fire Fighter II	65793.71	f	Fire Station 40	61970
Kaminski II Edward A	Police Officer	66098.09	f	Eastway Division	61971
Blount Jon Christian	WW Chf Treatment Plant Op	66237.32	f	CLT Water McAlpine Creek Plant	61972
Hampton Hunter Lee	Fire Fighter II	65793.71	f	Fire Station 15	61973
Kulp Jr Jackie E.	Police Officer	66098.09	f	Providence Division	61974
Nance Jeremy D.	WW Chf Treatment Plant Op	66237.32	f	CLT Water Union County	61975
Long Brian William	Police Officer	66098.09	f	Metro Division	61976
Mardis Jonathan Keegan	Police Officer	66098.09	f	North Tryon Division	61977
Mark Edward P	Police Officer	66098.09	f	Westover Division	61978
Maury Gerald	Police Officer	66098.09	f	Steele Creek Division	61979
Mayes Matthew James	Police Officer	66098.09	f	South Division	61980
Melchin Adam Michael	Police Officer	66098.09	f	Freedom Division	61981
Michal John R	Police Officer	66098.09	f	North Tryon Division	61982
Miller Brian Fiebiger	Police Officer	66098.09	f	Hickory Grove Division	61983
Ireland III William H	Technical Systems Specialist	66234.96	f	I&T Servers	61984
Singleton Stacie Yeager	Administrative Officer I	47652.42	f	Financial Management	62750
Calhoun Jr Scott Andrew	HVAC Technician Senior	66227.82	f	EPM Cultural Facilities-Disc P	61986
Ng Joyce Chou-Yee	Quality Assurance Analyst	66226.5	f	Professional Standards Unit	61987
Miller Brandon Palmer	Management Analyst	66223.65	f	Finance Procurement Management	61988
Simmons Vivian B	Administrative Officer III	66158.46	f	EPM Main Engineering	61989
Eckridge Nathaniel	Rail Car Maintenance Superviso	66156.41	f	Light Rail Maintenance	61990
Murray Rhonda W	Police Officer	64541.41	f	Independence Division	61991
Nelson Eric Archer	Police Officer	64541.41	f	Westover Division	61992
Roberts Claybourne Lee	Police Officer	64541.41	f	Steele Creek Division	61993
Robison Jr Stephen Barnes	Police Officer	64541.41	f	Eastway Division	61994
Saine Nichole Ann	Police Officer	64541.41	f	Freedom Division	61995
Schroder Daniel Elliott	Police Officer	64541.41	f	Steele Creek Division	61996
Scott Dorian Leval	Police Officer	64541.41	f	Metro Division	61997
Sobol Spencer Lawson	Police Officer	64541.41	f	Hickory Grove Division	61998
Taylor II Melvin Johnson	Police Officer	64541.41	f	Westover Division	61999
Tinsley Alan D	Police Officer	64541.41	f	University City Division	62000
Weaver Terry Maurice Privett	Police Officer	64541.41	f	Eastway Division	62001
Weston Damon Forbes	Police Officer	64541.41	f	Steele Creek Division	62002
White Jr Michael Eugene	Police Officer	64150.58	f	Non-Emergency Police Services	62003
Worthy Andrew J	Police Officer	64541.41	f	Westover Division	62004
Christopher David Walter	Special Events Coordinator Sr	64496.4	f	General Right of Way Managemen	62005
Neumann Scott Austin	Bus Systems Spec Intrm	64480	f	Computer Technology Solutions	62006
Wiesner Andrew J	Police Officer	64150.58	f	North Division	62007
Malpass Michael G	Fire Fighter Engineer	64411.11	f	Fire Station 14	62008
Ayers Christopher James	Bus Systems Spec Intrm	64465.75	f	Computer Technology Solutions	62009
Willis Gerren T	Police Officer	64150.58	f	Central Division	62010
Martin Wallace K	Fire Fighter Engineer	64411.11	f	Fire Station 2	62011
Pena Christian	Field Operations Supervisor	64439.23	f	Light Rail Operations	62012
Johnson Christopher D	Construction Inspector Senior	64862.93	f	EPM Land Development	62013
Malone Tommy Edward	IT Communications Technician	63336	f	I&T Network	62014
Wippel Dustin Joseph	Police Officer	64150.58	f	Eastway Division	62015
Merritt Jason R	Fire Fighter Engineer	64411.11	f	Fire Station 28	62016
Bellinger Patricia Leander	Safety Coordinator	64437.15	f	Safety & Security	62017
Melillo Jr Michael	Fire Fighter II	62839.98	f	Fire Station 33	62018
Bissette Monty	Construction Inspector Senior	64862.4	f	E&PM Storm Water	62019
Rodriguez Eugenia J.	Engineering Contracts Speciali	63334.96	f	EPM Main Engineering	62020
Wright Jr Robert Douglas	Police Officer	64150.58	f	South Division	62021
Morris Todd S	Fire Fighter Engineer	64411.11	f	Fire Station 39	62022
Robinson Michelle Renee	Administrative Officer III	64429	f	Vanpool	62023
Shank Kyle A	Fire Fighter II	64188.77	f	Fire Station 13	62024
Mullis Dale D	Fire Fighter II	62839.98	f	Fire Station 8	62025
Steward Shawn Michael	Police Officer	62966.92	f	North Tryon Division	62026
Johnson Donna D	Engineering Contracts Speciali	64848.3	f	EPM Main Engineering	62027
Teel Christopher	Training Specialist	64825.11	f	Light Rail Administration	62028
Martin Viveca Arlene	Airport Operations Supv II	64777.18	f	Oper - Airport Security	62029
Fusco Lance P.	Police Officer	64765.06	f	Eastway Division	62030
Lor Xeng	Police Officer	64765.06	f	Airport Law Enforcement Divisi	62031
Whitt James K.	Police Officer	64765.06	f	Central Division	62032
Simonson Helen Miller	Wetland Specialist	64764	f	E&PM Storm Water Water Quality	62033
Jackson Denada Shannom	Administrative Officer III	64739.69	f	SWS Public Information	62034
Blanton Shawn G	Police Officer	64726.92	f	Airport Law Enforcement Divisi	62035
Copeland Stephen Keith	Police Officer	64726.92	f	Airport Law Enforcement Divisi	62036
Decker David Michael	Police Officer	64726.92	f	Westover Division	62037
Harkey Jody R	Police Officer	64726.92	f	Westover Division	62038
Meyer Richard Michael	Police Officer	64726.92	f	Freedom Division	62039
Patterson Antoine Danyelle	Police Officer	64726.92	f	North Division	62040
Roth Wayne Allen	Police Officer	64726.92	f	Steele Creek Division	62041
Meadows Anthony Deshea	Division Training Specialist	64710.09	f	CLT Water Field Ops Admin	62042
English Kara Brooke	Administrative Officer III	64706.45	f	CLT Water Field Ops Admin	62043
Walker Desmond Raunell	Network Comm Integrator Assc	64697.66	f	Public Safety Communications	62044
Halaburda Jr William J	Field Operations Supervisor	64687.57	f	SouthWest District (Sweden)	62045
Allred Kimberly Dorsey	Fire Inspector Certified	64676.08	f	Fire Prevention	62046
Starnes Kevin R	Fire Inspector Certified	64676.08	f	Fire Prevention	62047
Williams Jr Paul R	Fire Inspector Certified	64676.08	f	Fire Prevention	62048
Joyner Delia Y.	N&BS Program Coordinator	64608.81	f	Housing Combined	62049
Barrett April LaShay	Administrative Officer III	64606.25	f	HR/CR	62050
Atwood Christopher Ross	Police Officer	64541.41	f	Metro Division	62051
Benloss Paul Justin	Police Officer	64541.41	f	Eastway Division	62052
Bodenstein Michael Randy	Police Officer	64541.41	f	Steele Creek Division	62053
Bostick Christopher Michael	Police Officer	64541.41	f	North Division	62054
Browder Aaron Cody	Police Officer	64541.41	f	Independence Division	62055
Buckingham Brad Mackenzie	Police Officer	64541.41	f	Hickory Grove Division	62056
Caskey Jr Michael David	Police Officer	64541.41	f	Metro Division	62057
Clark DeMario Maurice	Police Officer	64541.41	f	Providence Division	62058
Cominsky Alexander Robert	Police Officer	64541.41	f	Westover Division	62059
Dashti Mike	Police Officer	64541.41	f	Westover Division	62060
Duncan Justin Tyler	Police Officer	64541.41	f	University City Division	62061
Ellis Joseph R	Police Officer	64541.41	f	Eastway Division	62062
Gray Kevin Joel	Police Officer	64541.41	f	Eastway Division	62063
Greene Christopher Michael	Police Officer	64541.41	f	Metro Division	62064
Guldager Aubrey J	Police Officer	64541.41	f	North Tryon Division	62065
Harvey David Todd	Police Officer	64541.41	f	Steele Creek Division	62066
Hawkins Kevin P	Police Officer	64541.41	f	Metro Division	62067
Holzhauer Anthony Jacob	Police Officer	64541.41	f	South Division	62068
Ignaczak Heather Pitts	Police Officer	64541.41	f	Freedom Division	62069
Khang Fuji	Police Officer	64541.41	f	North Division	62070
Kubinsky John Joseph	Police Officer	64541.41	f	North Tryon Division	62071
LaFontaine Alec	Police Officer	64541.41	f	Steele Creek Division	62072
Montero Nestor J	Police Officer	64541.41	f	Eastway Division	62073
Mullins Andrea Brooke	Police Officer	64541.41	f	Westover Division	62074
Abernathy Jr David B	Fire Fighter Engineer	64411.11	f	Fire Station 25	62075
Alexander George L	Fire Fighter Engineer	64411.11	f	Fire Station 27	62076
Allen Robert B	Fire Fighter Engineer	64411.11	f	Fire Station 20	62077
Arney Dennis S	Fire Fighter Engineer	64411.11	f	Fire Station 9	62078
Baker Thomas A.	Fire Fighter Engineer	64411.11	f	Fire Station 20	62079
Blythe Jr Floyd M	Fire Fighter Engineer	64411.11	f	Fire Station 33	62080
Briggs Timothy A	Fire Fighter Engineer	64411.11	f	Fire Station 14	62081
Campbell Jr John C	Fire Fighter Engineer	64411.11	f	Fire Station 16	62082
Campbell Will T	Fire Fighter Engineer	64411.11	f	Fire Station 26	62083
Clary Jon C	Fire Fighter Engineer	64411.11	f	Fire Station 19	62084
Wagner Eric Vincent	Police Officer	62966.92	f	North Tryon Division	62085
Jha Pushpa	GIS Analyst	63300.02	f	Fire Administration	62086
Cook Jeffery A	Fire Fighter Engineer	64411.11	f	Fire Station 34	62087
Savicki Sarah Brickhouse	N&BS Program Coordinator	64138	f	Armed Robbery/Sexual Assault D	62088
Odell William J	Fire Fighter Engineer	64411.11	f	Fire Station 5	62089
Myers Jason M.	Fire Fighter II	62839.98	f	Fire Station 15	62090
England Byron Jerome	Rail Controller	64170	f	Light Rail Operations	62091
Hounshell Charles Joseph	Airport Operations Supv II	64135.82	f	Oper - Airside	62092
Berman Corey Michael	Police Officer	64150.58	f	Freedom Division	62093
Grier Angela Adona	Administrative Officer II	64122.65	f	Economic Development-ADM	62094
Crosby III James B	Fire Fighter Engineer	64411.11	f	Fire Station 34	62095
Bossert Jason B.	Police Officer	64150.58	f	Providence Division	62096
Fields Vincent Philip	Rail Controller	63222.74	f	Light Rail Operations	62097
Petraske Keith L	Fire Fighter Engineer	64411.11	f	Fire Station 7	62098
Nelson Kelvin L	Fire Fighter II	62839.98	f	Fire Station 28	62099
Gant Mavis R	Administrative Officer III	64084.39	f	SWS Administration	62100
Dancey Joshua L	Fire Fighter Engineer	64411.11	f	Fire Station 8	62101
Brown Coty Carlton	Police Officer	64150.58	f	Aviation Unit	62102
Vegoe Mark Todd	Heavy Equipment Srvc EVT	63195.61	f	Fleet Mgmt-Louise Ave Shop	62103
Phifer Jeffrey A	Fire Fighter Engineer	64411.11	f	Fire Station 8	62104
Price Jerry K	Fire Fighter II	62839.98	f	Fire Station 4	62105
Thomas James D	Fire EMS Instructor Coord	64064	f	Fire Training	62106
Darge Kevin M.	Fire Fighter Engineer	64411.11	f	Fire Station 31	62107
Nelson Jr Earl	Labor Crew Chief II	46264.31	f	SWS Operations - Yard Waste Co	62751
Buckley Daniel C	Police Officer	64150.58	f	Passenger Vehicle for Hire Uni	62109
Eaton Nicole	Corporate Comm Specialist	63195.45	f	CM-Corporate Comm & Marketing	62110
Queen Jr Garland William	Fire Fighter Engineer	64411.11	f	Fire Station 23	62111
Puckett Marty J	Fire Fighter II	62839.98	f	Fire Station 36	62112
Moore Dwyane P	Field Operations Supervisor	64061.44	f	SouthWest District (Sweden)	62113
David Robert A	Fire Fighter Engineer	64411.11	f	Fire Station 18	62114
Waite Chad Randel	Police Officer	62966.92	f	Freedom Division	62115
Butler Brian Israel	Police Officer	64150.58	f	Eastway Division	62116
Bolduc Charles Thomas	Police Officer	63185.21	f	Steele Creek Division	62117
Reagan Matthew B	Fire Fighter Engineer	64411.11	f	Fire Station 33	62118
Robinette Samuel M	Fire Fighter II	62839.98	f	Fire Station 33	62119
Gibson Clement K	Administrative Officer II	64058.57	f	Special Programs	62120
Demartini Michael R	Fire Fighter Engineer	64411.11	f	Fire Station 26	62121
Yau Douglas Sze Hin	Police Officer	62966.92	f	Providence Division	62122
Conklin Ryan K	Police Officer	64150.58	f	Special Victims Division	62123
Caban Robert A	Police Officer	63185.21	f	North Division	62124
Robinette Bradley C	Fire Fighter Engineer	64411.11	f	Fire Station 33	62125
Rubright Clint W	Fire Fighter Engineer	64411.11	f	Fire Station 36	62126
Sanders Jr William L	Fire Fighter Engineer	64411.11	f	Fire Station 1	62127
Scaggs Denver C	Fire Fighter Engineer	64411.11	f	Fire Station 36	62128
Sharpe William E.	Fire Fighter Engineer	64411.11	f	Fire Station 29	62129
Shirley James A	Fire Fighter Engineer	64411.11	f	Fire Station 24	62130
Springs Dequintin R.	Fire Fighter Engineer	64411.11	f	Fire Station 12	62131
St. Onge Jerry R	Fire Fighter Engineer	64411.11	f	Fire Station 24	62132
Swett Scott B	Fire Fighter Engineer	64411.11	f	Fire Station 19	62133
Taylor Lawrence J	Fire Fighter Engineer	64411.11	f	Fire Station 35	62134
Timberlake III Frank O	Fire Fighter Engineer	64411.11	f	Fire Station 9	62135
Tombaugh Andrew J	Fire Fighter Engineer	64411.11	f	Fire Station 4	62136
Warlick John R	Fire Fighter Engineer	64411.11	f	Fire Station 21	62137
Weyler Warren D	Fire Fighter Engineer	64411.11	f	Fire Station 16	62138
Adams Sutalia A	Office Assistant V	47647.67	f	Fire Investigations/Education	62752
Green Merica A	Facilities/Property Supervisor	64385.12	f	SWS Facilities	62140
Moore Robert E	Crime Lab Technician	47554.78	f	Crime Lab Division	62753
Brown Veronica Maxine	Police Officer	64372.91	f	Volunteer Unit	62142
Wallin Michael C.	Police Officer	64372.91	f	Metro Division	62143
Klemowicz Jason Michael	Fire Fighter Engineer	64372.66	f	Fire Station 30	62144
Misenheimer Matthew B	Fire Fighter Engineer	64372.66	f	Fire Station 27	62145
Morley Michael R	Fire Fighter Engineer	64372.66	f	Fire Station 38	62146
Sandau Shawn M	Fire Fighter Engineer	64372.66	f	Fire Station 37	62147
Spratling Ryan S	Fire Fighter II	64372.66	f	Fire Station 40	62148
Williams Steven J	Fire Fighter Engineer	64372.66	f	Fire Station 42	62149
Haynes William Joseph	Police Officer	64334.03	f	Freedom Division	62150
Omar Mohammad	Police Officer	64334.03	f	Field Services Group South - A	62151
Overcash Adam B	Police Officer	64334.03	f	Canine Unit	62152
Washington Adrian L	Police Officer	64334.03	f	Armed Robbery/Sexual Assault D	62153
Cashion Wendy M.	Laboratory Analyst III	64305.49	f	CLT Water Lab Svc-Operations	62154
Landreth Michelle L.	Laboratory Analyst III	64305.49	f	CLT Water Lab Svc-Operations	62155
Duru Jennifer D. O.	Public Information Specialist	64282.22	f	Development NE Corridor	62156
Harrison David Howard	Transportation Planner I	64245.6	f	Municipal Planning	62157
Parks Robert DeAngelo	Network Comm Integrator Assc	64195.24	f	Public Safety Communications	62158
Benson Brian W	Fire Fighter II	64188.77	f	Fire Station 24	62159
Brown Jr Mark Anthony	Fire Fighter Engineer	64188.77	f	Fire Station 31	62160
Carter Michael S	Fire Fighter II	64188.77	f	Fire Station 15	62161
Hedgepeth Darren O	Fire Fighter II	64188.77	f	Fire Station 26	62162
Korecki Matthew J	Fire Fighter II	64188.77	f	Fire Station 3	62163
Logan Garrett Arthur	Fire Fighter Engineer	64188.77	f	Fire Station 4	62164
Powell Lee Franklin	Fire Fighter Engineer	64188.77	f	Fire Station 40	62165
Privette William A	Fire Fighter II	64188.77	f	Fire Station 26	62166
Rasmussen Kemp A	Fire Fighter II	64188.77	f	Fire Station 18	62167
Helms Michael S.	Engineering Assistant	64000	f	Utility Permitting	62168
Dixon Jeffrey W	Fire Fighter Engineer	64411.11	f	Fire Station 15	62169
Smith Ervin Terrell	Administrative Officer II	62945.55	f	Facil - Logistics	62170
Thompson Louise S	Accountant II	63962.01	f	Finance Revenue	62171
Levy Anthony C	Management Analyst	63954.25	f	Light Rail Administration	62172
Connor Scheldon J	Police Officer	64150.58	f	Eastway Division	62173
Smith Jr Ronald Earl	Fire Fighter II	62839.98	f	Fire Station 28	62174
Dobbins David E	Fire Fighter Engineer	64411.11	f	Fire Station 7	62175
Cosma Jason Johnathan	Police Officer	64150.58	f	South Division	62176
Stewart Travis Glenn	Transportation Elect.Tech II L	63954.05	f	Transportation Systems	62177
Lamy Elizabeth E	Code Enforcement Inspector Ld	62928.61	f	Housing -Rehabilitation	62178
Cook William S	Police Officer	63185.21	f	Steele Creek Division	62179
Cougill Christina A.	Police Officer	64150.58	f	Armed Robbery/Sexual Assault D	62180
Crooke II John W	Police Officer	63185.21	f	South Division	62181
Diekhaus Patrick John	Police Officer	64150.58	f	Metro Division	62182
Greene Antonio Dewayne	Police Officer	63185.21	f	Independence Division	62183
Smith James M	Fire Fighter II	62839.98	f	Fire Station 25	62184
Bradt Michael Andrew	Fire Fighter II	63872.28	f	Fire Station 30	62185
English Devane N	Fire Fighter Engineer	64411.11	f	Fire Station 36	62186
Gibson Russ Jackson	Police Officer	64150.58	f	Hickory Grove Division	62187
Whitesides Robert Brian	HVAC Technician Senior	62928.53	f	EPM BS Spratt	62188
Perry Romauro R	Police Officer	63185.21	f	Metro Division	62189
Tinsley David	Fire Fighter II	62839.98	f	Fire Station 16	62190
Clemmer Joseph LLoyd	Fire Fighter II	63872.28	f	Fire Station 3	62191
Ennis Deryl L	Fire Fighter Engineer	64411.11	f	Fire Station 29	62192
Greene Melanie S	Police Officer	64150.58	f	Special Victims Division	62193
Hinson Dereke N	Service Order Specialist	49078.11	f	Fleet Mgmt-Louise Ave Shop	62194
Gilliland Jacob Levi	Heavy Equipment Srvc Tech Sr	49071.68	f	Fleet Mgmt-Sweden Rd Shop	62195
Holland Charles F	Systems Maintenance Mechanic	49062.94	f	Facil - Airside Maintenance (F	62196
Holloway Gregory Demond	Systems Maintenance Mechanic	49062.9	f	Facil - Building Maintenance	62197
Schneider Gunter	Systems Maintenance Mechanic	49062.9	f	Facil - Building Maintenance	62198
McBroom Jonathan	Systems Maintenance Mechanic	49062.71	f	Facil - Airside Maintenance (F	62199
Whiteside Lydia Brooks	Administrative Officer I	48990.4	f	CLT Water Engineering-Admin	62200
Flanders Angela B.	Crime Scene Technician	48956.09	f	Crime Scene Search Division	62201
Green Kelly P	Contract Technician	48956.09	f	Fleet Section	62202
Zay Scott R.	Crime Scene Technician	48956.09	f	Crime Scene Search Division	62203
Lee Rodney Bernard	Heavy Equipment Srvc Tech Sr	48953.45	f	Fleet Mgmt-Sweden Rd Shop	62204
Maniscalco Raymond Paul	Treatment Plant Mechanic II	48834.17	f	CLT Water Sewer Lift	62205
Armstrong Thomas Paul	Heavy Equipment Srvc Tech Sr	48833.64	f	Fleet Mgmt-Tuckaseegee Rd Shop	62206
Boucher Joseph R.	Labor Crew Chief II	48833.64	f	Special Transportation Service	62207
Clawson Joshua Lee	Heavy Equipment Srvc Tech Sr	48833.64	f	Fleet Mgmt-Tuckaseegee Rd Shop	62208
Croft Michael James	Heavy Equipment Srvc Tech Sr	48833.64	f	Fleet Mgmt-Sweden Rd Shop	62209
Kelly James Junior	Airfield Maintenance Tech III	48833.64	f	Facil - Airside Maintenance (F	62210
Meggett Edmond D	Labor Crew Chief II	48833.64	f	Transportation Operations	62211
Shuford Eric F.	Labor Crew Chief II	48833.64	f	SWS Operations - Rights of Way	62212
Mitchell Kendra Y	Administrative Officer I	48833.2	f	Administration	62213
O'Neil Michael Barrett	Administrative Officer I	48833	f	Human Resources	62214
Womack Donna S	Administrative Officer I	48833	f	HR Management System	62215
King Krystal Sirman	Administrative Officer I	48743.91	f	Finance Procurement Management	62216
Benfield Bobby D	Labor Crew Chief II	48724	f	North East District (Orr)	62217
Taylor Jr Robert Clark	Labor Crew Chief II	48724	f	Central District (Northpointe)	62218
Bradley Annette G	Police Telecommunicator	48723.86	f	Communications Division	62219
Galloway Andrenetta Tigner	Police Telecommunicator	48619.09	f	Communications Division	62220
Lipcsak John Tyler	Relief Captain	76130.91	f	Fire Station 23	63573
Acuna Carlos Eduardo	WW Treatment Plant Op III	48577.13	f	CLT EMD WW Trt Pkg Plants	62222
Archie JaTia	Rail Operator	48577.13	f	Light Rail Operations	62223
Owen Tyler Dixon	Police Officer	49448.2	f	Metro Division	62224
Klein Kristopher	Systems Maintenance Mechanic	48577.13	f	Facil - Building Maintenance	62225
Damon Jr Lewis	Airport Shuttlebus Dispatcher	48470.31	f	Oper - Landside/Grd Trans	62226
Paige Catherine Eudy	Utilities Services Tech	48448.35	f	CLT Water Cust Service-Admin	62227
Bridges Leviticus Eugene	Labor Crew Chief II	48402.56	f	Transportation Operations	62228
Abdul-Haqq Abdul Malik	Labor Crew Chief II	48381.32	f	SWS Operations - Rights of Way	62229
Ferguson Charles D	Labor Crew Chief II	47548.97	f	Transportation Operations	62754
Blount Jr Reginald	Sanitation Team Leader	48328.68	f	SWS Safety	62231
Aguilar Tami Sue	Administrative Officer I	48323.26	f	Fire Training	62232
Schaufler Theodore D.	Animal Control Supervisor	48290.06	f	Animal Care & Control Division	62233
Holden Jason L	Carpenter	48260.45	f	EPM BS Spratt	62234
Phelps Tyralyn L	Administrative Officer I	48200	f	Finance Office Firefighters Re	62235
Draughn Venesia D.	Administrative Officer I	48152.78	f	Charlotte Business Inclusion	62236
Hodges Renay Lee	Administrative Officer I	48114.78	f	Facil - Executive	62237
Krebs Frank John	Heavy Equipment Srvc Tech Sr	48024.52	f	Facil - Fleet Maintenance	62238
Bell Colten McCrae	Fire Fighter I	47950.18	f	Fire Station 33	62239
Bosnick Matthew Isaac	Fire Fighter I	47950.18	f	Fire Station 29	62240
Bowman Christopher Ray	Fire Fighter I	47950.18	f	Fire Station 12	62241
Cangemi Christopher John	Fire Fighter I	47950.18	f	Fire Station 3	62242
Giannini Jr Matthew Anthony	Fire Fighter I	47950.18	f	Fire Station 26	62243
Jenkins Phillip Bradford	Fire Fighter I	47950.18	f	Fire Station 1	62244
Meyer James David	Fire Fighter I	47950.18	f	Fire Station 4	62245
Rivera Jr Hector Ruben	Fire Fighter I	47950.18	f	Fire Station 38	62246
Sinopoli James Joseph	Fire Fighter I	47950.18	f	Fire Station 1	62247
Sledge Hunter Christian	Fire Fighter I	47950.18	f	Fire Station 38	62248
Tindall Jr James B	Police Officer	47950.18	f	Metro Division	62249
Yates Songa Momo	Fire Fighter I	47950.18	f	Fire Station 4	62250
Burch Terrill Jamal	Fire Fighter I	47949.77	f	Fire Station 34	62251
Edwards Colton Lee	Fire Fighter I	47949.77	f	Fire Station 28	62252
Formyduval Christopher Joy	Fire Fighter I	47949.77	f	Fire Station 24	62253
Hardin Joshua Clark	Fire Fighter I	47949.77	f	Fire Station 20	62254
Mackey Devan	Police Trainee	47949.77	f	Recruit Training Unit	62255
Melton Daniel James	Fire Fighter I	47949.77	f	Fire Station 29	62256
Melton Nicholas Edward	Fire Fighter I	47949.77	f	Fire Station 25	62257
Miller Antonio Freddie	Fire Fighter I	47949.77	f	Fire Station 26	62258
Muniz Pedro Manuel	Fire Fighter I	47949.77	f	Fire Station 26	62259
Pearson Jeems Cortez	Fire Fighter I	47949.77	f	Fire Station 35	62260
Rollins Matthew Robert	Fire Fighter I	47949.77	f	Fire Station 2	62261
Kotsokalis Steven Serafim	Systems Maintenance Mechanic	48577.13	f	Facil - Building Maintenance	62262
Jordan Michelle Lynn	Fire Fighter I	50233.52	f	Fire Station 21	62263
Ryans Darion	Police Officer	49448.2	f	Hickory Grove Division	62264
Sellers Trent Ross	Airport Operations Officer III	51006.06	f	Oper - Airside	62265
McCray Nicole M	Customer/Revenue Service Spec.	48577.13	f	Special Transportation Service	62266
Moody Jr Fred J	Customer/Revenue Service Spec.	48577.13	f	CLT Water Field Ops Admin	62267
Morton Ahmad R	Rail Operator	48577.13	f	Light Rail Operations	62268
Mosley Daniel	WW Treatment Plant Op II	48577.13	f	CLT Water Union County	62269
Orosz Lauren Allyne	311 Contact Cte Prog Analyst	48577.13	f	Communications Division	62270
Pinedo Adrienne Yvette	Rail Operator	48577.13	f	CityLYNX	62271
Price Tanishia D	Customer/Revenue Service Spec.	48577.13	f	CLT Water Cust Service-Admin	62272
Riley Christopher John	WW Treatment Plant Op III	48577.13	f	CLT Water McAlpine Creek Plant	62273
Robinson Michael T	Rail Operator	48577.13	f	Light Rail Operations	62274
Robinson Pamela Yvette	Rail Operator	48577.13	f	Light Rail Operations	62275
Santos Rudy Allianigui	Systems Maintenance Mechanic	48577.13	f	Facil - Building Maintenance	62276
Smith Garrett Alan	Eng Services Investigator	48577.13	f	CLT Water EMD Administration	62277
Smith Joshua Harrison	Systems Maintenance Mechanic	48577.13	f	Facil - Building Maintenance	62278
Stillwell James Sidney	Systems Maintenance Mechanic	48577.13	f	Facil - Building Maintenance	62279
Ta Hi	Carpenter Senior	48577.13	f	Facil - Building Maintenance	62280
Torrence Michael Scott	Equipment Parts Team Leader	48577.13	f	Fleet Mgmt-Parts Operations	62281
Vasquez  Iglesias Alex Edgardo	Carpenter Senior	48577.13	f	Facil - Building Maintenance	62282
Walls Michael Clinton	Systems Maintenance Mechanic	48577.13	f	Facil - Airside Maintenance (F	62283
Warren Jennifer D	311 Contact Cte Prog Analyst	48577.13	f	CharMeck 311	62284
Weekley Dawne Noel	Rail Operator	48577.13	f	Light Rail Operations	62285
Williams Paul Maker	Rail Operator	48577.13	f	Light Rail Operations	62286
Wood William Kane	WW Treatment Plant Op III	48577.13	f	CLT Water McDowell Creek Plant	62287
Stoute Peter Hallam	Eng Services Investigator	48577.13	f	CLT Water Cust Service-Admin	62288
Brinkley Mark Allen	Rail Operator	48577	f	Light Rail Operations	62289
Cunningham Bradford Alphonso	Rail Operator	48577	f	Light Rail Operations	62290
Davison Jamie Melissa	Rail Operator	48577	f	Light Rail Operations	62291
Dawkins Anthony Leon	Rail Operator	48577	f	CityLYNX	62292
Hall Antonia Michelle	Rail Operator	48577	f	Light Rail Operations	62293
Headen Paula	Rail Operator	48577	f	Light Rail Operations	62294
Lewis Darryl	Rail Operator	48577	f	CityLYNX	62295
Page Edjuana Janine	Rail Operator	48577	f	Light Rail Operations	62296
Richburg Elrick Leroy	Rail Operator	48577	f	Light Rail Operations	62297
Romero Hector Luis	Rail Operator	48577	f	Light Rail Operations	62298
Weldon Keesha	Rail Operator	48577	f	Light Rail Operations	62299
Williams Evette Smith	Rail Operator	48577	f	CityLYNX	62300
Sifuentes Milena	Administrative Officer I	48576.89	f	Community Engage Combined	62301
Marks Eric	Fire Fighter I	50233.52	f	Fire Station 26	62302
Sides David	Police Officer	49448.2	f	South Division	62303
Sloan Daniel Lee	Light Equipment Srvc Tech Mstr	51006.06	f	Fleet Mgmt-Atando Ave Shop	62304
McMurray II Charles Warren	Fire Fighter I	50233.52	f	Fire Station 26	62305
Parker Jason Clark	Fire Fighter I	50233.52	f	Fire Station 32	62306
Poe Tyler Matthew	Police Officer	50233.52	f	South Division	62307
Shipp Datwain Jermaine	Fire Fighter I	50233.52	f	Fire Station 17	62308
Stanley Patrick Merrill	Fire Fighter I	50233.52	f	Fire Station 40	62309
Delia Jr Robert L	Equipment Parts Team Leader	50168.45	f	Fleet Mgmt-Parts Operations	62310
Davis Jimmy Allen	Treatment Plant Mechanic II	50134.67	f	CLT Water - Water Maintenance	62311
Ardrey Terrence P.	Labor Crew Chief II	50119.36	f	Special Transportation Service	62312
Cochran II William Frank	Labor Crew Chief II	50119.36	f	Central District (Northpointe)	62313
Messer Clifton Wayne	Treatment Plant Mechanic II	50119.36	f	CLT Water EMD Maintenance	62314
Smith Nicole M.	Administrative Officer I	50119.36	f	SWS Administration	62315
Sutton Jr Linwood E	Police Officer	49448.2	f	Central Division	62316
Stephens Travis Jerome	Treatment Plant Mechanic II	50119.36	f	CLT Water - Water Maintenance	62317
Souza Johnny M	Light Equipment Srvc Tech Mstr	51006.06	f	Fleet Mgmt-Atando Ave Shop	62318
Carpenter III Thomas Beall	Heavy Equipment Srvc Tech Sr	49444.06	f	Fleet Mgmt-Louise Ave Shop	62319
Wanless Milan J	Water Treatment Plant Opr A	51006.06	f	CLT Water Dukes WTP	62320
Weasah Kou	Administrative Officer I	50119.36	f	SWS Administration	62321
Peralta Regina Esther	311 Contact Cte Prog Analyst	51006.03	f	CharMeck 311	62322
Mullis James Bryon	Heavy Equipment Srvc Tech Sr	49444.06	f	Fleet Mgmt-Tuckaseegee Rd Shop	62323
Cherry Raquib	Rail Track Maintainer	51006	f	Maintenance Right of Way (MOW)	62324
Williams Robin D	Labor Crew Chief II	50119.36	f	Special Transportation Service	62325
Flower David Ronald	Video Technician	49440.17	f	CM-Corporate Comm & Marketing	62326
Harms Maleek Marshall	Airport Operations Officer III	51006	f	Oper - Airside	62327
Sager Eric Lawrence	Fire Fighter I	50016.24	f	Fire Station 32	62328
Mickey Shawn Calvin	Administrative Officer I	49427.64	f	SWS Safety	62329
Johnson Larry W	Airfield Maint Crew Chf	51006	f	Facil - Airside Maintenance (F	62330
Chavez Maura Elguera	Community Relations Spec	50000	f	CM- Community Relations	62331
Batten Rachel Outen	311 Contact Cte Prog Analyst	49427.41	f	Communications Division	62332
Sellers Antoine Bernard	Rail Track Maintainer	51006	f	Maintenance Right of Way (MOW)	62333
Lanier Jessica Robinson	Customer/Revenue Service Spec.	49427.41	f	Customer Service	62334
Jarrell Ty	Environmental Program Inspecto	51005.54	f	CLT Water Field Ops Admin	62335
Lewis Bradley Scott	WW Treatment Plant Op III	49427.41	f	CLT Water Union County	62336
Turnmire Shawn Michael	Environmental Program Inspecto	51005.54	f	CLT Water Field Ops Admin	62337
Marshall Julia Catherine	Eng Services Investigator	49403.14	f	EPM Land Development	62338
Vail Jacey	Environmental Program Inspecto	51005.54	f	CLT Water Field Ops Admin	62339
Williams Carolyn Denise	Eng Services Investigator	49403.14	f	EPM Land Development	62340
Deas Bonita V	Police Investigation Tech	50999.12	f	Violent Crime Division	62341
Johnson Carol T	Administrative Officer I	49378.74	f	CLT Water Field Ops Admin	62342
Sharpe William Darnell	Labor Crew Chief II	50996.56	f	Transportation Operations	62343
Barr Kristian Javo'ne	Police Officer	49336.67	f	Central Division	62344
Stokes Linda S	Administrative Officer I	50980.2	f	EPM Landscape Mgt	62345
Caulfield Joseph O	Police Officer	49336.67	f	Steele Creek Division	62346
Pears Naimah Curry	Administrative Officer I	50968.59	f	Violent Crime Division	62347
Dziendziel Mackenzie Elizabeth	Police Officer	49336.67	f	North Division	62348
Price Juronne Andrew	Heavy Equipment Srvc Tech Sr	50894.17	f	Facil - Fleet Maintenance	62349
Easter Devin Montee	Police Officer	49336.67	f	North Division	62350
Evans William	Treatment Plant Mechanic II	50871.48	f	CLT Water Sewer Lift	62351
Elliott Suzett Elizabeth	Police Officer	49336.67	f	University City Division	62352
Hewett Germaine	Labor Crew Chief II	50871.48	f	Central District (Northpointe)	62353
Emanuel Joi Aria	Police Officer	49336.67	f	Metro Division	62354
Stahala Philipp	Drafting Technician	50871.48	f	EPM Main Engineering	62355
Hammerle Samantha Grace	Police Officer	49336.67	f	Steele Creek Division	62356
Bednarik John A	Labor Crew Chief II	50871.15	f	SouthWest District (Sweden)	62357
Hudson Michael Dale	Police Officer	49336.67	f	Westover Division	62358
Wright David E	Transportation Elect. Tech I	50800.48	f	Transportation Systems	62359
Sturdivant Kenisha Neko	Administrative Officer I	50779.32	f	SWS Operations - Collections A	62360
Alaso Latoya N.	Water Treatment Plant Opr A	50755.18	f	CLT Water Franklin Plant	62361
Scheuerman Michelle Lynn	Criminialist Trainee	50754.58	f	Crime Lab Division	62362
Abrams Tony O	Labor Crew Chief II	50745.86	f	CLT Water West Tyvola Zone	62363
Burrill Phyllis A.	Administrative Officer I	50745.86	f	Facilities	62364
Baxter Karien Morrison	Rail Operator	50675.66	f	Light Rail Operations	62365
Warren LeShawn R.	Customer/Revenue Service Spec.	50675.66	f	CharMeck 311	62366
Jones Stana W	Administrative Officer I	50660.36	f	EPM Main Engineering	62367
Jones Edward L	Heavy Equipment Srvc Tech Sr	47548.97	f	Fleet Mgmt-Sweden Rd Shop	62755
Dean Donald E	Contract Technician	50640.83	f	SWS Contracted Services	62369
Jackson Rhonda	Community Relations Spec	50507.08	f	CM- Community Relations	62370
Morrison William McCollum	Animal Control Supervisor	50412.7	f	Animal Care & Control Division	62371
Price Pamela Fox	Contract Technician	50365.32	f	EPM Main Engineering	62372
Andrade Kyren Rico	Fire Fighter II	50347.44	f	Fire Station 22	62373
Austin Chad Mitchell	Fire Fighter I	50347.44	f	Fire Station 23	62374
Chapman Joshua Hall	Fire Fighter II	50347.44	f	Fire Station 28	62375
Clark Micah Christein	Fire Fighter I	50347.44	f	Fire Station 30	62376
Decker Jordan Michael	Fire Fighter I	50347.44	f	Fire Station 27	62377
Hattaway Coleman Alexander	Fire Fighter I	50347.44	f	Fire Station 1	62378
Maynard Jeffrey Reginald	Police Officer	49336.67	f	University City Division	62379
McCooey Daniel	Police Officer	49336.67	f	Hickory Grove Division	62380
Michael Matthew Christopher	Police Officer	49336.67	f	Freedom Division	62381
Moore Patrick	Police Officer	49336.67	f	Metro Division	62382
Morrison Japheth Don	Police Officer	49336.67	f	South Division	62383
Partak Roxanne	Police Officer	49336.67	f	University City Division	62384
Rotz Nicholas Paul	Police Officer	49336.67	f	North Division	62385
Schwob Bradley Jacob	Police Officer	49336.67	f	University City Division	62386
Shea Benjamin Joseph	Police Officer	49336.67	f	North Division	62387
Smith Rebecca Lindsey	Police Officer	49336.67	f	North Tryon Division	62388
Sorochynskyj Matthew	Police Officer	49336.67	f	Eastway Division	62389
Vaughn Michael	Police Officer	49336.67	f	Independence Division	62390
Warren Britney Felicia	Police Officer	49336.67	f	University City Division	62391
Belcher Charles Linwood	Sanitation Equipment Operator	49333.47	f	SWS Operations - Yard Waste Co	62392
Krebs David LeRoy	Heavy Equipment Srvc Tech Sr	47548.97	f	Fleet Mgmt-Sweden Rd Shop	62756
McMurray Brenda Little	Police Investigation Tech	49328.19	f	Alarm Ordinance Enforcement Un	62394
Aaron Tracey Renard	Rail Operator	49306.02	f	Light Rail Operations	62395
Acevedo Angela	Customer/Revenue Service Spec.	49306.02	f	CharMeck 311	62396
Blakeney Erica M	Customer/Revenue Service Spec.	49306.02	f	CharMeck 311	62397
Adams Valerie R	Special Transportn Dispatcher	47324.13	f	Special Transportation Service	62398
Bellamy Regina M	Police Telecommunicator	47324.13	f	Communications Division	62399
Bisesti Christine R	Police Telecommunicator	47324.13	f	Communications Division	62400
Curlee Dawn Renee	Police Telecommunicator	47324.13	f	Communications Division	62401
Kitchens Polly Gardin	Police Telecommunicator	47324.13	f	Communications Division	62402
Shaver Daniel Jason	Fire Fighter I	47949.77	f	Fire Station 24	62403
Osborne Dana Lee	Labor Crew Chief II	47548.97	f	North East District (Orr)	62757
Gilchrist Victor R	Pump Station Technician	46624.8	f	CLT Water Catawba Trt Plant	62405
Robinson Thomas G	Fire Equipment Technician	45961.88	f	Fire Logistics	62406
Todd Darryl Lynn	Labor Crew Chief II	47548.97	f	North East District (Orr)	62758
Fox Tijuana Monique	Administrative Officer I	47175.15	f	Fleet Mgmt-Admin	62408
Hornung Anton Gene	Survey Technician	45515.36	f	EPM Main Engineering	62409
McLendon Gerry	Equipment Operator III	47324.13	f	Central District (Northpointe)	62410
Smith Stephanie Y	Police Telecommunicator	47324.13	f	Communications Division	62411
Florczyk Adrianna H.	Crime Scene Technician	47322.55	f	Crime Scene Search Division	62412
Helms Eric Donald	Police Telecommunicator	47322.28	f	Communications Division	62413
Brophy Melissa Anne	Police Telecommunicator	47322.06	f	Communications Division	62414
Weckenman Anthony John	Administrative Officer I	47305.26	f	Passenger Vehicle for Hire Uni	62415
Ah Hoy Jacko T	Labor Crew Chief II	47305.13	f	EPM Landscape Mgt	62416
Glee Richard James	Labor Crew Chief II	47305.13	f	Transportation Operations	62417
Vasale Rachel Marie	Crime Scene Technician	47304.55	f	Crime Scene Search Division	62418
Walton Shari Gaynell	Crime Scene Technician	47304.55	f	Crime Scene Search Division	62419
Kegley Leslie S	Administrative Officer I	47255.6	f	EPM Real Estate	62420
Davis Derrick F	Sanitation Equip Operator Sr	47208.02	f	SWS Operations - Garbage Colle	62421
Dunn Jeffrey L	Sanitation Equip Operator Sr	47208.02	f	SWS Operations - Garbage Colle	62422
Hames Bresette Franklin	Sanitation Equip Operator Sr	47208.02	f	SWS Operations - Garbage Colle	62423
Sandoval Ruben Z	Sanitation Equip Operator Sr	47208.02	f	SWS Operations - Garbage Colle	62424
Davie Jarvis	Sanitation Equip Operator Sr	47207.81	f	SWS Operations - Garbage Colle	62425
Maki Bruce R	Sanitation Equip Operator Sr	47207.81	f	SWS Operations - Garbage Colle	62426
ONeil Dexter	Sanitation Equip Operator Sr	47207.81	f	SWS Operations - Garbage Colle	62427
Robinson Tina J	Police Investigation Tech	47207.81	f	Non-Emergency Police Services	62428
Thomas Wilford	Sanitation Equip Operator Sr	47207.81	f	SWS Operations - Garbage Colle	62429
Tucker Jr Timothy A	Service Order Specialist	47207.7	f	Fleet Mgmt-Atando Ave Shop	62430
Williams Mildred L.	Special Transportn Dispatcher	47207.61	f	Special Transportation Service	62431
Bennett Allen Eugene	Police Telecommunicator	47207.49	f	Communications Division	62432
Davis Laura L	Police Telecommunicator	47207.49	f	Communications Division	62433
Elstrom Jr Sedgwick V.	Police Telecommunicator	47207.49	f	Communications Division	62434
Hawkins Genelle T.	Office Assistant V	47207.49	f	Administration Division	62435
Johnson-Neely Tara	Claims Assistant	47207.49	f	Risk Management	62436
Skelly Susan Renee	Police Telecommunicator	47207.49	f	Communications Division	62437
Teague Robert M	Police Telecommunicator	47207.49	f	Communications Division	62438
Wilson Ron Christopher	Police Telecommunicator	47207.49	f	Communications Division	62439
Jenkins Scott Derek	Storekeeper Senior	47205.9	f	Facil - Logistics	62440
Pittman Nicole Denise	Police Telecommunicator	47205.79	f	Communications Division	62441
Jerez Brian E	Labor Crew Chief II	47189.6	f	CLT Water Cust Service-Admin	62442
Wasileff Guillermo Angel	Labor Crew Chief II	47189.6	f	CLT Water Cust Service-Admin	62443
Baxley Preston Lee	Labor Crew Chief II	47189.54	f	Transportation Operations	62444
Bell Jason Matthew	Labor Crew Chief II	47189.54	f	SouthWest District (Sweden)	62445
Caldwell Therald Stuart	Labor Crew Chief II	47189.54	f	Central District (Northpointe)	62446
Carver Timothy W	Treatment Plant Mechanic II	47189.54	f	CLT Water Catawba Trt Plant	62447
Hager III Franklin Dewey	Labor Crew Chief II	47189.54	f	SouthWest District (Sweden)	62448
John Enoch Joel	Labor Crew Chief II	47189.54	f	CLT Wat General Commerce Zone	62449
Keich Linda	Administrative Officer I	47073.43	f	Planning	62450
LaMon Reginald D.	Labor Crew Chief II	47189.54	f	SouthWest District (Sweden)	62451
Laster Nicolas L	Labor Crew Chief II	47189.54	f	CLT Wat General Commerce Zone	62452
Lewis Scott Allen	Labor Crew Chief II	47189.54	f	Central District (Northpointe)	62453
Miller Verlie S	Labor Crew Chief II	47189.54	f	SouthWest District (Sweden)	62454
Rhyne Marqvis K	Labor Crew Chief II	47189.54	f	SouthWest District (Sweden)	62455
Milam Matthew	Heavy Equipment Srvc Tech Sr	46263.78	f	Fleet Mgmt-Louise Ave Shop	62456
Webb Timothy Mark	Light Equipment Srvc Tech Sr	47137.36	f	Fleet Mgmt-CDC	62457
Mangual Perla Elisa	Police Investigation Tech	47099.13	f	Non-Emergency Police Services	62458
Davis Ryan James	Police Officer	47094.09	f	Steele Creek Division	62459
Jakubisin Kay F	Claims Assistant	46624.8	f	Risk Management	62460
Fletcher Justin Robert	Police Officer	47094.09	f	North Tryon Division	62461
Pettit-Bradley Lisa D	Office Assistant V	46624.8	f	Court Services - DA	62462
Kester Jerrod W	Police Officer	47094.09	f	Hickory Grove Division	62463
Moore Billie S	Administrative Officer I	46263.78	f	Customer Service	62464
Inman Steven Lyle	Labor Crew Chief I	45515.36	f	North East District (Orr)	62465
Richter Lynette G	Office Assistant V	45935.86	f	Court Services District Court	62466
Girard Matthew J	Labor Crew Chief I	46584.16	f	CLT Water Matthews Zone	62467
Hankinson Chloe	Animal Control Officer-Lead	47073.31	f	Animal Care & Control Division	62468
Turner Adrian Nicholas	Fire Fighter I	47949.77	f	Fire Station 21	62469
Oliver Chester	Heavy Equipment Srvc Tech Sr	46263.78	f	Fleet Mgmt-Sweden Rd Shop	62470
Mills Jr Bernard	Airport Shuttlebus Dispatcher	45886.73	f	Oper - Landside/Grd Trans	62471
Mack Phillip Sherard	Sign Fabricator	45515.36	f	Transportation Operations	62472
Williams Wilkinson John	Fire Fighter I	47949.77	f	Fire Station 37	62473
Blackmoore Jr Sylvester	Airport Shuttlebus Dispatcher	46578.61	f	Oper - Landside/Grd Trans	62474
Osborne III Katherine Nicole	Administrative Officer I	46263.78	f	CLT Water Procurement	62475
Pikulik Yana Alexandrovna	Police Officer	47094.09	f	South Division	62476
Phillips Derwin E.	Animal Control Officer-Lead	47073.31	f	Animal Care & Control Division	62477
Ferguson Erskine Vernon	Labor Crew Chief II	45824.65	f	EPM Landscape Mgt	62478
Ferguson Benjamin J	Survey Technician	45514.83	f	EPM Main Engineering	62479
Nichols Eli Meynard	GIS Technician	47923.18	f	E&PM Storm Water	62480
Boyd Adrian R.	Revenue Collections Agent	46508.68	f	Finance Revenue	62481
Paris Jonathan	Labor Crew Chief II	46263.78	f	CLT Water Matthews Zone	62482
Ullmer Gabriel Mary Joseph	Police Officer	47094.09	f	South Division	62483
McCall Thomas Kelly	Airfield Maintenance Tech III	47071.32	f	Facil - Airside Maintenance (F	62484
Adams Mark William	Contract Technician	45819.37	f	SWS Contracted Services	62485
Carter Jr Charles Lewis	Sanitation Equip Operator Sr	45458.89	f	SWS Operations - Garbage Colle	62486
Mash Donna	Administrative Officer I	47890.46	f	Transportation Operations	62487
Scheuerman Cherish Conklin	Police Telecommunicator	46508.26	f	Communications Division	62488
Parks Kierran Shequille	Heavy Equipment Srvc Tech Sr	46263.78	f	Fleet Mgmt-Louise Ave Shop	62489
Blair Byron Lamont	Police Officer	47093.92	f	Steele Creek Division	62490
Lloyd Jared Christian	Relief Captain	76130.91	f	Fire Station 40	63574
Smith Karee Medlin	Administrative Officer I	47050.73	f	Finance Asset and Recovery Dis	62492
Reeves Holly Randall	Police Investigation Tech	45679.51	f	Metro Division	62493
Toro Heriberto	Airport Operations Officer I	45455.59	f	Oper - Landside/Grd Trans	62494
Smith Cassandra Y	Customer/Revenue Serv Asst Sr	47882.9	f	CLT Water Cust Service-Admin	62495
Pernice Donald J.	Equipment Operator III	46508.15	f	SWS Operations - Rights of Way	62496
Powell Christina K	Administrative Officer I	46263.78	f	Oper - Airside	62497
Brown Cory Antwan	Police Officer	47093.92	f	Central Division	62498
Rowe William Author	Labor Crew Chief II	46958.68	f	CLT Water Huntersville Zone	62499
Aiken Michael Patrick	Treatment Plant Mechanic II	46958.37	f	CLT Water EMD Maintenance	62500
Austin Tammy Calvert	Administrative Officer I	46958.37	f	Tech - Executive	62501
Bobet Alex	Heavy Equipment Srvc Tech Sr	46958.37	f	Fleet Mgmt-Louise Ave Shop	62502
Brannan Crystal Lynn	Labor Crew Chief II	46958.37	f	Facil - Airside Maintenance (F	62503
Cropp Phillip Deforrest	Heavy Equipment Srvc Tech Sr	46958.37	f	Fleet Mgmt-Sweden Rd Shop	62504
Dyer Dawnell R	Administrative Officer I	46958.37	f	Human Resources Division	62505
Epperson Melanie A	Legal Secretary	46958.37	f	City Attorney	62506
Johnson Reginald Benito	Labor Crew Chief II	46958.37	f	CLT Wat General Commerce Zone	62507
Lindesay Latoya	Administrative Officer I	46958.37	f	CLT Water Sugar Creek Plant	62508
Marques Luiza de Melo	Administrative Officer I	46958.37	f	Admin - Executive	62509
McPortland Amy	Administrative Officer I	46958.37	f	Human Resources Division	62510
Negash Feven Michael	Administrative Officer I	46958.37	f	Admin - Administrative Service	62511
Nelson Jr James A	Heavy Equipment Srvc Tech Sr	46958.37	f	Facil - Fleet Maintenance	62512
Nichols Lauren S	Administrative Officer I	46958.37	f	Admin-Public Affairs/Media Rel	62513
Phillips Jr Richard Dean	Administrative Officer I	46958.37	f	EPM Landscape Mgt	62514
Smith William Henry	Labor Crew Chief II	46958.37	f	CLT Water Matthews Zone	62515
Turner Jr Harold	Labor Crew Chief II	46958.37	f	SWS Operations - Garbage Colle	62516
Williams Garry C	Labor Crew Chief II	46958.37	f	CLT Water West Tyvola Zone	62517
Wilson Tauheedah Nafeesah	Administrative Officer I	46958.37	f	Business Support Combined	62518
Williams Phillip Lane	Equipment Operator III	46958.31	f	SWS Operations - Rights of Way	62519
Jackson Marjorie	Administrative Officer I	46958.28	f	I&T Administration	62520
Rasheed Shirahba	Administrative Officer I	46958.28	f	I&T Administration	62521
Renyhart Shawn M	Administrative Officer I	46958.28	f	Risk Management	62522
Schwab Wesley Alexander	Labor Crew Chief II	46958.28	f	CLT Water Cust Service-Admin	62523
Fisher Danielle	Administrative Officer I	46958.27	f	Community Engage Combined	62524
Grabowski Jr James Leon	Heavy Equipment Srvc Tech Sr	46958.27	f	Fleet Mgmt-Sweden Rd Shop	62525
Mangrum Cynthia Lynne	Administrative Officer I	46958.27	f	Human Resources Division	62526
Wilson Carol Jean	Administrative Officer I	46958.27	f	Dev - Executive	62527
Coleman Latysha	Administrative Officer I	46957.74	f	Human Resources Division	62528
Fraley Christopher Ryan	Heavy Equipment Srvc Tech Sr	46957.74	f	Fleet Mgmt-Sweden Rd Shop	62529
Gulledge Matthew Brock	Treatment Plant Mechanic II	46957.74	f	CLT Water EMD Maintenance	62530
Reames Jason David	Labor Crew Chief II	46957.74	f	CLT Wat General Commerce Zone	62531
Duhaney Zenia E.	Administrative Officer I	46957.66	f	Planning	62532
Marler Matthew David	Animal Control Officer-Lead	46957.65	f	Animal Care & Control Division	62533
Wright Jr BT	Pump Station Technician	46952.03	f	CLT Water Catawba Trt Plant	62534
Stanciauskas Donatas	Apprentice	46901.6	f	Light Rail Maintenance	62535
Horne Trisha A	Administrative Officer II	46823.85	f	EPM Main Engineering	62536
Bryant Brenda C	Police Investigation Tech	46767.82	f	Court Services District Court	62537
Stryker Bailey Jan	GIS Technician	46727.19	f	Dev - Executive	62538
Tallmon Lawrence Lee	Airfield Maintenance Tech III	46727.19	f	Facil - Airside Maintenance (F	62539
Thompson Jontavius	Labor Crew Chief II	46727.19	f	CLT Water Huntersville Zone	62540
Stockes Gregory A	Sign And Marking Technician	46625.32	f	Transportation Operations	62541
Bishop Shaconda L	Office Assistant V	46624.8	f	Administrative Management	62542
Gaddy Jimmie	Sanitation Equip Operator Sr	46624.8	f	SWS Operations - Garbage Colle	62543
Mullins Rodger D	Police Telecommunicator	47877.27	f	Communications Division	62544
Cossin Teddy L	Treatment Plant Mechanic II	47851.93	f	CLT Water Sewer Lift	62545
Ali Hassan	Airport Operations Officer I	45676.34	f	Oper - Landside/Grd Trans	62546
Dantism Christopher	Police Officer	47093.92	f	Freedom Division	62547
Cadenhead Jesse Wray	Fire Fighter I	47841.62	f	Fire Station 1	62548
Curtis Tracy L	Airport Operations Officer I	45452.36	f	Oper - Airport Security	62549
Rhodes Dana	Administrative Officer I	46263.78	f	Finance Accounting	62550
Ivey Roy Sampson	Airfield Maintenance Tech II	46499.4	f	Facil - Airside Maintenance (F	62551
Royko Joseph Matthew	Administrative Officer I	46263.78	f	BO - Executive	62552
Pressley III William	Labor Crew Chief I	45372.33	f	CLT Water West Tyvola Zone	62553
Shook Jr Phillip Eugene	Labor Crew Chief II	46263.78	f	EPM Landscape Mgt	62554
Waddell Jr William H	Labor Crew Chief I	46479.88	f	CLT Water Matthews Zone	62555
Foutty Nicholas Andrew	Police Officer	47093.92	f	North Tryon Division	62556
Palmer Jocella Renee	Accounting Technician	45284.71	f	Finance Accounting	62557
Morgan Patrick Grant	Fire Fighter I	45667	f	Fire Station 12	62558
Simonson Jarrod Adam	Airfield Maintenance Tech III	46263.78	f	Facil - Airside Maintenance (F	62559
Clemonts III James Edward	Fire Fighter I	47841.62	f	Fire Station 25	62560
Ratliff Azara Jean	Police Investigation Tech	46396.26	f	Central Division	62561
Gladden Richard Jonvarous	Police Officer	47093.92	f	North Division	62562
Harris Eddie J	Sanitation Equip Operator Sr	45283.97	f	SWS Operations - Garbage Colle	62563
Cato Ethan Lane	Fire Fighter I	45666.84	f	Fire Station 31	62564
Spearman Carrie Nicole	Administrative Officer I	46263.78	f	EPM BS Spratt	62565
Cook Joshua Allen	Fire Fighter I	47841.62	f	Fire Station 40	62566
Hoke Derrick A	Mason	46311.81	f	Central District (Northpointe)	62567
Gonzalez Andres	Police Officer	47093.92	f	Steele Creek Division	62568
Pappas Dennis Anthony	Airport Operations Officer I	45231.4	f	Oper - Landside/Grd Trans	62569
Cheek Steven Cody	Fire Fighter I	45666.84	f	Fire Station 25	62570
Wheeler John Kent	Heavy Equipment Srvc Tech Sr	46263.78	f	Facil - Fleet Maintenance	62571
Neely Jordan Alexander	Fire Fighter I	47841.62	f	Fire Station 24	62572
Gayle Lindsay Erin	Police Telecommunicator	46303.63	f	Communications Division	62573
Gregory Shawn Michael	Police Officer	47093.92	f	Metro Division	62574
Settles Vincent Wayne	Airport Operations Officer I	45230.88	f	Oper - Landside/Grd Trans	62575
Colbert Christopher Ryuji	Fire Fighter I	45666.84	f	Fire Station 6	62576
Courtney Maxwell Franklin	Airfield Maintenance Tech III	46263.25	f	Facil - Airside Maintenance (F	62577
Podlaski Mark Ellis	Fire Fighter I	47841.62	f	Fire Station 3	62578
Vincent Megan Sloop	Police Telecommunicator	46303.63	f	Communications Division	62579
James Mariah	Police Officer	47093.92	f	Westover Division	62580
Truesdale Eric O	Labor Crew Chief I	45230.59	f	CLT Water West Tyvola Zone	62581
Craver Caleb Austin	Fire Fighter I	45666.84	f	Fire Station 29	62582
Dry Randy Eugene	Labor Crew Chief II	46263.25	f	North East District (Orr)	62583
Ross Matthew Bryan	Fire Fighter I	47841.62	f	Fire Station 3	62584
Adams Jessica Lee Kasten	Administrative Officer I	46264.31	f	SWS Human Resources	62585
Kelly Steven Wayne	Police Officer	47093.92	f	Central Division	62586
Kennelly IV Joseph Francis	Police Officer	47093.92	f	Steele Creek Division	62587
Lee Erin Marie	Police Officer	47093.92	f	North Division	62588
Marshall Terrell Antonio	Police Officer	47093.92	f	Independence Division	62589
O'Brien Alyssa	Police Officer	47093.92	f	Westover Division	62590
Petrillo Michael Jerome	Police Officer	47093.92	f	Metro Division	62591
Pezzeca Nicholas Shane	Police Officer	47093.92	f	North Division	62592
Pistone II Vincent D	Police Officer	47093.92	f	North Tryon Division	62593
Santiago Michael Lenny	Police Officer	47093.92	f	Central Division	62594
Scheffler Brenden William	Police Officer	47093.92	f	Hickory Grove Division	62595
Sinclair Danereka	Police Officer	47093.92	f	University City Division	62596
Smietana Kasey Christopher	Police Officer	47093.92	f	South Division	62597
Watson DeAndree Maria	Police Officer	47093.92	f	North Division	62598
Bradley Evange Lee	Equipment Operator III	47091.37	f	CLT Water West Tyvola Zone	62599
Foster Jr George Wesley	Sanitation Equipment Operator	47091.19	f	SWS Operations - Bulky Collect	62600
Grinage Adina J	Administrative Officer I	47082.63	f	CLT Water Field Ops Admin	62601
Bell Darlene Marie	Administrative Officer I	47073.95	f	Fleet Mgmt-Administration	62602
Burns Germelyn Grace	Administrative Officer I	47073.95	f	Community Engagement	62603
Herman Jr William Louis	Labor Crew Chief II	47073.95	f	CLT Water Matthews Zone	62604
Mobley Scottie	Labor Crew Chief II	47073.95	f	CLT Water Matthews Zone	62605
Monti Scott Thomas	Legal Secretary	47073.95	f	City Attorney	62606
O'Leary Travis Ryan	Treatment Plant Mechanic II	47073.95	f	CLT Water EMD Maintenance	62607
Piggee Terrance Shaunar	Labor Crew Chief II	47073.95	f	North East District (Orr)	62608
Reimers Kelli Hartis	Administrative Officer I	47073.95	f	Administration	62609
Rios Domingo	Labor Crew Chief II	47073.95	f	CLT Wat General Commerce Zone	62610
Robbins Daniel Christopher	Labor Crew Chief II	47073.95	f	CLT Water West Tyvola Zone	62611
Thackston Eliana Melia	Administrative Officer I	47073.95	f	Quality Assurance	62612
Weeks Steve C	Labor Crew Chief II	47073.95	f	CLT Water Matthews Zone	62613
Wilkins Rebecca L	Administrative Officer I	47073.95	f	Planning and Research	62614
Dandy Darnell Roshon	Labor Crew Chief II	47073.94	f	SWS Operations - Street Sweepi	62615
Gray Lamont Antoine	Labor Crew Chief II	47073.94	f	SWS Operations - Garbage Colle	62616
Poindexter David Roger	Labor Crew Chief II	47073.94	f	SWS Operations-North Corridor	62617
Martin Keisha Dawn	Animal Control Officer-Lead	47073.45	f	Animal Care & Control Division	62618
Shrewsbury II David V.	Animal Control Officer-Lead	47073.45	f	Animal Care & Control Division	62619
Whisnant James Robert	Airfield Maintenance Tech III	47548.97	f	Facil - Airside Maintenance (F	62759
Clark Cedric Kendell	Equipment Operator III	47548.96	f	SWS Operations - Street Sweepi	62760
Carpenter Emily Renee	Crime Scene Technician	47548.95	f	Crime Scene Search Division	62761
Phillips Jr Gary Neil	Traffic Signal Electrician	47507.28	f	Transportation Operations	62762
Bennett Linda M	Office Assistant IV	47447.92	f	Housing Combined	62763
Field Melissa C	Police Telecommunicator	47440.78	f	Communications Division	62764
Lambe Kelly Lynn	Police Telecommunicator	47440.78	f	Communications Division	62765
Stroud Marsha Ann	Police Support Technician	47440.78	f	Communications Division	62766
Thompson Regina D	Police Telecommunicator	47440.78	f	Communications Division	62767
Williams Nancy Karen	Office Assistant V	47440.78	f	EPM BS CMGC	62768
Lee Shuhurah Wallace	Administrative Officer I	47420.72	f	CLT Water Field Ops Admin	62769
Farmer Courtney S	Administrative Officer I	47412.68	f	EPM Main Engineering	62770
Wood Lisa K	Office Assistant V	47391.69	f	Safety & Security	62771
Sanders Matthew R	Equipment Operator III	47386.94	f	North East District (Orr)	62772
Blair Cynthia Renee	Sanitation Equip Operator Sr	47324.66	f	SWS Operations - Garbage Colle	62773
Mackey Harold	Sanitation Equip Operator Sr	47324.66	f	SWS Operations - Garbage Colle	62774
Arnold Gail T	Office Assistant V	47324.27	f	CLT Water Cust Service-Admin	62775
Rife Kevin	Airfield Maintenance Tech III	46264.31	f	Facil - Airside Maintenance (F	62776
Ritchie Chad Michael	Airfield Maintenance Tech III	46264.31	f	Facil - Airside Maintenance (F	62777
Roseborough Donyel Hunt	Labor Crew Chief II	46264.31	f	SWS Operations - Yard Waste Co	62778
Strayer Danielle Lyn	Administrative Officer I	46264.31	f	Field Services Group South - A	62779
Twitty James Junior	Labor Crew Chief II	46264.31	f	SWS Operations - South Corrido	62780
Acker Alease Victoria	Administrative Officer I	46263.78	f	SWS Customer Service	62781
Allen Juan	Labor Crew Chief II	46263.78	f	SouthWest District (Sweden)	62782
Antonacci Kimberly	Administrative Officer I	46263.78	f	EPM Real Estate	62783
Bishop Cody	Airfield Maintenance Tech III	46263.78	f	Facil - Airside Maintenance (F	62784
Bolick Rodney	Treatment Plant Mechanic II	46263.78	f	CLT Water EMD Maintenance	62785
Braithwaite Jr Lewis A	Labor Crew Chief II	46263.78	f	CLT Wat General Commerce Zone	62786
Brower Susan	Administrative Officer I	46263.78	f	Transportation Systems	62787
Canino Stephen L	Labor Crew Chief II	46263.78	f	CLT Water Cust Service-Admin	62788
Clayton Sara	GIS Technician	46263.78	f	E&PM Storm Water	62789
Cook Daniel Aaron	Heavy Equipment Srvc Tech Sr	46263.78	f	Fleet Mgmt-Louise Ave Shop	62790
Critchelow Rodney	Labor Crew Chief II	46263.78	f	Central District (Northpointe)	62791
Cuthbertson Travis	Labor Crew Chief II	46263.78	f	CLT Wat General Commerce Zone	62792
Davis Angela B	Administrative Officer I	46263.78	f	CLT Water Engineering-Admin	62793
Eley Ashley Nicole	Administrative Officer I	46263.78	f	Admin - Administrative Service	62794
Evans Richard Lewis	Heavy Equipment Srvc Tech Sr	46263.78	f	Facil - Fleet Maintenance	62795
Kist David	GIS Technician	46263.78	f	E&PM Storm Water	62796
Loyd Jonah Allen	Treatment Plant Mechanic II	46263.78	f	CLT Water - Water Maintenance	62797
Martin Ryan A	Administrative Officer I	46263.78	f	Human Resources Division	62798
McKinnon III Edward L	GIS Technician	46263.78	f	SWS Technology	62799
McManus Chancy Gibbs	Heavy Equipment Srvc Tech Sr	46263.78	f	Fleet Mgmt-Louise Ave Shop	62800
Murillo Christian Noel	Police Trainee	43492.38	f	Recruit Training Unit	62801
Nguyen Nhu Ngoc Thi	Police Trainee	43492.38	f	Recruit Training Unit	62802
Parker Jared Leland	Police Trainee	43492.38	f	Recruit Training Unit	62803
Piers Kamil	Police Trainee	43492.38	f	Recruit Training Unit	62804
Powell Benjamin	Police Trainee	43492.38	f	Recruit Training Unit	62805
Redwine Cameron Alston	Police Trainee	43492.38	f	Recruit Training Unit	62806
Porter Robert Weite	Relief Captain	76130.91	f	Fire Station 4	63575
Summerfield Patrick Harrison	Police Trainee	43492.38	f	Recruit Training Unit	62811
Tierney Matthew	Police Trainee	43492.38	f	Recruit Training Unit	62812
Wallace William James	Police Trainee	43492.38	f	Recruit Training Unit	62813
Watson Jeremiah Shemar	Police Trainee	43492.38	f	Recruit Training Unit	62814
Wilde Michael D	Police Trainee	43492.38	f	Recruit Training Unit	62815
Yuro Mitchell	Police Trainee	43492.38	f	Recruit Training Unit	62816
Nagy Jr Michael Stephen	Airport Operations Officer II	43409.52	f	Oper - Airport Security	62817
Sharpe Elizabeth Ann	Airport Operations Officer II	43409.52	f	Oper - Airport Security	62818
Fox Richard K	Special Transportation Driver	43370.38	f	Special Transportation Service	62819
Fletcher Robin Tranell	Customer/Revenue Serv. Assist	43363.52	f	Customer Service	62820
Vongsa Bounyong	Pesticide Applicator	43348.21	f	EPM Landscape Mgt	62821
Rushing Brian	Equipment Operator III	43344.52	f	Central District (Northpointe)	62822
Gibson Kasy T	Mason	43294.38	f	SouthWest District (Sweden)	62823
Johnson Corey J.	Sr. Water Service Technician	43294.38	f	CLT Water Cust Service-Admin	62824
Lovett Phyllis Motley	Police Investigation Tech	43294.38	f	Independence Division	62825
Pendergrass Johnny E.	Survey Technician	43294.38	f	CLT Water Locates	62826
Saxon Charles Jarrell	Survey Technician	43294.38	f	CLT Water Locates	62827
Smith Calvin M	Mason	43294.38	f	SouthWest District (Sweden)	62828
Sweeting Marcella	Police Support Technician	43294.38	f	Communications Division	62829
Ware James	Indust Meter Repair Technician	43294.38	f	CLT Water Cust Service-Admin	62830
Byrd Kimberly Thaxton	Office Assistant V	43222.17	f	City Clerk	62831
Conard Samantha	Office Assistant V	43222.17	f	City Clerk	62832
Golden Kay M	Office Assistant V	43222.02	f	City Clerk	62833
Reitz Christy Newhouse	Police Investigation Tech	43666.84	f	Non-Emergency Police Services	62834
Nicho Patrick	Water Quality Technician II	44831.81	f	CLT Water Lab Svc-Operations	62835
Williams Felicia Michelle	Police Investigation Tech	44959.59	f	Eastway Division	62836
Brown Jillian Elizabeth	Crime Scene Technician	44061.15	f	Crime Scene Search Division	62837
Boakye Eugene	Airport Operations Officer II	44501.35	f	Oper - Airport Security	62838
Castaneda Luis	Survey Technician	43206.76	f	EPM Main Engineering	62839
McLeod Robert Lee	Equipment Operator III	43197.26	f	SouthWest District (Sweden)	62840
Wallace Arthur Eric	Customer/Revenue Serv Asst Sr	43191.99	f	Revenues	62841
Westmoreland Kelly L	Office Assistant IV	43173.51	f	SouthWest District (Sweden)	62842
Jones Jasmine D	Office Assistant V	43128.31	f	CLT Water McAlpine Creek Plant	62843
Wright Joyce C	Office Assistant V	43128.12	f	Administrative Management	62844
Chisholm Jarvis Bouvier	Sanitation Equipment Operator	43127.62	f	SWS Operations - Business Garb	62845
Edgecombe Barbara A	Equipment Operator III	43127.59	f	SWS Operations - Business Garb	62846
Mabry Jr Walter Clemth	Sanitation Equip Operator Sr	43127.59	f	SWS Operations - Garbage Colle	62847
McCauley Michael R	Equipment Operator II	43029.95	f	North East District (Orr)	62848
Abraham Jr Paul	Labor Crew Chief I	43028.37	f	Transportation Operations	62849
McKinley William	Labor Crew Chief I	43028.37	f	SouthWest District (Sweden)	62850
McGinn Benjamin L	Labor Crew Chief I	42964.5	f	CLT Water Huntersville Zone	62851
Harris Gary	Police Property Control Tech	42924.92	f	Property & Evidence Management	62852
Wreh Oretha J	Police Property Control Tech	42924.92	f	Property & Evidence Management	62853
Bollinger Marvin N	Equipment Operator II	42924.39	f	Central District (Northpointe)	62854
Adams Travis Eugene	Mason	42922.81	f	SouthWest District (Sweden)	62855
Huntley Trenton Jamal	Police Telecommunicator	42697.44	f	Communications Division	62856
Bailey Kelly Michelle	Police Investigation Tech	42922.81	f	Freedom Division	62857
Hardison Joann S.	Office Assistant V	43570.42	f	Code Enforcement Combined	62858
Atwell Robert Kenneth	Fire Fighter I	43492.72	f	Fire Station 31	62859
Henkle Kenny Oliver	Fire Fighter I	43492.72	f	Fire Station 30	62860
Hodnett David Wesley	Fire Fighter I	43492.72	f	Fire Station 30	62861
Kennedy Jennifer Frances	Police Telecommunicator	42697.44	f	Communications Division	62862
Jackson William Hunter	Fire Fighter I	43492.72	f	Fire Station 39	62863
Spearmon Sr Wallace N	Airport Operations Officer II	44061.15	f	Bus Offic -CommercialSvs/Aviat	62864
Spiegel Allison Leigh	Crime Scene Technician	44831.81	f	Crime Scene Search Division	62865
Hall Stanley Ernest	Airport Operations Officer II	44501.35	f	Oper - Airport Security	62866
Galloway Cedric Orlando	Sanitation Equip Operator Sr	44958.53	f	SWS Operations - Garbage Colle	62867
Lee Pen Su	Police Telecommunicator	42697.44	f	Communications Division	62868
Snow Brayden A	Police Trainee	43492.38	f	Recruit Training Unit	62869
Carter Matthew James	Lift Station Technician	44060.74	f	CLT Water Sewer Lift	62870
Stratman Rebecca	Crime Scene Technician	44831.81	f	Crime Scene Search Division	62871
Caldwell Christopher Dana	Mason	42922.81	f	North East District (Orr)	62872
Titus Jr Edward Grant	Airport Operations Officer II	44501.35	f	Oper - Airport Security	62873
McCorey Jr Edward	Sanitation Equip Operator Sr	44958.53	f	SWS Operations - Garbage Colle	62874
McLaughlin Debra Ann	Police Telecommunicator	42697.44	f	Communications Division	62875
Acosta Katherine Estefania	Police Trainee	43492.38	f	Recruit Training Unit	62876
Decker Steven L.	Accounting Technician	44060.74	f	Finance Accounting	62877
Smith Charlenia Pearson	Contract Technician	44831.72	f	SWS Contracted Services	62878
Lewis Ricky L	Mason	42922.81	f	North East District (Orr)	62879
Jackson Alice M	Office Assistant V	44467.68	f	Planning	62880
Mossner Cecilia Patricia	Police Support Technician	44958.26	f	Communications Division	62881
Parker Allen Dejuan	Sanitation Equip Operator Sr	44958.26	f	SWS Operations - Garbage Colle	62882
Brinkley Keshia T	311 Contact Center Rep-Lead	44958	f	CharMeck 311	62883
Cook Jennifer Marie	Police Telecommunicator	44958	f	Communications Division	62884
Cummins Mary Evelyn	Police Telecommunicator	44958	f	Communications Division	62885
Elstrom Laura Watson	Police Telecommunicator	44958	f	Communications Division	62886
Seagroves Brandi Clark	Police Telecommunicator	44958	f	Communications Division	62887
Flores Anthony Ricardo	Equipment Operator III	44957.9	f	SouthWest District (Sweden)	62888
Maney Mark Wayne	Traffic Signal Electrician Ld	44941.88	f	Transportation Operations	62889
Bibb Michael Louis	Traffic Signal Electrician Ld	44941.64	f	Transportation Operations	62890
Bourne Yasmine Waheed	Water Quality Technician II	44941.64	f	CLT Water Lab Svc-Operations	62891
Burford Jr Jesse Lamar	Traffic Signal Electrician Ld	44941.64	f	Transportation Operations	62892
Gaines Sr Paul McKinley	Storekeeper Senior	44941.64	f	Central District (Northpointe)	62893
Lutz John Timothy	Storekeeper Senior	44941.64	f	SouthWest District (Sweden)	62894
Shank Bobby Lee	Traffic Signal Electrician Ld	44941.64	f	Transportation Operations	62895
Hanna Marilyn J.	Accounting Specialist Sr.	44937.73	f	Finance Accounting	62896
Ledford Ginger F	Accounting Specialist Sr.	44937.73	f	Finance Accounting	62897
Messer Jamie L	Office Assistant V	44892.56	f	Fire Logistics	62898
Whitlock Leigh A	Police Investigation Tech	44862.71	f	South Division	62899
ABERT KAITLIN PATRICIA	Police Officer	44851.52	f	Eastway Division	62900
Davis IV William Allan	Police Officer	44851.52	f	University City Division	62901
Fischer Gabriel James	Police Officer	44851.52	f	Steele Creek Division	62902
Griffin Shaquana Alicia	Police Officer	44851.52	f	North Division	62903
Kennedy Austin Barnett	Police Officer	44851.52	f	Westover Division	62904
McClellen Brian Andrew	Police Officer	44851.52	f	South Division	62905
Moshier Clinton Scott	Police Officer	44851.52	f	Independence Division	62906
Poole Nathaneal Robert	Police Officer	44851.52	f	Metro Division	62907
Ramirez Roberto Luis	Police Officer	44851.52	f	North Division	62908
Sowe Ibrahim Ahmad	Police Officer	44851.52	f	Freedom Division	62909
Weaner William A	Survey Technician	44848.92	f	CLT Water Locates	62910
Ellison Rossi Alexander	Sanitation Equip Operator Sr	44847.53	f	SWS Operations - Garbage Colle	62911
Vang Vua	Animal Control Officer-Senior	44847.53	f	Animal Care & Control Division	62912
Benefield Terrance Christopher	Equipment Operator III	44832.35	f	SWS Operations - Street Sweepi	62913
DeCatsye Julie Noelle	Police Telecommunicator	44832.35	f	Communications Division	62914
Johnson Bobby Arthur	Equipment Operator III	44832.35	f	SWS Operations - Street Sweepi	62915
Martinez Miguel A	Police Telecommunicator	44832.35	f	Communications Division	62916
Schieb Nicole Elizabeth	Police Telecommunicator	44832.35	f	Communications Division	62917
Schaub Allison C	Police Telecommunicator	44832.31	f	Communications Division	62918
Williamson Cecelia Monique	Police Telecommunicator	44832.31	f	Communications Division	62919
Crout Larry Lewis	Sanitation Equip Operator Sr	44831.91	f	SWS Operations - Garbage Colle	62920
Allen Jessica Lauren	Crime Scene Technician	44831.86	f	Crime Scene Search Division	62921
Brenner William Simon Richard	Animal Control Officer-Lead	44831.86	f	Animal Care & Control Division	62922
Buhr Jr Henry Kenneth	Crime Scene Technician	44831.86	f	Crime Scene Search Division	62923
Campos Robert J	Animal Control Officer-Lead	44831.86	f	Animal Care & Control Division	62924
Capps Brian Lee	Animal Control Officer-Lead	44831.86	f	Animal Care & Control Division	62925
Darden Keywana	Crime Scene Technician	44831.86	f	Crime Scene Search Division	62926
Kirkpatrick January L.	Crime Scene Technician	44831.86	f	Crime Scene Search Division	62927
Durham Ronald E.	Survey Technician	44404.87	f	CLT Water Locates	62928
Holloway Eddie C	Sanitation Equipment Operator	44404.87	f	SWS Operations - Yard Waste Co	62929
Miller Demecia Shontelle	Police Telecommunicator	42697.44	f	Communications Division	62930
Kennedy Jr Henry J	Mason	44404.87	f	Central District (Northpointe)	62931
Diggs Reneisha Catrice	Crime Scene Technician	44060.74	f	Crime Scene Search Division	62932
Pearce Terrance C.	Mason	42922.81	f	Central District (Northpointe)	62933
Alwran Eric B	Police Trainee	43492.38	f	Recruit Training Unit	62934
Cruz Jose Diosdado Pancho	Accounting Technician	44809.69	f	Finance Accounting	62935
Nantz Gillian Nichole	Police Telecommunicator	42697.44	f	Communications Division	62936
Smith Mark Anthony	Mason	42922.81	f	North East District (Orr)	62937
Grissom Jr James Willie	Equipment Operator III	44787.89	f	North East District (Orr)	62938
Polk Brint Calvin	Equipment Operator III	42697.44	f	Central District (Northpointe)	62939
Perry Kenneth E	Survey Technician	44404.87	f	CLT Water Locates	62940
Garrett Sara Elizabeth	Water Quality Technician II	44060.74	f	CLT Water Lab Svc-Operations	62941
Anderson Jr Richard Alan	Fire Fighter I	43492.38	f	Fire Station 17	62942
Burnop Craig Alan	Police Telecommunicator	42907.5	f	Communications Division	62943
Vargas Sara D.	Revenue Collections Agent	44783.16	f	Finance Revenue	62944
Reyna Kristin Joyce	Police Telecommunicator	42697.44	f	Communications Division	62945
White John T	Sanitation Equipment Operator	44404.87	f	SWS Operations - Business Garb	62946
Griffin Whitney Lashay	Crime Scene Technician	44060.74	f	Crime Scene Search Division	62947
Arroyo Jose	Police Trainee	43492.38	f	Recruit Training Unit	62948
Cheek Gerome	Police Telecommunicator	42907.5	f	Communications Division	62949
Byers Steven V	Contract Technician	44722.2	f	SWS Contracted Services	62950
Robinson Terra Danielle	Police Telecommunicator	42697.44	f	Communications Division	62951
Woodard Bernadette T	Labor Crew Chief I	44404.87	f	Central District (Northpointe)	62952
Hair Taj A	Contract Technician	44060.74	f	SWS Contracted Services	62953
Ballard Brianna Alexis	Police Trainee	43492.38	f	Recruit Training Unit	62954
Grant Jr Marvin	Police Telecommunicator	42907.5	f	Communications Division	62955
Pichardo Hanniel Rafer	Police Telecommunicator	44722.2	f	Communications Division	62956
Rogers Wesley Parker	Police Telecommunicator	42697.44	f	Communications Division	62957
Carter Andrea P	Office Assistant V	44304	f	Human Resources	62958
Hill Donna Elane	Accounting Technician	44060.74	f	Finance - Executive	62959
Barber Brett Jackson	Police Trainee	43492.38	f	Recruit Training Unit	62960
Marino-Sharp Melissa Ann	Police Telecommunicator	42907.5	f	Communications Division	62961
Selles Waleska	Office Assistant V	44722.2	f	Housing -Rehabilitation	62962
Rose Marianne	Police Telecommunicator	42697.44	f	Communications Division	62963
Campbell Jonas L	Equipment Operator III	44293.5	f	Central District (Northpointe)	62964
Hunt Aaron Spencer	Water Quality Technician II	44060.74	f	CLT Water Lab Svc-Operations	62965
Becker Christian	Police Trainee	43492.38	f	Recruit Training Unit	62966
Weber Christine	Police Telecommunicator	42907.5	f	Communications Division	62967
Torres Keshia I	311 Contact Center Rep-Lead	44722.2	f	CharMeck 311	62968
Phillips Ryan Darnell	Equipment Operator III	44722.08	f	SWS Operations - Street Sweepi	62969
Morris Glenn Anthony	Equipment Operator III	44722.03	f	SWS Operations - Street Sweepi	62970
Rojas Sr Armando Jose	Police Telecommunicator	44722.03	f	Communications Division	62971
Allera Maria Teresa T	Accounting Technician	44721.66	f	Finance - Executive	62972
Blain Amanda Kay	Crime Scene Technician	44721.66	f	Crime Scene Search Division	62973
Campbell III James Lavar	Utilities Services Tech	44721.66	f	CLT Water Cust Service-Admin	62974
Caudle Tayler Joe	Airport Operations Officer II	44721.66	f	Oper - Airport Security	62975
Lovell Tony Carroll	Lift Station Technician	44721.66	f	CLT Water Sewer Lift	62976
Snow Steven	Airport Operations Officer II	44721.57	f	Oper - Airport Security	62977
Briggs Daniel Sherrell	Airport Operations Officer II	44721.55	f	Oper - Airport Security	62978
Crawford Shanice Alexandra	Airport Operations Officer II	44721.55	f	Oper - Airport Security	62979
Gaither Allison Johannah	Crime Scene Technician	44721.55	f	Crime Scene Search Division	62980
Henderson Kyle Alexander	Laboratory Analyst I	44721.55	f	CLT Water Lab Svc-Operations	62981
Jarvis Kevin B	Contract Technician	44721.55	f	EPM Landscape Mgt	62982
Koprucki Joleen	Accounting Technician	44721.55	f	Risk Management	62983
Lopez Frank	Airport Operations Officer II	44721.55	f	Oper - Airport Security	62984
Martinez Elizabeth Ann	Airport Operations Officer II	44721.55	f	Oper - Airport Security	62985
Millege Destiny Sharnae	Airport Operations Officer II	44721.55	f	Oper - Airport Security	62986
Pease James Cassidy	Crime Scene Technician	44721.55	f	Crime Scene Search Division	62987
Roof Eric Nicholas	Airport Operations Officer II	44721.55	f	Oper - Airport Security	62988
Rucker Darryl Edward	Airport Operations Officer II	44721.55	f	Oper - Airport Security	62989
Sexton James R	Airport Operations Officer II	44721.55	f	Oper - Airport Security	62990
Symonds Ryan Patrick	Airport Operations Officer II	44721.55	f	Oper - Airport Security	62991
Vargas Isaac Roberto	Airport Operations Officer II	44721.55	f	Oper - Airport Security	62992
Clemmons Pamela Ann	Accounting Technician	44699.38	f	Finance Accounting	62993
Love Daisy M	Office Assistant IV	44643.96	f	Transportation Systems	62994
Markle Chasity Renae	Office Assistant V	44546.22	f	Armed Robbery/Sexual Assault D	62995
Blackwell Stephanie Marie	Airport Operations Officer II	44501.46	f	Oper - Airport Security	62996
Braswell Sr Juan	Airport Operations Officer II	44501.46	f	Oper - Airport Security	62997
Conti Neal Anthony	Fire Telecommunicator I Lead	44501.46	f	Fire Communications	62998
Edwards Kevin	Airport Operations Officer II	44501.46	f	Oper - Airport Security	62999
Jenkins Tiffany Nicole	Airport Operations Officer II	44501.46	f	Oper - Airport Security	63000
Lovelace John Thomas	Fire Telecommunicator I Lead	44501.46	f	Fire Communications	63001
Lynch Leslie	Laboratory Analyst I	44501.46	f	CLT Water Lab Svc-Operations	63002
Morrison Devon Trayva	Airport Operations Officer II	44501.46	f	Oper - Airport Security	63003
Talley David Lee	Fire Telecommunicator I Lead	44501.46	f	Fire Communications	63004
Vaught Matthew Dean	Fire Telecommunicator I Lead	44501.46	f	Fire Communications	63005
White Akeisha	Airport Operations Officer II	44501.46	f	Oper - Airport Security	63006
Williams Caleb Mitchell	Water Quality Technician II	44501.46	f	CLT Water Lab Svc-Operations	63007
Jones Eric A	CCTV Crew Chief	44060.74	f	CLT Wat General Commerce Zone	63008
Lampkin Gregory L	Contract Technician	44060.74	f	SWS Contracted Services	63009
Scott Kara Devon	Police Telecommunicator	42907.3	f	Communications Division	63010
Lewis Sr James Earl	Accounting Technician	44060.74	f	Finance - Executive	63011
Milam Timothy De Shawn	Utilities Services Tech	44060.74	f	CLT Water Cust Service-Admin	63012
Gonzales Nilton Cesar	Sanitation Equipment Operator	42907.05	f	SWS Operations - Yard Waste Co	63013
Morales Juan	Laboratory Analyst I	44060.74	f	CLT Water Lab Svc-Operations	63014
Beheler Chandler James	Fire Fighter I	43492.38	f	Fire Station 16	63015
Logan Johnny Lee	Labor Crew Chief I	44270.05	f	CLT Wat General Commerce Zone	63016
Cortes Migdalia	Police Investigation Tech	42906.87	f	Violent Crime Division	63017
Torrise Anthony S	Equipment Operator III	42697.44	f	SouthWest District (Sweden)	63018
Bethea Esquire Montel	Police Trainee	43492.38	f	Recruit Training Unit	63019
Crager Kevin Carl	Service Order Specialist	42856.96	f	Fleet Mgmt-Parts Operations	63020
Byrne Matthew John	Water Quality Technician II	44146.25	f	CLT Water Lab Svc-Operations	63021
Wallace Jr Derrick	Police Telecommunicator	42697.44	f	Communications Division	63022
Bing Grady	Police Trainee	43492.38	f	Recruit Training Unit	63023
Putman Glenn Franklin	Airport Operations Officer II	44060.74	f	Oper - Airport Security	63024
Morrison Johnny Lee	Labor Crew Chief I	42825.44	f	CLT Water Matthews Zone	63025
Sigler Terry Carlisle	Office Assistant V	44121.6	f	Administration	63026
Bailey III John Henry	Equipment Operator III	42697.06	f	SWS Operations - Rights of Way	63027
Blake Devin Frank	Fire Fighter I	43492.38	f	Fire Station 16	63028
Nash Martin H	Heavy Equipment Srvc Tech Assc	42819.36	f	Fleet Mgmt-Louise Ave Shop	63030
Lavender Kristin C.	Police Telecommunicator	44098.75	f	Communications Division	63031
Brooks Brandon N	Sanitation Equipment Operator	42697.06	f	SWS Operations - Rights of Way	63032
Blythe Tanner McCoy	Fire Fighter I	43492.38	f	Fire Station 33	63033
Scott Monique Chanel	Contract Technician	44060.74	f	Finance - Executive	63034
Edwards LaRhonda A.	Police Investigation Tech	42817.25	f	Non-Emergency Police Services	63035
Sloop Morgan Taylor	Police Support Technician	44097.99	f	Communications Division	63036
Burden Otis Stanley	Sanitation Equip Operator Sr	42697.06	f	SWS Operations - Garbage Colle	63037
Bourque Tyler	Police Trainee	43492.38	f	Recruit Training Unit	63038
Tinson Andrew Thomas	Airport Operations Officer II	44060.74	f	Oper - Airport Security	63039
Hill Sr Byron Keith	Survey Technician	42817.18	f	CLT Water Locates	63040
Houser Jr Frank	Sanitation Equip Operator Sr	42697.06	f	SWS Operations - Garbage Colle	63041
Butler Brodie Shane	Equipment Operator III	44082.38	f	EPM Landscape Mgt	63042
Cawley Justin Klaus	Police Trainee	43492.38	f	Recruit Training Unit	63043
Walker Benjamin Ellis	CCTV Crew Chief	44060.74	f	CLT Wat General Commerce Zone	63044
Minnet Henry R	Special Transportation Driver	42816.72	f	Special Transportation Service	63045
Braswell Parres L	Sanitation Equipment Operator	42697.01	f	SWS Operations - Rights of Way	63046
Cardoza Castro Suriel	311 Contact Center Rep-Lead	44067.53	f	CharMeck 311	63047
Cella John Robert	Police Trainee	43492.38	f	Recruit Training Unit	63048
Westbrook Reginald Eugene	CCTV Crew Chief	44060.74	f	CLT Wat General Commerce Zone	63049
Walter Cassandra Marie	Police Support Technician	42811.18	f	Communications Division	63050
Wilson Courtney J	Sanitation Equipment Operator	42697.01	f	SWS Operations - Yard Waste Co	63051
Pell Gary W	Equipment Operator III	44061.43	f	SWS Operations - Street Sweepi	63052
Sandoval Henry	Equipment Operator III	44061.43	f	SWS Operations - Street Sweepi	63053
Santos Kevin Eduardo	Police Telecommunicator	44061.28	f	Communications Division	63054
Villarroel Gloises Magaly	Police Telecommunicator	44061.28	f	Communications Division	63055
Arias Canada Oscar	Airport Operations Officer II	44061.27	f	Bus Offic -CommercialSvs/Aviat	63056
Barber Rita	Revenue Collections Agent	44061.27	f	Finance Revenue	63057
Bonham Kenneth Eugene	Storekeeper Senior	44061.27	f	North East District (Orr)	63058
Davis Kristen Marie	Accounting Technician	44061.27	f	Finance Accounting	63059
Dawson Jr Eric	WW Treatment Plant Op II	44061.27	f	CLT Water McDowell Creek Plant	63060
Dormon II Herbert	Light Equipment Srvc Tech Sr	44061.27	f	Fleet Mgmt-Atando Ave Shop	63061
Dukes Donovan Edward	Airport Operations Officer II	44061.27	f	Oper - Airport Security	63062
Froneberger Angela D	Accounting Technician	44061.27	f	Finance Accounting	63063
Gomez Danny	Light Equipment Srvc Tech Sr	44061.27	f	Fleet Mgmt-Atando Ave Shop	63064
Grimm Richard	Light Equipment Srvc Tech Sr	44061.27	f	Fleet Mgmt-12th Street Shop	63065
Jordan Samuel Jasper	Airport Operations Officer II	44061.27	f	Oper - Airport Security	63066
Keziah Haley M	Light Equipment Srvc Tech Sr	44061.27	f	Fleet Mgmt-Atando Ave Shop	63067
McBean Valerie Victoria	Utilities Services Tech	44061.27	f	CLT Water Cust Service-Admin	63068
Pepper Marcus Franklin	Lift Station Technician	44061.27	f	CLT Water Sewer Lift	63069
Pham Peter	Airport Operations Officer II	44061.27	f	Oper - Airport Security	63070
Pollock Corey	Crime Scene Technician	44061.27	f	Crime Scene Search Division	63071
Ramsey Austin Gene	Contract Technician	44061.27	f	EPM Landscape Mgt	63072
Reid Ronald	Sanitation Team Leader	44061.27	f	SWS Safety	63073
Richardson Terry Michael	Sanitation Team Leader	44061.27	f	SWS Safety	63074
Rogers Vince Conrad	Sanitation Team Leader	44061.27	f	SWS Safety	63075
Sigmon David	Light Equipment Srvc Tech Sr	44061.27	f	Fleet Mgmt-12th Street Shop	63076
Simpson Thomas S	Light Equipment Srvc Tech Sr	44061.27	f	Fleet Mgmt-Atando Ave Shop	63077
Stewart Jr Barry W	Water Treatment Plant Opr B	44061.27	f	CLT Water Franklin Plant	63078
Thiam Tina Marie	Airport Operations Officer II	44061.27	f	Oper - Airport Security	63079
Turman Jasmyne N	Accounting Technician	44061.27	f	Finance Accounting	63080
Weber Bradley	Crime Scene Technician	44061.27	f	Crime Scene Search Division	63081
Boldon Aleisha	Crime Scene Technician	44061.15	f	Crime Scene Search Division	63082
Chacon Brandin Zachery	Fire Fighter I	43492.38	f	Fire Station 27	63083
Talton James Olin	Pump Station Technician	42802.53	f	CLT Water Catawba Trt Plant	63084
Maske Angela	Equipment Operator III	42697	f	SWS Operations - Street Sweepi	63085
Wilkinson Tyler Lee	Fire Telecommunicator I Lead	44060.74	f	Fire Communications	63086
Coughlan Kristen	Police Trainee	43492.38	f	Recruit Training Unit	63087
Anderson Jerry A	Equipment Operator III	42802.47	f	Central District (Northpointe)	63088
Marzan Lester Gabriel	Sanitation Equip Operator Sr	42696.91	f	SWS Operations - Garbage Colle	63089
Zapf Jaclyn	Animal Control Officer-Lead	44060.74	f	Animal Care & Control Division	63090
Cruz Santos Veronica	Police Trainee	43492.38	f	Recruit Training Unit	63091
Ballard David Ryan	Treatment Plant Mechanic I	42802.47	f	CLT Water Catawba Trt Plant	63092
Welch Mark Brandon	Equipment Operator III	42802.47	f	CLT Wat General Commerce Zone	63093
Wilkes Jr David L	Equipment Operator III	42802.47	f	Central District (Northpointe)	63094
Williams Kenneth Kwame	Equipment Operator III	42802.47	f	SMD Consolidated	63096
King Terry Antwan	Equipment Operator III	42801.46	f	CLT Wat General Commerce Zone	63097
Robinson Rhonda L	Fire Telecommunicator I	42775.02	f	Fire Communications	63098
Ziel Laura Magen	Fire Telecommunicator I	42775.02	f	Fire Communications	63099
Miller Kimberly Kay	Kennel Supervisor	42772.23	f	Animal Care & Control Division	63100
Shirey James D	Equipment Parts Technician	42731.22	f	Fleet Mgmt-Parts Operations	63101
Gaston Doran	Labor Crew Chief I	42720.22	f	CLT Water West Tyvola Zone	63102
Linares Ruben I	Labor Crew Chief I	42720.22	f	CLT Water West Tyvola Zone	63103
Mackey Jr Larry	Labor Crew Chief I	42720.22	f	CLT Water West Tyvola Zone	63104
Sherman Jimmy A	Labor Crew Chief I	42720.22	f	CLT Water West Tyvola Zone	63105
Sifford Charles Elijah	Labor Crew Chief I	42720.21	f	CLT Water Matthews Zone	63106
Mitchell Jennifer Lynn	Police Telecommunicator	42697.48	f	Communications Division	63107
Ramseur Michelle	Police Telecommunicator	42697.48	f	Communications Division	63108
Sandoval Devian Blocker	Police Telecommunicator	42697.48	f	Communications Division	63109
Scott Kevin Tyler	Police Telecommunicator	42697.48	f	Communications Division	63110
Anders Alexander Davis	Police Telecommunicator	42697.44	f	Communications Division	63111
Anderson Kristin L	Police Telecommunicator	42697.44	f	Communications Division	63112
Baer Wendy Louise	Police Telecommunicator	42697.44	f	Communications Division	63113
Brooks DeAngelo Neko	Equipment Operator III	42697.44	f	CLT Water Matthews Zone	63114
Crisp Whitney	Police Telecommunicator	42697.44	f	Communications Division	63115
Cunningham Amanda Gay	Police Telecommunicator	42697.44	f	Communications Division	63116
Harrell Shemika Danielle	Police Telecommunicator	42697.44	f	Communications Division	63117
Hoover Kristy Lee	Police Telecommunicator	42697.44	f	Communications Division	63118
Howell Robert Allen	Office Assistant V	42697.44	f	CLT Water Sewer Lift	63119
Huggins Donna M	Police Telecommunicator	42697.44	f	Communications Division	63120
Cunningham Michael Antonio	Fire Fighter I	43492.38	f	Fire Station 37	63121
Williams Rebecca Elizabeth	Fire Telecommunicator I Lead	44060.66	f	Fire Communications	63122
Irving Travis	Administrative Officer I	42654.32	f	Community Engagement	63123
Davis Derrick Ryan	Police Trainee	43492.38	f	Recruit Training Unit	63124
Greene Jr Richard Allen	Equipment Operator III	44060.32	f	SWS Operations - Street Sweepi	63125
Mangan Jr Joseph James	Service Order Specialist	42592.72	f	Fleet Mgmt-Parts Operations	63126
Drennan Thomas Jack	Police Trainee	43492.38	f	Recruit Training Unit	63127
Barraco Richard L	Fire Equipment Technician	44060	f	Fire Logistics	63128
Silvers David Brandon	Treatment Plant Mechanic I	42592.72	f	CLT Water EMD Maintenance	63129
Eban Martin	Police Trainee	43492.38	f	Recruit Training Unit	63130
Harwell Jonathan	Light Equipment Srvc Tech Sr	44060	f	Fleet Mgmt-Atando Ave Shop	63131
Wood Amanda	Office Assistant V	42592.72	f	Housing -Rehabilitation	63132
Eyer Joshua Michael	Police Trainee	43492.38	f	Recruit Training Unit	63133
Ferreira Nicholas	Police Trainee	43492.38	f	Recruit Training Unit	63134
Fisher James	Police Trainee	43492.38	f	Recruit Training Unit	63135
Freeman Jr Derrick Joshua	Police Trainee	43492.38	f	Recruit Training Unit	63136
Freeman Joshua Aaron Major	Police Trainee	43492.38	f	Recruit Training Unit	63137
Gail Brandon	Police Trainee	43492.38	f	Recruit Training Unit	63138
Garris Lauren	Police Trainee	43492.38	f	Recruit Training Unit	63139
Green Cheyenne Marie	Police Trainee	43492.38	f	Recruit Training Unit	63140
Grout Joshua Spencer	Police Trainee	43492.38	f	Recruit Training Unit	63141
Hargett Joel McCrae	Police Trainee	43492.38	f	Recruit Training Unit	63142
Jones II Anthony	Police Trainee	43492.38	f	Recruit Training Unit	63143
Keefer Benjamin Scott	Police Trainee	43492.38	f	Recruit Training Unit	63144
Korczyk Adam Nicholas	Police Trainee	43492.38	f	Recruit Training Unit	63145
Ledford Alex	Police Trainee	43492.38	f	Recruit Training Unit	63146
Loveridge Heather	Police Trainee	43492.38	f	Recruit Training Unit	63147
Madsen Joshua J	Police Trainee	43492.38	f	Recruit Training Unit	63148
Martinez Daniel	Police Trainee	43492.38	f	Recruit Training Unit	63149
McKinney Kia Jourdan	Police Trainee	43492.38	f	Recruit Training Unit	63150
Mook Jordan	Police Trainee	43492.38	f	Recruit Training Unit	63151
Moore Jr Kelvin B.	Police Trainee	43492.38	f	Recruit Training Unit	63152
Morales Ernesto Morales David	Police Trainee	43492.38	f	Recruit Training Unit	63153
Harding Stephanie Maria	Special Transportn Dispatcher	42592.57	f	Special Transportation Service	63154
Chasteen Melody S	Police Telecommunicator	42592.4	f	Communications Division	63155
Church Kenneth Alexander	Police Telecommunicator	42592.4	f	Communications Division	63156
Collins Lauren Elizabeth	Service Order Specialist	42592.4	f	Fleet Mgmt-Sweden Rd Shop	63157
Davis James B	Police Telecommunicator	42592.4	f	Communications Division	63158
Feaster Jonathan Keith	Sanitation Equip Operator Sr	42592.4	f	SWS Operations - Garbage Colle	63159
Frady Matthew Thomas	Police Telecommunicator	42592.4	f	Communications Division	63160
Getz Sara E	Police Telecommunicator	42592.4	f	Communications Division	63161
Hill Michael Terrence	Sanitation Equip Operator Sr	42592.4	f	SWS Operations - Garbage Colle	63162
McGowens Anthony Nathaniel	Sanitation Equip Operator Sr	42592.4	f	SWS Operations - Garbage Colle	63163
Sherrill Whitley Regina	Police Telecommunicator	42592.4	f	Communications Division	63164
Simmons Kendra Deweese	Police Telecommunicator	42592.4	f	Communications Division	63165
Slaughter Javonna Nicole	Office Assistant V	42592.4	f	Quality Assurance	63166
Smith Christopher Dwain	Sanitation Equip Operator Sr	42592.4	f	SWS Operations - Garbage Colle	63167
Wattley Kevin L	Sanitation Equip Operator Sr	42592.4	f	SWS Operations - Garbage Colle	63168
White Cheryl L	Office Assistant V	42592.4	f	Fire Administration	63169
Williams Tiffany Shervonne	Police Telecommunicator	42592.4	f	Communications Division	63170
Caldwell Sr Maurice	Sanitation Equipment Operator	42592.27	f	SWS Operations - Yard Waste Co	63171
Grant Gary Lamont	Sanitation Equipment Operator	42592.27	f	SWS Operations - Yard Waste Co	63172
Valentine Katherine Jean	Claims Assistant	42592.18	f	Risk Management	63173
Bueno Eduard Smiley	Sanitation Equip Operator Sr	42592.15	f	SWS Operations - Garbage Colle	63174
Davila Alexander	Police Investigation Tech	42592.15	f	Violent Crime Division	63175
Elsevyf Denisse	311 Contact Center Rep-Senior	42592.15	f	CharMeck 311	63176
Epps III George	Sanitation Equip Operator Sr	42592.15	f	SWS Operations - Garbage Colle	63177
Montoya Mariangelica	311 Contact Center Rep-Senior	42592.15	f	CharMeck 311	63178
Mitchell Melissa	Crime Scene Technician	44060	f	Crime Scene Search Division	63179
Nicastro Alexa	Crime Scene Technician	44060	f	Crime Scene Search Division	63180
Poteat Joshua Shawn	Light Equipment Srvc Tech Sr	44060	f	Fleet Mgmt-Atando Ave Shop	63181
Isom Kelvin L	Labor Crew Chief I	44051.77	f	Central District (Northpointe)	63182
McKinney Larry D	Centrifuge/Solids Operator	43968.94	f	CLT Water McAlpine Creek Plant	63183
Ockerman Hannah Marie	Police Investigation Tech	43946.21	f	Crime Scene Search Division	63184
Armstrong Alice F	Police Investigation Tech	43943.57	f	Non-Emergency Police Services	63185
Young Thomas L	Sanitation Equipment Operator	43943.57	f	SWS Operations - Yard Waste Co	63186
Gregory Steven Anthony	Labor Crew Chief I	43794.72	f	CLT Wat General Commerce Zone	63187
Thomson Theodosia C	Office Assistant IV	43787.34	f	Development NE Corridor	63188
Ethridge Jr Robert	311 Contact Center Rep-Lead	43775.2	f	CharMeck 311	63189
Ladd Kenyatta Dabion	Police Telecommunicator	43775.2	f	Communications Division	63190
Ellerbe Anthony Tyrone	Sanitation Equip Operator Sr	43774.68	f	SWS Operations - Garbage Colle	63191
Kennedy Anthony D	Sanitation Equip Operator Sr	43774.68	f	SWS Operations - Garbage Colle	63192
Lattimore Jr Anthony	Sanitation Equip Operator Sr	43774.68	f	SWS Operations - Garbage Colle	63193
Bendana Maria Jose	Police Investigation Tech	43774.66	f	Hickory Grove Division	63194
Francis Lloyd Eccleston	Sanitation Equipment Operator	43774.66	f	SWS Operations - Yard Waste Co	63195
Armstrong Barbara R	Water Service Technician	43771.51	f	CLT Water Huntersville Zone	63196
Drayton Timmy	Special Transportation Driver	43741.95	f	Special Transportation Service	63197
Miller Melody Alisha	Service Order Specialist	43734.56	f	Facil - Fleet Maintenance	63198
Todd Lori R	Kennel Supervisor	43732	f	Animal Care & Control Division	63199
Bellamy Charles E	Storekeeper	43727.32	f	Facil - Logistics	63200
Bess Raymond	Sanitation Equip Operator Sr	43667.01	f	SWS Operations - Garbage Colle	63201
Smith-Phifer Sylivia A	Fire Captain	83934.33	f	Fire Station 28	63202
Sparrow Robert N	Fire Captain	83934.33	f	Fire Station 5	63203
Spath Stephen B.	Fire Captain	83934.33	f	Fire Station 28	63204
Starnes Andrew J	Fire Captain	83934.33	f	Fire Station 2	63205
Stroud Jamar L	Fire Captain	83934.33	f	Fire Station 39	63206
Swigunski Joseph Raymond	Fire Captain	83934.33	f	Fire Station 1	63207
Tackson Christopher David	Fire Captain	83934.33	f	Fire Station 28	63208
Towery Kenneth S	Fire Captain	83934.33	f	Fire Station 11	63209
Danielsen Jr Richard C	Police Property Manager	80018.41	f	Property & Evidence Management	63210
Gucciardi Steven G	Engineering Project Manager	81641.15	f	EPM Main Engineering	63211
Armstrong Jason D	Police Sergeant	81965.52	f	North Division	63212
Jones Mary A	Laboratory Supervisor	80014.13	f	CLT Water Lab Svc-Operations	63213
Fitzgerald Robert C	Fire Captain	83934.33	f	Fire Station 8	63214
Cerri Patrick L	Engineering Project Manager	81641	f	EPM Main Engineering	63215
Howell Tyler Glenn	Engineering Project Manager	80000	f	E&PM Storm Water	63216
Dowdell Shawn Steven	Engineering Project Manager	81641	f	Transportation Systems	63217
Armstrong Troy A	Police Sergeant	81965.52	f	North Tryon Division	63218
Barakzai Saleem P K	Engineering Project Manager	85184.33	f	Transportation Systems	63219
Gerin Michael T.	Fire Captain	83934.33	f	Fire Station 18	63220
Arnold Devin Phillip	Engineering Project Manager	80000	f	E&PM Storm Water	63221
Arnold Chad W.	Police Sergeant	81965.52	f	Providence Division	63222
Nixon Shane A	Engineering Project Manager	81641	f	Dev - Executive	63223
Farrand Matthew Michael	Business System Spec Sr	85160.44	f	SWS Technology	63224
Giles Lee M	Fire Captain	83934.33	f	Fire Station 14	63225
Cauley Christopher Lawrence	Strategy & Budget Analyst	80000	f	Strategy & Budget	63226
Bisignano Thomas	Police Sergeant	81965.52	f	Hickory Grove Division	63227
Washington Isaiah B	Engineering Project Manager	81641	f	Land Development	63228
Wright Phyllis Michelle	IT Client Support Manager	85148.65	f	I&T Relationship Management	63229
Gill Brandon L	Fire Captain	83934.33	f	Fire Station 19	63230
Katigan Jeff	Data Warehouse Analyst	80000	f	Decision Analytics	63231
Brewington Constance K	Police Sergeant	81965.52	f	Central Division	63232
Carney Monica Teal	Planning Coordinator	81547.13	f	Planning	63233
Smith Susan Elaine	Administrative Officer V	85075.43	f	Business Support Combined	63234
Grant Michael Clark	Fire Captain	83934.33	f	Fire Station 27	63235
Hagan John Thompson	Information Tech Administrator	79999.92	f	I&T Enterprise Operations	63236
Conway Ericka Nichols	Police Sergeant	81965.52	f	Central Division	63237
Dones Rodel	Training Specialist	81500	f	CLT Water Human Resources	63238
Pindilli Rosemarie	Water Quality Program Admin	81484.35	f	CLT Water Admininstration	63239
Nelson Eric B.	Economic Dev Program Mgr	81453.62	f	Charlotte Business Inclusion	63240
Shabani Othman I	Operations Supervisor	81437.11	f	North East District (Orr)	63241
Mallett Sheena Tawanda	Business System Spec Sr	81386	f	CLT Water Business Sys (IT)	63242
Saxon Virginia I	Business System Spec Sr	81320.52	f	CLT Water Business Sys (IT)	63243
Smiley Brant	Engineering Project Manager	81295.53	f	E&PM Storm Water	63244
Kenney David	Engineering Project Manager	81270.25	f	E&PM Storm Water	63245
Rouse Jr Arlanda	Administrative Officer IV	81163.62	f	HR/CR	63246
Brown Kristen G	Business System Spec Sr	81123.3	f	CLT Water Business Sys (IT)	63247
Baskin Pamela L	Business System Spec Sr	81123	f	CharMeck 311	63248
Walker Amanda	IT Project Manager Associate	81120	f	Computer Technology Solutions	63249
Metz Dean Huyett	Safety Coordinator-Senior	81083.66	f	CLT Water Safety Team	63250
Whitten Stephen Moore	Safety Coordinator-Senior	81083.66	f	Health & Safety	63252
Garrison Robert James	Software Developer Intermediat	81054.98	f	I&T Applications	63253
Rakes Daniel Erick	Contracts Admin Coordinator	81004.35	f	Procurement Services	63254
Tosco Stephen	Engineering Project Manager	81000	f	EPM Main Engineering	63255
Erickson Bruce R	Contracts Admin Coordinator	80997.51	f	Finance Procurement Management	63256
McLeod James T	Utilities Services Manager	80973.28	f	CLT Water Business Office	63257
Jiles Christopher	Engineering Project Manager	80928.12	f	EPM Main Engineering	63258
Jackson Jermaine Tyrone	Engineering Project Manager	80839.42	f	E&PM Storm Water	63259
Hutson Rhonda L	Lab Quality Assurance Admin	80781.05	f	CLT Water Lab Svc-Operations	63260
Cook Kaye F	Community Relations Manager	80758.52	f	Community Wellness Division	63261
Shayeghi Amir Nicholas	Bus Systems Spec Intrm	80706.89	f	EPM Main Engineering	63262
Keene John David	Engineering Project Manager	80643.4	f	E&PM Storm Water	63263
Zielinski Todd J	Police Officer	80621.99	f	School Resources Officers	63264
Lowe Michael S.	Engineering Project Manager	80565.11	f	E&PM Storm Water	63265
Murphy III John M	Utilities Services Manager	80552.75	f	CLT Water EMD Administration	63266
Rodriguez Agustin	Engineering Project Manager	80500	f	EPM Main Engineering	63267
Jarrett Jason L.	Environmental Compliance Mgr	80475.65	f	CLT Water Engineering-Admin	63268
Annamalai Muthuraman	Engineering Project Coordinato	80462.5	f	Quality Assurance	63269
Bray Jacklyn Beth	Engineering Project Manager	80353.16	f	E&PM Storm Water	63270
Rose Jr John E	Transportation Planner II	80351.73	f	Development Administration	63271
Bing Wendy G	TV Station Manager	80347.44	f	CM-Corporate Comm & Marketing	63272
Martin Anthony	Engineering Project Manager	80340	f	CLT Water Engineering-Admin	63273
Watkins Gregg A.	Corporate Comm Specialist Sr	80340	f	CM-Corporate Comm & Marketing	63274
Carew Tiffany C.	Administrative Officer IV	80307	f	Human Resources Division	63275
Crowe Terry W	Water Treatment Plant Supv Sr	80253.16	f	CLT Water Franklin Plant	63276
Suddreth Albert F	Polygraph Examiner	80207.08	f	Human Resources Division	63277
Benedikovicova Martina	Operations Supervisor	80200.12	f	Oper - Airport Security	63278
Lopez Geraldo E	Operations Supervisor	80195.52	f	Fleet Mgmt-Administration	63279
Davis II Freddie L	Engineering Project Manager	80128.64	f	EPM Main Engineering	63280
McCraney Steven S	Engineering Project Manager	80081.21	f	E&PM Storm Water	63281
Collins James	Engineering Project Manager	80044.4	f	E&PM Storm Water	63282
Hall Michael P	Active Directory Administrator	79999.92	f	I&T Enterprise Operations	63283
Dennis Douglas S.	Data Center Specialist	79987.27	f	I&T Facilities	63284
Curtis Mikal Joseph	Administrative Officer V	85075	f	Business Support Combined	63285
Baker Randall L	Police Sergeant	79966.18	f	North Tryon Division	63286
Greist Scott D.	Fire Captain	83934.33	f	Fire Station 31	63287
Crum Bryan R	Police Sergeant	81965.52	f	Violent Crime Division	63288
Flowe Clifford L	Police Sergeant	79966.18	f	North Division	63289
Gunter Philip A	Fire Captain	83934.33	f	Fire Station 19	63290
Dano Jr Robert L	Police Sergeant	81965.52	f	Providence Division	63291
Legette Crystal R	Administrative Officer V	85075	f	SWS Human Resources	63292
Geohagan Corey Mckenzie	Police Sergeant	79966.18	f	Metro Division	63293
Hall James A	Fire Captain	83934.33	f	Fire Station 2	63294
Hendricks Edward V	Police Sergeant	81965.52	f	Freedom Division	63295
Gordon Melia T J	Administrative Officer V	85074.69	f	Finance - Executive	63296
Greenlees Andrew James	Police Sergeant	79966.18	f	Eastway Division	63297
Hamby David C	Fire Captain	83934.33	f	Fire Station 28	63298
McGarity Thomas S	Police Sergeant	81965.52	f	Central Division	63299
Sanders Sonja Y	Planning Coordinator	85054.35	f	Planning	63300
Hefner Mark A.	Police Sergeant	79966.18	f	Hickory Grove Division	63301
Hardin Denver S	Fire Captain	83934.33	f	Fire Station 4	63302
Moore Kobee R.	Police Sergeant	81965.52	f	Freedom Division	63303
Buchanan Sharon D	Engineering Project Manager	85045.25	f	EPM Main Engineering	63304
Kopp Christopher Paul	Police Sergeant	79966.18	f	Community Engagement	63305
Harrington Matthew C	Fire Captain	83934.33	f	Fire Station 31	63306
Nelson Jr Richard L	Police Sergeant	81965.52	f	Independence Division	63307
Gaines Harold	Senior Engineering Project Mgr	85026.5	f	E&PM Storm Water	63308
Meyers Daniel T.	Police Sergeant	79966.18	f	Steele Creek Division	63309
Harthorne Israel Jeremiah	Fire Captain	83934.33	f	Fire Station 24	63310
Price Fairley Ethan	Police Sergeant	81965.52	f	Eastway Division	63311
Gibson Chrislee	Insurance & Risk Coordinator	85005.88	f	Risk Management	63312
Odom Catina R.	Police Sergeant	79966.18	f	Community Engagement	63313
Harwell Joseph Russell	Fire Captain	83934.33	f	Fire Station 27	63314
Roldan Benjamin	Police Sergeant	81965.52	f	South Division	63315
Rios Federico	Community Relations Manager	85000	f	Community Engage Combined	63316
Phelps Robert C	Police Sergeant	79966.18	f	North Tryon Division	63317
Helms Michael J	Fire Captain	83934.33	f	Fire Station 40	63318
Rorie Christopher A	Police Sergeant	81965.52	f	Independence Division	63319
Nichols Jenna Elizabeth	Senior Engineer	85000	f	Development NE Corridor	63320
Russell Brian K	Police Sergeant	79966.18	f	Canine Unit	63321
Henderson Edward L	Fire Captain	83934.33	f	Fire Station 12	63322
Sprague Robert A	Police Sergeant	81965.52	f	Special Victims Division	63323
Siggers Maya I	Economic Dev Program Mgr	85000	f	Charlotte Business Inclusion	63324
Shingler Chad Raland	Police Sergeant	79966.18	f	North Division	63325
Herte Sean E	Fire Captain	83934.33	f	Fire Station 18	63326
Strong III Charles Oscar	Police Sergeant	81965.52	f	Hickory Grove Division	63327
McBee Jennifer H.	Senior Technical Writer	84978.36	f	Finance Business Systems	63328
Spindler Emily Gardner	Police Sergeant	79966.18	f	Real Time Crime Center	63329
Vincent Nicholas E	Police Sergeant	79966.18	f	Metro Division	63330
Hamilton Pamela T	Administrative Officer IV	79953.75	f	Financial Management	63331
Collier Brandi	Engineering Project Manager	79950	f	E&PM Storm Water	63332
Feehley Michael J	Fire Captain	79937.52	f	Fire Station 37	63333
Law Julie A	Fire Captain	79937.52	f	Fire Station 17	63334
Mincey Brent J.	Fire Captain	79937.52	f	Fire Station 31	63335
Parker Michael D.	Fire Captain	79937.52	f	Fire Station 30	63336
Passons Todd P	Fire Captain	79937.52	f	Fire Station 29	63337
Thompson Lee W	Fire Captain	79937.52	f	Fire Station 16	63338
Tilley Jason D.	Fire Captain	79937.52	f	Fire Station 21	63339
Tubiolo Peter R	Fire Captain	79937.52	f	Fire Station 17	63340
Barham Gary M	Relief Captain	79937.45	f	Fire Station 10	63341
Davies Trina Louise	Relief Captain	79937.45	f	Fire Station 3	63342
Defrancisci Thomas Michael	Relief Captain	79937.45	f	Fire Station 32	63343
Forman Michael L	Relief Captain	79937.45	f	Fire Station 3	63344
Fulk Bradley Wayne	Relief Captain	79937.45	f	Fire Station 10	63345
Johnson Shad E	Relief Captain	79937.45	f	Fire Station 13	63346
Renner IV John Benjamin	Relief Captain	79937.45	f	Fire Station 10	63347
Fatula James L	Engineering Project Manager	79935.5	f	E&PM Storm Water	63348
Monteleone Christopher	Engineering Project Manager	79935.47	f	E&PM Storm Water	63349
Bing Leslie N	Engineering Project Manager	79896.61	f	EPM Main Engineering	63350
Smith Harold A E	Engineering Project Manager	79848.56	f	E&PM Storm Water	63351
Harris William T.	Engineering Project Manager	79703.25	f	E&PM Storm Water	63352
Jarzemsky Robert	Engineering Project Manager	79703.13	f	E&PM Storm Water	63353
Green Krystel McCray	Public Service Coordinator	79686.09	f	Public & Community Relations	63354
Hill Dawn M.	Economic Dev Program Mgr	79668.05	f	Community Engage Combined	63355
Barber Sam	Engineering Project Manager	79664.58	f	EPM Main Engineering	63356
Kennedy Kristie H	Engineering Project Manager	79664.58	f	EPM Main Engineering	63357
Poole Derrel L	Engineering Project Manager	79664.58	f	EPM Main Engineering	63358
Miller Kevin Lamont	Chief Fire Inspector	84947.2	f	Fire Prevention	63359
Hildreth Thomas G	Fire Captain	83934.33	f	Fire Station 15	63360
Thompson Phillip D	Police Sergeant	81965.52	f	Violent Crime Division	63361
Trombini Eugene	Management Analyst Senior	84933.36	f	Planning and Research	63362
Hill Michael D	Fire Captain	83934.33	f	Fire Station 25	63363
Wally Jonathan Brent	Police Sergeant	81965.52	f	Westover Division	63364
Benedict Racquel Marie	Business System Spec Sr	84916.47	f	Development NE Corridor	63365
Holiman Gregg A	Fire Captain	83934.33	f	Fire Station 31	63366
Watts Jonathan D	Police Sergeant	81965.52	f	North Division	63367
Sossamon Jr Jonathan H	Engineering Project Manager	84864.82	f	EPM Main Engineering	63368
Holstein Daniel Carl	Fire Captain	83934.33	f	Fire Station 29	63369
Wheaton Jeffrey C.	Police Sergeant	81965.52	f	North Tryon Division	63370
Tobin Michael L	Safety Supervisor	84794	f	Oper - Airside	63371
Honaker Matthew V.	Fire Captain	83934.33	f	Fire Station 39	63372
Williamson Brandon C	Police Sergeant	81965.52	f	Freedom Division	63373
Williams Mary Crystal	Senior Engineering Project Mgr	84686.15	f	E&PM Storm Water	63374
Ince Keith A	GIS Supervisor	84661.88	f	Fire Administration	63375
Anderson Matthew W	Engineering Project Manager	84657.22	f	E&PM Storm Water	63376
Heath Phyllis Walls	Strategy & Budget Analyst	84648.54	f	Strategy & Budget	63377
Marshall John	Plans Reviewer	84643.29	f	EPM Land Development	63378
Warren Jason L.	Applications Administrator	84508.06	f	Fire Training	63379
Honeycutt Christopher E.	Fire Captain	83934.33	f	Fire Station 28	63380
Schwartz Alan	Business System Spec Sr	81911.23	f	Criminal Intel. and Analysis	63381
Hooker George B	Fire Captain	83934.33	f	Fire Station 26	63382
Jadlocki Stephen J	Water Quality Program Admin	81817.41	f	E&PM Storm Water Water Quality	63383
Howell Joseph Glen	Fire Captain	83934.33	f	Fire Station 16	63384
Mosley Barry Pernell	Planning Coordinator	81805.67	f	Planning	63385
Huffman Marcus Ian	Fire Captain	83934.33	f	Fire Station 33	63386
Brown Geraldine A	Safety Coordinator-Senior	81736.61	f	CLT Water Safety Team	63387
Hullett Michael P	Fire Captain	83934.33	f	Fire Station 16	63388
Burke Neil Ailin	Planning Coordinator	81694.61	f	Planning	63389
Humphries Scott Andrew	Fire Captain	83934.33	f	Fire Station 24	63390
Gonzalez Alberto	Planning Coordinator	81694.45	f	Planning	63391
Ickes Brian J	Fire Captain	83934.33	f	Fire Station 24	63392
Canter Stephen D	Construction Supervisor	81670.1	f	EPM Land Development	63393
Jefferies Thomas Jason	Fire Captain	83934.33	f	Fire Station 18	63394
Riblett Peggy A	Financial Accountant III	81661.08	f	Finance Accounting	63395
Jones Terrell A	Fire Captain	83934.33	f	Fire Station 31	63396
McDonald Shawn	Engineering Project Manager	81650	f	E&PM Storm Water	63397
Kaylor James J	Fire Captain	83934.33	f	Fire Station 29	63398
Keller II William W.	Fire Captain	83934.33	f	Fire Station 42	63399
Killian Jr James H	Fire Captain	83934.33	f	Fire Station 4	63400
Killian Brennan S	Fire Captain	83934.33	f	Fire Station 5	63401
King Steven A	Fire Captain	83934.33	f	Fire Station 9	63402
Cerri Haley Leanna	GIS Coordinator	75263.83	f	Tech - Executive	63403
Keller Philip Artie	Contracts Admin Coordinator	75260.91	f	Finance Procurement Management	63404
Hunt Jason A	Water Quality Program Speciali	75219.19	f	E&PM Storm Water Water Quality	63405
Stover Lynette C.	Internal Auditor Senior	75208.28	f	City Mgr - Internal Audit	63406
Sutherland Thomas Kyle	Internal Auditor Senior	75208.28	f	City Mgr - Internal Audit	63407
Styron Timothy Lamar	Relief Captain	76130.91	f	Fire Station 41	63576
Nipper Joel	Water Quality Modeler	75190	f	E&PM Storm Water Water Quality	63408
Weaver Joshua F.	Principal Planner	75181.71	f	Planning	63409
Lyte-Graham Claire	Principal Planner	75181.24	f	Planning	63410
Boger Michael Todd	Administrative Officer IV	75175.8	f	SWS Administration	63411
Williams Lisa Greene	Administrative Officer IV	75171.2	f	Fire Administration	63412
Golden Lauri Frances	Administrative Officer IV	75167.18	f	BO-Commercial Svcs/Pass	63413
Dial William M.	Safety Coordinator-Senior	75164.55	f	Risk Management	63414
Miloy Jennifer Joiner	Contracts Admin Coordinator	75094.25	f	Finance	63415
Shi Si	Travel Demand Modeler	75087	f	Regional Planning	63416
Connor Ayanna Shawnte	Accountant III	75010.78	f	Administration Division	63417
Battle Marvin J	Engineering Project Manager	79664.57	f	CLT Field Ops-Pipeline Rehab	63418
Wright Nina Elizabeth	Community Relations Manager	76395.9	f	Office of the Chief - Administ	63419
Frunzi Christopher F	Police Sergeant	78016.28	f	Hickory Grove Division	63420
Cox Kevin R	Police Officer	74848.55	f	North Division	63421
Ashburg Amy Stroupe	Human Resources Analyst	78424	f	Organization Dev & Learning	63422
Hanway John S	Construction Supervisor	75000.1	f	EPM BS Spratt	63423
Brooks Kenni R	Administrative Officer IV	75000	f	Financial Management	63424
Gatti Alexandra Lozovaya	Financial Accountant II	75000	f	Finance Accounting	63425
Bailey Crystal Italiayanette	Contracts Admin Coordinator	74947.02	f	Finance - Executive	63426
Barnard Elizabeth Lyn	Contracts Admin Coordinator	74946.6	f	Finance Procurement Management	63427
Newlon Matthew Garrett	Contracts Admin Coordinator	74946.6	f	CLT Water Procurement	63428
Hughes Donna D	Contracts Admin Coordinator	74944.7	f	Bus Offic -CommercialSvs/Aviat	63429
Baker Melissa M	Community Relations Manager	74940	f	CM- Community Relations	63430
Adamczak Michael J	Police Officer	74848.55	f	South Division	63431
Aires Marco A	Police Officer	74848.55	f	South Division	63432
Albertson Bryan D	Police Officer	74848.55	f	Eastway Division	63433
Aldinger Michael A	Police Officer	74848.55	f	North Division	63434
Antley Darrell D	Police Officer	74848.55	f	University City Division	63435
Appiah Jr Joseph Kwame	Police Officer	74848.55	f	Steele Creek Division	63436
Ashley-Crump Beverly A	Police Officer	74848.55	f	North Division	63437
Beltrone Todd S	Police Officer	74848.55	f	South Division	63438
Bernard Michael S	Police Officer	74848.55	f	Freedom Division	63439
Blackwell Stephen W	Police Officer	74848.55	f	Hickory Grove Division	63440
Boag Terry D	Police Officer	74848.55	f	South Division	63441
Bobrek Timothy M.	Police Officer	74848.55	f	Hickory Grove Division	63442
Bowers Curtis F	Police Officer	74848.55	f	Independence Division	63443
Bright Jr Barry W	Police Officer	74848.55	f	South Division	63444
Bumgarner Jennifer Gwyn	Police Officer	74848.55	f	Independence Division	63445
Bush Joel A	Police Officer	74848.55	f	South Division	63446
Canipe Deward A	Police Officer	74848.55	f	Providence Division	63447
Cantrell Frank W	Police Officer	74848.55	f	Providence Division	63448
Carey Brian S	Police Officer	74848.55	f	Steele Creek Division	63449
Carter Jack D	Police Officer	74848.55	f	Hickory Grove Division	63450
Chipman Christopher D	Police Officer	74848.55	f	North Tryon Division	63451
Clarkson George S	Police Officer	74848.55	f	South Division	63452
Cliff Mark A	Police Officer	74848.55	f	Steele Creek Division	63453
Clifton Christopher L.	Police Officer	74848.55	f	Independence Division	63454
Conner Paul B	Police Officer	74848.55	f	Hickory Grove Division	63455
Cotton Richard M	Police Officer	74848.55	f	Central Division	63456
Courtet Jeffrey T	Police Officer	74848.55	f	Steele Creek Division	63457
Bedford Matthew Carl	Engineering Project Manager	79664.57	f	CLT Water Engineering-Admin	63458
Gibbs Tamilla Junise	Police Sergeant	78016.28	f	Metro Division	63459
Blalock Philip Ryan	Human Resources Analyst	78424	f	Organization Dev & Learning	63460
Archer Travis Lee	Police Officer	79661.47	f	Eastway Division	63461
Creech John A	Police Officer	74848.55	f	North Division	63462
Norris Pamela	Workers' Compensation Claim Mg	76366.26	f	Risk Management	63463
Harrison Brent Lamont	Police Sergeant	78016.28	f	Freedom Division	63464
Boseman Charity	Human Resources Analyst	78424	f	Human Resources	63465
Duymovic Daniel	Engineering Project Manager	79587.23	f	E&PM Storm Water	63466
Crumpler Jr Joseph C	Police Officer	74848.55	f	South Division	63467
Cruz Alex M.	Police Officer	74848.55	f	Steele Creek Division	63468
Davis Michael K.	Police Officer	74848.55	f	Airport Law Enforcement Divisi	63469
Davis Todd W	Police Officer	74848.55	f	University City Division	63470
Deal Jr Larry E.	Police Officer	74848.55	f	Metro Division	63471
DelDuca R. Scott	Police Officer	74848.55	f	South Division	63472
Derienzo Hector J	Police Officer	74848.55	f	Steele Creek Division	63473
Dezenzo Michael J	Police Officer	74848.55	f	Metro Division	63474
Dotson William D	Police Officer	74848.55	f	Steele Creek Division	63475
Dowell Casey T	Police Officer	74848.55	f	University City Division	63476
Edwards Bradley S	Police Officer	74848.55	f	Freedom Division	63477
Edwards Brian K	Police Officer	74848.55	f	Central Division	63478
Eubank Charles M	Police Officer	74848.55	f	Central Division	63479
Evenson David R	Police Officer	74848.55	f	Providence Division	63480
Farmer Mark R	Police Officer	74848.55	f	University City Division	63481
Faulkner David G	Police Officer	74848.55	f	Westover Division	63482
Ferralli Anthony S	Police Officer	74848.55	f	Steele Creek Division	63483
Fowler Joshua R.	Police Officer	74848.55	f	Eastway Division	63484
Fraas III Robert Ernest	Police Officer	74848.55	f	Eastway Division	63485
Frison Jr John H	Police Officer	74848.55	f	Providence Division	63486
Gay Randall S	Police Officer	74848.55	f	Westover Division	63487
Gunner Brad Lee	Police Officer	74848.55	f	Airport Law Enforcement Divisi	63492
Gunter Charles N	Police Officer	74848.55	f	North Tryon Division	63493
Hairston Patrick C	Police Officer	74848.55	f	Westover Division	63494
Hall Christopher A	Police Officer	74848.55	f	Westover Division	63495
Halperin Richard I	Police Officer	74848.55	f	Providence Division	63496
Hartung Christopher J	Police Officer	74848.55	f	Westover Division	63497
Hock Brett M	Police Officer	74848.55	f	Steele Creek Division	63498
Hollern Matthew J.	Police Officer	74848.55	f	North Tryon Division	63499
Honeycutt Thomas Z.	Police Officer	74848.55	f	Steele Creek Division	63500
Hudson Jr George H	Police Officer	74848.55	f	University City Division	63501
Huffman Robert F	Police Officer	74848.55	f	Central Division	63502
Hunter Sheldon N	Police Officer	74848.55	f	Freedom Division	63503
Jackson James F	Police Officer	74848.55	f	Independence Division	63504
Johnson Craig N	Police Officer	74848.55	f	Westover Division	63505
Jonasse Erik J	Police Officer	74848.55	f	Independence Division	63506
Jones Jr Daniel C	Police Officer	74848.55	f	North Tryon Division	63507
Jones Thomas M	Police Officer	74848.55	f	Independence Division	63508
Joye Stanley W	Police Officer	74848.55	f	Steele Creek Division	63509
Kay Major L	Police Officer	74848.55	f	Airport Law Enforcement Divisi	63510
Kelly Amy Carolyn	Police Officer	74848.55	f	Real Time Crime Center	63511
Kishpaugh Tyler S.	Police Officer	74848.55	f	Steele Creek Division	63512
Kossick Michael J	Police Officer	74848.55	f	University City Division	63513
Kovach Brian P	Police Officer	74848.55	f	North Tryon Division	63514
Kuykendall Kyle J	Police Officer	74848.55	f	South Division	63515
Kiley William A.	Police Officer	76342.25	f	Freedom Division	63516
Lambe Brian J.	Police Officer	74848.55	f	Steele Creek Division	63517
Smith Rocky Todd	Police Officer	76342.25	f	Airport Law Enforcement Divisi	63518
Stanziale Nicholas William	Engineering Project Manager	79587.23	f	E&PM Storm Water	63519
Bryant Tanika	Human Resources Analyst	78424	f	Human Resources	63520
Jackson Gavin Kairn	Police Sergeant	78016.28	f	University City Division	63521
Teasley Tristan Mark	Engineering Project Manager	79587.23	f	E&PM Storm Water	63522
Markley Eric J	Police Sergeant	78016.28	f	Independence Division	63523
Clemens Cynthia N	Human Resources Analyst	78424	f	Organization Dev & Learning	63524
Carter Patricia D	Fire Inspector Senior	79516.24	f	Fire Prevention	63525
Lang Tiffany Suzanne	Police Officer	74848.55	f	North Tryon Division	63526
Muhammad Warith Deen	Police Sergeant	78016.28	f	Hickory Grove Division	63527
Walker Jordan-Ashley	Public Service Coordinator	76320	f	CM-Corporate Comm & Marketing	63528
Dillard Amanda Leigh	Human Resources Analyst	78424	f	HR Management System	63529
Wright Calvin M	Fire Inspector Senior	79515.71	f	Fire Prevention	63530
Latimer Robert E.	Police Officer	74848.55	f	Steele Creek Division	63531
Overcash Brandon S	Police Sergeant	78016.28	f	Metro Division	63532
Broughton Robert J	Data Analytics Specialist Lead	76318.2	f	Criminal Intel. and Analysis	63533
Gibson Margaret	Human Resources Analyst	78424	f	Organization Dev & Learning	63534
Sypolt Shannon S.	Water Quality Program Admin	79511.88	f	CLT Water EMD Administration	63535
Lawrence Shane J	Police Officer	74848.55	f	South Division	63536
Pietrus Kevin Daniel	Police Sergeant	78016.28	f	University City Division	63537
Mrak Kaitlin Frances	Data Analytics Specialist Lead	76318.2	f	Criminal Intel. and Analysis	63538
Lutmer Aubra Childers	Human Resources Analyst	78424	f	Human Resources	63539
Brown Martin	Engineering Project Manager	79500	f	Implementation	63540
Lee Anthony E	Police Officer	74848.55	f	University City Division	63541
Posey Kelly S	Police Sergeant	78016.28	f	Eastway Division	63542
Wilson Andrea DeAraujo	Data Analytics Specialist Lead	76318.2	f	Criminal Intel. and Analysis	63543
Mann Laura Nan	Human Resources Analyst	78424	f	Human Resources	63544
Boland Sylvia Tartt	Financial Accountant III	79490.25	f	Finance Accounting	63545
Littlejohn Jay A	Police Officer	74848.55	f	Hickory Grove Division	63546
Propst John W.	Police Sergeant	78016.28	f	Westover Division	63547
Jones Janet Susan	Administrative Officer IV	76301.29	f	Human Resources Division	63548
McGovern Tonya Lea	Human Resources Analyst	78424	f	Human Resources	63549
Kay Kelly	Financial Accountant III	79490.25	f	Finance Accounting	63550
Lo Eric K	Police Officer	74848.55	f	South Division	63551
Reeves John F	Police Sergeant	78016.28	f	Motorcycle & Reconstruction Un	63552
Piasecki Amanda Lee	Administrative Officer IV	76299.68	f	Administrative Management	63553
Thomas-Massey Kathy	Human Resources Analyst	78424	f	Organization Dev & Learning	63554
Muza Andrea Davis	Financial Accountant III	79490.25	f	Finance Accounting	63555
Logsdon Jeremiah	Police Officer	74848.55	f	Steele Creek Division	63556
Riddle Andrew Michael	Police Sergeant	78016.28	f	Metro Division	63557
Crowder Capryce D	Administrative Officer IV	76291.8	f	Administration	63558
Wilson Sandra S	Human Resources Analyst	78424	f	Human Resources	63559
Roming Manuela	Contracts Admin Coordinator	79443.85	f	EPM Main Engineering	63560
Lowe Michael	Police Officer	74848.55	f	Independence Division	63561
Rooks Allison S	Police Sergeant	78016.28	f	Hickory Grove Division	63562
Flotree Cheyenne	Administrative Officer IV	76291.64	f	City Clerk	63563
Vaughan Nicola	Construction Manager	76268	f	Development NE Corridor	63564
Pratt II Robert Diego	Network Commun Integrator	76167.9	f	I&T Network	63565
Stevens Ronald Oliver	Network Commun Integrator	76167.9	f	I&T Storage	63566
Moskowitz David	Safety Coordinator-Senior	76160.2	f	Safety & Security	63567
Helm Erika Loren	Public Service Coordinator	76158.24	f	Admin-Public Affairs/Media Rel	63568
Boyd David F	Relief Captain	76130.91	f	Fire Station 23	63569
Burns William F	Relief Captain	76130.91	f	Fire Station 41	63570
Summerville David Travis	Relief Captain	76130.91	f	Fire Station 26	63577
Lazarus Drew W	Relief Captain	76085.65	f	Fire Station 32	63578
Rooks William Stacy	Relief Captain	76085.65	f	Fire Station 3	63579
Wishon Hal D	Administrative Officer IV	76049.56	f	Fire Emergency Management	63580
Morris Douglas E	Network Commun Integrator	76025.76	f	Public Safety Communications	63581
Faulk Christianne Renee Bouvette	Administrative Officer IV	76014.32	f	Transportation Operations	63582
Smith Danny Lee	WW Treatment Plant Supv	75968.39	f	CLT Water Union County	63583
Harris James S	Meter Services Supervisor	75919.7	f	CLT Water Cust Service-Admin	63584
Bristle Donald W	Police Officer	75879.52	f	Aviation Unit	63585
Gilley Jeffrey T	Police Officer	75879.52	f	Aviation Unit	63586
Hernandez Daniel Steven	Police Officer	75879.52	f	Community Engagement	63587
Melendez Michael	Police Officer	75879.52	f	Armed Robbery/Sexual Assault D	63588
Osorio David S	Police Officer	75879.52	f	Violent Crime Division	63589
Perez Christopher E	Police Officer	75879.52	f	Cyber Crime Unit	63590
Nachamie Eric L.	Management Analyst Senior	75701.68	f	SWS Operations - Collections A	63591
Paver Casey John	Software Developer Intermediat	75684.61	f	Fire Administration	63592
Taylor David L	Chief Maintenance Mechanic	75622.13	f	EPM BS CMGC	63593
Bibby William M	Operations Supervisor	75582.8	f	EPM LSC Cemeteries Mgt	63594
Pullan Edward J.	Const Contracts Admin Coord Ld	75553.33	f	Procurement Services	63595
Williams David Donelson	GIS Coordinator	75508.38	f	CLT Water Engineering-Admin	63596
Botchwey Kamalita Parrott	Accountant III	75396.6	f	Finance - Executive	63597
Holland Jennifer Leigh	Administrative Officer IV	75376.95	f	Administrative Management	63598
Bedard Michael Paul	Contracts Admin Coordinator	75319.31	f	Facilities Section	63600
Barrera Yohana Izidora	Contracts Admin Coordinator	75310.86	f	Finance Procurement Management	63601
Ellis Terry W	Network Commun Integrator	75300.17	f	Public Safety Communications	63602
McCarty James A	Police Officer	74848.55	f	Westover Division	63603
Grimshaw Mark E	Engineering Project Manager	79379.09	f	EPM Main Engineering	63604
Triola Kevin R	Police Sergeant	78016.28	f	Central Division	63605
Johnson April Delores	Business System Spec Sr	78397.94	f	Technology	63606
McClain Dennis E	Police Officer	74848.55	f	Westover Division	63607
McGovney Scott M	Police Officer	74848.55	f	University City Division	63608
Wilkinson Curry Brent	Planning Coordinator	79315.07	f	Planning	63609
McNeill Yvette M	Police Officer	74848.55	f	North Tryon Division	63610
Waters Kamil Derek	Police Sergeant	78016.28	f	North Division	63611
Hudson Jeffrey S	Engineering Project Coordinato	78301.65	f	E&PM Storm Water	63612
Sanders Kathy Gibson	Operations Supervisor	79311.89	f	SWS Operations - Collections A	63613
Michalec Mark R	Police Officer	74848.55	f	Airport Law Enforcement Divisi	63614
Austin Kenneth W	Police Officer	78250.75	f	Hickory Grove Division	63615
Zederbaum Jeffrey L	Police Sergeant	78016.28	f	North Tryon Division	63616
Lemieux Eric	Engineering Project Manager	79263	f	E&PM Storm Water	63617
Michaud David R	Police Officer	74848.55	f	Central Division	63618
Avant Don R	Police Officer	78250.75	f	North Tryon Division	63619
Wilson Brian Michael	Engineering Project Manager	77988.34	f	E&PM Storm Water	63620
Meehan Charles S	Engineering Project Manager	79263	f	E&PM Storm Water	63621
Moran Jean D	Police Officer	74848.55	f	Providence Division	63622
Begley Jr Stephen H	Police Officer	78250.75	f	Eastway Division	63623
Eley-Durbin Tristan S	Relief Captain	77987.76	f	Fire Station 13	63624
Moore Joshua Aaron	Engineering Project Manager	79263	f	E&PM Storm Water	63625
Munn Todd M	Police Officer	74848.55	f	Eastway Division	63626
Cho Charles C.	Police Officer	78250.75	f	South Division	63627
Hinesley Stephen Christopher	Relief Captain	77987.76	f	Fire Station 13	63628
Uppal Gurveer	Engineering Project Manager	79263	f	E&PM Storm Water	63629
Nance Monica L	Police Officer	74848.55	f	Central Division	63630
Nelson Laura L.	Police Officer	74848.55	f	Airport Law Enforcement Divisi	63631
Newcomb Joseph G	Police Officer	74848.55	f	Steele Creek Division	63632
Ormiston John M	Police Officer	74848.55	f	Steele Creek Division	63633
Orsillo Kenneth J	Police Officer	74848.55	f	Airport Law Enforcement Divisi	63634
O'Toole John C	Police Officer	74848.55	f	Steele Creek Division	63635
Parks William L	Police Officer	74848.55	f	Hickory Grove Division	63636
Payne Anthony L	Police Officer	74848.55	f	University City Division	63637
Payne Timothy C	Police Officer	74848.55	f	North Tryon Division	63638
Planty Adam C	Police Officer	74848.55	f	Providence Division	63639
Poston Donald K	Police Officer	74848.55	f	Central Division	63640
Purdy Timothy R	Police Officer	74848.55	f	Training Division	63641
Raby Joseph A	Police Officer	74848.55	f	Westover Division	63642
Reagan Michael F	Police Officer	74848.55	f	Steele Creek Division	63643
Reeves Jason D.	Police Officer	74848.55	f	Eastway Division	63644
Relic Matthew P	Police Officer	74848.55	f	Steele Creek Division	63645
Reyes Engelbert C	Police Officer	74848.55	f	Eastway Division	63646
Rightsell Wesley B	Police Officer	74848.55	f	North Division	63647
Riley Eric M	Police Officer	74848.55	f	Eastway Division	63648
Roche Brayton J	Police Officer	74848.55	f	Independence Division	63649
Russell Robert B	Police Officer	74848.55	f	Eastway Division	63650
Simmons Dennis B	Police Officer	74848.55	f	Airport Law Enforcement Divisi	63651
Simmons Donald E	Police Officer	74848.55	f	South Division	63652
Spencer Robert L	Police Officer	74848.55	f	Airport Law Enforcement Divisi	63653
Stinson Sabrina Y	Police Officer	74848.55	f	Westover Division	63654
Suddreth Michael L	Police Officer	74848.55	f	University City Division	63655
Suggs Cary L	Police Officer	74848.55	f	Providence Division	63656
Sutton David K	Police Officer	74848.55	f	Hickory Grove Division	63657
Templeton Jeffery E	Police Officer	74848.55	f	Central Division	63658
Thomas Jonquil R	Police Officer	74848.55	f	Metro Division	63659
Tilson Jensen C.	Police Officer	74848.55	f	Eastway Division	63660
Trull Christopher S.	Police Officer	74848.55	f	North Tryon Division	63661
Lee Samuel J	Relief Captain	77987.76	f	Fire Station 32	63662
Bartlett Jr Anthony W	Operations Supervisor	79253.81	f	Central District (Northpointe)	63663
Perez Anthony A	Relief Captain	77987.76	f	Fire Station 16	63664
Fowler John A	Police Officer	78250.75	f	North Division	63665
Familian Sara	Travel Demand Modeler	79245.95	f	Regional Planning	63666
Robinette James M	Fire Captain - Spec Assign	77987.76	f	Fire Training	63667
Fox James A	Police Officer	78250.75	f	South Division	63668
Moore Monique	Administrative Officer IV	79229.23	f	Human Resources Division	63669
Moultrie Ella Rice	Safety Coordinator-Senior	77973.15	f	Admin - Administrative Service	63670
Fulton Seth D.	Police Officer	78250.75	f	South Division	63671
Reed Travis	Bus Systems Spec Intrm	79181.25	f	Technology	63672
Jarvis Kathryn	Administrative Officer IV	77968	f	EPM Main Engineering	63673
Herrera Gerson	Police Officer	78250.75	f	South Division	63674
Basulto Yassir Armando	Police Officer	79178.63	f	North Division	63675
Byers Tamara Lynn	Administrative Officer IV	77968	f	I&T Administration	63676
Hinson Randal L	Police Officer	78250.75	f	North Division	63677
Hurley Scott P	Police Officer	78250.75	f	Providence Division	63678
Inthisone Aksone	Police Officer	78250.75	f	Eastway Division	63679
Jarka Eugene T	Police Officer	78250.75	f	Independence Division	63680
Kiker Bryan D	Police Officer	78250.75	f	Steele Creek Division	63681
Kodad Karyn Christine	Police Officer	78250.75	f	Hickory Grove Division	63682
Manivong Mitchell T	Police Officer	78250.75	f	Airport Law Enforcement Divisi	63683
Melton Robert T	Police Officer	78250.75	f	Independence Division	63684
Owens William A	Police Officer	78250.75	f	Westover Division	63685
Plott Norris B	Police Officer	78250.75	f	University City Division	63686
Reinke William F	Police Officer	78250.75	f	Providence Division	63687
Rice Andrew S	Police Officer	78250.75	f	North Division	63688
Sitko Todd W.	Police Officer	78250.75	f	University City Division	63689
Sliney Kevin	Police Officer	78250.75	f	Providence Division	63690
Snyder Timothy M	Police Officer	78250.75	f	Westover Division	63691
Stitt Phillip	IT Process Manager	78206.48	f	I&T Service Management	63692
Thompson James B	Fire Inspector Senior	78203.07	f	Fire Prevention	63693
Cornelius Chantal Rosales	Contracts Admin Coordinator	78124.55	f	EPM Main Engineering	63694
Mosley Sonji M	Engineering Project Manager	78117.69	f	EPM Main Engineering	63695
Wirth Michael A.	Engineering Project Manager	78117.69	f	CLT Field Ops-Pipeline Rehab	63696
McMahan Brian K	Chief Airport Constr Inspector	78110.71	f	Dev - Executive	63697
Rosenberger II Stuart L.	Operations Supervisor	78062.67	f	CLT Water Sewer Lift	63698
Horton Brian David	Transportation Planner II	78017.94	f	Planning & Special Operations	63699
Barrett-Carter Jr Michael B	Police Sergeant	78016.28	f	Providence Division	63700
Busic Christopher E	Police Sergeant	78016.28	f	Metro Division	63701
DeGeorge Adam J.	Police Sergeant	78016.28	f	South Division	63702
Evett Scott A	Police Sergeant	78016.28	f	Independence Division	63703
Figaro Crystal Fletcher	Police Sergeant	78016.28	f	North Tryon Division	63704
Beck Roger B.	Treatment Plant Maint Mgr	79129.16	f	CLT Water - Water Maintenance	63705
Hazel-Jacobs Phillipa Mechell	Accountant III	79089.98	f	Revenues	63706
Lewis Adrianne Florence	Contracts Admin Coordinator	79080.02	f	CLT Water Procurement	63707
Chandler Marvin Doug	Engineering Project Coordinato	79000	f	EPM Main Engineering	63708
Gilliam India	Accountant III	78975.9	f	Finance Accounting	63709
Lowry Evan H	Sr Principal Planner	78940.66	f	Planning	63710
Newell Eric W	Utilities Services Manager	78926.33	f	CLT Water Lab Svc-Operations	63711
Hinson Derric R	Business System Spec Sr	78899.13	f	Computer Technology Solutions	63712
Sabha Ahmad M.	Engineering Project Manager	78851.11	f	EPM Main Engineering	63713
Sherrill Jr Robert Julius	Operations Supervisor	78831.55	f	EPM Landscape Mgt	63714
Woods Cynthia L	Training Specialist	78779.92	f	Director's Office Combined	63715
Kilic Kimberly Andress	Training Specialist	78723	f	Training Division	63716
Mobley John E	Contracts Admin Coordinator	78720.17	f	EPM Main Engineering	63717
Combis Deborah A	Contracts Admin Coordinator	78702.39	f	Dev - Executive	63718
Rich Jr Drexel A	Engineering Project Coordinato	78686.25	f	CLT Water Engineering-Admin	63719
Rhodes Marquiessa Monique	Network Commun Integrator	78662.6	f	I&T Network	63720
Hoskins Patrick T	Transit Scheduling Manager	78629.87	f	Planning & Special Operations	63721
Hunter Walter F	Engineering Project Manager	78576.99	f	CLT Water Engineering-Admin	63722
Perrott Michael	Administrative Officer IV	78559.08	f	Administrative Management	63723
Haraden Shawn Bradley	Safety Coordinator-Senior	78525.2	f	CLT Water Safety Team	63724
Dye Rex Eugene	Operations Supervisor	78521.71	f	Finance Asset and Recovery Dis	63725
Herring Kevin Eugene	Engineering Project Coordinato	78520.71	f	E&PM Storm Water Water Quality	63726
Carothers Genetta N	Contracts Admin Coordinator	78490.02	f	Finance Procurement Management	63727
Wiktorek William J	Bus Systems Spec Intrm	78483.69	f	Computer Technology Solutions	63728
Stroud Frank S	Technical Systems Specialist	77912.37	f	CLT Water Instr. Control & Ele	63729
Treadaway Melissa M	Public Service Coordinator	77168	f	Public Affairs	63730
Proctor James Ryan	Administrative Officer III	77156.18	f	Administrative Management	63731
Arnold Stephen W.	Police Officer	77116.69	f	School Resources Officers	63732
Artis Charles R	Police Officer	77116.69	f	School Resources Officers	63733
Caldwell Wesley B	Police Officer	77116.69	f	School Resources Officers	63734
Crosby Jr James J	Police Officer	77116.69	f	School Resources Officers	63735
Galmon Drexel S	Police Officer	77116.69	f	School Resources Officers	63736
Herrera Jr Julio C	Police Officer	77116.69	f	School Resources Officers	63737
Hughes Ray S	Police Officer	77116.69	f	School Resources Officers	63738
Kiser Tonya M	Police Officer	77116.69	f	School Resources Officers	63739
Leak Bradley T	Police Officer	77116.69	f	School Resources Officers	63740
Little Jr Thornell M	Police Officer	77116.69	f	School Resources Officers	63741
Martin Brock D	Police Officer	77116.69	f	School Resources Officers	63742
Mobley Kenisha Rene	Police Officer	77116.69	f	School Resources Officers	63743
Nance Roland S	Police Officer	77116.69	f	School Resources Officers	63744
Oates Carlos A	Police Officer	77116.69	f	School Resources Officers	63745
Roddey Toriarno M	Police Officer	77116.69	f	School Resources Officers	63746
Rorie Michael L	Police Officer	77116.69	f	School Resources Officers	63747
Staton Terry B	Police Officer	77116.69	f	School Resources Officers	63748
Whetzel Ryan L	Police Officer	77116.69	f	School Resources Officers	63749
Whitley Brian	Police Officer	77116.69	f	School Resources Officers	63750
Wilson Jr William Jesse	Police Officer	77116.69	f	School Resources Officers	63751
Oliverio Erin Elizabeth	Construction Manager	77058.16	f	EPM Landscape Mgt	63752
Singh Samantha Kamini	Operations Supervisor	77045.4	f	Oper - Landside/Grd Trans	63753
Insogna Jr George A	Survey Supervisor	77021.19	f	EPM Main Engineering	63754
Beaven Debra E	Bus Systems Spec Intrm	77013.07	f	CLT Water Business Sys (IT)	63755
Morris Sarah Bridges	Landscape Supervisor	77008.77	f	EPM Landscape Mgt	63756
Bromberger Hannah Walton	Strategy & Budget Analyst	77000	f	Strategy & Budget	63757
Martin Julia	Strategy & Budget Analyst	77000	f	Strategy & Budget	63758
Ruvalcaba Lauren Ashley	Strategy & Budget Analyst	77000	f	Strategy & Budget	63759
Fortune Solomon Avan	Sr Principal Planner	76991.45	f	Planning	63760
Kinley John R	Sr Principal Planner	76991.45	f	Planning	63761
Rosen Amanda Vari	Sr Principal Planner	76991.45	f	Planning	63762
Suttle III Bryman Oren	Sr Principal Planner	76991.45	f	Planning	63763
St. Laurent David Robert	Operations Supervisor	76947.49	f	CLT Water West Tyvola Zone	63764
Triming Colin Barry	Fire Inspector Senior	76911.02	f	Fire Prevention	63765
Edwards Kevin S	Code Enforcement Coordinator	76860.21	f	Code Enforcement Combined	63766
Huggins Leonard James	GIS Coordinator	76850.55	f	SWS Technology	63767
Tate Gregory	Contracts Admin Coordinator	76838	f	EPM Main Engineering	63768
Naftel Allison Lea	Operations Supervisor	76832.58	f	Field Services	63770
Daniels Audrey L	Administrative Officer IV	76806.95	f	Revenues	63771
Reid Kathryn Sally	Contracts Admin Coordinator	76806.55	f	EPM Main Engineering	63772
Blue Tamara C	Public Service Coordinator	76799.68	f	Customer Service	63773
White Garland E	Equipment Shop Manager	76631.96	f	Fleet Mgmt-Atando Ave Shop	63774
Adams Russell Scott	Sr Principal Planner	76616.61	f	Planning	63775
Chaney Jr Samuel L.	Operations Supervisor	76575.76	f	CLT Water Cust Service-Admin	63776
Lee William Cornelious	Operations Supervisor	76575.76	f	CLT Water Matthews Zone	63777
Lingerfelt Michael Ray	WW Treatment Plant Supv	76524.47	f	CLT Water Irwin Creek Plt OPS	63778
Watters Falguni G	GIS Coordinator	76462.05	f	EPM Main Engineering	63779
Peeples Jr Gary H	Contracts Admin Coordinator	76444.23	f	Finance - Executive	63780
Tse Sung-hei S	Software Developer Intermediat	77884.47	f	I&T Applications	63781
Elzey David M	Contracts Admin Coordinator	77869.25	f	Finance Procurement Management	63782
Kounbandith Sacksone	Engineering Project Coordinato	77853.58	f	E&PM Storm Water	63783
Ashburner Ronald G	Operations Supervisor	77847.32	f	Transportation Systems	63784
Smith Ethan Taft	Strategy & Budget Analyst	77811.35	f	Strategy & Budget	63785
Walker Kevin M	Business System Spec Sr	77794	f	CLT Water Business Sys (IT)	63786
McCue Russell Davis	Safety Coordinator-Senior	77738.59	f	Risk Management	63787
Allen Christopher C.	Engineering Project Manager	77720.22	f	CLT Field Ops-Pipeline Rehab	63788
Hobbs Justin W	Network Commun Integrator	77691.36	f	Tech - Executive	63789
Lanzillotta Benjamin Louis	Engineering Project Manager	77689.5	f	E&PM Storm Water	63790
Gonzalez Kenneth A	Administrative Officer IV	77638.25	f	Revenues	63791
Johnson Billie J.	Safety Supervisor	77546.24	f	Safety & Security	63792
Carpenter David R	Administrative Officer III	77454.84	f	Transportation Systems	63793
Pate Brian David	Engineering Project Manager	77344.07	f	CLT Water Engineering-Admin	63794
Perry Jeffrey Turner	Engineering Project Manager	77344	f	Facil - Airside Maintenance (F	63795
Thomas Bradley M	Operations Supervisor	77319.21	f	Light Rail Operations	63796
Allen Carrie	Accountant III	77280.03	f	Finance Accounting	63797
Winter Carlton B	Energy Mgt Specialist	77277.31	f	EPM BS Spratt	63798
Russell David S	Content Webmaster	77250	f	CM-Corporate Comm & Marketing	63799
Wagner Ryan Patrick	Public Service Coordinator	77233.52	f	CM-Corporate Comm & Marketing	63800
Kunze Emily Allison	Deputy City Clerk	77223.33	f	City Clerk	63801
Desmond III Michael James	Network Commun Integrator	77207.46	f	Computer Technology Solutions	63802
Gordon Alexis D	Economic Dev Program Mgr	77199.45	f	Economic Development-ADM	63803
Williams David Wayne	Fire Investigator Senior	77198.14	f	Fire Investigations/Education	63804
Updegraff Jr Paul T	Police Officer	74848.55	f	Metro Division	63805
Wahab Bradley W	Police Officer	74848.55	f	University City Division	63806
Nicholson Brian K	Police Officer	72580.41	f	Freedom Division	63807
Williams Jeffrey D.	Police Officer	71816.03	f	School Resources Officers	63808
Hager Joseph E	Relief Captain	74274.06	f	Fire Station 4	63809
Walker Charles M	Police Officer	74848.55	f	Providence Division	63810
Walsh Brian E.	Police Officer	74848.55	f	Metro Division	63811
Weber John M	Police Officer	74848.55	f	North Division	63812
White Timothy A	Police Officer	74848.55	f	Airport Law Enforcement Divisi	63813
Wilhelm Gresham T	Police Officer	74848.55	f	Hickory Grove Division	63814
Witherell William S	Police Officer	74848.55	f	Freedom Division	63815
Wright David A	Police Officer	74848.55	f	Steele Creek Division	63816
Yanacsek James K	Police Officer	74848.55	f	Providence Division	63817
Yanacsek Robert S	Police Officer	74848.55	f	Airport Law Enforcement Divisi	63818
Yoder Matthew T	Police Officer	74848.55	f	South Division	63819
DeWitt Darrell V	WW Treatment Plant Supv	74835.28	f	CLT Water McDowell Creek Plant	63820
Bost David M	Engineering Project Coordinato	74809.9	f	Traffic Safety	63821
Woolard Zachary Steven	Bus Systems Spec Intrm	74749.95	f	Fire Administration	63822
Hall Trent P	Operations Supervisor	74706.3	f	CLT Water Huntersville Zone	63823
Jones Richard Ray	Safety Coordinator-Senior	74662.64	f	Safety & Security	63824
Fritts Robert E.	Treatment Plant Maint Mgr	74636.89	f	CLT Water EMD Maintenance	63825
Jones Glenn Ross	Police Physical Fitness Coord	74599.2	f	Human Resources Division	63826
O'Reilly Kristen Anne	Water Quality Program Speciali	74587.77	f	E&PM Storm Water	63827
Davis John P.	Police Officer	74479.82	f	Central Division	63828
Eudy Henry Harrison	WW Treatment Plant Supv	74475.49	f	CLT Water Mallard Creek Plant	63829
Clark Sharon Jones	GIS Analyst	74467.38	f	Criminal Intel. and Analysis	63830
Parker Ricky A	Administrative Officer IV	74444.62	f	Business Support Combined	63831
Deal John Michael	Chief Maintenance Mechanic	74444.08	f	Facil - Building Maintenance	63832
Adams Britnee LaJeune	Engineering Project Coordinato	74443.25	f	Traffic Safety	63833
Hines Richelle Mechenbier	Engineering Project Coordinato	74417.44	f	CLT Water Engineering-Admin	63834
Haig Sheryl	Laboratory Supervisor	74411.41	f	CLT Water Lab Svc-Operations	63835
Kimble Gina H	Laboratory Supervisor	74411.41	f	CLT Water Lab Svc-Operations	63836
Banick David Michael	Water Treatment Plant Supv	74373.95	f	CLT Water Dukes WTP	63837
Clift Steven E	Water Treatment Plant Supv	74373.95	f	CLT Water Vest Treatment Plt O	63838
Zagar Mark J	Chief Maintenance Mechanic	74352.24	f	EPM BS Spratt	63839
Belton Shirley S.	Operations Supervisor	74345.4	f	SWS Customer Service	63840
Canipe Donald Lloyd	Operations Supervisor	74345.4	f	CLT Water Locates	63841
Clark Mike John	Operations Supervisor	74345.4	f	Administration	63842
Clark Scott E	Operations Supervisor	74345.4	f	CLT Wat General Commerce Zone	63843
Gillies Gail Marie	Operations Supervisor	74345.4	f	Bus Offic -CommercialSvs/Aviat	63844
McIver Leron Montrey	Operations Supervisor	74345.4	f	SWS Operations - Collections A	63845
Scott III Noble C	Operations Supervisor	74345.4	f	SWS Operations - Special Servi	63846
DeLaPena Eric	Operations Supervisor	74345.1	f	SWS Operations - Special Servi	63847
Moore Michelle	Operations Supervisor	74345	f	CLT Water Cust Service-Admin	63848
Young Kirkham B.	Non-Emerg Police Serv Mgr	74345	f	Non-Emergency Police Services	63849
DeCarlo Christopher J.	Police Officer	72580.41	f	Cyber Crime Unit	63850
Paden De Nona Ruth	Management Analyst Senior	74319.96	f	CLT Water Cust Service-Admin	63851
Miller Evelyn	Safety Coordinator-Senior	74300	f	Safety & Security	63852
Marro Nicholas J	Relief Captain	72462.52	f	Fire Station 41	63853
Shaben Stephen J.	Engineering Project Coordinato	73060.23	f	Traffic Safety	63854
McGimpsey Pamela L	Human Resources Analyst	74296	f	Talent Acquisition & Mgt	63855
Neblett Russel C	Human Resources Analyst	74296	f	Talent Acquisition & Mgt	63856
Hinson Scott	Human Resources Analyst	74295	f	HR Management System	63857
Beaver Michael Todd	Relief Captain	74274.06	f	Fire Station 31	63858
Coley II Larry W	Relief Captain	74274.06	f	Fire Station 31	63859
Gleason Kyle Roy	Relief Captain	74274.06	f	Fire Station 23	63860
Haley Marcus Wayne	Relief Captain	74274.06	f	Fire Station 26	63861
Miller Justin T	Relief Captain	74274.06	f	Fire Station 27	63862
Melone Jr Steven C	Relief Captain	72462.52	f	Fire Station 18	63863
Veille Olivier A	Engineering Project Coordinato	74245.42	f	CLT Field Ops-Pipeline Rehab	63864
Miller Reed Andrew	Relief Captain	72462.52	f	Fire Station 31	63865
Dickinson David G	Police Officer	72580.41	f	Freedom Division	63866
King Jr Charles H	Chief Maintenance Mechanic	73048.58	f	Facil - Building Maintenance	63867
Morton Jr Tim E	Chief Airport Constr Inspector	71770.77	f	EPM Main Engineering	63868
Houser Scott L	Engineering Project Coordinato	74245	f	Dev - Executive	63869
Mangum Joseph Walter	Engineering Project Coordinato	74225.91	f	Land Development	63870
Oberer Andrew J	Police Officer	72580.41	f	Motorcycle & Reconstruction Un	63871
Howley Katherine Vernita	Criminalist DNA Analyst	74205.35	f	Crime Lab Division	63872
Gibbons Martin P	Survey Supervisor	74200.58	f	EPM Main Engineering	63873
O'Dell Kyle J	Police Officer	72580.41	f	Freedom Division	63874
Insogna Becky Mundy	Real Estate Agent II Lead	74175.68	f	EPM Real Estate	63875
Moore Evan Eugene	Relief Captain	72462.52	f	Fire Station 17	63876
Driggers Jr Curtis D	Police Officer	72580.41	f	Freedom Division	63877
Blakeney Quentin Lamar	Police Officer	73023.02	f	Westover Division	63878
Smith Philip Cody	Chief Airport Constr Inspector	71770.77	f	Dev - Executive	63879
Orlov Laura S	Police Officer	72580.41	f	Recruiting Division	63880
McFadden Jack	Engineering Project Coordinato	74137.48	f	E&PM Storm Water	63881
Phillips Kevin D	Relief Captain	72462.52	f	Fire Station 17	63882
Dunbar Aleta D	Police Officer	72580.41	f	Cyber Crime Unit	63883
Corell Jr Wesley Baker	Police Officer	73023.02	f	Independence Division	63884
Knight James Ronald	Chief Airport Constr Inspector	71770.65	f	Dev - Executive	63885
Owens Carol B	Police Officer	72580.41	f	Armed Robbery/Sexual Assault D	63886
Allen Jr William M	WW Treatment Plant Supv	74115.71	f	CLT Water Sugar Creek Plant	63887
Pritchard Michael S	Relief Captain	72462.52	f	Fire Station 26	63888
Echerd IV Edwin R	Police Officer	72580.41	f	North Division	63889
Gonzalez Edward M.	Police Officer	73023.02	f	Eastway Division	63890
Berry Erin	Financial Accountant II	71751.65	f	Finance Accounting	63891
Padgett David L	Police Officer	72580.41	f	Providence Division	63892
Jordan Jonathan Brian	WW Treatment Plant Supv	74115.6	f	CLT Water Union County	63893
Shaner Gregory J	Relief Captain	72462.52	f	Fire Station 1	63894
Edmondson Ashley N.	Police Officer	72580.41	f	South Division	63895
Martin Joseph R.	Police Officer	73023.02	f	South Division	63896
Riggsbee Angelia	Accountant II	71750	f	Administration Division	63897
Parnell Kyle G	Police Officer	72580.41	f	Recruiting Division	63898
Pace Jr George L	Survey Supervisor	74075.38	f	CLT Water Engineering-Admin	63899
Shick William R	Relief Captain	72462.52	f	Fire Station 1	63900
Edwards Tricia	Police Officer	72580.41	f	Recruiting Division	63901
Newton Amy Rebecca	Police Officer	73023.02	f	Westover Division	63902
Williams Larcenaous Leroy	Rail Maintenance Of Way Superv	71739.3	f	Maintenance Right of Way (MOW)	63903
Joyce Walter S	IT Communications Technician	71715.55	f	Telecom	63904
Kluttz Sr Allan Lewis	HVAC Technician Senior	71668.38	f	EPM BS Spratt	63905
Bass Patricia B	Bus Systems Spec Intrm	71626.31	f	CLT Water Business Sys (IT)	63906
Fairchild Ryan Scott	Construction Supervisor	71600	f	E&PM Storm Water	63907
Goforth Thomas Aaron	Fire Investigator Certified	71580.76	f	Fire Investigations/Education	63908
Linder Franklin G	Chief Maintenance Mechanic	71580.76	f	Facil - Building Maintenance	63909
Walters David W	Instruments & Controls Supv	71500.87	f	CLT Water Instr. Control & Ele	63910
Bolick Heather	Energy Sustainability Coordina	71499.85	f	EPM Main Engineering	63911
Yanicak Joseph A	Special Events Supervisor	71487.62	f	General Right of Way Managemen	63912
Patterson Roy Duane	Data Analytics Specialist	71461.52	f	Cyber Crime Unit	63913
Baldwin Karen Lynn	Management Analyst Senior	71461.5	f	CLT Water Business Office	63914
Martin Miriam Elizabeth	Management Analyst Senior	71460.48	f	Fire Administration	63915
Almond Benjamin B	Police Officer	71446.34	f	South Division	63916
Altizer Gregory D	Police Officer	71446.34	f	North Tryon Division	63917
Artieri David L	Police Officer	71446.34	f	Eastway Division	63918
Brown James Eugene	Police Officer	71446.34	f	Independence Division	63919
Colpitts Richard G	Police Officer	71446.34	f	Steele Creek Division	63920
Conner Thomas J	Police Officer	71446.34	f	Airport Law Enforcement Divisi	63921
Cooper Darron L	Police Officer	71446.34	f	North Tryon Division	63922
Ellis Jason P	Police Officer	71446.34	f	North Tryon Division	63923
Ensminger Steven D	Police Officer	71446.34	f	Central Division	63924
Franklin Robert M	Police Officer	71446.34	f	Hickory Grove Division	63925
Inch III Harry W	Police Officer	71446.34	f	Steele Creek Division	63926
Jones Charles David	Police Officer	71446.34	f	Eastway Division	63927
Jordan Russell S	Police Officer	71446.34	f	Steele Creek Division	63928
Kelly Sean J	Police Officer	71446.34	f	Steele Creek Division	63929
Knudsen Karl K	Police Officer	71446.34	f	Eastway Division	63930
Krall Jenny L	Police Officer	71446.34	f	Independence Division	63931
Ladd Steven R	Police Officer	71446.34	f	South Division	63932
Lang Jeffrey T	Police Officer	71446.34	f	Eastway Division	63933
Lauber Dean R.	Police Officer	71446.34	f	Independence Division	63934
LeBlanc Chad Michael	Police Officer	71446.34	f	Airport Law Enforcement Divisi	63935
Locklear John D	Police Officer	71446.34	f	North Division	63936
McMichael Shawn T	Police Officer	71446.34	f	Central Division	63937
Michael Matthew R.	Police Officer	71446.34	f	North Division	63938
Oelze Daniela Corine	Police Officer	71446.34	f	Westover Division	63939
Proctor Kenneth B	Police Officer	71446.34	f	Freedom Division	63940
Quan Dennis D	Police Officer	71446.34	f	Hickory Grove Division	63941
Sardo Michael A	Police Officer	71446.34	f	Westover Division	63942
Scanlon Seann P	Police Officer	71446.34	f	University City Division	63943
Shields Jr Jerry E	Police Officer	71446.34	f	University City Division	63944
Starnes Marvin K	Police Officer	71446.34	f	South Division	63945
Terry Wesley T	Police Officer	71446.34	f	South Division	63946
Peacock Michael B	Police Officer	72580.41	f	Violent Crime Division	63947
Dickson Jason R	Fire Fighter Engineer	74072.77	f	Fire Station 38	63948
Finocchio Anthony J	Police Officer	72580.41	f	South Division	63949
Peetz Jason Eric	Police Officer	72580.41	f	University City Division	63950
Edwards Marc A	Fire Fighter Engineer	74072.77	f	Fire Station 25	63951
Richardson Larry Lane	Police Officer	73023.02	f	Steele Creek Division	63952
Ryerson Eric D.	Police Officer	73023.02	f	University City Division	63953
Story Kevin R	Relief Captain	72462.52	f	Fire Station 27	63954
Pharr Sr Anthony L	Police Officer	72580.41	f	Special Victims Division	63955
Rivers Amy Adams	Bus Systems Spec Intrm	73000	f	Tech - Executive	63956
Kenning Scott Edward	Fire Fighter Engineer	74072.77	f	Fire Station 17	63957
Fitch Blair G	Police Officer	72580.41	f	Violent Crime Division	63958
Thompson Michael M	Relief Captain	72462.52	f	Fire Station 1	63959
Pisano Albert L	Police Officer	72580.41	f	Non-Emergency Police Services	63960
Brandt David F	Safety Coordinator-Senior	72975.29	f	Risk Management	63961
Martin Simon James	Fire Fighter Engineer	74072.77	f	Fire Station 3	63962
Frisk Johnathan Erik	Police Officer	72580.41	f	Crime Prevention Unit	63964
Walker Scott M	Relief Captain	72462.52	f	Fire Station 40	63965
Prather Carolynn Jean	Police Officer	72580.41	f	Metro Division	63966
Weller Lisa	Accountant III	72965.82	f	Finance Revenue	63967
Pope Kelly D	Fire Fighter Engineer	74072.77	f	Fire Station 13	63968
Gale III George T	Police Officer	72580.41	f	University City Division	63969
Westbrooks Josh E	Relief Captain	72462.52	f	Fire Station 16	63970
Pressley Matthew R	Police Officer	72580.41	f	Special Events	63971
Pierson John R	Facilities/Property Supervisor	72908.51	f	Facilities	63972
Glover Brady Neil	Engineering Project Coordinato	74065.65	f	CLT Water Engineering-Admin	63973
Garber Rebecca S	Police Officer	72580.41	f	Special Victims Division	63974
Worley Kenneth D	Relief Captain	72462.52	f	Fire Station 16	63975
Rape John M	Police Officer	72580.41	f	Central Division	63976
Reese Richard B	Police Officer	72580.41	f	Recruiting Division	63977
Retort Michael T	Police Officer	72580.41	f	Motorcycle & Reconstruction Un	63978
Rivera Valencia K	Police Officer	72580.41	f	Recruiting Division	63979
Rush Christopher J	Police Officer	72580.41	f	North Division	63980
Savelle Alan T.	Police Officer	72580.41	f	Special Victims Division	63981
Scalise Joseph P	Police Officer	72580.41	f	Central Division	63982
Schultz Kirk L	Police Officer	72580.41	f	University City Division	63983
Shelton Mark A	Police Officer	72580.41	f	Court Services - DA	63984
Simma Jr John William	Police Officer	72580.41	f	Freedom Division	63985
Simpson Vinton K	Police Officer	72580.41	f	Central Division	63986
Smith Jr Hilton Grady	Police Officer	72580.41	f	Airport Law Enforcement Divisi	63987
Smith Christopher G.	Police Officer	72580.41	f	Non-Emergency Police Services	63988
Smith Jamie C	Police Officer	72580.41	f	Violent Crime Division	63989
Smith Mark A	Police Officer	72580.41	f	Real Time Crime Center	63990
Smith Ricky R	Police Officer	72580.41	f	Non-Emergency Police Services	63991
Teague James M	Police Officer	72580.41	f	Eastway Division	63992
Thornton Justin C	Police Officer	72580.41	f	North Division	63993
Toggweiler Douglas O	Police Officer	72580.41	f	Real Time Crime Center	63994
Turner David Harold	Police Officer	72580.41	f	North Division	63995
Tuttle Johnnie L.	Police Officer	72580.41	f	Violent Crime Division	63996
Upchurch Brad D	Police Officer	72580.41	f	Real Time Crime Center	63997
Watkin Kermit D	Police Officer	72580.41	f	Transit Unit	63998
Wilson Tim E	Police Officer	72580.41	f	North Division	63999
Wing Joel E	Police Officer	72580.41	f	Providence Division	64000
Wright Serita R.	Police Officer	72580.41	f	Real Time Crime Center	64001
Wyrick Jr Michael W	Police Officer	72580.41	f	Real Time Crime Center	64002
Arrington Linda W	Administrative Officer III	72577.99	f	EPM BS Spratt	64003
Young Pamela J	Administrative Officer III	72561.44	f	Economic Development-ADM	64004
Clontz Susan N	GIS Analyst	72533.49	f	CLT Water Business Sys (IT)	64005
Anderson Thomas Gerald	Relief Captain	72462.52	f	Fire Station 24	64006
Benson Jr Richard Haskell	Relief Captain	72462.52	f	Fire Station 17	64007
Brown Joshua Devin	Relief Captain	72462.52	f	Fire Station 18	64008
Davis Danny Lea	Relief Captain	72462.52	f	Fire Station 40	64009
Houston Joseph H.	Relief Captain	72462.52	f	Fire Station 4	64010
Howell Kevin Blake	Relief Captain	72462.52	f	Fire Station 24	64011
Maier Adam William	Relief Captain	72462.52	f	Fire Station 24	64012
Garrison Tawanda P	Police Officer	72580.41	f	Special Victims Division	64013
Gerson Scott C	Police Officer	72580.41	f	Animal Care & Control Division	64014
Giles-Kornberg Gretchen K.	Police Officer	72580.41	f	Recruiting Division	64015
Gilliland James R.	Police Officer	72580.41	f	Providence Division	64016
Gilmore Reginald A	Police Officer	72580.41	f	Youth Programs	64017
Grande Michael R	Police Officer	72580.41	f	Court Services - DA	64018
Grass Corrina Marie	Police Officer	72580.41	f	South Division	64019
Heifner John N	Police Officer	72580.41	f	Hickory Grove Division	64020
Helms Calvin B	Police Officer	72580.41	f	Independence Division	64021
Tipp Matthew E	Police Officer	71446.34	f	Freedom Division	64022
Helms James B	Police Officer	72580.41	f	Violent Crime Division	64023
Hemly Myra Tweed	Police Officer	72580.41	f	Independence Division	64024
Hetrick Jennifer L	Police Officer	72580.41	f	Airport Law Enforcement Divisi	64025
Hooven Jason S	Police Officer	72580.41	f	Providence Division	64026
Horton Tommie G	Police Officer	72580.41	f	Training Division	64027
Hoskins Joseph D	Police Officer	72580.41	f	Canine Unit	64028
Houser Stephen T.	Police Officer	72580.41	f	Providence Division	64029
Hunter David L	Police Officer	72580.41	f	Eastway Division	64030
Jadlocki Mark A	Police Officer	72580.41	f	University City Division	64031
Jamieson Charles G	Police Officer	72580.41	f	Special Events	64032
Jester David L	Police Officer	72580.41	f	Central Division	64033
Johnson Teresa R	Police Officer	72580.41	f	Special Victims Division	64034
Kelly William E	Police Officer	72580.41	f	Aviation Unit	64035
Kimbell Heidi P	Police Officer	72580.41	f	Special Victims Division	64036
Leonard Douglas K	Police Officer	72580.41	f	Providence Division	64037
Levett Philip A	Police Officer	72580.41	f	Special Operations Division	64038
Lingle Brandy Leigh	Police Officer	72580.41	f	Special Victims Division	64039
Long James C	Police Officer	72580.41	f	Central Division	64040
Lyon Christopher E	Police Officer	72580.41	f	Violent Crime Division	64041
Markus Erik G	Police Officer	72580.41	f	University City Division	64042
Martin Jr William B	Police Officer	72580.41	f	Metro Division	64043
Martin Gregory	Police Officer	72580.41	f	Providence Division	64044
Mauldin Chad A	Police Officer	72580.41	f	Non-Emergency Police Services	64045
Mauldin Mark A	Police Officer	72580.41	f	Central Division	64046
McNeil Christopher L	Police Officer	72580.41	f	Cyber Crime Unit	64047
McTigue Gregory G.	Police Officer	72580.41	f	Metro Division	64048
Mescan Matthew A	Police Officer	72580.41	f	Special Victims Division	64049
Montgomery Matthew P	Police Officer	72580.41	f	Westover Division	64050
Moon Sean P.	Police Officer	72580.41	f	North Division	64051
Smith Richard F	Operations Supervisor	72458.8	f	Fleet Section	64052
Tinkler Emily Rae	Engineering Project Coordinato	73960.9	f	Dev - Executive	64053
Dash Esperanza E	Management Analyst	72896.01	f	SWS Contracted Services	64054
McClellan Jeffrey A	Customer Service Supervisor	72390.04	f	Special Transportation Service	64055
Garren Raymond Lee	Network Commun Integrator	72387.1	f	Public Safety Communications	64056
Gerard Timothy J	Network Commun Integrator	72387.1	f	Public Safety Communications	64057
Rea Amy Carol	Fire Inspector Senior	72375.63	f	Fire Investigations/Education	64058
Lewis Henry M	Treatment Plant Maint Supv	72288.07	f	CLT Water EMD Maintenance	64059
Solberg Christen M	Rev Collect & Credit Officer	72280.04	f	CLT Water Cust Service-Admin	64060
Zorn Nicholas A	Administrative Officer IV	72276.34	f	Fleet Mgmt-CDC	64061
Alicea Maria Donna	Administrative Officer IV	72276	f	SWS Human Resources	64062
Hendrix Jr Andrew L	Fire Fighter II	72265.98	f	Fire Station 41	64063
Overcash Cindy D	Fire Fighter II	72265.98	f	Fire Station 41	64064
Phillips Jr Jerry D	Fire Fighter II	72265.98	f	Fire Station 10	64065
Cromwell Damon R	Accountant III	72263.4	f	Finance - Executive	64066
Ammons Mark R	Administrative Officer IV	72230.11	f	Finance	64067
Vincent Kourtnie J	Landscape Architect	72224.74	f	EPM Landscape Mgt	64068
Vlachou Aspasia Styliani	Engineering Project Coordinato	72205.97	f	EPM Main Engineering	64069
Gaines Brooke Elizabeth	Engineering Project Coordinato	72200	f	EPM Main Engineering	64070
Beckwith Robert	Management Analyst	72183	f	Bus General Management	64071
Torres Michele	Small Business Program Adminis	72141.04	f	Admin - Legal Affairs	64072
Oprysko Andrew P	Criminalist Drug Chemistry	72104.55	f	Crime Lab Division	64073
Mahoney Catherine Margaret	Principal Planner	72079.47	f	Planning	64074
Coleman Connella P.	Engineering Project Coordinato	72075	f	CLT Water Engineering-Admin	64075
Bugica Gregory J.	Field Operations Supervisor	72062.03	f	EPM Landscape Mgt	64076
Ridgely Andrea Baldwin	Financial Accountant II	72030.3	f	Finance Accounting	64077
Colon Sabrina S	Corporate Comm Specialist Sr	72014.62	f	CM-Corporate Comm & Marketing	64078
Moua Jeu	Plan Review Engineer	72000	f	EPM Land Development	64079
Davis Andrew	Engineering Project Coordinato	72000	f	EPM Main Engineering	64080
Nason Kevin	Rail Maintenance Of Way Superv	72000	f	Maintenance Right of Way (MOW)	64081
Manning Ryan Allen	Content Webmaster	71953.92	f	Admin-Public Affairs/Media Rel	64082
Elkins Susan T	Exec Assistant to City Mgr	71928.06	f	City Manager's Office	64083
Gaines Alan Henry	Engineering Project Coordinato	71908.32	f	CLT Water Engineering-Admin	64084
Rice William D	Engineering Project Coordinato	71908.28	f	CLT Water Engineering-Admin	64085
Wilks Rayford B	Engineering Project Coordinato	71908.28	f	CLT Water Engineering-Admin	64086
Beam Jonathan David	Engineering Project Coordinato	71908	f	CLT Water Eng-Install & Dev	64087
Patel Devendra	Engineering Project Coordinato	71908	f	Implementation	64088
Webster Justin Douglas	Engineering Project Coordinato	71908	f	CLT Water Engineering-Admin	64089
Sue-Kam-Ling Jennifer	Management Analyst	71833.03	f	Administration Division	64090
Ingle Richard A	Engineering Project Coordinato	73885.8	f	CLT Field Ops-Pipeline Rehab	64091
Urban John A	Police Officer	71446.34	f	Hickory Grove Division	64092
Harris Amy Elizabeth	Accountant II	72823.99	f	Finance - Executive	64093
Bowen Andrew Haskell	Administrative Officer IV	72822.6	f	Finance - Executive	64094
Morris Susan	Data Analytics Specialist Sr	72822.6	f	Criminal Intel. and Analysis	64095
Hagans Chad Anthony	Safety Coordinator	72805.75	f	Safety & Security	64096
Church James L	Chief Maintenance Mechanic	72799.45	f	EPM BS Spratt	64097
Galland John Jay	Police Officer	72662.99	f	South Division	64098
Joseph Jeffrey J.	Police Officer	72662.99	f	Steele Creek Division	64099
McCall Chadwick Ray	Police Officer	72662.99	f	North Tryon Division	64100
Phillips Jarrett M	Police Officer	72662.99	f	South Division	64101
Rendon Robert S.	Police Officer	72662.99	f	Eastway Division	64102
Tran Dan	Police Officer	72662.99	f	North Division	64103
Duffey Anna Butler	Bus Systems Spec Intrm	72625.08	f	Organization Dev & Learning	64104
Ward Rhonda S	Bus Systems Spec Intrm	72625	f	Human Resources	64105
Hampton Nathaniel	Engineering Project Coordinato	72606.41	f	CLT Water Engineering-Admin	64106
Allen Thomas C	Police Officer	72580.41	f	Alarm Ordinance Enforcement Un	64107
Altmann Stephen R.	Police Officer	72580.41	f	Canine Unit	64108
Barbour Edward H	Police Officer	72580.41	f	Independence Division	64109
Barrineau Cheryl L	Police Officer	72580.41	f	Motorcycle & Reconstruction Un	64110
Baucom Marty A	Police Officer	72580.41	f	Independence Division	64111
Bell Curtis L	Police Officer	72580.41	f	Real Time Crime Center	64112
Birch Michael F	Police Officer	72580.41	f	Providence Division	64113
Blackwell Kimberly S.	Police Officer	72580.41	f	North Division	64114
Blaich Matthew W	Police Officer	72580.41	f	Real Time Crime Center	64115
Blee Michael J	Police Officer	72580.41	f	Metro Division	64116
Branan Steven M	Police Officer	72580.41	f	Independence Division	64117
Brown Darrell J	Police Officer	72580.41	f	Canine Unit	64118
Burnett II Lowell B	Police Officer	72580.41	f	Recruiting Division	64119
Carlson David J	Police Officer	72580.41	f	North Division	64120
Cashion Jeffrey S	Police Officer	72580.41	f	Independence Division	64121
Castano Theodore P	Police Officer	72580.41	f	Eastway Division	64122
Cerdan Jonathan S	Police Officer	72580.41	f	Special Events	64123
Chilton James B.	Police Officer	72580.41	f	Cyber Crime Unit	64124
Clark William B	Police Officer	72580.41	f	Armed Robbery/Sexual Assault D	64125
Cochran Michael C	Police Officer	72580.41	f	Westover Division	64126
Conn David A	Police Officer	72580.41	f	Training Division	64127
Curlee Joseph Andrew	Police Officer	72580.41	f	Professional Standards Unit	64128
Wiatrowski Scott A	Police Officer	71446.34	f	Westover Division	64129
Abney Eloida F.	Engineering Project Coordinato	73817.3	f	EPM Main Engineering	64130
Yaravitz Samuel	Police Officer	71446.34	f	Providence Division	64131
Prescott Jason Vance	Principal Planner	71384.74	f	Planning	64132
Correll Benjamin Scott	Transportation Planner II	71383.5	f	Municipal Planning	64133
Riemondy Alex	Transportation Planner II	71383.5	f	Municipal Planning	64134
Carter Angel Nicole Collins	Principal Planner	71383	f	Dev - Executive	64135
Moore Jr William Etheridge	Construction Supervisor	71349.5	f	EPM BS Spratt	64136
Hough Laura	Technical Systems Specialist	71303	f	Computer Technology Solutions	64137
Aguirre Jose Neville	Police Officer	71241.56	f	Eastway Division	64138
Hardin Michael Keith	Police Officer	71241.56	f	Airport Law Enforcement Divisi	64139
Kee Michael Scott	Police Officer	71241.56	f	Airport Law Enforcement Divisi	64140
Austin Samantha Dellinger	Laboratory Supervisor	71203.79	f	CLT Water Lab Svc-Operations	64141
Hilling Alan Lee	Laboratory Supervisor	71203.79	f	CLT Water Lab Svc-Operations	64142
Church Micheal Shane	HVAC Technician Senior	71192.83	f	EPM BS Spratt	64143
Pace Bonnie B	Administrative Officer III	71184.25	f	EPM Landscape Mgt	64144
Ricard Thomas Pierre	Bus Systems Spec Intrm	71150.29	f	E&PM Storm Water	64145
Ho Leai K.	Accountant II	70991.56	f	Administration Division	64146
McEachern Robert C	Chief Automotive Mechanic	70954.79	f	Facil - Fleet Maintenance	64147
Levins Patricia A	Criminalist Serology	70938.99	f	Crime Lab Division	64148
Sullivan Audrey	Data Analytics Specialist	70921.88	f	Criminal Intel. and Analysis	64149
Morgan Ashley	Criminalist DNA Analyst	70908.92	f	Crime Lab Division	64150
Albini Ryan Anthony	Fire Fighter Engineer	70852.22	f	Fire Station 13	64151
Bagley Robert W	Fire Fighter Engineer	70852.22	f	Fire Station 29	64152
Baucom Paula D	Fire Fighter Engineer	70852.22	f	Fire Station 28	64153
Bixler Christopher R.	Fire Fighter Engineer	70852.22	f	Fire Station 4	64154
Blackmon Donna D	Fire Fighter Engineer	70852.22	f	Fire Station 41	64155
Burke Gregory A	Fire Fighter Engineer	70852.22	f	Fire Station 24	64156
Romine Tara L	WW Chf Treatment Plant Op	73777.47	f	CLT Water Mallard Creek Plant	64157
Carroll Jr Jimmie Edward	Fire Fighter Engineer	70852.22	f	Fire Station 14	64158
Farmer Jr David Samuel	Contracts Admin Coordinator	73733.58	f	Procurement Services	64159
DeFranzo Jr Paul A	Fire Fighter Engineer	70852.22	f	Fire Station 24	64160
Bridges Jr Curtis	Principal Planner	73723.75	f	Planning	64161
Duncan William B	Fire Fighter Engineer	70852.22	f	Fire Station 40	64162
Fisher Jr Gary F	Fire Fighter Engineer	70852.22	f	Fire Station 17	64163
Friend Joelle C	Fire Fighter Engineer	70852.22	f	Fire Station 34	64164
Goodrich Joel Duncan	Fire Fighter Engineer	70852.22	f	Fire Station 17	64165
Hanline James D	Fire Fighter Engineer	70852.22	f	Fire Station 2	64166
Hanline Mark C	Fire Fighter Engineer	70852.22	f	Fire Station 35	64167
Hoffman Tyler J.	Fire Fighter Engineer	70852.22	f	Fire Station 38	64168
Jones David B.	Fire Fighter Engineer	70852.22	f	Fire Station 11	64169
Jones Matthew B.	Fire Fighter Engineer	70852.22	f	Fire Station 13	64170
Layne Mack Brandon	Fire Fighter Engineer	70852.22	f	Fire Station 17	64171
Marron Gregory E.	Fire Fighter Engineer	70852.22	f	Fire Station 27	64172
Martone Kenneth J.	Fire Fighter Engineer	70852.22	f	Fire Station 9	64173
Maver Michael T	Fire Fighter Engineer	70852.22	f	Fire Station 22	64174
McIntosh Darin Troy	Fire Fighter Engineer	70852.22	f	Fire Station 28	64175
McKown Jr Randall L	Fire Fighter Engineer	70852.22	f	Fire Station 17	64176
Morgan Robert L	Fire Fighter Engineer	70852.22	f	Fire Station 39	64177
Nally Kevin J	Fire Fighter Engineer	70852.22	f	Fire Station 37	64178
Orr Kevin L	Fire Fighter Engineer	70852.22	f	Fire Station 40	64179
Pipkin Jr Joseph R	Fire Fighter Engineer	70852.22	f	Fire Station 10	64180
Bryant Mae Hodges	Construction Supervisor	73682.22	f	EPM Main Engineering	64181
Beal Perry D	Chief Construction Inspector	73639.18	f	CLT Water Engineering-Admin	64182
Bourque Trevor J	Police Officer	73611.38	f	School Resources Officers	64183
Farewell Pamela E	Police Officer	73611.38	f	School Resources Officers	64184
Maye Stevenson R	Police Officer	73611.38	f	North Tryon Division	64185
Pressley Jr Gerald S	Police Officer	73611.38	f	School Resources Officers	64186
Rivera Jose I.	Police Officer	73611.38	f	School Resources Officers	64187
Ganzert Michael M	Drainage Specialist	73594.32	f	E&PM Storm Water	64188
Hattaway William S	Drainage Specialist	73561.07	f	E&PM Storm Water	64189
Givens Crystal Cooper	Accountant II	73543.75	f	Administration Division	64190
Harpst Kristina Ann	Principal Planner	73526.16	f	Planning	64191
Saunders Christopher K	Engineering Project Coordinato	73500	f	CLT Water Eng-Install & Dev	64192
Reeves Michael J.	Chief Construction Inspector	73488.23	f	CLT Water Engineering-Admin	64193
Shrewsbury Stephen T	Engineering Project Coordinato	73484.78	f	Implementation	64194
Harrold Garret C	Fire Inspector Certified	73416.35	f	Fire Prevention	64195
Sullivan Sheila T	Fire Inspector Certified	73416.35	f	Fire Prevention	64196
Wright Jeffory S	Fire Inspector Certified	73416.35	f	Fire Prevention	64197
Stewart Marcus G	Bus Systems Spec Intrm	73397.95	f	Fleet Mgmt-Administration	64198
Czerr Regina Tarae	Engineering Project Coordinato	73345.48	f	Dev - Executive	64199
Barnhardt Brandon Eugene	Safety Coordinator-Senior	73329.54	f	Risk Management	64200
Burney Alban Simpson	MCC Support Specialist Sr	73290.28	f	CM-Constituent Services	64201
Allen Meagan Elaine	Data Analytics Specialist Sr	73227.17	f	Criminal Intel. and Analysis	64202
Hedrick Mary Kathryn Sparrow	Public Service Coordinator	73181.5	f	Director's Office Combined	64203
Katsafanas Elaney Erin	Emergency Management Planner	73173.67	f	Fire Emergency Management	64204
Thomas Tim	Technical Systems Specialist	73131.96	f	I&T Enterprise Operations	64205
Masiello Micheal Andrew	Conveyor Load Bridge Tech	56234	f	Facil - Building Maintenance	64206
Alfaro Carrasco Edwin Bernabe	Airport Electronics Tech Sr	56233.92	f	Facil - Building Maintenance	64207
Wallace Frances Patterson	Police Officer	57112.88	f	Westover Division	64208
Eller Joshua Gray	Environmental Compliance Spec	56233.92	f	Dev - Environmental	64209
Hite Steven Owen	Plans Reviewer	56233.92	f	CLT Water Engineering-Admin	64210
Lawton Holly Anitra	Police Officer	55382.18	f	Providence Division	64211
McBroom Aaron Stuart	Police Officer	54516.84	f	Westover Division	64212
Baswell Joshua David	Police Officer	56896.01	f	Aviation Unit	64213
Wallace Michael Reid	Light Equipment Srvc Tech Mstr	55590.01	f	Fleet Mgmt-Atando Ave Shop	64214
Simpson Debra D.	Administrative Officer II	54991.8	f	Recruiting Division	64215
Garruto Matthew	Police Officer	54393.02	f	University City Division	64216
Wermlinger David Zachariah	Police Officer	57112.88	f	Steele Creek Division	64217
Xiong Kou	Police Officer	57112.88	f	North Tryon Division	64218
Nelson Rodney Lamont	Fire Fighter I	55382.18	f	Fire Station 22	64219
Valle Rodolfo Wandeck	Police Officer	54516.84	f	Providence Division	64220
Beimel Leila Rae	Police Officer	56896.01	f	Providence Division	64221
Harrington Christopher Francis	Police Officer	54393.02	f	South Division	64222
Erhartic Elizabeth Jade	Administrative Officer II	54991.7	f	Admin - Legal Affairs	64223
Anzola Guillermo DeJesus	Survey Party Chief	55586.31	f	CLT Water Engineering-Admin	64224
Huskey Jeffrey D	Plans Reviewer	56233.92	f	CLT Water Engineering-Admin	64225
Robbins Curtis Thomas-Glenn	Fire Fighter I	55382.18	f	Fire Station 27	64226
Youngblood Daniel Davonne	Police Officer	57112.88	f	Metro Division	64227
Larson III John	Contracts Admin Specialist	55547.21	f	Procurement Services	64228
Carson Scottie Paul	Police Officer	56896.01	f	Independence Division	64229
Huff Tab W	Systems Maintenance Mechanic	54514.35	f	Facil - Building Maintenance	64230
Gilleland Elissa R	Administrative Officer II	54991.7	f	Code Enforcement Combined	64231
Jackson Brandon D	Conveyor Load Bridge Tech	56233.92	f	Facil - Building Maintenance	64232
Helms Blake Alan	Police Officer	54393.02	f	Freedom Division	64233
Shue Casey Dorton	Police Officer	55382.18	f	North Tryon Division	64234
Miller Gary K.	Bus System Spec Assc	57099.84	f	E&PM Storm Water	64235
Potts David J	Carpenter Senior	55544.09	f	Facil - Building Maintenance	64236
Crowley Ted P	Police Officer	56896.01	f	Special Events	64237
Moore Maurice Augusta	Construction Inspector	54514.35	f	EPM Main Engineering	64238
Lyles Sheila Marie	Administrative Officer II	54991.49	f	CLT Water Lab Svc-Operations	64239
Khan Mohammad	Plans Reviewer	56233.92	f	CLT Water Backflow Prevention	64240
Helms Joseph Preston	Police Officer	54393.02	f	Westover Division	64241
Simpson Jeremy Richard	Fire Fighter I	55382.18	f	Fire Station 4	64242
Anselmo Marcelo Jorge	Code Enforcement Inspector	57077.57	f	Code Enforcement Combined	64243
Hall Mary A	Administrative Officer I	55543.56	f	Internal Affairs Bureau	64244
Eichelberger Darrion Lamont	Police Officer	56896.01	f	Central Division	64245
Angevin Monique M	Code Process Specialist	54493.77	f	Plan Reviewers	64246
Johnson Krystal Charlese	Administrative Officer II	54991.49	f	CLT Water Admin - Dir. Office	64247
Lehman John Anthony	Heavy Equipment Srvc Tech Ld	56233.92	f	Facil - Fleet Maintenance	64248
Hernandez Julian	Police Officer	54393.02	f	Eastway Division	64249
Stegal Shawn Allen	Police Officer	55382.18	f	North Division	64250
Burris Dean Wayne	Conveyor Load Bridge Tech	57077.43	f	Facil - Building Maintenance	64251
Dunn Andrew James	Fire Fighter II	55541.11	f	Fire Station 21	64252
Funderburk Terence Glyne	Police Officer	56896.01	f	Independence Division	64253
Caltabiano Anthony Philip	Transportation Elect. Tech II	54493.77	f	Light Rail Maintenance	64254
Kondratyk Alexis D	Administrative Officer II	54991	f	Admin - Legal Affairs	64255
Nyx Kharyn Chase	Crime Scene Technician Sr	56233.92	f	Crime Scene Search Division	64256
Hickey Martin Cole	Police Officer	54393.02	f	Providence Division	64257
Stewart David Carson	Fire Fighter I	55382.18	f	Fire Station 6	64258
Sullivan Jr Michael Guy	Fire Fighter I	55382.18	f	Fire Station 3	64259
Sullivan Chad Dan	Fire Fighter I	55382.18	f	Fire Station 29	64260
Tysinger Brittney Nicole	Police Officer	55382.18	f	Central Division	64261
Vinson Brentley Alex	Police Officer	55382.18	f	Metro Division	64262
Williams Jonathan Martin	Fire Fighter I	55382.18	f	Fire Station 29	64263
Yarberry Mindy Lynn	Fire Fighter I	55382.18	f	Fire Station 9	64264
Kinne Erin Lee	Administrative Officer II	55380.78	f	Planning	64265
Raulerson Paul D	Systems Maintenance Mechanic	55366.75	f	Facil - Building Maintenance	64266
Powers Angela S	Administrative Officer II	55288.68	f	Communications Division	64267
Barnes Patricia Louise	Administrative Officer II	55266	f	EPM Real Estate	64268
Efird Amanda Lea	Administrative Officer II	55258.44	f	Fleet Mgmt-CDC	64269
Gooch Marcus L.	Survey Party Chief	55256.97	f	CLT Water Engineering-Admin	64270
Lainis Christopher E.	Rail Track Maintainer	55256.97	f	Maintenance Right of Way (MOW)	64271
Broadie Johnny M	Animal Control Officer-Lead	55250.24	f	Animal Care & Control Division	64272
Green Aldether	Administrative Officer II	55231.91	f	Finance Business Systems	64273
Milliron Brent	Laboratory Analyst II	55224.3	f	CLT Water Lab Svc-Operations	64274
Bills Jonathan S	Laboratory Analyst II	55224.29	f	CLT Water Lab Svc-Operations	64275
Gortney Kim Truc Tran	Laboratory Analyst II	55224.29	f	CLT Water Lab Svc-Operations	64276
Lofton Christie Kearney	Laboratory Analyst II	55224.29	f	CLT Water Lab Svc-Operations	64277
Monteverde Matthew Rotty	Laboratory Analyst II	55224.29	f	CLT Water Lab Svc-Operations	64278
Revere Sylvia Trogdon	Laboratory Analyst II	55224.29	f	CLT Water Lab Svc-Operations	64279
Stokes Emily	Laboratory Analyst II	55224.29	f	CLT Water Lab Svc-Operations	64280
Russell TaDerol K	Urban Forestry Specialist	55187.62	f	EPM Landscape Mgt	64281
Beam Larry	Construction Inspector	55162.93	f	EPM Main Engineering	64282
Chambers Tawni Nicole	Fire Fighter I	55142.24	f	Fire Station 13	64283
Gordon Zachary Scott	Fire Fighter I	55142.24	f	Fire Station 13	64284
Krasen Casey Kinyard	Fire Fighter I	55142.24	f	Fire Station 3	64285
McConnell Travis Glenn	Fire Fighter I	55142.24	f	Fire Station 13	64286
Montgomery Geneva C	Engineering Assistant	55101.23	f	CLT Water Engineering-Admin	64287
Keaton Don M	Stores Supervisor	55054.29	f	CLT Wat General Commerce Zone	64288
Ayers Richard	WW Treatment Plant Op IV	55043.73	f	CLT Water Mallard Creek Plant	64289
Webster James W.	Construction Inspector	55043.73	f	CLT Water Backflow Prevention	64290
Bailey Jerilyn A	311 Contact Center Supervisor	55025.69	f	CharMeck 311	64291
Hood Kibi	311 Contact Center Supervisor	55025.69	f	CharMeck 311	64292
Jackson Holly Tanya	311 Contact Center Supervisor	55025.69	f	CharMeck 311	64293
Clampitt Brittany	Corporate Comm Specialist	55000	f	CM-Corporate Comm & Marketing	64294
Poole Ajonelle	Public Information Specialist	55000	f	Public & Community Relations	64295
Conaway Jenyfer	Administrative Officer II	54992	f	CLT Water Business Office	64296
Boyle Kathryn Grace	Administrative Officer II	54992	f	Fire Administration	64297
Decker Leanne Marie	Administrative Officer II	54992	f	HR Management System	64298
Seegars Yashica M.	Administrative Officer II	54992	f	Fire Administration	64299
Terrell Lakesha Regienia	Administrative Officer II	54992	f	Admin - Administrative Service	64300
Garg Ankush	Administrative Officer II	54991.8	f	Financial Management	64301
Pohlheber Matthew David	Crime Scene Technician Sr	56233.92	f	Crime Scene Search Division	64302
Smith Samuel	Administrative Officer II	54991	f	Strategy & Budget	64303
Coleman Craig Armstrong	WW Treatment Plant Op IV	54493.77	f	CLT Water McDowell Creek Plant	64304
Holt Karol Corine	Police Officer	54393.02	f	Providence Division	64305
Hammill Matthew L	Heavy Equipment Srvc EVT	57077.43	f	Fleet Mgmt-Louise Ave Shop	64306
Tabor Charles Anthony	Administrative Officer II	54991	f	BO-Commercial Svcs/Pass	64307
Conner Christopher Ryan	Transportation Elect. Tech II	54493.77	f	Light Rail Maintenance	64308
Rayano Joseph M	Transportation Elect. Tech II	56233.92	f	Maintenance Right of Way (MOW)	64309
Galatas Nickolaos Sam	Fire Fighter II	55541.11	f	Fire Station 12	64310
Gheesling Michael Henry	WW Treatment Plant Op IV	54493.77	f	CLT Water McDowell Creek Plant	64311
Gaskin Joshua Samuel	Police Officer	56896.01	f	Metro Division	64312
Turner Jesse R.	Heavy Equipment Srvc Tech Ld	56233.92	f	Fleet Mgmt-Sweden Rd Shop	64313
Grogin Stuart Andrew	WW Treatment Plant Op IV	54493.77	f	CLT Water Sugar Creek Plant	64314
Thomas Jr Fredrick Ross	Police Officer	56896.01	f	Special Victims Division	64315
Hall Casey Alonzo	Fire Fighter II	55541.11	f	Fire Station 28	64316
Libby Jr John Howard	Conveyor Load Bridge Tech	57077.43	f	Facil - Building Maintenance	64317
Kopania Brad	Transportation Elect. Tech II	54964.56	f	Transportation Systems	64318
Jackson Kevin Kendell	Police Officer	54393.02	f	Metro Division	64319
Wainwright Jr Thomas E	Conveyor Load Bridge Tech	56233.92	f	Facil - Building Maintenance	64320
McMillan Renardo N	WW Treatment Plant Op IV	54493.77	f	CLT Water Sugar Creek Plant	64321
Black Latonya Denise	Field Operations Supervisor	56891	f	Light Rail Operations	64322
Harrison James William	Fire Fighter II	55541.11	f	Fire Station 30	64323
Bell Rocio Garcia	Environmental Compliance Spec	57077.35	f	CLT Water System Protection	64324
Thompson William Jeffrey	Transportation Elect. Tech II	54964.56	f	Transportation Systems	64325
June Sirlena Glenn	Police Officer	54393.02	f	Independence Division	64326
Williams III A.Z.	Environmental Compliance Spec	56233.92	f	CLT Water System Protection	64327
Sprinkle Jarrett Michael	Transportation Elect. Tech II	54493.77	f	Transportation Systems	64328
Carter Tremayne	Field Operations Supervisor	56891	f	Light Rail Operations	64329
Hoag Kyle Sean	Fire Fighter II	55541.11	f	Fire Station 29	64330
Ferguson Rachel	Environmental Compliance Spec	57077.35	f	CLT Water System Protection	64331
Powers Robert W	Labor Crew Chief II	54918.65	f	Central District (Northpointe)	64332
Lai Ugalde Chi ming Edgardo	Police Officer	54393.02	f	Central Division	64333
Yang Fong	Conveyor Load Bridge Tech	56233.92	f	Facil - Building Maintenance	64334
Stewart James Donnell	WW Treatment Plant Op IV	54493.77	f	CLT Water Mallard Creek Plant	64335
Gasque Leveson	Field Operations Supervisor	56891	f	Light Rail Operations	64336
Irvin Brent Olin	Fire Fighter II	55541.11	f	Fire Station 28	64337
Grice John R	Airport Electronics Tech Sr	57077.35	f	Facil - Building Maintenance	64338
Johnson Sean A.	311 Contact Center Supervisor	54892.13	f	CharMeck 311	64339
LaMarca Anthony	Police Officer	54393.02	f	Hickory Grove Division	64340
Ziomek III Joseph Albert	Airport Electronics Tech Sr	56233.92	f	Facil - Building Maintenance	64341
Torres Jose Antonio	Construction Inspector	54493.77	f	E&PM Storm Water	64342
Jenkins Victoria	Field Operations Supervisor	56891	f	Light Rail Operations	64343
Shank Kelley Wayne	Fire Fighter II	55541.11	f	Fire Station 33	64344
McClanahan Jason Alexander	Conveyor Load Bridge Tech	57077.35	f	Facil - Building Maintenance	64345
Evans Johnny	Erosion Control Coordinator	54886.45	f	EPM Land Development	64346
Foster Thomas Dwayne	Light Equipment Srvc Tech Mstr	54841.06	f	Fleet Mgmt-Atando Ave Shop	64347
Wofford William H	Labor Crew Chief II	54806.75	f	CLT Water Matthews Zone	64348
Crigler Alice Catherine	GIS Coordinator	54804.47	f	E&PM Storm Water	64349
Hendricks Michael C	Construction Inspector	54791.45	f	Utility Permitting	64350
Blakney Pearl Elizabeth	311 Contact Cte Prog Analyst	54784.06	f	CharMeck 311	64351
Riley Kathy H	Eng Services Investigator	54784.06	f	CLT Water Cust Service-Admin	64352
Depue Carl E	Labor Crew Chief II	54783.53	f	North East District (Orr)	64353
Torres Diane	311 Contact Center Supervisor	54736.5	f	CharMeck 311	64354
Campbell Melvin Reece	Light Equipment Srvc Tech Mstr	54733.39	f	Fleet Mgmt-CDC	64355
Lane Travis Ryan	Laboratory Analyst II	54687.95	f	CLT Water Lab Svc-Operations	64356
Matta Luis Fernando	Community Relations Spec	54664.87	f	CM- Community Relations	64357
Wilson Brian K	Facilities Services Coordinato	54662.4	f	Fire Logistics	64358
Berry James L	Stores Supervisor	54649.09	f	CLT Water West Tyvola Zone	64359
Bain Jeffrey Blair	Survey Party Chief	54647.36	f	EPM Main Engineering	64360
Irish Jason M	Survey Party Chief	54647.36	f	EPM Main Engineering	64361
Adams Patricia E	Administrative Officer I	54638.91	f	Fire Administration	64362
Dove Rodney Lee	Signal Systems Specialist	54627.37	f	Transportation Systems	64363
Martucci Fiorenzo	Construction Inspector	54627.3	f	CLT Field Ops-Pipeline Rehab	64364
Mclaughlin Curtis	Construction Inspector	54627.3	f	E&PM Storm Water	64365
Psaroudis Frank C.	Associate Urban Forestry Spec	54627.3	f	EPM Landscape Mgt	64366
Banner Gwendolyn W	Engineering Assistant	54609.41	f	CLT Water Cust Service-Admin	64367
Bennett II Thomas Lee	Construction Inspector	54600.38	f	E&PM Storm Water	64368
Fortner Kimberly Marie	Engineering Assistant	54594.12	f	Land Development	64369
Canterbury Jeffrey Lee	Light Equipment Srvc Tech Mstr	54549.19	f	Fleet Mgmt-Atando Ave Shop	64370
Andrews Jamaal J	Police Officer	54516.97	f	Independence Division	64371
Boric Margarita Pavlovna	Police Officer	54516.97	f	Independence Division	64372
Butler William Blade	Police Officer	54516.97	f	Independence Division	64373
Hess Sean Dale	Police Officer	54516.97	f	Independence Division	64374
Hood Michael Ward	Police Officer	54516.97	f	Independence Division	64375
Latiolais Sarah	Police Officer	54516.97	f	North Tryon Division	64376
Lopez David Alexander	Police Officer	54516.97	f	Central Division	64377
Phillips Joshua Ryan	Police Officer	54516.97	f	Eastway Division	64378
Rodriguez Josue Rafael	Police Officer	54516.97	f	Westover Division	64379
Webster Jr Walter Emory	Police Officer	54516.97	f	Metro Division	64380
Colichio Ronald James	Police Officer	54516.84	f	Westover Division	64381
Dishong Daniel Joseph	Police Officer	54516.84	f	Central Division	64382
Howell Alex Ryan	Police Officer	54516.84	f	Steele Creek Division	64383
Lopez Lantigua Ivelisse Maria	Code Enforcement Inspector	56233.23	f	Code Enforcement Combined	64384
Keller Alexander Matthew	Police Officer	55508.19	f	Freedom Division	64385
Queen Bonnie Lynn	Crime Scene Technician Sr	57077.35	f	Crime Scene Search Division	64386
Witkowski Alan V	WW Treatment Plant Op IV	54493.77	f	CLT Water Sugar Creek Plant	64387
Womack Alton	Field Operations Supervisor	56891	f	Light Rail Operations	64388
Wright Chanda Leigh	Field Operations Supervisor	56891	f	Light Rail Operations	64389
Wallace Amy Lynn	Administrative Officer II	56868.84	f	EPM BS CMGC	64390
Lancaster Joshua Michael	Police Officer	54393.02	f	Freedom Division	64391
Martin Daniel Bruce	Police Officer	55508.19	f	Providence Division	64392
Ferriss Victoria	Horticulturist	56225.16	f	EPM Landscape Mgt	64393
Wallace David Evans	Heavy Equipment Srvc Tech Ld	57077.35	f	Facil - Fleet Maintenance	64394
Wilkes Stacia Andrea	WW Treatment Plant Op IV	54493.48	f	CLT Water Sugar Creek Plant	64395
Warren Stephen Harold	Heavy Equipment Srvc EVT	57077.35	f	Fleet Mgmt-Sweden Rd Shop	64396
Martinez Yomai	Fire Fighter II	55508.19	f	Fire Station 26	64397
Gobin Parsram	Facilities Services Coordinato	56171.38	f	CLT Water Engineering-Admin	64398
Meyer William Gregory	Police Officer	54393.02	f	North Tryon Division	64399
Dominguez Christopher Xavier	Police Officer	56865.43	f	Westover Division	64400
Restrepo Sorrosa Kenia Gabriela	Police Officer	55508.19	f	Hickory Grove Division	64401
Domm Joseph T	Light Equipment Srvc Tech Mstr	56164.78	f	Fleet Mgmt-Atando Ave Shop	64402
Somers Steven Alex	Light Equipment Srvc Tech Ld	54492.56	f	Fleet Mgmt-Atando Ave Shop	64403
Morton Emily Grace	Police Officer	54393.02	f	Independence Division	64404
Gonzalez II Jonathan Eduardo	Police Officer	56865.43	f	Westover Division	64405
Worley John A	Conveyor Load Bridge Tech	57077.35	f	Facil - Building Maintenance	64406
Robles Daniel Luis	Fire Fighter II	55508.19	f	Fire Station 11	64407
Manus Sandy Dean	Systems Maintenance Mechanic	56155.81	f	EPM BS CMGC	64408
Jackson Jason Daniel	Engineering Assistant	54488.49	f	E&PM Storm Water Water Quality	64409
Nealeigh Clinton William	Police Officer	54393.02	f	University City Division	64410
Marin Kevin	Police Officer	56865.43	f	Hickory Grove Division	64411
Campbell Jamie A.	Airport Electronics Tech Sr	57077.31	f	Facil - Building Maintenance	64412
Wiggins Bryan Malcolm	Police Officer	55508.19	f	Metro Division	64413
Thompson Cynthia A	Administrative Officer II	56118.89	f	EPM Main Engineering	64414
Ford Paulus	Administrative Officer II	54487.66	f	Executive	64415
Paul Cristian	Police Officer	54393.02	f	Central Division	64416
Richardson Natalie V	Laboratory Analyst II	56859.03	f	CLT Water Lab Svc-Operations	64417
Sarro Louis Anthony	Airport Electronics Tech Sr	57077.31	f	Facil - Building Maintenance	64418
Williams Dustin Patrick	Fire Fighter II	55508.19	f	Fire Station 40	64419
Sorensen Keith Alan	Transportation Analyst	56108.8	f	Municipal Planning	64420
Valverde Esteban David	Engineering Assistant	54461.24	f	Utility Permitting	64421
Phung Nelson	Police Officer	54393.02	f	South Division	64422
Rodriguez Madeline	Code Enforcement Inspector	56852.51	f	Code Enforcement Combined	64423
Haigler Roger Neal	Heavy Equipment Srvc Tech Mstr	57071.01	f	Fleet Mgmt-Sweden Rd Shop	64424
Worden Jared Austin	Fire Fighter II	55508.19	f	Fire Station 35	64425
Sammut Dax T	Police Officer	54393.02	f	Freedom Division	64500
Jenkins Gwendolyn E	Administrative Officer II	56091.49	f	CM-Corporate Comm & Marketing	64426
Aldridge Casey L	Construction Inspector	54413.01	f	CLT Water Eng-Install & Dev	64427
Putnam Michael James	Police Officer	54393.02	f	Steele Creek Division	64428
Davis Scott Andrew	Systems Maint Mechanic Sr	56850.92	f	EPM BS Spratt	64429
Sheldon Juliann	Public Information Specialist	57059.26	f	Public & Community Relations	64430
Basulto Lindsey Page	Police Officer	55508.03	f	North Division	64431
Burch Jerry Wayne	Police Officer	55508.03	f	North Tryon Division	64432
Mathews Shane Dustin	Police Officer	55508.03	f	Hickory Grove Division	64433
James Stephen Carlton	Senior Drafting Technician	55469.83	f	Dev - Executive	64434
Franze Joanne Marie	Police Customer Service Supv	55451.14	f	Non-Emergency Police Services	64435
Canuto Dennis	Senior Tech Service Specialist	55420.91	f	Public Safety Communications	64436
Barnhardt Kristen Nicole	Public Information Specialist	55419.59	f	Administrative Management	64437
James Brela B.	Engineering Assistant	55408.73	f	CLT Water Backflow Prevention	64438
Medlin Renee Amber	Engineering Assistant	55408.57	f	CLT Field Ops-Pipeline Rehab	64439
Gardner Scott Jerome	Conveyor Load Bridge Tech	55402.76	f	Facil - Building Maintenance	64440
Sutton Thomas Jefferson	Rail Track Maintainer	55393.14	f	Maintenance Right of Way (MOW)	64441
Armstrong Jr Charles Stanford	Urban Forestry Specialist	55382.67	f	EPM Land Development	64442
Alexander Aaron Nathaniel	Fire Fighter I	55382.18	f	Fire Station 19	64443
Bader Kyle Thomas	Fire Fighter I	55382.18	f	Fire Station 33	64444
Baughn Nicholas Terrence	Fire Fighter I	55382.18	f	Fire Station 40	64445
Bennett Brenley Renee	Fire Fighter I	55382.18	f	Fire Station 1	64446
Blankfield Jeffrey Robert	Fire Fighter II	55382.18	f	Fire Station 40	64447
Carter Andrew Stephen	Fire Fighter I	55382.18	f	Fire Station 4	64448
Clark Jawan Cameron	Fire Fighter I	55382.18	f	Fire Station 18	64449
Cook Zakee Michael	Fire Fighter I	55382.18	f	Fire Station 28	64450
Correll Richard Brad	Fire Fighter I	55382.18	f	Fire Station 40	64451
Curbelo Omar	Fire Fighter I	55382.18	f	Fire Station 32	64452
Davis Adrienne M.	Police Officer	55382.18	f	University City Division	64453
Decker Jared Matthew	Police Officer	55382.18	f	North Tryon Division	64454
Dudley Jonathan C	Police Officer	55382.18	f	Violent Crime Division	64455
Epolito Matthew Anthony	Police Officer	55382.18	f	North Tryon Division	64456
Frowein James Brandon	Fire Fighter I	55382.18	f	Fire Station 42	64457
Hough Octavius Emmanuel	Fire Fighter I	55382.18	f	Fire Station 14	64458
Johnson Cody Christopher	Fire Fighter II	55382.18	f	Fire Station 35	64459
Kennedy Brendan Patrick	Police Officer	55382.18	f	Metro Division	64460
Williams Phillip Eugene	Airport Operations Officer III	56086.14	f	Oper - Airside	64461
Graham Meghan Elizabeth	Contracts Admin Specialist	57026.26	f	Finance - Executive	64462
Woliver Stephan	Systems Maint Mechanic Sr	56850.92	f	EPM BS Spratt	64463
Reed Saeedah	Police Officer	54393.02	f	Eastway Division	64464
Agner Daniel James	Engineering Services Supv	56084.6	f	CLT Water Field Ops Admin	64465
Braun Peter Christopher	Construction Inspector	54413.01	f	E&PM Storm Water	64466
Bradley Michelle Lea	Administrative Officer II	57010.55	f	CLT Water EMD Administration	64467
Obregon Jonathan Phelan	Public Information Specialist	56808.79	f	Admin-Public Affairs/Media Rel	64468
Ripoll Alisha Lauren	Police Officer	54393.02	f	Eastway Division	64469
Botkin Frances Ashley	Engineering Services Supv	56084.4	f	EPM Land Development	64470
Hahn Nathan L	Construction Inspector	54413.01	f	CLT Water Engineering-Admin	64471
Jarendic Nenad	Bus System Spec Assc	57000	f	Tech - Executive	64472
Johnson Astrid T	Administrative Officer II	56806.43	f	Fire Administration	64473
Johnson Steigen Meredith	Administrative Officer II	56806.43	f	Fire Administration	64474
Poore Christopher Peter	Public Information Specialist	56805.89	f	Admin-Public Affairs/Media Rel	64475
Buchanan Steven L	Police Telecommunicator	56802.89	f	Communications Division	64476
Rodriguez Herodutus Pastor	Systems Maintenance Mechanic	56796.14	f	Facil - Building Maintenance	64477
Martinez Edwin Freddy	Conveyor Load Bridge Tech	56796.03	f	Facil - Building Maintenance	64478
Taylor Michael L	Airport Electronics Tech Sr	56796.03	f	Facil - Building Maintenance	64479
Young David Charles	Airport Electronics Tech Sr	56796.03	f	Facil - Airside Maintenance (F	64480
Handy Sandra Rose	Asst Field Operations Supv	56759.69	f	EPM Landscape Mgt	64481
Eudy Wyatt Sidney	Senior Drafting Technician	56702.36	f	Implementation	64482
Kendrick Barbara J	Administrative Officer I	56695.75	f	Business Support Combined	64483
McCannell II Richard Alan	Survey Party Chief	56673.58	f	EPM Main Engineering	64484
Tucker Jeffrey C	Airfield Maint Crew Chf	56673.58	f	Facil - Airside Maintenance (F	64485
Relyea Kaitlyn Rose	Administrative Officer II	56641.24	f	Finance - Executive	64486
Ledbetter Deanna L	Administrative Officer II	56640.21	f	Admin - Executive	64487
Mintz Tyler Andrew	WW Treatment Plant Op IV	56531.6	f	CLT Water Sugar Creek Plant	64488
White Henry	Construction Inspector	56503.15	f	E&PM Storm Water	64489
Graham Barry	Survey Party Chief	56500.46	f	EPM Main Engineering	64490
Coes Brandon R	Code Enforcement Inspector	56498.35	f	Code Enforcement Combined	64491
Cattabriga Miriam M	Urban Forestry Specialist	56455	f	EPM Land Development	64492
Kunzig IV Henry Jacobi	Urban Forestry Specialist	56455	f	EPM Land Development	64493
Trantham William Dwayne	Latent Fingerprint Examiner	56409.68	f	Crime Lab Division	64494
Friday James	Construction Inspector	56376.43	f	EPM Main Engineering	64495
Schmoyer Melanie Kristine	Administrative Officer II	56358	f	Finance - Executive	64496
Jenkins Jerry Lynn	Engineering Assistant	56347.2	f	E&PM Storm Water Water Quality	64497
Cobb James Jeffrey	Survey Party Chief	56306.76	f	EPM Main Engineering	64498
Lopp Eric W	Airport Electronics Tech Sr	56234	f	Facil - Building Maintenance	64499
Prather-Foster Monique	Administrative Officer II	56048.02	f	E&PM Storm Water	64501
Rigney Michael Scott	Construction Inspector	54413.01	f	E&PM Storm Water	64502
Sejdic Alen	Police Officer	54393.02	f	Eastway Division	64503
Frixen Jennifer Jo	Associate Planner	56023.39	f	Planning	64504
Santos Benjamin	Construction Inspector	54413.01	f	CLT Water Engineering-Admin	64505
Sellars Candyce L	Police Officer	54393.02	f	Freedom Division	64506
Knight Jimmy Lee	Construction Inspector	56015.41	f	E&PM Storm Water	64507
Wallace Jeremy Todd	Construction Inspector	54413.01	f	E&PM Storm Water	64508
Rand Jr Eddie B	Facilities Services Coordinato	56996.15	f	EPM Landscape Mgt	64509
Showers Abby Elizabeth	Police Officer	54393.02	f	Metro Division	64510
Ferguson Gary C	Drafting Technician	56013.83	f	EPM Main Engineering	64511
Wright David Savalas	Construction Inspector	54413.01	f	E&PM Storm Water	64512
Grant Cherie Terrell	Community&Commerce Specialist	56954.72	f	Community Engagement	64513
Johnson Tiffany Jivon	Community&Commerce Specialist	56954	f	Community Engage Combined	64514
Jones YongE.	Community&Commerce Specialist	56954	f	Community Engagement	64515
Riley Lila	Community&Commerce Specialist	56954	f	Community Engage Combined	64516
Allen Bradley C	Fire Fighter II	56929.64	f	Fire Station 23	64517
Auten Jr Charles Clifford	Fire Fighter II	56929.64	f	Fire Station 20	64518
Barringer Matthew Levi	Fire Fighter II	56929.64	f	Fire Station 40	64519
Brown-Butler Caston	Fire Fighter II	56929.64	f	Fire Station 8	64520
Cipriano Alexander Francesco	Fire Fighter II	56929.64	f	Fire Station 22	64521
Ferrell Paul Lee	Fire Fighter II	56929.64	f	Fire Station 28	64522
Ganous Cameron Lee	Fire Fighter II	56929.64	f	Fire Station 2	64523
Garon Jessica	Fire Fighter II	56929.64	f	Fire Station 29	64524
Grant Rashad A.	Fire Fighter II	56929.64	f	Fire Station 27	64525
Huffstetler Wesley Rhyne	Fire Fighter II	56929.64	f	Fire Station 8	64526
Kennedy Randall Isaac	Fire Fighter II	56929.64	f	Fire Station 27	64527
Mahaley Jr Benjamin Rhett	Fire Fighter II	56929.64	f	Fire Station 33	64528
McDaniel Alex Steven	Fire Fighter II	56929.64	f	Fire Station 23	64529
Medeiros Paul Michael	Fire Fighter II	56929.64	f	Fire Station 14	64530
Morrison Jonathan James	Fire Fighter II	56929.64	f	Fire Station 5	64531
Perkins Jason Andrew	Fire Fighter II	56929.64	f	Fire Station 7	64532
Phillips Travis Lee	Fire Fighter II	56929.64	f	Fire Station 7	64533
Turner Isaiah Jordan	Fire Fighter II	56929.64	f	Fire Station 7	64534
Ulery Adam Glenn	Fire Fighter II	56929.64	f	Fire Station 16	64535
Wilcox Jeremy Jackson	Fire Fighter II	56929.64	f	Fire Station 26	64536
Albanese Carl A	Police Officer	56896.01	f	Westover Division	64537
Aguilera Jose'	WW Treatment Plant Op IV	56007.16	f	CLT Water McAlpine Creek Plant	64538
Simmons Steven Rashaad	Police Officer	54393.02	f	Freedom Division	64539
Bebber Gloria L	Domestic Violence Counselor	54412.01	f	Special Victims Division	64540
Holback Annesia Tylette	Code Enforcement Inspector	56006.97	f	Plan Reviewers	64541
Smith Chad Gene	Police Officer	54393.02	f	Central Division	64542
Mason Gregory Lynn	Construction Inspector	54396.12	f	E&PM Storm Water	64543
Burris Bonnie Jo	Administrative Officer II	55997.33	f	I&T Administration	64544
St. John Raymond Resean	Police Officer	54393.02	f	Central Division	64545
Briggs Lezlie Channan	Community Relations Spec	54395.58	f	CM- Community Relations	64546
Dulin Rodney Jeremiah	Heavy Equipment Srvc Tech Mstr	55991.14	f	Fleet Mgmt-Louise Ave Shop	64547
Stewart Erik Colin	Police Officer	54393.02	f	Providence Division	64548
Batson David Aaron	Police Officer	54393.02	f	North Tryon Division	64549
Bowlin Melissa A	Domestic Violence Counselor	55986.47	f	Special Victims Division	64550
Szynarowski Jonathan	Police Officer	54393.02	f	University City Division	64551
Blackmon Ryan William	Police Officer	54393.02	f	North Division	64552
Birmingham Wanda S	Assistant Planner	55967.91	f	Planning	64553
Tedeschi Kyle J	Police Officer	54393.02	f	Steele Creek Division	64554
Blum Justin	Police Officer	54393.02	f	South Division	64555
Carter Molly Clair Knittel	Transportation Planner I	55951.27	f	Planning & Special Operations	64556
Tran-Thompson Ryan Mitchell	Police Officer	54393.02	f	North Tryon Division	64557
Tucker Kenneth Samuel	Police Officer	54393.02	f	Central Division	64558
Varley Brandon Terrell	Police Officer	54393.02	f	Steele Creek Division	64559
Walters Daronn Tyrae	Police Officer	54393.02	f	Freedom Division	64560
Watts Michael Reid	Police Officer	54393.02	f	Providence Division	64561
Webber Andrew Kyle	Police Officer	54393.02	f	Providence Division	64562
West Jonathan William Tyler	Police Officer	54393.02	f	Steele Creek Division	64563
Miracle Nathan	Accountant I	54388.48	f	Finance Accounting	64564
Appiah Geraldine Akosua	Transportation Elect. Tech II	54359.74	f	Light Rail Maintenance	64565
Dean Jonathan Glen	Construction Inspector	54359.74	f	EPM Main Engineering	64566
Fielder Demetrius Devon	Construction Inspector	54359.74	f	EPM Main Engineering	64567
Massey Larry james	Transportation Elect. Tech II	54359.74	f	Light Rail Maintenance	64568
Roberts Christopher Pernell	Transportation Elect. Tech II	54359.74	f	Maintenance Right of Way (MOW)	64569
Sonpon Alex Weah	Transportation Elect. Tech II	54359.74	f	Light Rail Maintenance	64570
Aston James	Transportation Elect. Tech II	54359.71	f	Maintenance Right of Way (MOW)	64571
Bernhard Eugene Gilbert	Construction Inspector	54359.71	f	E&PM Storm Water	64572
Bevans Robert M.	WW Treatment Plant Op IV	54359.71	f	CLT Water McAlpine Creek Plant	64573
Clifton Brenda V	Code Enforcement Inspector	54359.71	f	Code Enforcement Combined	64574
Duval Michele Denise	Senior Tech Service Specialist	54359.71	f	CLT Water Business Sys (IT)	64575
Ebneth Andrew	WW Treatment Plant Op IV	54359.71	f	CLT Water McAlpine Creek Plant	64576
Bonaparte Adam C	Police Officer	54393.02	f	Hickory Grove Division	64577
Klein Justin C.	Erosion Control Coordinator	55929.38	f	EPM Land Development	64578
Braxton Sierra J	Police Officer	54393.02	f	North Tryon Division	64579
Knabb Eric L	WW Treatment Plant Op II	55891.38	f	CLT Water McAlpine Creek Plant	64580
Cascetta Adam S	Police Officer	54393.02	f	Independence Division	64581
Ford Erin Nicole	Transit Scheduling Analyst	55879.22	f	Planning & Special Operations	64582
D'Avanzo Christopher Sean	Police Officer	54393.02	f	Steele Creek Division	64583
Early III Anderson C	Facilities Services Coordinato	55849.06	f	Facilities	64584
Davis Carlisa	Police Officer	54393.02	f	Central Division	64585
Brown Michael J	Construction Inspector	55824.88	f	EPM Main Engineering	64586
Dunham Ervin Barrett	Police Officer	54393.02	f	Central Division	64587
Robinson Cavolzea	Airport Operations Officer III	55809.57	f	Oper - Airside	64588
Eagle Christopher	Police Officer	54393.02	f	North Division	64589
O'Leary Caitlin Bonfiglio	Laboratory Analyst II	55760.45	f	CLT Water Lab Svc-Operations	64590
Elfrard Ronald	Police Officer	54393.02	f	Freedom Division	64591
Lee Justin Michael	Administrative Officer II	55724.03	f	Human Resources Division	64592
Eshietedoho Uwemedimo godwin	Police Officer	54393.02	f	Hickory Grove Division	64593
Hatley Ronnie J	Labor Crew Chief II	55679.73	f	North East District (Orr)	64594
Estes Brandon Kyle	Police Officer	54393.02	f	Steele Creek Division	64595
Boyd Lavernia V.	Administrative Officer I	55630.12	f	Public & Community Relations	64596
Evans Jeremy Clayton Paul	Police Officer	54393.02	f	North Tryon Division	64597
Hazen Jr Macon Calvert	Light Equipment Srvc Tech Mstr	55603.73	f	Fleet Mgmt-Atando Ave Shop	64598
Clark Jr Calvin R	Airport Electronics Tech Sr	55592.86	f	Facil - Airside Maintenance (F	64599
Fabi Mark A	Police Officer	54393.02	f	Providence Division	64600
Farrar Caleb	Police Officer	54393.02	f	Westover Division	64601
Felipe Johnny	Police Officer	54393.02	f	Central Division	64602
Furr III Cecil James	Police Officer	54393.02	f	North Tryon Division	64603
Garcia Christopher Michael	Police Officer	54393.02	f	Eastway Division	64604
Garris Leshaun	Police Officer	54393.02	f	Providence Division	64605
Kelly Eric Shaun	Police Officer	51920.8	f	Central Division	64606
Kersey Ashton Javon	Police Officer	51920.8	f	University City Division	64607
McGill Anthony Ward	Police Officer	51920.8	f	Metro Division	64608
Rhodes III Charles Frank	Police Officer	51920.8	f	Freedom Division	64609
Suggs Courtney Ali	Police Officer	51920.8	f	North Tryon Division	64610
Trowbridge Brittony Michelle	Police Officer	51920.8	f	North Tryon Division	64611
Wolfe Jr James F	Police Officer	51920.8	f	Hickory Grove Division	64612
Bostick Matthew David	Police Officer	51920.61	f	North Division	64613
Brown Andrew Merritt	Police Officer	51920.61	f	South Division	64614
Buie Malcom Anthony	Police Officer	51920.61	f	Providence Division	64615
Castaneda Jason Christopher	Police Officer	51920.61	f	Freedom Division	64616
Costner Caleb Dean	Police Officer	51920.61	f	Westover Division	64617
Fairfield Kyle John	Police Officer	51920.61	f	Providence Division	64618
Helms Misty Paige	Police Officer	51920.61	f	Hickory Grove Division	64619
Lineberger Dylan Brad	Police Officer	51920.61	f	Central Division	64620
McGill Chandler James	Police Officer	51920.61	f	Providence Division	64621
McKenzie Jonathan Wayne	Police Officer	51920.61	f	North Division	64622
Barr Kenneth M	Fire Telecommunicator II	52540.38	f	Fire Communications	64623
Reynolds Benjamin T	Police Officer	51920.61	f	Freedom Division	64624
Williams Jordan Alexander	Police Officer	51920.61	f	Central Division	64625
Wilson Benjamin Andrew	Police Officer	51920.61	f	Providence Division	64626
Drake Amy Ranae	Fire Fighter I	52516.86	f	Fire Station 32	64627
Stanley Rusty Steven	Water Treatment Plant Opr A	51899.21	f	CLT Water Franklin Plant	64628
Freeman Dexter Stanley	Fire Fighter I	52516.86	f	Fire Station 10	64629
Green Jr David Melvin	Police Officer	51803.32	f	Providence Division	64630
Almendarez Shawana Withrow	Paralegal	51899.1	f	City Attorney	64631
Holmes Marcia Jayne	WW Treatment Plant Op IV	53556.39	f	CLT Water Irwin Creek Plt OPS	64632
Bunker Christopher R	Heavy Equipment Srvc Tech Sr	52477.04	f	Facil - Fleet Maintenance	64633
Grellner Matthew John	Police Officer	51803.32	f	University City Division	64634
Bailey Glenn Grant	Treatment Plant Mechanic III	51899.1	f	CLT Water EMD Maintenance	64635
Huneycutt John Exom	Construction Inspector	53556.39	f	EPM Main Engineering	64636
Robinson Craig J	Urban Forestry Specialist	54113.14	f	EPM Land Development	64637
Bellamy Jeanette Catherine	Bus System Spec Assc	52443.9	f	Finance Accounting	64638
Guiliano Theresa Marie	Police Officer	51803.32	f	Providence Division	64639
Maring Steven Daniel	Transportation Elect. Tech II	53556.39	f	Light Rail Maintenance	64640
Branch Nathaniel Matthew	Water Treatment Plant Opr A	51899.1	f	CLT Water Franklin Plant	64641
Tryon Garret Tyler	Police Officer	52864.81	f	University City Division	64642
Edwards Terry S	Code Process Specialist	54359.71	f	Zoning Combined	64643
Walker John S	Survey Party Chief	53416	f	CLT Water Engineering-Admin	64644
Johnson Terrence Todd	Systems Maint Mechanic Sr	54091.96	f	Facil - Building Maintenance	64645
Carter Brenda Fields	Administrative Officer I	52432.18	f	CLT Wat General Commerce Zone	64646
Hancock Stephen Joseph	Police Officer	51803.32	f	Independence Division	64647
Mitchell Marcus G	Construction Inspector	53556.39	f	EPM Main Engineering	64648
Robinson Rhonda Crabtree	WW Treatment Plant Op IV	53556.39	f	CLT Water Sugar Creek Plant	64649
Tenhengel Timothy	Transportation Elect. Tech II	53556.39	f	Light Rail Maintenance	64650
Thomson Nicholas Alan	Electronics Technician II	53556.39	f	Public Safety Communications	64651
Williams Al Jewel	Transportation Elect. Tech II	53556.39	f	CityLYNX	64652
Generette Kisha Danielle	Construction Inspector	53556.25	f	EPM Main Engineering	64653
Gleason Scott lee	Heavy Equipment Srvc Tech Mstr	53555.87	f	Fleet Mgmt-Louise Ave Shop	64654
Sims Kevin Lebron	WW Treatment Plant Op IV	53555.87	f	CLT Water McAlpine Creek Plant	64655
Gray Jeffrey Justin	Construction Inspector	53555.46	f	E&PM Storm Water	64656
Argonauta Matthew Webster Spielman	Construction Inspector	53555.34	f	CLT Water Eng-Install & Dev	64657
Barnette James Robert	Heavy Equipment Srvc Tech Mstr	53555.34	f	Fleet Mgmt-Louise Ave Shop	64658
Barnette Neil	Code Enforcement Inspector	53555.34	f	Code Enforcement Combined	64659
Beverly Chase Anderson	Systems Maint Mechanic Sr	53555.34	f	Facil - Building Maintenance	64660
Burgesser Andrew	Code Enforcement Inspector	53555.34	f	Code Enforcement Combined	64661
Butler Gloria	Code Enforcement Inspector	53555.34	f	Code Enforcement Combined	64662
Cliffe Thomas Paul	Construction Inspector	53555.34	f	CLT Water Backflow Prevention	64663
Gilmore Melissa	WW Treatment Plant Op IV	53555.34	f	CLT Water Union County	64664
Grant Melissa M	Code Enforcement Inspector	53555.34	f	Code Enforcement Combined	64665
Jerez Marjorie	Code Enforcement Inspector	53555.34	f	Code Enforcement Combined	64666
Jones John Devon	Code Enforcement Inspector	53555.34	f	Code Enforcement Combined	64667
Laytham Samuel Alexander	WW Treatment Plant Op IV	53555.34	f	CLT Water McDowell Creek Plant	64668
Lewis Dennis	Code Enforcement Inspector	53555.34	f	Code Enforcement Combined	64669
Martin Richard James	Heavy Equipment Srvc Tech Mstr	53555.34	f	Fleet Mgmt-Louise Ave Shop	64670
McClain Michael Christopher	Code Enforcement Inspector	53555.34	f	Code Enforcement Combined	64671
Myers Simeon Uriah	Construction Inspector	53555.34	f	CLT Water Engineering-Admin	64672
Nieder Christopher J	Construction Inspector	53555.34	f	E&PM Storm Water	64673
Russell Kevin K	Senior Tech Service Specialist	53555.34	f	Computer Technology Solutions	64674
Shinn Olin Basil	Construction Inspector	53555.34	f	Utility Permitting	64675
Stallings Marcus O'Neal	Construction Inspector	53555.34	f	CLT Water Engineering-Admin	64676
Tettmar Christopher Alex	Construction Inspector	53555.34	f	CLT Field Ops-Pipeline Rehab	64677
Wahabodeen Shoaib Ahmed	Construction Inspector	53555.34	f	CLT Water Eng-Install & Dev	64678
Walker Raufilia	Construction Inspector	53555.34	f	Utility Permitting	64679
Wallace Erica	Construction Inspector	53555.34	f	EPM Main Engineering	64680
Weatherly Matthew Scott	Construction Inspector	53555.34	f	Utility Permitting	64681
Addler Philip E	Systems Maint Mechanic Sr	53555	f	Facil - Building Maintenance	64682
Jagacki Robert	Heavy Equipment Srvc Tech Mstr	53555	f	Fleet Mgmt-Sweden Rd Shop	64683
Malott Bruce	Transportation Elect. Tech II	53555	f	Maintenance Right of Way (MOW)	64684
Miller Freddy	Transportation Elect. Tech II	53555	f	Light Rail Maintenance	64685
Parks Marshall Keith	Systems Maint Mechanic Sr	53555	f	Facil - Building Maintenance	64686
Reed Lamay	Transportation Elect. Tech II	53555	f	Maintenance Right of Way (MOW)	64687
Watabe Tadashi	Transportation Elect. Tech II	53555	f	Light Rail Maintenance	64688
Mims Talcot Lee	Asst Field Operations Supv	53552.37	f	EPM Landscape Mgt	64689
Dalton Robert Oscar	Transportation Elect. Tech II	53540.03	f	Light Rail Maintenance	64690
Nichols Pennie R	Administrative Officer I	53522.09	f	Admin - Administrative Service	64691
Samuels Denzel Challynger	Police Officer	53494.16	f	School Resources Officers	64692
Hatley Ricky D	Labor Crew Chief II	53479.34	f	North East District (Orr)	64693
Roy Lori A.	Purchasing Agent	53460.69	f	Light Rail Administration	64694
Dixon Shannon	Paralegal	51899.1	f	Police Attorney	64695
McCormick D'Arcy Satoria	Paralegal	51899.1	f	City Attorney	64696
Pegues Javario Frankie	Environmental Program Inspecto	51899.1	f	CLT Water System Protection	64697
Highet Martine Gleeson	Community Relations Spec	52858.1	f	Violent Crime Division	64698
Biddlecom Glenn Robert	Treatment Plant Mechanic II	52432.11	f	CLT Water EMD Maintenance	64699
Stegall Jr James Larry	Treatment Plant Mechanic III	51899.1	f	CLT Water EMD Maintenance	64700
Putnam Jonathan Carroll	Systems Maintenance Mechanic	53414.42	f	Facil - Building Maintenance	64701
Edwards Trevor L.	Construction Inspector	54359.71	f	CLT Water Eng-Install & Dev	64702
Grosvenor Ronald D	Systems Maint Mechanic Sr	54091.58	f	Facil - Building Maintenance	64703
Gullion Lesley A	Drafting Technician	52818	f	EPM Main Engineering	64704
Taylor Andy Ray	Treatment Plant Mechanic III	51899.1	f	CLT Water EMD Maintenance	64705
Howard William B	Water Quality Technician Ld	52428.94	f	CLT Water Lab Svc-Operations	64706
Smith Darryl D	Rail Operator	53414.2	f	Light Rail Operations	64707
Stokes Terry Ann	Community Relations Spec	52811.25	f	CM- Community Relations	64708
Howell Michael W	Police Officer	51803.32	f	Freedom Division	64709
Clay Barney I.	Labor Crew Chief II	52303.92	f	Central District (Northpointe)	64710
Fletcher John	Transportation Elect. Tech II	54359.71	f	Light Rail Maintenance	64711
Hall Kenyon M	Accountant I	52792.65	f	Finance - Executive	64712
Hunt Christian	Police Officer	51803.32	f	North Tryon Division	64713
Rivers Michael Alexander	Labor Crew Chief II	51888.57	f	CLT Wat General Commerce Zone	64714
Nivens Tara D	Administrative Officer II	53389	f	Financial Management	64715
Cunningham Kent L.	Treatment Plant Mechanic II	52303.92	f	CLT Water EMD Maintenance	64716
Peppler Samuel J	Systems Maint Mechanic Sr	54091.58	f	Facil - Building Maintenance	64717
Gaffney Carey Scott	Transportation Elect. Tech II	54359.71	f	Light Rail Maintenance	64718
McPike Joel Charles	Survey Party Chief	52780	f	EPM Main Engineering	64719
Jacobs Veronica Renay	Police Officer	51803.32	f	Eastway Division	64720
Mauldin Cherie Hunter	Police Telecommunicator	51882.21	f	Communications Division	64721
Evans Joshua C	Light Equipment Srvc Tech Mstr	53350.55	f	Fleet Mgmt-12th Street Shop	64722
Davis Gerome T	Labor Crew Chief II	52303.92	f	CLT Wat General Commerce Zone	64723
Simmons Debbie James	Contracts Admin Specialist	54035.33	f	Procurement Services	64724
Haskins Jr Darold C	Transportation Elect. Tech II	54359.71	f	Light Rail Maintenance	64725
Taylor Christopher Shaun	Electronics Technician II	52765	f	Public Safety Communications	64726
Johnson Omar	Police Officer	51803.32	f	North Tryon Division	64727
Foxworth David L	Labor Crew Chief I	51848.84	f	CLT Water Huntersville Zone	64728
Augustus Ryan Kenneth	Fire Telecommunicator II	53331.02	f	Fire Communications	64729
Trohanowsky Carole M	Administrative Secretary I	52303.92	f	CLT Water Admin - Dir. Office	64730
Schenk Charles Robert	Asst Field Operations Supv	54031	f	EPM Landscape Mgt	64731
Hess Bruce D	Construction Inspector	54359.71	f	CLT Field Ops-Pipeline Rehab	64732
Chichersky Michael John	Transportation Elect. Tech II	52764.78	f	Light Rail Maintenance	64733
Jones Travis L	Police Officer	51803.32	f	Providence Division	64734
Ksor Wan Sande	Police Officer	51803.32	f	University City Division	64735
Lahey Matthew Joseph	Police Officer	51803.32	f	Steele Creek Division	64736
Langdon Benjamin Charles	Police Officer	51803.32	f	Freedom Division	64737
Lawrence Dustin Markese	Police Officer	51803.32	f	Central Division	64738
Letteney Kyle Ward	Police Officer	51803.32	f	Metro Division	64739
Luiz Nicholas	Police Officer	51803.32	f	North Division	64740
Massey Aaron Robert	Police Officer	51803.32	f	Central Division	64741
McCall Bryson Jarrell	Police Officer	51803.32	f	North Tryon Division	64742
McClary Carrington Coleman	Police Officer	51803.32	f	Westover Division	64743
McClure Jr Robert Martin	Police Officer	51803.32	f	Independence Division	64744
McDade James Andrew	Police Officer	51803.32	f	Providence Division	64745
Moran Jack Henry	Police Officer	51803.32	f	University City Division	64746
Mousel Jr Roger Orville	Police Officer	51803.32	f	North Tryon Division	64747
Murphy Erin Lynn	Police Officer	51803.32	f	Providence Division	64748
MUSIEL MARK RUSSELL	Police Officer	51803.32	f	Hickory Grove Division	64749
Patel Siddhraj	Police Officer	51803.32	f	North Division	64750
Rende Jessica Marie	Police Officer	51803.32	f	Hickory Grove Division	64751
Richards Andrew Scott	Police Officer	51803.32	f	South Division	64752
Ridenhour Jabri	Police Officer	51803.32	f	North Division	64753
Rittenhouse Evan Lloyd	Police Officer	51803.32	f	Central Division	64754
Sessoms Kyle Franklin	Police Officer	51803.32	f	North Tryon Division	64755
Seymour Evan	Police Officer	51803.32	f	Hickory Grove Division	64756
Stephens Shelby Ashlyn	Police Officer	51803.32	f	Central Division	64757
Styka William Christopher	Police Officer	51803.32	f	Freedom Division	64758
Tellier-Mitchell Monet	Police Officer	51803.32	f	Central Division	64759
Topper Michael	Police Officer	51803.32	f	North Division	64760
Torres Erik Fernando	Police Officer	51803.32	f	Freedom Division	64761
Tripp Ashlyn	Police Officer	51803.32	f	North Division	64762
Tubbs Daniel Larry	Police Officer	51803.32	f	Freedom Division	64763
Vaught Landry Joseph	Police Officer	51803.32	f	North Tryon Division	64764
Viscount Alec William	Police Officer	51803.32	f	University City Division	64765
Watson Katelyn Amber	Police Officer	51803.32	f	North Tryon Division	64766
Wooters Michael	Police Officer	51803.32	f	Hickory Grove Division	64767
Blackwell Brandon D	Airport Operations Officer III	51771.37	f	Oper - Airside	64768
Bryne Shannon Brewer	Environmental Program Inspecto	51771.37	f	CLT Water System Protection	64769
Davis Cory Alan	Airport Operations Officer III	51771.37	f	Oper - Airside	64770
Jones Alfonso D	Environmental Program Inspecto	51771.37	f	CLT Water System Protection	64771
Jordan Qwann Sharlice Cochran	Environmental Program Inspecto	51771.37	f	CLT Water System Protection	64772
Mathews Jason	Airport Operations Officer III	51771.37	f	Oper - Airside	64773
Tucker Tonya Wiles	Airport Operations Officer III	51771.37	f	Oper - Airside	64774
Edwards Pamela O	Police Telecommunicator	51730.21	f	Communications Division	64775
Maresca Danielle Patricia	Crime Scene Technician	52303.9	f	Crime Scene Search Division	64776
Dantzler John Arthur	Code Enforcement Inspector	52764.04	f	Code Enforcement Combined	64777
Woodhouse Kristine Marie	Crime Scene Technician	52303.9	f	Crime Scene Search Division	64778
Booker Brandon Hunter	Water Treatment Plant Opr A	52281.76	f	CLT Water Franklin Plant	64779
Statham Jerry W	Drafting Technician	52226.34	f	CLT Water Engineering-Admin	64780
Blackwell Melissa M	Administrative Officer I	52175.14	f	Light Rail Administration	64781
Howard Florence Gale	Rail Operator	51847.22	f	Light Rail Operations	64782
Altizer Kerri	Code Enforcement Inspector	52764	f	Code Enforcement Combined	64783
Hubbard John P	Locksmith	54359.71	f	EPM Cultural Facilities-Disc P	64784
Davis Gary L	Labor Crew Chief II	52175.14	f	SWS Operations - Garbage Colle	64785
Jacobus Venus Elizabeth	Domestic Violence Counselor	51820.96	f	Special Victims Division	64786
Parks Sharon Elizabeth	Fire Telecommunicator II	53331.02	f	Fire Communications	64787
Frost Kiersten Lynn	Police Customer Service Supv	54017.66	f	Non-Emergency Police Services	64788
James Derrick	Construction Inspector	54359.71	f	CLT Field Ops-Pipeline Rehab	64789
Crisco Victoria	Code Enforcement Inspector	52764	f	Code Enforcement Combined	64790
Huey Angelica Camille	Bus System Spec Assc	54017	f	Tech - Executive	64791
Boggs Larry	Light Equipment Srvc Tech Mstr	53324.16	f	Fleet Mgmt-Atando Ave Shop	64792
Johnson Jr Louis Osborne	Transportation Elect. Tech II	54359.71	f	Light Rail Maintenance	64793
Allen Trey Elliott	Police Officer	51803.32	f	Freedom Division	64794
Ware James Michael	Code Enforcement Inspector	52764	f	Code Enforcement Combined	64795
Morris LaTash Mason	Bus System Spec Assc	54017	f	Tech - Executive	64796
Hoke Paoli Ella	Administrative Officer I	53324.16	f	Administration	64797
Mayes Cynthia L	Drafting Technician	52175.14	f	CLT Water Engineering-Admin	64798
Langley Shawn Lee	Systems Maint Mechanic Sr	54359.71	f	EPM BS CMGC	64799
Barker Phillip Andrew	Police Officer	51803.32	f	Central Division	64800
Wilkins Tony	Code Enforcement Inspector	52764	f	Code Enforcement Combined	64801
Canter Natalie Maria	Administrative Secretary I	53974.41	f	Finance Administration	64802
Daniels Mark Gregory	Systems Maintenance Mechanic	53974.41	f	Facil - Building Maintenance	64803
Whittaker Scott G	Systems Maintenance Mechanic	53974.41	f	Facil - Building Maintenance	64804
Blue Ernest W	Labor Crew Chief II	53973.88	f	SouthWest District (Sweden)	64805
Cole Michael E	Labor Crew Chief II	53939.58	f	EPM BS CMGC	64806
Hunter Easton	Transportation Elect. Tech II	53939	f	Light Rail Maintenance	64807
Crowley David W	Police Property Control Supv	53903.71	f	Property & Evidence Management	64808
Valone Richard W.	Police Customer Service Supv	53902.95	f	Communications Division	64809
Walker William James	Water Treatment Plant Opr A	53839.82	f	CLT Water Dukes WTP	64810
Jackson II Billy E.	Construction Inspector	53832.96	f	EPM Main Engineering	64811
Mason Brandon Alan	Construction Inspector	53823.99	f	EPM Main Engineering	64812
Condon Vincent P	Urban Forestry Specialist	53761.5	f	EPM Land Development	64813
Mitchell Howard D	Police Telecommunicator	53760.13	f	Communications Division	64814
Lester III William Zachary	Asst Field Operations Supv	53734.72	f	EPM Landscape Mgt	64815
Deese II James H	Asst Field Operations Supv	53734.69	f	EPM Landscape Mgt	64816
Rivers Don F	Labor Crew Chief II	53730.04	f	CLT Water Matthews Zone	64817
Bradshaw David P.	Fire Telecommunicator II	53664.07	f	Fire Communications	64818
Herman Jr Charles D	Light Equipment Srvc Tech Sr	53637.15	f	Fleet Mgmt-Atando Ave Shop	64819
Marshall Kenneth Harold	Stores Supervisor	53628.7	f	Finance Asset and Recovery Dis	64820
Kinniburgh Amanda Colleen	Laboratory Analyst II	53615.83	f	CLT Water Lab Svc-Operations	64821
Branch Kendra N	Laboratory Analyst II	53615.82	f	CLT Water Lab Svc-Operations	64822
Gibson Cody James	Laboratory Analyst II	53615.82	f	CLT Water Lab Svc-Operations	64823
Greene Hali Christine	Laboratory Analyst II	53615.82	f	CLT Water Lab Svc-Operations	64824
Werth Bryan	Laboratory Analyst II	53615.82	f	CLT Water Lab Svc-Operations	64825
Childers Kenneth D	Water Treatment Plant Opr A	53613.4	f	CLT Water Vest Treatment Plt O	64826
Drummond Billy D	Labor Crew Chief II	53610.76	f	Transportation Operations	64827
Alette Alexander	Construction Inspector	53556.39	f	E&PM Storm Water	64828
Ballenger Jr Ronald Wayne	Transportation Elect. Tech II	53556.39	f	Light Rail Maintenance	64829
Barrows Kristofer	Transportation Elect. Tech II	53556.39	f	CityLYNX	64830
Becker Kara	Construction Inspector	53556.39	f	E&PM Storm Water	64831
Bermeo Rolando alberto	Transportation Elect. Tech II	53556.39	f	Light Rail Maintenance	64832
Blue Damon Darnell	Transportation Elect. Tech II	53556.39	f	Light Rail Maintenance	64833
Brevard Kendrick Lamar	Construction Inspector	53556.39	f	EPM Main Engineering	64834
Davis Jr Isaac	Transportation Elect. Tech II	53556.39	f	Light Rail Maintenance	64835
Davis Keith Darnell	Transportation Elect. Tech II	53556.39	f	Maintenance Right of Way (MOW)	64836
Diaz Shawn	Transportation Elect. Tech II	53556.39	f	Transportation Systems	64837
Gomez Alejandro	Transportation Elect. Tech II	53556.39	f	Light Rail Maintenance	64838
Graham III Lewis Alexander	WW Treatment Plant Op IV	53556.39	f	CLT Water Irwin Creek Plt OPS	64839
Greene Jr John E	Transportation Elect. Tech II	53556.39	f	Light Rail Maintenance	64840
Guidry Steve Joseph	Transportation Elect. Tech II	53556.39	f	Light Rail Maintenance	64841
Harrison Scott T	Transportation Elect. Tech II	53556.39	f	Maintenance Right of Way (MOW)	64842
Shackelford Steven C	Drafting Technician	52175.14	f	EPM Main Engineering	64843
Smith Kim Annette	Administrative Officer I	52175.09	f	Passenger Vehicle for Hire Uni	64844
Brady Matthew Ian	Fire Fighter I	52744.75	f	Fire Station 17	64845
Lichtenfeld Nicolas M	Code Enforcement Inspector	54359.71	f	Code Enforcement Combined	64846
Matthews William Richard	Transportation Elect. Tech II	54359.71	f	Light Rail Maintenance	64847
Broadway Jr William Michael	Police Officer	51803.32	f	Central Division	64848
Teets Timothy Edward	Water Treatment Plant Opr A	52154.03	f	CLT Water Vest Treatment Plt O	64849
Davenport Travis Keith	Fire Fighter I	52744.75	f	Fire Station 27	64850
Little Vonda Generia	Rail Operator	53282.99	f	Light Rail Operations	64851
Byers Kenneth Robert	Police Officer	51803.32	f	North Tryon Division	64852
Jones Beverly H	311 Contact Center Supervisor	52130	f	CharMeck 311	64853
McGinnis Brian J	Code Enforcement Inspector	54359.71	f	Code Enforcement Combined	64854
Dellinger Joshua Adam	Fire Fighter I	52744.75	f	Fire Station 21	64855
Murdock Kelly E.	Rail Operator	53282.99	f	Light Rail Operations	64856
Calabro Joseph Edward	Police Officer	51803.32	f	Freedom Division	64857
Turner Johnnetta M	311 Contact Center Supervisor	52130	f	CharMeck 311	64858
Milliner Elvin lee	Transportation Elect. Tech II	54359.71	f	Light Rail Maintenance	64859
Ebert Dylan Michael	Police Officer	52744.75	f	Aviation Unit	64860
Bonner Tanisha Michelle	Engineering Assistant	53277.47	f	CLT Water Eng-Install & Dev	64861
Cameron James Daniel	Police Officer	51803.32	f	Central Division	64862
Merwin III Philip William Joshua	Asst Field Operations Supv	52119.01	f	EPM Landscape Mgt	64863
Moss David Lee	Transportation Elect. Tech II	54359.71	f	Light Rail Maintenance	64864
Figueroa Mia D	Police Officer	52744.75	f	University City Division	64865
Held Emily Catherine	Engineering Assistant	53277.47	f	CLT Water Backflow Prevention	64866
Connors III Thomas James	Police Officer	51803.32	f	University City Division	64867
Mulwee Bobby Ray	Heavy Equipment Srvc Tech Sr	52046.89	f	Fleet Mgmt-Louise Ave Shop	64868
O'Keef Jr Leon	Code Enforcement Inspector	54359.71	f	Code Enforcement Combined	64869
Hall Jojo Emmitt	Fire Fighter I	52744.75	f	Fire Station 27	64870
Grant Michelle Wynn	Criminialist Trainee	53277.38	f	Crime Lab Division	64871
Cook Marsaun	Police Officer	51803.32	f	Steele Creek Division	64872
Smith Jack E	Labor Crew Chief II	52046.89	f	SWS Operations - Bulky Collect	64873
Patterson Wylie B	Construction Inspector	54359.71	f	E&PM Storm Water	64874
Hanes Jacob David Xavier	Fire Fighter I	52744.75	f	Fire Station 19	64875
Goodson Margaret E.	Engineering Assistant	53277.31	f	CLT Water Eng-Install & Dev	64876
Costner Brandon Tyler	Police Officer	51803.32	f	University City Division	64877
Tillman James B	Heavy Equipment Srvc Tech Sr	52046.89	f	Fleet Mgmt-Louise Ave Shop	64878
Plancher Smith	WW Treatment Plant Op IV	54359.71	f	CLT Water McAlpine Creek Plant	64879
Hood Davon Charles	Fire Fighter I	52744.75	f	Fire Station 40	64880
Carter Mikkea Noele	Engineering Assistant	53277.3	f	Dev - Executive	64881
Coughlan Karen	Police Officer	51803.32	f	University City Division	64882
Eason Phoebe Jamell	Labor Crew Chief II	52046.66	f	Special Transportation Service	64883
Powell Andre L	Construction Inspector	54359.71	f	EPM Main Engineering	64884
Mahaley Christopher Brannon	Fire Fighter I	52744.75	f	Fire Station 3	64885
Adams Brittany Nicole	Engineering Assistant	53277.12	f	CLT Water Eng-Install & Dev	64886
Crews Jr Gregory Allen	Police Officer	51803.32	f	Central Division	64887
Jenkins Dean Myra Beth	Drafting Technician	52044.73	f	CLT Field Ops-Pipeline Rehab	64888
Bethea Wilhemena Jane	Rail Operator	52044.25	f	Light Rail Operations	64889
Reed Dexter Dale	Stores Supervisor	52044.25	f	Fire Logistics	64890
Ruiz Harry	Rail Operator	52044.25	f	Light Rail Operations	64891
Thomson Deborah Ruth	Rail Operator	52044.25	f	Light Rail Operations	64892
Cope Robert G	Airfield Maint Crew Chf	52026.83	f	Facil - Airside Maintenance (F	64893
Frost Jr Daniel Richard	Treatment Plant Mechanic III	52026.83	f	CLT Water EMD Maintenance	64894
Outland Philip Michael	Survey Party Chief	52026.83	f	EPM Main Engineering	64895
Sloan Jr Robert Lee	Indust Meter Repair Crew Chief	52026.83	f	CLT Water Cust Service-Admin	64896
Smith Michelle French	Paralegal	52026.83	f	City Attorney	64897
Del Valle Kristina	Water Treatment Plant Opr A	52026.72	f	CLT Water Dukes WTP	64898
Turner Glen R	Airfield Maint Crew Chf	52026.19	f	Facil - Airside Maintenance (F	64899
Harkey Bryan S	Animal Control Supervisor	52004.68	f	Animal Care & Control Division	64900
Smith Jessica Raye	Animal Control Supervisor	52004.68	f	Animal Care & Control Division	64901
Capella Gillian E	Police Officer	51920.8	f	Hickory Grove Division	64902
Carranti Joseph Henry	Police Officer	51920.8	f	Metro Division	64903
Dawkins Benjamin S	Police Officer	51920.8	f	Westover Division	64904
DeVries Benjamin David	Police Officer	51920.8	f	Metro Division	64905
Dickey James A	Police Officer	51920.8	f	North Tryon Division	64906
Edwards Johnathon Benjamin	Police Officer	51920.8	f	North Division	64907
Huffman Matthew C	Police Officer	51920.8	f	Steele Creek Division	64908
Mashburn Geoffrey Austin	Fire Fighter I	52744.75	f	Fire Station 19	64909
DalCerro Anthony	Police Officer	51803.32	f	Hickory Grove Division	64910
Rice Darnelle M	Transportation Elect. Tech II	54359.71	f	Light Rail Maintenance	64911
Hinton Jacqueline	Administrative Secretary I	53266.63	f	Office of the Chief - Administ	64912
Mills Adam Robert	Police Officer	52744.75	f	North Division	64913
Dorris Alan Joseph	Police Officer	51803.32	f	Independence Division	64914
Romb Daniel Edward	WW Treatment Plant Op IV	54359.71	f	CLT Water McAlpine Creek Plant	64915
Brawley Thyssen Tyrone	Administrative Officer II	53248.15	f	Human Resources Division	64916
Moore Jr Carlos Lee	Fire Fighter I	52744.75	f	Fire Station 35	64917
Duggins John Alexander	Police Officer	51803.32	f	Metro Division	64918
Vazquez Guillermo	WW Treatment Plant Op IV	54359.71	f	CLT Water McAlpine Creek Plant	64919
Gonzalez Currshia Patterson	Paralegal	53209.63	f	City Attorney	64920
Morris Joshua David	Fire Fighter I	52744.75	f	Fire Station 20	64921
Ellis Aaron Christopher	Police Officer	51803.32	f	Eastway Division	64922
Werts Dwayne	Transportation Elect. Tech II	54359.71	f	Light Rail Maintenance	64923
Lockler Adam Holland	Code Enforcement Inspector	53192.17	f	Code Enforcement Combined	64924
Murphy Kevin Patrick	Fire Fighter I	52744.75	f	Fire Station 16	64925
Fulker Jared Garson	Police Officer	51803.32	f	Hickory Grove Division	64926
Whittington Dennis	Code Enforcement Inspector	54359.71	f	Code Enforcement Combined	64927
Myers Timothy	Code Enforcement Inspector	53192.17	f	Code Enforcement Combined	64928
Overcash Bradley James	Fire Fighter I	52744.75	f	Fire Station 23	64929
Williams Sr Stephen James	Transportation Elect. Tech II	54359.71	f	Light Rail Maintenance	64930
Williams Eric kareem	Transportation Elect. Tech II	54359.71	f	Light Rail Maintenance	64931
Baker Chris	Transportation Elect. Tech II	54359.59	f	Maintenance Right of Way (MOW)	64932
Reddick Richard Deshawn	Fire Fighter I	52744.75	f	Fire Station 9	64933
Bostic II David C	Transportation Elect. Tech II	54359.59	f	Light Rail Maintenance	64934
Heck Jr John William	Carpenter Senior	53086.12	f	EPM BS Spratt	64935
Ritch Sean Curtis	Fire Fighter I	52744.75	f	Fire Station 3	64936
Brooks Robert Samuel	Locksmith	54359.59	f	Oper - Airport Security	64937
Williams Lamar J	Eng Services Investigator	53058.68	f	Field Services	64938
Rucks Drew Jirard	Fire Fighter I	52744.75	f	Fire Station 19	64939
Hayes Jr Winford D	Locksmith	54359.59	f	Oper - Airport Security	64940
Keyes Jennifer V	Eng Services Investigator	53036.55	f	Customer Service	64941
Saunders Patric Ian	Fire Fighter I	52744.75	f	Fire Station 2	64942
Torrez Alvaro Antonio	Electronics Technician II	54359.59	f	Public Safety Communications	64943
Harp Cheryl Antionette	Community Relations Spec	52999.96	f	CM- Community Relations	64944
Shulskie Eric Dennis	Fire Fighter I	52744.75	f	Fire Station 26	64945
May Jr Kevin E	Code Process Specialist	54359.18	f	Plan Reviewers	64946
Wallace Kevin E	Signs Fabrication Supervisor	52982.82	f	Transportation Operations	64947
Smith Monte Lopez	Fire Fighter I	52744.75	f	Fire Station 40	64948
Inge Candace Leigh	Eng Services Investigator	54311.68	f	Field Services	64949
Davis Edna Flowers	Administrative Officer I	52885.03	f	EPM BS Spratt	64950
Szentpaly Oxana Muzychuk	Police Officer	52744.75	f	University City Division	64951
Treichel Lucas C	Light Equipment Srvc Tech Mstr	54308.51	f	Fleet Mgmt-12th Street Shop	64952
Collins Tyrik Kawan	Fire Fighter II	52864.94	f	Fire Station 19	64953
Thomas Grant Matthew	Fire Fighter I	52744.75	f	Fire Station 42	64954
Nelson Rosemary C.	Police Customer Service Supv	54286.15	f	Non-Emergency Police Services	64955
Daniel Madeline April	Fire Fighter II	52864.94	f	Fire Station 31	64956
Rice Doris P	Police Investigation Tech	52701.75	f	North Tryon Division	64957
Rockwell Adam	Bus System Spec Assc	54279.44	f	Fleet Mgmt-Administration	64958
Feneis Michael Richard	Fire Fighter II	52864.94	f	Fire Station 29	64959
Olls Andrew P	GIS Technician	52688.69	f	EPM Main Engineering	64960
Kachmarik Jill Marie	Code Enforcement Inspector	54263.12	f	Zoning Combined	64961
Love II Walter Raymond	Fire Fighter II	52864.94	f	Fire Station 42	64962
Evans Bryan J	Labor Crew Chief I	52681.3	f	CLT Wat General Commerce Zone	64963
Greene Keith	Construction Inspector	54252.56	f	E&PM Storm Water	64964
Morosky Jeremy J.	Fire Fighter II	52864.94	f	Fire Station 9	64965
Borders Betty P	Administrative Officer I	52672.86	f	CLT Water West Tyvola Zone	64966
Evans-Patterson Cara Lemar	Administrative Officer II	54189.08	f	Community Engagement	64967
Parnell William Adam	Fire Fighter II	52864.94	f	Fire Station 1	64968
Rushen Barbara D	Administrative Officer I	52660.91	f	EPM BS Spratt	64969
Taylor Clinton Vann	Fire Fighter II	54186.76	f	Fire Station 2	64970
Polk Jonathan Vincent	Fire Fighter II	52864.94	f	Fire Station 39	64971
Ashley Robin Michelle	Customer/Revenue Service Spec.	52624.83	f	Finance Revenue	64972
Coston Metro	Rail Operator	52624.83	f	Light Rail Operations	64973
Hooks Kevin	Rail Operator	52624.83	f	Light Rail Operations	64974
Jones Jr Charles Edward	Rail Operator	52624.83	f	Light Rail Operations	64975
Wheeler Jr Martin L.	Rail Operator	52624.83	f	Light Rail Operations	64976
Alexander Jessica Lynn	Administrative Secretary I	52615.85	f	Administration - Director	64977
Rogers T S	Video Technician	52577.79	f	CM-Corporate Comm & Marketing	64978
Steele Toney	Contract Technician	52570.71	f	SWS Contracted Services	64979
Romero Yorknek Bladimir	Associate Planner	52552.24	f	Planning	64980
Badz Gerard G	Treatment Plant Mechanic III	54162.31	f	CLT Water Sewer Lift	64981
Morataya Jessica Annette	Police Officer	54158.01	f	Central Division	64982
Schrum Jedediah Brant	Survey Party Chief	54150	f	CLT Water Engineering-Admin	64983
Blackmon Bradley Allen	Fire Fighter II	52864.81	f	Fire Station 10	64984
Biggs Glenn A	Carpenter Senior	54147.53	f	EPM BS Spratt	64985
Cline Joshua Rickman	Fire Fighter II	52864.81	f	Fire Station 13	64986
Simpson Jonathan Brent	Code Enforcement Inspector	54145.42	f	Code Enforcement Combined	64987
Duckworth Geary Allen	Fire Fighter I	52864.81	f	Fire Station 34	64988
Campbell Maria Simone	Laboratory Analyst II	54136.36	f	CLT Water Lab Svc-Operations	64989
Jackson John Keith	Fire Fighter I	52864.81	f	Fire Station 28	64990
Haynes Jason	Code Enforcement Inspector	54129.59	f	Code Enforcement Combined	64991
Knight Jermaine Antwon	Fire Fighter I	52864.81	f	Fire Station 39	64992
Lund Julia Zweifel	Associate Planner	54128.81	f	Planning	64993
Lowrie Robert Maxwell	Fire Fighter I	52864.81	f	Fire Station 14	64994
Russell Michael W.	Associate Planner	54128.81	f	Planning	64995
Matthews Scott Wilson	Fire Fighter I	52864.81	f	Fire Station 32	64996
Hatfield Jr Lewis E	Asst Field Operations Supv	54122.78	f	EPM Landscape Mgt	64997
McEwan Adam Robert	Fire Fighter I	52864.81	f	Fire Station 12	64998
Mengis Filmon Esayas	Police Officer	52864.81	f	Metro Division	64999
Mercado Ferney	Fire Fighter I	52864.81	f	Fire Station 16	65000
Pettit Stephen Christopher	Fire Fighter I	52864.81	f	Fire Station 1	65001
Rodriguez Jr Carlos Roberto	Fire Fighter I	52864.81	f	Fire Station 31	65002
Short Gregory Daniel	Fire Fighter I	52864.81	f	Fire Station 28	65003
Sprinkle Jacob Ray	Fire Fighter I	52864.81	f	Fire Station 27	65004
Thomas Robert Neal	Fire Fighter I	52864.81	f	Fire Station 14	65005
Emmanuel Ryan Charles	Community Relations Spec	50000	f	CM- Community Relations	65006
Anderson Jr Joe James	Labor Crew Chief II	49963.66	f	EPM LSC Cemeteries Mgt	65007
Cotton Rashawnda L	Administrative Officer I	49930.1	f	I&T Administration	65008
Mulenda Joseph Kalemba	Heavy Equipment Srvc Tech Sr	49928.76	f	Fleet Mgmt-Louise Ave Shop	65009
Dixon Tiffany Tilisa	311 Contact Cte Prog Analyst	49926.71	f	CharMeck 311	65010
Frisina Jewell D	Customer/Revenue Service Spec.	49926.71	f	Finance Revenue	65011
Scott Gene Roman	311 Contact Cte Prog Analyst	49926.71	f	CharMeck 311	65012
Osborne Darlene Michellelee	Eng Services Investigator	49885.02	f	E&PM Storm Water	65013
Hermanns Scott Robert	Fire Fighter I	50347.44	f	Fire Station 23	65014
Freeman Matthew	Airport Operations Officer III	51006.1	f	Oper - Airside	65015
Gross Michael Christopher	Treatment Plant Electrician	48576.84	f	CLT Water Sewer Lift	65016
Akers Evan Charles	Police Officer	49448.2	f	Providence Division	65017
Jugis Christopher Ralph	Stores Supervisor	49882.38	f	Transportation Operations	65018
Harkey Shannon Marie	Animal Control Supervisor	49882.04	f	Animal Care & Control Division	65019
Beamon Nora Regina	Crime Scene Technician	49813.24	f	Crime Scene Search Division	65020
Reid Blondina C	Contract Technician	49813.03	f	SWS Contracted Services	65021
Hewitt Alvin C	Water Quality Technician II	49812.82	f	CLT Water Lab Svc-Operations	65022
Bednarik Bradley Joe	Labor Crew Chief II	49810.6	f	North East District (Orr)	65023
Houston Adrian T	Labor Crew Chief II	49810.6	f	SouthWest District (Sweden)	65024
James Junior Paul	Light Equipment Srvc Tech Sr	49778.93	f	Fleet Mgmt-Atando Ave Shop	65025
Jarrett III Andrew C	Heavy Equipment Srvc Tech Sr	49774.03	f	Fleet Mgmt-Tuckaseegee Rd Shop	65026
Anderson Phillip J	Animal Control Officer-Lead	49690.79	f	Animal Care & Control Division	65027
Morris Johnny L	Storekeeper Senior	49690.79	f	Facil - Logistics	65028
Wilson Ray E	Equipment Operator III	49690.79	f	North East District (Orr)	65029
Bignall Wendy Leigh	Police Telecommunicator	49690.48	f	Communications Division	65030
Broadus Nancy Gae	Police Telecommunicator	49690.48	f	Communications Division	65031
Radford Vickie Diane	Police Telecommunicator	49690.34	f	Communications Division	65032
Bryant Jr James Clifton	Storekeeper Senior	49688.15	f	SWS Facilities	65033
Dunn Michael B	Labor Crew Chief II	49688.15	f	Central District (Northpointe)	65034
Mitchell John H	Administrative Officer I	49688.15	f	Passenger Vehicle for Hire Uni	65035
Starnes Danny Ray	Treatment Plant Mechanic II	49688.15	f	CLT Water - Water Maintenance	65036
Wallace Dewauana	Administrative Officer I	49688.15	f	Passenger Vehicle for Hire Uni	65037
Ohlson Doreen M	Administrative Officer I	49682.87	f	Public & Community Relations	65038
Stein Peter E	GIS Technician	49669.68	f	Tech - Executive	65039
Kirkley Deborah A	Accounting Technician	49665.98	f	Finance Accounting	65040
Grainger James A	Drafting Technician	49615.31	f	CLT Water Engineering-Admin	65041
Lavender Clarence	Light Equipment Srvc Tech Sr	49568.34	f	Fleet Mgmt-12th Street Shop	65042
Shuford Barbara G	Police Investigation Tech	49567.28	f	Steele Creek Division	65043
Goddard James P	Drafting Technician	49566.23	f	EPM Main Engineering	65044
James Antonio	Treatment Plant Mechanic II	49566.23	f	CLT Water Sewer Lift	65045
Johnson Mary Lauren	GIS Technician	49566.23	f	CLT Water Engineering-Admin	65046
Mamar Salifou S	GIS Technician	49566.23	f	E&PM Storm Water	65047
Washington Gerald Michael	GIS Technician	49566.23	f	E&PM Storm Water	65048
Bramble Connor Dawson	Eng Services Investigator	49548.81	f	CLT Water System Protection	65049
Toepfer George Chris	Systems Maintenance Mechanic	49548.81	f	Facil - Building Maintenance	65050
Buchanan Phillip	Eng Services Investigator	49548.71	f	CLT Water Cust Service-Admin	65051
Thomas James Long	Transportation Elect. Tech I	49548.67	f	Transportation Systems	65052
Baldwin Seth	Police Officer	49448.62	f	Eastway Division	65053
Edmunds Micah Patrick Dane	Police Officer	49448.62	f	Metro Division	65054
Famulari III Charles Anthony	Police Officer	49448.62	f	Metro Division	65055
Sokolofsky Bryan Michael	Police Officer	49448.62	f	Freedom Division	65056
Stribing Gabrielle	Police Officer	49448.62	f	Metro Division	65057
Thompson Nora Maria	Police Officer	49448.62	f	North Tryon Division	65058
Morgan Jr James Harrison	Water Treatment Plant Opr A	51644.17	f	CLT Water Vest Treatment Plt O	65059
Velez Dianedsy	Police Officer	49448.62	f	Independence Division	65060
Berry Thomas L	Systems Maintenance Mechanic	48577.13	f	Facil - Airside Maintenance (F	65061
Bostic Fahranda	Rail Operator	49306.02	f	Light Rail Operations	65062
Hoffman Jayson Robert	Fire Fighter I	50347.44	f	Fire Station 39	65063
Bryant David	Water Quality Technician Ld	49306.02	f	CLT Water Lab Svc-Operations	65064
Devlin Theodore Jonathan	Police Officer	49448.2	f	Metro Division	65065
Jackson Nikkia N	Customer/Revenue Service Spec.	48576.6	f	CharMeck 311	65066
Green Sue D	Administrative Officer I	51623.49	f	CM- Community Relations	65067
Burke Shannon Denise	Rail Operator	48577.13	f	CityLYNX	65068
Anderson Wendy Magnolia	Rail Operator	48557.6	f	Light Rail Operations	65069
Yock Joseph John	Airport Operations Officer III	51006.07	f	Oper - Airside	65070
Franklin Shawn Austin	Police Officer	49448.2	f	University City Division	65071
Carpenter Carl	WW Treatment Plant Op III	48577.13	f	CLT Water McAlpine Creek Plant	65072
Cunningham Deborah Mechelle	Rail Operator	49306.02	f	Light Rail Operations	65073
Walls Shalanda	Administrative Officer II	51610	f	Human Resources Division	65074
Bailey Eleanor Enid	Rail Operator	48557.6	f	Light Rail Operations	65075
Hooks Dustin Carl	Fire Fighter I	50347.44	f	Fire Station 42	65076
Adams Cephus L	Police Records Supervisor	51006.06	f	Records Division	65077
Hallum Matthew Vincent	Police Officer	49448.2	f	South Division	65078
Cookson Carl William	Systems Maintenance Mechanic	48577.13	f	Facil - Building Maintenance	65079
Feaster Andrew De'Jon	Equipment Parts Team Leader	49306.02	f	Fleet Mgmt-Parts Operations	65080
Miller Deona Jovan	Airport Operations Officer III	51516.66	f	Oper - Airside	65081
Brown Ashley Jaquay	Rail Operator	48557.6	f	Light Rail Operations	65082
Hunter Henry Kyle	Fire Fighter II	50347.44	f	Fire Station 14	65083
Collymore Dinasio D	Airport Operations Officer III	51006.06	f	Oper - Airside	65084
Hooker Sean Lavelle	Police Officer	49448.2	f	Eastway Division	65085
Davis Ryan Mark	Transportation Elect. Tech I	48577.13	f	Transportation Systems	65086
Jerry Tiffany C	Rail Operator	49306.02	f	Light Rail Operations	65087
Primm David Mark	Airport Operations Officer III	51516.66	f	Oper - Airside	65088
Evans Eric	Rail Operator	48557.6	f	Light Rail Operations	65089
Hunter Samuel Mack	Fire Fighter II	50347.44	f	Fire Station 22	65090
Greene Patrick	Treatment Plant Mechanic III	51006.06	f	CLT Water - Water Maintenance	65091
Innerfield Andrew Gregory	Police Officer	49448.2	f	Eastway Division	65092
Garrett Nina E	Rail Operator	48577.13	f	CityLYNX	65093
Lundy Chanettelle Laurelle	Rail Operator	49306.02	f	CityLYNX	65094
Amato Lauren Chiara	Airport Operations Officer III	51516.45	f	Oper - Airside	65095
Funderburke Yvonne Chevelya	Rail Operator	48557.6	f	Light Rail Operations	65096
Huntley Tyler Evans	Fire Fighter I	50347.44	f	Fire Station 11	65097
Hanna Marina Naguib	Airport Operations Officer III	51006.06	f	Oper - Airside	65098
Johnson Christian Emmanuel	Police Officer	49448.2	f	North Division	65099
Harrell Timothy Jerome	WW Treatment Plant Op III	48577.13	f	CLT Water Union County	65100
Maness Jeanne Marie	Rail Operator	49306.02	f	CityLYNX	65101
Edgar Melvin T	Airport Operations Officer III	51516.45	f	Oper - Airside	65102
Hairston Alvin Vonzell	Rail Operator	48557.6	f	Light Rail Operations	65103
Melton Jacob Kieran	Fire Fighter I	50347.44	f	Fire Station 11	65104
Hoskins Justin Evan	Airport Operations Officer III	51006.06	f	Oper - Airside	65105
Johnson Elijah	Police Officer	49448.2	f	Metro Division	65106
Hawkins Jon-Keith	Customer/Revenue Service Spec.	48577.13	f	Safety & Security	65107
Reeves Cheryl Lynn	Rail Operator	49306.02	f	Light Rail Operations	65108
Houck Michael Leonard-John	Airport Operations Officer III	51516.45	f	Oper - Airside	65109
Johnson Parks Tanya	Airport Operations Officer III	51516.45	f	Oper - Airside	65110
Moore Jeffery Edward	Airport Operations Officer III	51516.45	f	Oper - Airside	65111
Morgan Matthew	Airfield Maint Crew Chf	51516.45	f	Facil - Airside Maintenance (F	65112
Watson Deontae	Airport Operations Officer III	51516.45	f	Oper - Airside	65113
Ward Meredith Luann Loflin	Training Representative	51511.17	f	CLT Water Human Resources	65114
Austin Rodger Mark	Police Property Control Supv	51505.2	f	Property & Evidence Management	65115
Stackhouse Chessonia Y	Police Customer Service Supv	51490.94	f	Non-Emergency Police Services	65116
Kirchhofer Tracey Ann	Animal Control Supervisor	51474.02	f	Animal Care & Control Division	65117
Grant Sharon	Police Property Control Tech	51423.47	f	Property & Evidence Management	65118
Murray Jamie M	Administrative Officer I	51419.86	f	EPM Main Engineering	65119
Bednarik Joseph L	Labor Crew Chief II	51404.03	f	SouthWest District (Sweden)	65120
Chambers Lis M.	Administrative Officer I	51404.03	f	CLT Water Huntersville Zone	65121
Felder Crystal D	Labor Crew Chief II	51404.03	f	Special Transportation Service	65122
Grier Thelma W	Labor Crew Chief II	51404.03	f	Special Transportation Service	65123
Reid John G	Labor Crew Chief II	51404.03	f	CLT Water West Tyvola Zone	65124
Thompson Renee	Administrative Officer I	51404.03	f	CM- Community Relations	65125
Hunt Sherry Thomas	Payroll Specialist	51403	f	HR Management System	65126
Leonardo Lynn Turney	Administrative Officer I	51403	f	Organization Dev & Learning	65127
McIver Monice Lechon	Payroll Specialist	51403	f	HR Management System	65128
Barron Kaisha LaQuan	Administrative Officer I	51397.02	f	Finance Office Firefighters Re	65129
Canty Christopher M	Labor Crew Chief II	51287.38	f	Central District (Northpointe)	65130
Head Curtis	Rail Operator	51275.33	f	Light Rail Operations	65131
Burgin Jr Walter Dean	Systems Maintenance Mechanic	51275.24	f	Facil - Building Maintenance	65132
Collins Marvin O.	Customer/Revenue Service Spec.	51275.24	f	Revenues	65133
Johnson Hobert Lynn	Treatment Plant Electrician	51275.24	f	CLT Water Sewer Lift	65134
Livingston Wayne G	Customer/Revenue Service Spec.	51275.24	f	Finance Revenue	65135
McQueen Denish L.	Rail Operator	51275.24	f	Light Rail Operations	65136
Haywood Christopher Allen	Treatment Plant Electrician	51274.71	f	CLT Water Instr. Control & Ele	65137
Tarleton Kathryn (Kati) Marie	Administrative Officer II	51177.65	f	Animal Care & Control Division	65138
Massey Leonard S	Labor Crew Chief II	51121.65	f	CLT Wat General Commerce Zone	65139
Frye Angela Barnhill	Fire Telecommunicator II	51009.9	f	Fire Communications	65140
Suthard William Paul	Fire Telecommunicator II	51009.76	f	Fire Communications	65141
Bagby Conley Landon	Rail Track Maintainer	51006.59	f	Maintenance Right of Way (MOW)	65142
Blackmon Clarence Jeffrey	Airport Operations Officer III	51006.59	f	Oper - Airside	65143
Dillon Kenneth Allen	Rail Track Maintainer	51006.59	f	Maintenance Right of Way (MOW)	65144
Miller Kevin Bryan	Airport Operations Officer III	51006.59	f	Oper - Airside	65145
Mitchell Jr Elbert Troy	Airport Operations Officer III	51006.59	f	Oper - Airside	65146
Renick Bradley Steven	Airport Operations Officer III	51006.59	f	Oper - Airside	65147
Richardson Tyler Dale	Airport Operations Officer III	51006.59	f	Oper - Airside	65148
Silvers Benjamin Willis	Treatment Plant Mechanic III	51006.59	f	CLT Water EMD Maintenance	65149
Wagenhauser Michael A	Survey Party Chief	51006.59	f	EPM Main Engineering	65150
Younts Allen Worth	Rail Track Maintainer	51006.59	f	Maintenance Right of Way (MOW)	65151
Nobles Kenneth Gerald	Fire Fighter I	50347.44	f	Fire Station 14	65152
Raborn Dakota Shea	Fire Fighter I	50347.44	f	Fire Station 11	65153
Russell Casey Ryan	Fire Fighter I	50347.44	f	Fire Station 21	65154
Sizemore Justin	Police Trainee	50347.44	f	Recruit Training Unit	65155
Skipton Jr Stephen Edward	Fire Fighter I	50347.44	f	Fire Station 2	65156
Whiteside Jonathan Cody	Fire Fighter II	50347.44	f	Fire Station 4	65157
Woods-Cole Austin William	Fire Fighter I	50347.44	f	Fire Station 29	65158
Beteta Matthew Paul	Fire Fighter I	50347.26	f	Fire Station 19	65159
Edwards Austin James	Fire Fighter I	50347.26	f	Fire Station 32	65160
Griswold Jonathan Ward	Fire Fighter I	50347.26	f	Fire Station 32	65161
Holmes II William Thomas	Fire Fighter I	50347.26	f	Fire Station 14	65162
Laskey Andrew Richard	Fire Fighter I	50347.26	f	Fire Station 32	65163
Teodorescu George Julian	Fire Fighter I	50347.26	f	Fire Station 37	65164
Brown Kasandra Lee	Administrative Officer I	50282.45	f	SWS Human Resources	65165
DiPietro Regina M	Video Technician	50264.45	f	CM-Corporate Comm & Marketing	65166
Barber Ranon Omar	Fire Fighter I	50233.52	f	Fire Station 31	65167
Brooks Jr Melvin Lorenzo	Fire Fighter I	50233.52	f	Fire Station 16	65168
Jefferson Kevin Sean	Customer/Revenue Service Spec.	48577.13	f	CLT Water Cust Service-Admin	65169
Davenport Chad William	Fire Fighter I	50233.52	f	Fire Station 32	65170
Jarrett Sr Malik I	Rail Operator	48557.6	f	Light Rail Operations	65171
Jeffries Jr Larry Arnold	Customer/Revenue Service Spec.	48577.13	f	CLT Water Cust Service-Admin	65172
Fletcher Donovan Lee	Fire Fighter I	50233.52	f	Fire Station 37	65173
Mitchell Shelley Antoinette	Rail Operator	48557.6	f	Light Rail Operations	65174
Rhine Trevon Alyn	Administrative Officer I	49306.02	f	SWS Safety	65175
Preston Jessica	Rail Operator	48557.6	f	Light Rail Operations	65176
Robbins Cheryl Elaine	Rail Operator	49306.02	f	Light Rail Operations	65177
Reamer-Hake Laura	Rail Operator	48557.6	f	Light Rail Operations	65178
Ford Malachi Donovan	Fire Fighter I	50233.52	f	Fire Station 26	65179
Robinson Major Wesley	Customer/Revenue Service Spec.	49306.02	f	CharMeck 311	65180
Johnson Andrew Kelly	Systems Maintenance Mechanic	48577.13	f	Facil - Building Maintenance	65181
Terry Darnell L	Rail Operator	48557.6	f	Light Rail Operations	65182
Ganzert Jr Michael Martin	Fire Fighter I	50233.52	f	Fire Station 27	65183
McCoy Jeremiah Vincent	Police Officer	49448.2	f	Providence Division	65184
Haney Winston Alexander	Fire Fighter I	50233.52	f	Fire Station 26	65185
Hill William Brooks	Fire Fighter I	50233.52	f	Fire Station 29	65186
Mosic Aleksandar	Police Officer	49448.2	f	Eastway Division	65187
Williams Katrina F	Rail Operator	48557.6	f	Light Rail Operations	65188
McCrary James Edward	Rail Operator	49305.85	f	CityLYNX	65189
Kieffer Kristian	Systems Maintenance Mechanic	48577.13	f	Facil - Airside Maintenance (F	65190
Ike Jr William Jacob	Water Treatment Plant Opr A	51006.06	f	CLT Water Franklin Plant	65191
Holt William Albert	Fire Fighter I	50233.52	f	Fire Station 35	65192
Mayhorn Tim	Light Equipment Srvc Tech Mstr	51006.06	f	Fleet Mgmt-12th Street Shop	65193
Brevard Donald	Eng Services Investigator	49305.79	f	CLT Water Cust Service-Admin	65194
Johnson Khalif Ali	Fire Fighter I	50233.52	f	Fire Station 1	65195
Worthington Jr Dwayne Lloyd	Rail Operator	48557.6	f	Light Rail Operations	65196
Rhamy Thomas Lee	Airport Operations Officer III	51006.06	f	Oper - Airside	65197
Bryant Sr Kharye Damu	Rail Operator	49305.79	f	Light Rail Operations	65198
Dye Joshua David	Rail Operator	49305.79	f	Light Rail Operations	65199
McCallum Linette Kaye	311 Contact Cte Prog Analyst	49305.79	f	CharMeck 311	65200
Osborne Antonio B	311 Contact Cte Prog Analyst	49305.79	f	CharMeck 311	65201
Stanton Todd M	Carpenter Senior	49305.79	f	Facil - Building Maintenance	65202
Shores Leo W	Police Investigation Tech	49230.02	f	Providence Division	65203
Mazets Volha	Administrative Officer I	49147.15	f	EPM Real Estate	65204
Wallace Jr Elbie Dewitt	Police Property Control Supv	49115.92	f	Property & Evidence Management	65205
\.


--
-- Name: sequence_departamento; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.sequence_departamento', 1897, true);


--
-- Name: sequence_empleado; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.sequence_empleado', 65206, true);


--
-- Name: empleado empleado_nombre_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_nombre_key UNIQUE (nombre);


--
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (idempleado);


--
-- Name: departamento nombre_unico; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT nombre_unico UNIQUE (nombredepartamento);


--
-- Name: departamento pk_departamento; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (iddepartamento);


--
-- Name: empleado foranea_empleado; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT foranea_empleado FOREIGN KEY (departamento) REFERENCES public.departamento(nombredepartamento);


--
-- PostgreSQL database dump complete
--

