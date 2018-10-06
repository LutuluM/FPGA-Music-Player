library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_std.all;

--used for sound generating uses input clock of 50mHz
entity SoundLoop is
	port(	CLK,Reset,Pause:in std_logic;
			Divisor:out integer range 0 to 31);
	end entity;

architecture Behavioral of SoundLoop is

signal Count: integer range 0 to 511 := 0;
begin

process(CLK,Reset,Pause) begin
	if(Reset = '1') then
		Count <= 0;
	elsif(rising_edge(CLK)and Pause = '1') then
		Count <= Count + 1;
	end if;
end process;
process(Count,Pause) begin
if(Pause = '0') then
	case Count is
		When	0	=>	Divisor <=	25	;	--Bar 1
When	1	=>	Divisor <=	25	;	
When	2	=>	Divisor <=	0	;	
When	3	=>	Divisor <=	0	;	
When	4	=>	Divisor <=	25	;	
When	5	=>	Divisor <=	25	;	
When	6	=>	Divisor <=	0	;	
When	7	=>	Divisor <=	0	;	
When	8	=>	Divisor <=	25	;	--Bar 2
When	9	=>	Divisor <=	25	;	
When	10	=>	Divisor <=	0	;	
When	11	=>	Divisor <=	0	;	
When	12	=>	Divisor <=	25	;	
When	13	=>	Divisor <=	25	;	
When	14	=>	Divisor <=	26	;	
When	15	=>	Divisor <=	26	;	
When	16	=>	Divisor <=	25	;	--Bar 3
When	17	=>	Divisor <=	25	;	
When	18	=>	Divisor <=	0	;	
When	19	=>	Divisor <=	0	;	
When	20	=>	Divisor <=	25	;	
When	21	=>	Divisor <=	25	;	
When	22	=>	Divisor <=	0	;	
When	23	=>	Divisor <=	0	;	
When	24	=>	Divisor <=	25	;	--Bar 4
When	25	=>	Divisor <=	25	;	
When	26	=>	Divisor <=	0	;	
When	27	=>	Divisor <=	0	;	
When	28	=>	Divisor <=	25	;	
When	29	=>	Divisor <=	25	;	
When	30	=>	Divisor <=	21	;	
When	31	=>	Divisor <=	21	;	
When	32	=>	Divisor <=	25	;	--Bar 5
When	33	=>	Divisor <=	25	;	
When	34	=>	Divisor <=	0	;	
When	35	=>	Divisor <=	0	;	
When	36	=>	Divisor <=	25	;	
When	37	=>	Divisor <=	25	;	
When	38	=>	Divisor <=	0	;	
When	39	=>	Divisor <=	0	;	
When	40	=>	Divisor <=	25	;	--Bar 6
When	41	=>	Divisor <=	25	;	
When	42	=>	Divisor <=	0	;	
When	43	=>	Divisor <=	0	;	
When	44	=>	Divisor <=	25	;	
When	45	=>	Divisor <=	25	;	
When	46	=>	Divisor <=	20	;	
When	47	=>	Divisor <=	20	;	
When	48	=>	Divisor <=	25	;	--Bar 7
When	49	=>	Divisor <=	25	;	
When	50	=>	Divisor <=	0	;	
When	51	=>	Divisor <=	0	;	
When	52	=>	Divisor <=	25	;	
When	53	=>	Divisor <=	25	;	
When	54	=>	Divisor <=	0	;	
When	55	=>	Divisor <=	0	;	
When	56	=>	Divisor <=	25	;	--Bar 8
When	57	=>	Divisor <=	25	;	
When	58	=>	Divisor <=	0	;	
When	59	=>	Divisor <=	0	;	
When	60	=>	Divisor <=	25	;	
When	61	=>	Divisor <=	25	;	
When	62	=>	Divisor <=	19	;	
When	63	=>	Divisor <=	19	;	
When	64	=>	Divisor <=	25	;	--Bar 9
When	65	=>	Divisor <=	25	;	
When	66	=>	Divisor <=	21	;	
When	67	=>	Divisor <=	21	;	
When	68	=>	Divisor <=	25	;	
When	69	=>	Divisor <=	25	;	
When	70	=>	Divisor <=	20	;	
When	71	=>	Divisor <=	20	;	
When	72	=>	Divisor <=	25	;	--Bar 10
When	73	=>	Divisor <=	25	;	
When	74	=>	Divisor <=	21	;	
When	75	=>	Divisor <=	21	;	
When	76	=>	Divisor <=	25	;	
When	77	=>	Divisor <=	25	;	
When	78	=>	Divisor <=	24	;	
When	79	=>	Divisor <=	24	;	
When	80	=>	Divisor <=	25	;	--Bar 11
When	81	=>	Divisor <=	25	;	
When	82	=>	Divisor <=	21	;	
When	83	=>	Divisor <=	21	;	
When	84	=>	Divisor <=	25	;	
When	85	=>	Divisor <=	25	;	
When	86	=>	Divisor <=	20	;	
When	87	=>	Divisor <=	20	;	
When	88	=>	Divisor <=	25	;	--Bar 12
When	89	=>	Divisor <=	25	;	
When	90	=>	Divisor <=	21	;	
When	91	=>	Divisor <=	21	;	
When	92	=>	Divisor <=	25	;	
When	93	=>	Divisor <=	25	;	
When	94	=>	Divisor <=	24	;	
When	95	=>	Divisor <=	24	;	
When	96	=>	Divisor <=	25	;	--Bar 13
When	97	=>	Divisor <=	25	;	
When	98	=>	Divisor <=	21	;	
When	99	=>	Divisor <=	21	;	
When	100	=>	Divisor <=	25	;	
When	101	=>	Divisor <=	25	;	
When	102	=>	Divisor <=	20	;	
When	103	=>	Divisor <=	20	;	
When	104	=>	Divisor <=	25	;	--Bar 14
When	105	=>	Divisor <=	25	;	
When	106	=>	Divisor <=	21	;	
When	107	=>	Divisor <=	21	;	
When	108	=>	Divisor <=	25	;	
When	109	=>	Divisor <=	25	;	
When	110	=>	Divisor <=	26	;	
When	111	=>	Divisor <=	26	;	
When	112	=>	Divisor <=	25	;	--Bar 15
When	113	=>	Divisor <=	25	;	
When	114	=>	Divisor <=	21	;	
When	115	=>	Divisor <=	21	;	
When	116	=>	Divisor <=	25	;	
When	117	=>	Divisor <=	25	;	
When	118	=>	Divisor <=	20	;	
When	119	=>	Divisor <=	20	;	
When	120	=>	Divisor <=	25	;	--Bar 16
When	121	=>	Divisor <=	25	;	
When	122	=>	Divisor <=	20	;	
When	123	=>	Divisor <=	20	;	
When	124	=>	Divisor <=	25	;	
When	125	=>	Divisor <=	25	;	
When	126	=>	Divisor <=	19	;	
When	127	=>	Divisor <=	19	;	
When	128	=>	Divisor <=	18	;	--Bar 17
When	129	=>	Divisor <=	18	;	
When	130	=>	Divisor <=	18	;	
When	131	=>	Divisor <=	18	;	
When	132	=>	Divisor <=	25	;	
When	133	=>	Divisor <=	25	;	
When	134	=>	Divisor <=	25	;	
When	135	=>	Divisor <=	25	;	
When	136	=>	Divisor <=	18	;	--Bar 18
When	137	=>	Divisor <=	18	;	
When	138	=>	Divisor <=	18	;	
When	139	=>	Divisor <=	18	;	
When	140	=>	Divisor <=	22	;	
When	141	=>	Divisor <=	21	;	
When	142	=>	Divisor <=	21	;	
When	143	=>	Divisor <=	20	;	
When	144	=>	Divisor <=	19	;	--Bar 19
When	145	=>	Divisor <=	22	;	
When	146	=>	Divisor <=	26	;	
When	147	=>	Divisor <=	22	;	
When	148	=>	Divisor <=	22	;	
When	149	=>	Divisor <=	24	;	
When	150	=>	Divisor <=	19	;	
When	151	=>	Divisor <=	19	;	
When	152	=>	Divisor <=	20	;	--Bar 20
When	153	=>	Divisor <=	22	;	
When	154	=>	Divisor <=	20	;	
When	155	=>	Divisor <=	22	;	
When	156	=>	Divisor <=	21	;	
When	157	=>	Divisor <=	23	;	
When	158	=>	Divisor <=	22	;	
When	159	=>	Divisor <=	24	;	
When	160	=>	Divisor <=	25	;	--Bar 21
When	161	=>	Divisor <=	25	;	
When	162	=>	Divisor <=	24	;	
When	163	=>	Divisor <=	21	;	
When	164	=>	Divisor <=	25	;	
When	165	=>	Divisor <=	25	;	
When	166	=>	Divisor <=	23	;	
When	167	=>	Divisor <=	18	;	
When	168	=>	Divisor <=	23	;	--Bar 22
When	169	=>	Divisor <=	23	;	
When	170	=>	Divisor <=	21	;	
When	171	=>	Divisor <=	21	;	
When	172	=>	Divisor <=	23	;	
When	173	=>	Divisor <=	23	;	
When	174	=>	Divisor <=	20	;	
When	175	=>	Divisor <=	20	;	
When	176	=>	Divisor <=	19	;	--Bar 23
When	177	=>	Divisor <=	22	;	
When	178	=>	Divisor <=	26	;	
When	179	=>	Divisor <=	22	;	
When	180	=>	Divisor <=	22	;	
When	181	=>	Divisor <=	24	;	
When	182	=>	Divisor <=	19	;	
When	183	=>	Divisor <=	19	;	
When	184	=>	Divisor <=	20	;	--Bar 24
When	185	=>	Divisor <=	22	;	
When	186	=>	Divisor <=	20	;	
When	187	=>	Divisor <=	22	;	
When	188	=>	Divisor <=	21	;	
When	189	=>	Divisor <=	23	;	
When	190	=>	Divisor <=	22	;	
When	191	=>	Divisor <=	21	;	
When	192	=>	Divisor <=	25	;	--Bar 25
When	193	=>	Divisor <=	25	;	
When	194	=>	Divisor <=	24	;	
When	195	=>	Divisor <=	18	;	
When	196	=>	Divisor <=	25	;	
When	197	=>	Divisor <=	25	;	
When	198	=>	Divisor <=	23	;	
When	199	=>	Divisor <=	16	;	
When	200	=>	Divisor <=	25	;	--Bar 26
When	201	=>	Divisor <=	25	;	
When	202	=>	Divisor <=	21	;	
When	203	=>	Divisor <=	18	;	
When	204	=>	Divisor <=	25	;	
When	205	=>	Divisor <=	25	;	
When	206	=>	Divisor <=	18	;	
When	207	=>	Divisor <=	14	;	
When	208	=>	Divisor <=	19	;	--Bar 27
When	209	=>	Divisor <=	19	;	
When	210	=>	Divisor <=	0	;	
When	211	=>	Divisor <=	19	;	
When	212	=>	Divisor <=	0	;	
When	213	=>	Divisor <=	19	;	
When	214	=>	Divisor <=	0	;	
When	215	=>	Divisor <=	19	;	
When	216	=>	Divisor <=	0	;	--Bar 28
When	217	=>	Divisor <=	19	;	
When	218	=>	Divisor <=	0	;	
When	219	=>	Divisor <=	19	;	
When	220	=>	Divisor <=	18	;	
When	221	=>	Divisor <=	18	;	
When	222	=>	Divisor <=	18	;	
When	223	=>	Divisor <=	18	;	
When	224	=>	Divisor <=	19	;	--Bar 29
When	225	=>	Divisor <=	19	;	
When	226	=>	Divisor <=	0	;	
When	227	=>	Divisor <=	19	;	
When	228	=>	Divisor <=	0	;	
When	229	=>	Divisor <=	19	;	
When	230	=>	Divisor <=	0	;	
When	231	=>	Divisor <=	19	;	
When	232	=>	Divisor <=	0	;	--Bar 30
When	233	=>	Divisor <=	19	;	
When	234	=>	Divisor <=	0	;	
When	235	=>	Divisor <=	19	;	
When	236	=>	Divisor <=	17	;	
When	237	=>	Divisor <=	17	;	
When	238	=>	Divisor <=	17	;	
When	239	=>	Divisor <=	17	;	
When	240	=>	Divisor <=	19	;	--Bar 31
When	241	=>	Divisor <=	19	;	
When	242	=>	Divisor <=	19	;	
When	243	=>	Divisor <=	19	;	
When	244	=>	Divisor <=	26	;	
When	245	=>	Divisor <=	26	;	
When	246	=>	Divisor <=	26	;	
When	247	=>	Divisor <=	26	;	
When	248	=>	Divisor <=	20	;	--Bar 32
When	249	=>	Divisor <=	20	;	
When	250	=>	Divisor <=	20	;	
When	251	=>	Divisor <=	20	;	
When	252	=>	Divisor <=	27	;	
When	253	=>	Divisor <=	27	;	
When	254	=>	Divisor <=	27	;	
When	255	=>	Divisor <=	27	;	
When	256	=>	Divisor <=	26	;	--Bar 33
When	257	=>	Divisor <=	26	;	
When	258	=>	Divisor <=	26	;	
When	259	=>	Divisor <=	26	;	
When	260	=>	Divisor <=	26	;	
When	261	=>	Divisor <=	26	;	
When	262	=>	Divisor <=	26	;	
When	263	=>	Divisor <=	26	;	
When	264	=>	Divisor <=	26	;	--Bar 34
When	265	=>	Divisor <=	26	;	
When	266	=>	Divisor <=	26	;	
When	267	=>	Divisor <=	26	;	
When	268	=>	Divisor <=	26	;	
When	269	=>	Divisor <=	26	;	
When	270	=>	Divisor <=	26	;	
When	271	=>	Divisor <=	26	;	
When	272	=>	Divisor <=	25	;	--Bar 35
When	273	=>	Divisor <=	25	;	
When	274	=>	Divisor <=	25	;	
When	275	=>	Divisor <=	25	;	
When	276	=>	Divisor <=	25	;	
When	277	=>	Divisor <=	25	;	
When	278	=>	Divisor <=	25	;	
When	279	=>	Divisor <=	25	;	
When	280	=>	Divisor <=	24	;	--Bar 36
When	281	=>	Divisor <=	24	;	
When	282	=>	Divisor <=	24	;	
When	283	=>	Divisor <=	24	;	
When	284	=>	Divisor <=	24	;	
When	285	=>	Divisor <=	24	;	
When	286	=>	Divisor <=	24	;	
When	287	=>	Divisor <=	24	;	
When	288	=>	Divisor <=	12	;	--Bar 37
When	289	=>	Divisor <=	12	;	
When	290	=>	Divisor <=	12	;	
When	291	=>	Divisor <=	12	;	
When	292	=>	Divisor <=	13	;	
When	293	=>	Divisor <=	13	;	
When	294	=>	Divisor <=	13	;	
When	295	=>	Divisor <=	13	;	
When	296	=>	Divisor <=	12	;	--Bar 38
When	297	=>	Divisor <=	12	;	
When	298	=>	Divisor <=	13	;	
When	299	=>	Divisor <=	13	;	
When	300	=>	Divisor <=	14	;	
When	301	=>	Divisor <=	14	;	
When	302	=>	Divisor <=	14	;	
When	303	=>	Divisor <=	14	;	
When	304	=>	Divisor <=	12	;	--Bar 39
When	305	=>	Divisor <=	12	;	
When	306	=>	Divisor <=	12	;	
When	307	=>	Divisor <=	12	;	
When	308	=>	Divisor <=	13	;	
When	309	=>	Divisor <=	13	;	
When	310	=>	Divisor <=	13	;	
When	311	=>	Divisor <=	13	;	
When	312	=>	Divisor <=	12	;	--Bar 40
When	313	=>	Divisor <=	12	;	
When	314	=>	Divisor <=	13	;	
When	315	=>	Divisor <=	13	;	
When	316	=>	Divisor <=	14	;	
When	317	=>	Divisor <=	14	;	
When	318	=>	Divisor <=	14	;	
When	319	=>	Divisor <=	14	;	
When	320	=>	Divisor <=	26	;	--Bar 41
When	321	=>	Divisor <=	26	;	
When	322	=>	Divisor <=	26	;	
When	323	=>	Divisor <=	26	;	
When	324	=>	Divisor <=	26	;	
When	325	=>	Divisor <=	26	;	
When	326	=>	Divisor <=	26	;	
When	327	=>	Divisor <=	26	;	
When	328	=>	Divisor <=	21	;	--Bar 42
When	329	=>	Divisor <=	21	;	
When	330	=>	Divisor <=	21	;	
When	331	=>	Divisor <=	21	;	
When	332	=>	Divisor <=	25	;	
When	333	=>	Divisor <=	25	;	
When	334	=>	Divisor <=	25	;	
When	335	=>	Divisor <=	25	;	
When	336	=>	Divisor <=	22	;	--Bar 43
When	337	=>	Divisor <=	22	;	
When	338	=>	Divisor <=	22	;	
When	339	=>	Divisor <=	22	;	
When	340	=>	Divisor <=	22	;	
When	341	=>	Divisor <=	22	;	
When	342	=>	Divisor <=	22	;	
When	343	=>	Divisor <=	22	;	
When	344	=>	Divisor <=	23	;	--Bar 44
When	345	=>	Divisor <=	23	;	
When	346	=>	Divisor <=	23	;	
When	347	=>	Divisor <=	23	;	
When	348	=>	Divisor <=	23	;	
When	349	=>	Divisor <=	23	;	
When	350	=>	Divisor <=	23	;	
When	351	=>	Divisor <=	23	;	
When	352	=>	Divisor <=	26	;	--Bar 45
When	353	=>	Divisor <=	26	;	
When	354	=>	Divisor <=	22	;	
When	355	=>	Divisor <=	22	;	
When	356	=>	Divisor <=	26	;	
When	357	=>	Divisor <=	26	;	
When	358	=>	Divisor <=	21	;	
When	359	=>	Divisor <=	21	;	
When	360	=>	Divisor <=	26	;	--Bar 46
When	361	=>	Divisor <=	26	;	
When	362	=>	Divisor <=	22	;	
When	363	=>	Divisor <=	22	;	
When	364	=>	Divisor <=	26	;	
When	365	=>	Divisor <=	26	;	
When	366	=>	Divisor <=	22	;	
When	367	=>	Divisor <=	22	;	
When	368	=>	Divisor <=	26	;	--Bar 47
When	369	=>	Divisor <=	26	;	
When	370	=>	Divisor <=	22	;	
When	371	=>	Divisor <=	22	;	
When	372	=>	Divisor <=	26	;	
When	373	=>	Divisor <=	26	;	
When	374	=>	Divisor <=	21	;	
When	375	=>	Divisor <=	21	;	
When	376	=>	Divisor <=	26	;	--Bar 48
When	377	=>	Divisor <=	26	;	
When	378	=>	Divisor <=	20	;	
When	379	=>	Divisor <=	20	;	
When	380	=>	Divisor <=	26	;	
When	381	=>	Divisor <=	26	;	
When	382	=>	Divisor <=	20	;	
When	383	=>	Divisor <=	20	;	
When	384	=>	Divisor <=	26	;	--Bar 49
When	385	=>	Divisor <=	26	;	
When	386	=>	Divisor <=	22	;	
When	387	=>	Divisor <=	19	;	
When	388	=>	Divisor <=	26	;	
When	389	=>	Divisor <=	26	;	
When	390	=>	Divisor <=	21	;	
When	391	=>	Divisor <=	18	;	
When	392	=>	Divisor <=	26	;	--Bar 50
When	393	=>	Divisor <=	26	;	
When	394	=>	Divisor <=	20	;	
When	395	=>	Divisor <=	17	;	
When	396	=>	Divisor <=	26	;	
When	397	=>	Divisor <=	26	;	
When	398	=>	Divisor <=	21	;	
When	399	=>	Divisor <=	18	;	
When	400	=>	Divisor <=	26	;	--Bar 51
When	401	=>	Divisor <=	26	;	
When	402	=>	Divisor <=	22	;	
When	403	=>	Divisor <=	19	;	
When	404	=>	Divisor <=	26	;	
When	405	=>	Divisor <=	26	;	
When	406	=>	Divisor <=	21	;	
When	407	=>	Divisor <=	18	;	
When	408	=>	Divisor <=	26	;	--Bar 52
When	409	=>	Divisor <=	26	;	
When	410	=>	Divisor <=	20	;	
When	411	=>	Divisor <=	17	;	
When	412	=>	Divisor <=	26	;	
When	413	=>	Divisor <=	26	;	
When	414	=>	Divisor <=	20	;	
When	415	=>	Divisor <=	16	;	
When	416	=>	Divisor <=	0	;	--Bar 53
When	417	=>	Divisor <=	0	;	
When	418	=>	Divisor <=	0	;	
When	419	=>	Divisor <=	0	;	
When	420	=>	Divisor <=	0	;	
When	421	=>	Divisor <=	0	;	
When	422	=>	Divisor <=	0	;	
When	423	=>	Divisor <=	0	;	
When	424	=>	Divisor <=	0	;	--Bar 54
When	425	=>	Divisor <=	0	;	
When	426	=>	Divisor <=	0	;	
When	427	=>	Divisor <=	0	;	
When	428	=>	Divisor <=	0	;	
When	429	=>	Divisor <=	0	;	
When	430	=>	Divisor <=	0	;	
When	431	=>	Divisor <=	0	;	
When	432	=>	Divisor <=	0	;	--Bar 55
When	433	=>	Divisor <=	0	;	
When	434	=>	Divisor <=	0	;	
When	435	=>	Divisor <=	0	;	
When	436	=>	Divisor <=	0	;	
When	437	=>	Divisor <=	0	;	
When	438	=>	Divisor <=	0	;	
When	439	=>	Divisor <=	0	;	
When	440	=>	Divisor <=	0	;	--Bar 56
When	441	=>	Divisor <=	0	;	
When	442	=>	Divisor <=	0	;	
When	443	=>	Divisor <=	0	;	
When	444	=>	Divisor <=	0	;	
When	445	=>	Divisor <=	0	;	
When	446	=>	Divisor <=	0	;	
When	447	=>	Divisor <=	0	;	
When	448	=>	Divisor <=	0	;	--Bar 57
When	449	=>	Divisor <=	0	;	
When	450	=>	Divisor <=	0	;	
When	451	=>	Divisor <=	0	;	
When	452	=>	Divisor <=	0	;	
When	453	=>	Divisor <=	0	;	
When	454	=>	Divisor <=	0	;	
When	455	=>	Divisor <=	0	;	
When	456	=>	Divisor <=	0	;	--Bar 58
When	457	=>	Divisor <=	0	;	
When	458	=>	Divisor <=	0	;	
When	459	=>	Divisor <=	0	;	
When	460	=>	Divisor <=	0	;	
When	461	=>	Divisor <=	0	;	
When	462	=>	Divisor <=	0	;	
When	463	=>	Divisor <=	0	;	
When	464	=>	Divisor <=	0	;	--Bar 59
When	465	=>	Divisor <=	0	;	
When	466	=>	Divisor <=	0	;	
When	467	=>	Divisor <=	0	;	
When	468	=>	Divisor <=	0	;	
When	469	=>	Divisor <=	0	;	
When	470	=>	Divisor <=	0	;	
When	471	=>	Divisor <=	0	;	
When	472	=>	Divisor <=	0	;	--Bar 60
When	473	=>	Divisor <=	0	;	
When	474	=>	Divisor <=	0	;	
When	475	=>	Divisor <=	0	;	
When	476	=>	Divisor <=	0	;	
When	477	=>	Divisor <=	0	;	
When	478	=>	Divisor <=	0	;	
When	479	=>	Divisor <=	0	;	
When	480	=>	Divisor <=	0	;	--Bar 61
When	481	=>	Divisor <=	0	;	
When	482	=>	Divisor <=	0	;	
When	483	=>	Divisor <=	0	;	
When	484	=>	Divisor <=	0	;	
When	485	=>	Divisor <=	0	;	
When	486	=>	Divisor <=	0	;	
When	487	=>	Divisor <=	0	;	
When	488	=>	Divisor <=	0	;	--Bar 62
When	489	=>	Divisor <=	0	;	
When	490	=>	Divisor <=	0	;	
When	491	=>	Divisor <=	0	;	
When	492	=>	Divisor <=	0	;	
When	493	=>	Divisor <=	0	;	
When	494	=>	Divisor <=	0	;	
When	495	=>	Divisor <=	0	;	
When	496	=>	Divisor <=	0	;	--Bar 63
When	497	=>	Divisor <=	0	;	
When	498	=>	Divisor <=	0	;	
When	499	=>	Divisor <=	0	;	
When	500	=>	Divisor <=	0	;	
When	501	=>	Divisor <=	0	;	
When	502	=>	Divisor <=	0	;	
When	503	=>	Divisor <=	0	;	
When	504	=>	Divisor <=	0	;	--Bar 64
When	505	=>	Divisor <=	0	;	
When	506	=>	Divisor <=	0	;	
When	507	=>	Divisor <=	0	;	
When	508	=>	Divisor <=	0	;	
When	509	=>	Divisor <=	0	;	
When	510	=>	Divisor <=	0	;	
When	511	=>	Divisor <=	0	;	

		When others => null;
	end case;
else
	Divisor <= 0;
end if;
end process;
end Behavioral;

