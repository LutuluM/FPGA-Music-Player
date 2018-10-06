library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_std.all;

--used for sound generating uses input clock of 50mHz
entity SoundLoop is
	port(	CLK,Reset:in std_logic;
			Divisor:out integer range 0 to 31);
	end entity;

architecture Behavioral of SoundLoop is

signal Count: integer range 0 to 511 := 0;
begin

process(CLK,Reset) begin
	if(Reset = '1') then
		Count <= 0;
	elsif(rising_edge(CLK)) then
		if(Count = 383) then
			Count <= 0;
		else
			Count <= Count + 1;
		end if;
	end if;
end process;
process(Count) begin
case Count is
	When	0	=>	Divisor <=	20	;
	When	1	=>	Divisor <=	0	;
	When	2	=>	Divisor <=	20	;
	When	3	=>	Divisor <=	0	;
	When	4	=>	Divisor <=	13	;
	When	5	=>	Divisor <=	0	;
	When	6	=>	Divisor <=	20	;
	When	7	=>	Divisor <=	0	;
	When	8	=>	Divisor <=	20	;
	When	9	=>	Divisor <=	0	;
	When	10	=>	Divisor <=	14	;
	When	11	=>	Divisor <=	0	;
	When	12	=>	Divisor <=	20	;
	When	13	=>	Divisor <=	0	;
	When	14	=>	Divisor <=	20	;
	When	15	=>	Divisor <=	0	;
	When	16	=>	Divisor <=	15	;
	When	17	=>	Divisor <=	0	;
	When	18	=>	Divisor <=	20	;
	When	19	=>	Divisor <=	0	;
	When	20	=>	Divisor <=	20	;
	When	21	=>	Divisor <=	0	;
	When	22	=>	Divisor <=	17	;
	When	23	=>	Divisor <=	0	;
	When	24	=>	Divisor <=	20	;
	When	25	=>	Divisor <=	0	;
	When	26	=>	Divisor <=	20	;
	When	27	=>	Divisor <=	0	;
	When	28	=>	Divisor <=	16	;
	When	29	=>	Divisor <=	0	;
	When	30	=>	Divisor <=	17	;
	When	31	=>	Divisor <=	0	;
	When	32	=>	Divisor <=	20	;
	When	33	=>	Divisor <=	0	;
	When	34	=>	Divisor <=	20	;
	When	35	=>	Divisor <=	0	;
	When	36	=>	Divisor <=	13	;
	When	37	=>	Divisor <=	0	;
	When	38	=>	Divisor <=	20	;
	When	39	=>	Divisor <=	0	;
	When	40	=>	Divisor <=	20	;
	When	41	=>	Divisor <=	0	;
	When	42	=>	Divisor <=	14	;
	When	43	=>	Divisor <=	0	;
	When	44	=>	Divisor <=	20	;
	When	45	=>	Divisor <=	0	;
	When	46	=>	Divisor <=	20	;
	When	47	=>	Divisor <=	0	;
	When	48	=>	Divisor <=	15	;
	When	49	=>	Divisor <=	0	;
	When	50	=>	Divisor <=	20	;
	When	51	=>	Divisor <=	0	;
	When	52	=>	Divisor <=	20	;
	When	53	=>	Divisor <=	0	;
	When	54	=>	Divisor <=	17	;
	When	55	=>	Divisor <=	0	;
	When	56	=>	Divisor <=	17	;
	When	57	=>	Divisor <=	17	;
	When	58	=>	Divisor <=	17	;
	When	59	=>	Divisor <=	17	;
	When	60	=>	Divisor <=	17	;
	When	61	=>	Divisor <=	17	;
	When	62	=>	Divisor <=	17	;
	When	63	=>	Divisor <=	0	;
	When	64	=>	Divisor <=	20	;
	When	65	=>	Divisor <=	0	;
	When	66	=>	Divisor <=	20	;
	When	67	=>	Divisor <=	0	;
	When	68	=>	Divisor <=	13	;
	When	69	=>	Divisor <=	0	;
	When	70	=>	Divisor <=	20	;
	When	71	=>	Divisor <=	0	;
	When	72	=>	Divisor <=	20	;
	When	73	=>	Divisor <=	0	;
	When	74	=>	Divisor <=	14	;
	When	75	=>	Divisor <=	0	;
	When	76	=>	Divisor <=	20	;
	When	77	=>	Divisor <=	0	;
	When	78	=>	Divisor <=	20	;
	When	79	=>	Divisor <=	0	;
	When	80	=>	Divisor <=	15	;
	When	81	=>	Divisor <=	0	;
	When	82	=>	Divisor <=	20	;
	When	83	=>	Divisor <=	0	;
	When	84	=>	Divisor <=	20	;
	When	85	=>	Divisor <=	0	;
	When	86	=>	Divisor <=	17	;
	When	87	=>	Divisor <=	0	;
	When	88	=>	Divisor <=	20	;
	When	89	=>	Divisor <=	0	;
	When	90	=>	Divisor <=	20	;
	When	91	=>	Divisor <=	0	;
	When	92	=>	Divisor <=	16	;
	When	93	=>	Divisor <=	0	;
	When	94	=>	Divisor <=	17	;
	When	95	=>	Divisor <=	0	;
	When	96	=>	Divisor <=	20	;
	When	97	=>	Divisor <=	0	;
	When	98	=>	Divisor <=	20	;
	When	99	=>	Divisor <=	0	;
	When	100	=>	Divisor <=	13	;
	When	101	=>	Divisor <=	0	;
	When	102	=>	Divisor <=	20	;
	When	103	=>	Divisor <=	0	;
	When	104	=>	Divisor <=	20	;
	When	105	=>	Divisor <=	0	;
	When	106	=>	Divisor <=	14	;
	When	107	=>	Divisor <=	0	;
	When	108	=>	Divisor <=	20	;
	When	109	=>	Divisor <=	0	;
	When	110	=>	Divisor <=	20	;
	When	111	=>	Divisor <=	0	;
	When	112	=>	Divisor <=	15	;
	When	113	=>	Divisor <=	0	;
	When	114	=>	Divisor <=	20	;
	When	115	=>	Divisor <=	0	;
	When	116	=>	Divisor <=	20	;
	When	117	=>	Divisor <=	0	;
	When	118	=>	Divisor <=	17	;
	When	119	=>	Divisor <=	0	;
	When	120	=>	Divisor <=	17	;
	When	121	=>	Divisor <=	17	;
	When	122	=>	Divisor <=	17	;
	When	123	=>	Divisor <=	17	;
	When	124	=>	Divisor <=	17	;
	When	125	=>	Divisor <=	17	;
	When	126	=>	Divisor <=	17	;
	When	127	=>	Divisor <=	0	;
	When	128	=>	Divisor <=	20	;
	When	129	=>	Divisor <=	0	;
	When	130	=>	Divisor <=	20	;
	When	131	=>	Divisor <=	0	;
	When	132	=>	Divisor <=	13	;
	When	133	=>	Divisor <=	0	;
	When	134	=>	Divisor <=	20	;
	When	135	=>	Divisor <=	0	;
	When	136	=>	Divisor <=	20	;
	When	137	=>	Divisor <=	0	;
	When	138	=>	Divisor <=	14	;
	When	139	=>	Divisor <=	0	;
	When	140	=>	Divisor <=	20	;
	When	141	=>	Divisor <=	0	;
	When	142	=>	Divisor <=	20	;
	When	143	=>	Divisor <=	0	;
	When	144	=>	Divisor <=	15	;
	When	145	=>	Divisor <=	0	;
	When	146	=>	Divisor <=	20	;
	When	147	=>	Divisor <=	0	;
	When	148	=>	Divisor <=	20	;
	When	149	=>	Divisor <=	0	;
	When	150	=>	Divisor <=	17	;
	When	151	=>	Divisor <=	0	;
	When	152	=>	Divisor <=	20	;
	When	153	=>	Divisor <=	0	;
	When	154	=>	Divisor <=	20	;
	When	155	=>	Divisor <=	0	;
	When	156	=>	Divisor <=	16	;
	When	157	=>	Divisor <=	0	;
	When	158	=>	Divisor <=	17	;
	When	159	=>	Divisor <=	0	;
	When	160	=>	Divisor <=	20	;
	When	161	=>	Divisor <=	0	;
	When	162	=>	Divisor <=	20	;
	When	163	=>	Divisor <=	0	;
	When	164	=>	Divisor <=	13	;
	When	165	=>	Divisor <=	0	;
	When	166	=>	Divisor <=	20	;
	When	167	=>	Divisor <=	0	;
	When	168	=>	Divisor <=	20	;
	When	169	=>	Divisor <=	0	;
	When	170	=>	Divisor <=	14	;
	When	171	=>	Divisor <=	0	;
	When	172	=>	Divisor <=	20	;
	When	173	=>	Divisor <=	0	;
	When	174	=>	Divisor <=	20	;
	When	175	=>	Divisor <=	0	;
	When	176	=>	Divisor <=	15	;
	When	177	=>	Divisor <=	0	;
	When	178	=>	Divisor <=	20	;
	When	179	=>	Divisor <=	0	;
	When	180	=>	Divisor <=	20	;
	When	181	=>	Divisor <=	0	;
	When	182	=>	Divisor <=	17	;
	When	183	=>	Divisor <=	0	;
	When	184	=>	Divisor <=	17	;
	When	185	=>	Divisor <=	17	;
	When	186	=>	Divisor <=	17	;
	When	187	=>	Divisor <=	17	;
	When	188	=>	Divisor <=	17	;
	When	189	=>	Divisor <=	17	;
	When	190	=>	Divisor <=	17	;
	When	191	=>	Divisor <=	0	;
	When	192	=>	Divisor <=	20	;
	When	193	=>	Divisor <=	0	;
	When	194	=>	Divisor <=	20	;
	When	195	=>	Divisor <=	0	;
	When	196	=>	Divisor <=	13	;
	When	197	=>	Divisor <=	0	;
	When	198	=>	Divisor <=	20	;
	When	199	=>	Divisor <=	0	;
	When	200	=>	Divisor <=	20	;
	When	201	=>	Divisor <=	0	;
	When	202	=>	Divisor <=	14	;
	When	203	=>	Divisor <=	0	;
	When	204	=>	Divisor <=	20	;
	When	205	=>	Divisor <=	0	;
	When	206	=>	Divisor <=	20	;
	When	207	=>	Divisor <=	0	;
	When	208	=>	Divisor <=	15	;
	When	209	=>	Divisor <=	0	;
	When	210	=>	Divisor <=	20	;
	When	211	=>	Divisor <=	0	;
	When	212	=>	Divisor <=	20	;
	When	213	=>	Divisor <=	0	;
	When	214	=>	Divisor <=	17	;
	When	215	=>	Divisor <=	0	;
	When	216	=>	Divisor <=	20	;
	When	217	=>	Divisor <=	0	;
	When	218	=>	Divisor <=	20	;
	When	219	=>	Divisor <=	0	;
	When	220	=>	Divisor <=	16	;
	When	221	=>	Divisor <=	0	;
	When	222	=>	Divisor <=	17	;
	When	223	=>	Divisor <=	0	;
	When	224	=>	Divisor <=	20	;
	When	225	=>	Divisor <=	0	;
	When	226	=>	Divisor <=	20	;
	When	227	=>	Divisor <=	0	;
	When	228	=>	Divisor <=	13	;
	When	229	=>	Divisor <=	0	;
	When	230	=>	Divisor <=	20	;
	When	231	=>	Divisor <=	0	;
	When	232	=>	Divisor <=	20	;
	When	233	=>	Divisor <=	0	;
	When	234	=>	Divisor <=	14	;
	When	235	=>	Divisor <=	0	;
	When	236	=>	Divisor <=	20	;
	When	237	=>	Divisor <=	0	;
	When	238	=>	Divisor <=	20	;
	When	239	=>	Divisor <=	0	;
	When	240	=>	Divisor <=	10	;
	When	241	=>	Divisor <=	11	;
	When	242	=>	Divisor <=	12	;
	When	243	=>	Divisor <=	10	;
	When	244	=>	Divisor <=	8	;
	When	245	=>	Divisor <=	9	;
	When	246	=>	Divisor <=	10	;
	When	247	=>	Divisor <=	12	;
	When	248	=>	Divisor <=	10	;
	When	249	=>	Divisor <=	9	;
	When	250	=>	Divisor <=	8	;
	When	251	=>	Divisor <=	7	;
	When	252	=>	Divisor <=	8	;
	When	253	=>	Divisor <=	9	;
	When	254	=>	Divisor <=	10	;
	When	255	=>	Divisor <=	12	;
	When	256	=>	Divisor <=	20	;
	When	257	=>	Divisor <=	0	;
	When	258	=>	Divisor <=	20	;
	When	259	=>	Divisor <=	0	;
	When	260	=>	Divisor <=	13	;
	When	261	=>	Divisor <=	0	;
	When	262	=>	Divisor <=	20	;
	When	263	=>	Divisor <=	0	;
	When	264	=>	Divisor <=	20	;
	When	265	=>	Divisor <=	0	;
	When	266	=>	Divisor <=	14	;
	When	267	=>	Divisor <=	0	;
	When	268	=>	Divisor <=	20	;
	When	269	=>	Divisor <=	0	;
	When	270	=>	Divisor <=	20	;
	When	271	=>	Divisor <=	0	;
	When	272	=>	Divisor <=	15	;
	When	273	=>	Divisor <=	0	;
	When	274	=>	Divisor <=	20	;
	When	275	=>	Divisor <=	0	;
	When	276	=>	Divisor <=	20	;
	When	277	=>	Divisor <=	0	;
	When	278	=>	Divisor <=	17	;
	When	279	=>	Divisor <=	0	;
	When	280	=>	Divisor <=	20	;
	When	281	=>	Divisor <=	0	;
	When	282	=>	Divisor <=	20	;
	When	283	=>	Divisor <=	0	;
	When	284	=>	Divisor <=	16	;
	When	285	=>	Divisor <=	0	;
	When	286	=>	Divisor <=	17	;
	When	287	=>	Divisor <=	0	;
	When	288	=>	Divisor <=	20	;
	When	289	=>	Divisor <=	0	;
	When	290	=>	Divisor <=	20	;
	When	291	=>	Divisor <=	0	;
	When	292	=>	Divisor <=	13	;
	When	293	=>	Divisor <=	0	;
	When	294	=>	Divisor <=	20	;
	When	295	=>	Divisor <=	0	;
	When	296	=>	Divisor <=	20	;
	When	297	=>	Divisor <=	0	;
	When	298	=>	Divisor <=	14	;
	When	299	=>	Divisor <=	0	;
	When	300	=>	Divisor <=	20	;
	When	301	=>	Divisor <=	0	;
	When	302	=>	Divisor <=	20	;
	When	303	=>	Divisor <=	0	;
	When	304	=>	Divisor <=	15	;
	When	305	=>	Divisor <=	0	;
	When	306	=>	Divisor <=	20	;
	When	307	=>	Divisor <=	0	;
	When	308	=>	Divisor <=	20	;
	When	309	=>	Divisor <=	0	;
	When	310	=>	Divisor <=	17	;
	When	311	=>	Divisor <=	0	;
	When	312	=>	Divisor <=	17	;
	When	313	=>	Divisor <=	17	;
	When	314	=>	Divisor <=	17	;
	When	315	=>	Divisor <=	17	;
	When	316	=>	Divisor <=	17	;
	When	317	=>	Divisor <=	17	;
	When	318	=>	Divisor <=	17	;
	When	319	=>	Divisor <=	0	;
	When	320	=>	Divisor <=	20	;
	When	321	=>	Divisor <=	0	;
	When	322	=>	Divisor <=	20	;
	When	323	=>	Divisor <=	0	;
	When	324	=>	Divisor <=	13	;
	When	325	=>	Divisor <=	0	;
	When	326	=>	Divisor <=	20	;
	When	327	=>	Divisor <=	0	;
	When	328	=>	Divisor <=	20	;
	When	329	=>	Divisor <=	0	;
	When	330	=>	Divisor <=	14	;
	When	331	=>	Divisor <=	0	;
	When	332	=>	Divisor <=	20	;
	When	333	=>	Divisor <=	0	;
	When	334	=>	Divisor <=	20	;
	When	335	=>	Divisor <=	0	;
	When	336	=>	Divisor <=	15	;
	When	337	=>	Divisor <=	0	;
	When	338	=>	Divisor <=	20	;
	When	339	=>	Divisor <=	0	;
	When	340	=>	Divisor <=	20	;
	When	341	=>	Divisor <=	0	;
	When	342	=>	Divisor <=	17	;
	When	343	=>	Divisor <=	0	;
	When	344	=>	Divisor <=	20	;
	When	345	=>	Divisor <=	0	;
	When	346	=>	Divisor <=	20	;
	When	347	=>	Divisor <=	0	;
	When	348	=>	Divisor <=	16	;
	When	349	=>	Divisor <=	0	;
	When	350	=>	Divisor <=	17	;
	When	351	=>	Divisor <=	0	;
	When	352	=>	Divisor <=	20	;
	When	353	=>	Divisor <=	0	;
	When	354	=>	Divisor <=	20	;
	When	355	=>	Divisor <=	0	;
	When	356	=>	Divisor <=	13	;
	When	357	=>	Divisor <=	0	;
	When	358	=>	Divisor <=	20	;
	When	359	=>	Divisor <=	0	;
	When	360	=>	Divisor <=	20	;
	When	361	=>	Divisor <=	0	;
	When	362	=>	Divisor <=	14	;
	When	363	=>	Divisor <=	0	;
	When	364	=>	Divisor <=	20	;
	When	365	=>	Divisor <=	0	;
	When	366	=>	Divisor <=	20	;
	When	367	=>	Divisor <=	0	;
	When	368	=>	Divisor <=	7	;
	When	369	=>	Divisor <=	9	;
	When	370	=>	Divisor <=	11	;
	When	371	=>	Divisor <=	9	;
	When	372	=>	Divisor <=	7	;
	When	373	=>	Divisor <=	9	;
	When	374	=>	Divisor <=	7	;
	When	375	=>	Divisor <=	4	;
	When	376	=>	Divisor <=	7	;
	When	377	=>	Divisor <=	9	;
	When	378	=>	Divisor <=	7	;
	When	379	=>	Divisor <=	9	;
	When	380	=>	Divisor <=	7	;
	When	381	=>	Divisor <=	4	;
	When	382	=>	Divisor <=	2	;
	When	383	=>	Divisor <=	1	;
	When others => null;
end case;
end process;
end Behavioral;
