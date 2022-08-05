
--
-- Data for Name: admins; Type: TABLE DATA; Schema: admin; Owner: admin
--

ALTER TABLE kansa.people DROP COLUMN hugo_voter;
ALTER TABLE kansa.people DROP COLUMN hugo_nominator;

TRUNCATE TABLE admin.admins CASCADE;
TRUNCATE TABLE hugo.canon CASCADE;
TRUNCATE TABLE hugo.classification CASCADE;
TRUNCATE TABLE hugo.finalists CASCADE;
TRUNCATE TABLE hugo.nominations CASCADE;
TRUNCATE TABLE hugo.packet CASCADE;
TRUNCATE TABLE hugo.votes CASCADE;
TRUNCATE TABLE kansa.badge_and_daypass_prints CASCADE;
TRUNCATE TABLE kansa.countries CASCADE;
TRUNCATE TABLE kansa.daypass_amounts CASCADE;
TRUNCATE TABLE kansa.daypasses CASCADE;
TRUNCATE TABLE kansa.keys CASCADE;
TRUNCATE TABLE kansa.log CASCADE;
TRUNCATE TABLE kansa.membership_types CASCADE;
TRUNCATE TABLE kansa.payment_categories CASCADE;
TRUNCATE TABLE kansa.payment_fields CASCADE;
TRUNCATE TABLE kansa.payment_types CASCADE;
TRUNCATE TABLE kansa.payments CASCADE;
TRUNCATE TABLE kansa.people CASCADE;
TRUNCATE TABLE kansa.siteselection_votes CASCADE;
TRUNCATE TABLE kansa.stripe_keys CASCADE;
TRUNCATE TABLE public.session CASCADE;
TRUNCATE TABLE raami.works CASCADE;
TRUNCATE TABLE raami.artist CASCADE;

ALTER TABLE kansa.people ADD COLUMN hugo_voter boolean;
ALTER TABLE kansa.people ADD COLUMN hugo_nominator boolean;

COPY admin.admins (email, member_admin, member_list, siteselection, hugo_admin, raami_admin, admin_admin) FROM stdin;
admin@example.com	t	t	f	t	t	t
member-admin@example.com	t	f	f	f	f	f
site-select@example.com	f	t	t	f	f	f
hugo-admin@example.com	f	t	f	t	f	f
\.


--
-- Data for Name: canon; Type: TABLE DATA; Schema: hugo; Owner: hugo
--


COPY hugo.canon (id, category, nomination, disqualified, relocated) FROM stdin;
33	RetroNovel	{"title": "Voyage to Venus", "author": "C S Lewis"}	f	\N
34	Series	{"title": "InCryptid", "author": " Seanan McGuire", "publisher": "DAW"}	f	\N
35	Series	{"title": "The Memoirs of Lady Trent", "author": "Marie Brennan", "publisher": "Tor US / Titan UK"}	f	\N
36	Series	{"title": "The Stormlight Archive", "author": "Brandon Sanderson", "publisher": "Tor US / Gollancz UK"}	f	\N
7	RetroNovel	{"title": "RetroTest3", "author": "CCC", "publisher": "KKK"}	t	\N
8	RetroNovel	{"title": "RetroTest", "author": "AAA", "publisher": "JJJ"}	f	\N
37	GraphicStory	{"title": "Monstress, Vol. 2: The Blood", "author": "Liu & Takeda ", "publisher": "image"}	f	\N
38	GraphicStory	{"title": "My Favorite Thing is Monsters", "author": "Emil Ferris", "publisher": "Fantagraphics"}	f	\N
40	Novel	{"title": "Six wakes", "author": "Lafferty"}	f	\N
41	Novel	{"title": "Stone sky", "author": "Jemisin"}	f	\N
42	Novel	{"title": "An Unkindness of Ghosts"}	f	\N
39	Novel	{"title": "Autonomous", "author": "Annalee Newitz"}	f	\N
43	RetroNovel	{"title": "Darkness and the Light", "author": "Olaf Stapledon", "publisher": "Methuen / S.J.R. Saunders"}	f	\N
44	RetroNovel	{"title": "Islandia", "author": "Austin Tappan Wright"}	f	\N
45	RetroNovel	{"title": "Second Stage Lensmen", "author": "E. E. \\"Doc\\" Smith", "publisher": "Astounding Science Fiction, November 1941 to February 1942"}	f	\N
46	RetroNovel	{"title": "Beyond This Horizon", "author": "Anson MacDonald (Robert A. Heinlein) ", "publisher": "Astounding Science Fiction, April & May 1942"}	f	\N
48	Novella	{"title": "The Dark Birds"}	f	\N
49	Novella	{"title": "Dusk or Dakr or Dawn or Day"}	f	\N
52	ShortStory	{"title": "Waiting Out the End of the World in Patty's\\nPlace Cafe"}	f	\N
53	Novella	{"title": "Welcome to your authentic Indian experience by Rebecca roanhorse"}	f	\N
55	EditorShort	{"editor": "\\nJonathan Strahan"}	f	\N
56	EditorShort	{"editor": "\\nLee Harris"}	f	\N
57	Novel	{"title": "Collapsing Empire", "author": "Scalzi"}	f	\N
58	Novel	{"title": "Provenance", "author": "Anne Leckey"}	f	\N
59	Novella	{"title": "Down Among the Sticks and Bones", "author": "Seanan McGuire"}	f	\N
60	Novella	{"title": "Binti: Home", "author": "Nnedi Okorafor"}	f	\N
61	Novella	{"title": "All Systems Red", "author": "Martha Wells"}	f	\N
62	DramaticLong	{"title": "The Good Place (Season 1) "}	f	\N
63	DramaticLong	{"title": "Star Wars: The Last Jedi", "producer": "Disney"}	f	\N
64	DramaticLong	{"title": "Wonder Woman"}	f	\N
65	ShortStory	{"title": "Utopia, LOL?", "author": "jamie Wahls"}	f	\N
66	ShortStory	{"title": "Clearly Lettered in a Mostly Steady Hand", "author": "Fran Wild"}	f	\N
67	ShortStory	{"title": "\\"Carnival Nine,\\"", "author": "Caroline M. Yoachim", "publisher": "Beneath Ceaseless Skies, May 2017"}	f	\N
68	ShortStory	{"title": "\\"Sun, Moon, Dust\\" ", "author": "Ursula Vernon", "publisher": "Uncanny, May/June 2017"}	f	\N
69	EditorLong	{"editor": "Diana Pho"}	f	\N
70	Semiprozine	{"title": "Strange Horizons, edited by Kate Dollarhyde, Gautam Bhatia, A.J. Odasso, Lila Garrott, Heather McDougal, Ciro Faienza, Tahlia Day, Vanessa Rose Phin, and the Strange Horizons staff"}	f	\N
71	Semiprozine	{"title": "The Book Smugglers, edited by Ana Grilo and Thea James"}	f	\N
72	Fanzine	{"title": "File 770, edited by Mike Glyer"}	f	\N
73	Fancast	{"title": "Ditch Diggers", "address": "http://murverse.com/tag/ditch-diggers/"}	f	\N
74	FanWriter	{"author": "Mike Glyer", "example": "file 770"}	f	\N
75	Astounding	{"author": "Jeannette Ng", "example": "under the pendulum sun"}	f	\N
76	RetroNovella	{"title": "\\"Asylum,\\"", "author": "A.E. van Vogt", "publisher": "Astounding Science Fiction, May 1942"}	f	\N
77	RetroNovella	{"title": "\\"Hell is Forever,\\"", "author": "Alfred Bester", "publisher": "Unknown Worlds, August 1942"}	f	\N
78	RetroNovella	{"title": "\\"The Unpleasant Profession of Jonathan Hoag,\\"", "author": "John Riverside (Robert A. Heinlein)", "publisher": "Unknown Worlds, October 1942"}	f	\N
79	RetroNovella	{"title": "\\"Nerves,\\" ", "author": "Lester del Rey ", "publisher": "Astounding Science Fiction, September 1942"}	f	\N
80	RetroNovelette	{"title": "\\"Bridle and Saddle,\\"", "author": "Isaac Asimov", "publisher": "Astounding Science Fiction, June 1942"}	f	\N
81	RetroNovelette	{"title": "\\"Foundation,\\"", "author": "Isaac Asimov ", "publisher": "Astounding Science Fiction, May 1942"}	f	\N
82	RetroNovelette	{"title": "\\"Goldfish Bowl,\\"", "author": "Anson MacDonald (Robert A. Heinlein) ", "publisher": "Astounding Science Fiction, March 1942"}	f	\N
83	RetroNovelette	{"title": "\\"The Star Mouse,\\"", "author": "Fredric Brown", "publisher": "Planet Stories, Spring 1942"}	f	\N
84	RetroNovelette	{"title": "\\"There Shall Be Darkness,\\"", "author": "C.L. Moore", "publisher": "Astounding Science Fiction, February 1942"}	f	\N
85	RetroShortStory	{"title": "\\"Etaoin Shrdlu,\\" ", "author": "Fredric Brown ", "publisher": "Unknown Worlds, February 1942"}	f	\N
86	RetroShortStory	{"title": "\\"Mimic,\\"", "author": "Martin Pearson (Donald A. Wollheim)", "publisher": "Astonishing Stories, December 1942"}	f	\N
87	RetroShortStory	{"title": "\\"Proof,\\"", "author": "Hal Clement ", "publisher": "Astounding Science Fiction, June 1942"}	f	\N
88	RetroShortStory	{"title": "\\"Runaround,\\"", "author": "Isaac Asimov ", "publisher": "Astounding Science Fiction, March 1942"}	f	\N
89	RetroShortStory	{"title": "\\"The Sunken Land,\\"", "author": "Fritz Leiber", "publisher": "Unknown Worlds, February 1942"}	f	\N
90	Novella	{"title": "\\"And Then There Were (N-One),\\"", "author": "Sarah Pinsker", "publisher": "Uncanny, March/April 2017"}	f	\N
91	RelatedWork	{"title": "An Archive of our own"}	f	\N
92	Novelette	{"title": "Extracurricular Activities", "author": "Yoon Ha lee"}	f	\N
93	RelatedWork	{"title": "Iain M. Banks", "author": "Paul Kincaid"}	f	\N
94	RelatedWork	{"title": "Luminescent Threads", "author": "edited by Alexandra Pierce and Mimi Mondal", "publisher": "12th planet"}	f	\N
95	Novelette	{"title": "Secret life of bots"}	f	\N
96	Novelette	{"title": "Waiting on a Bright Moon", "author": "JY Yang"}	f	\N
97	RelatedWork	{"title": "WorldCon 75 restaurant guide", "author": "WorldCon 75", "publisher": "Worldcon75"}	f	\N
98	DramaticShort	{"title": "Expanse: Caliban's War"}	f	\N
99	DramaticShort	{"title": "Michael's Gambit", "series": "The Good Place", "producer": "Fremulon / 3 Arts Entertainment / Universal Television"}	f	\N
100	ProArtist	{"author": "Bastien Lecouffe Deharme"}	f	\N
101	FanArtist	{"author": "Grace P. Fong"}	f	\N
102	FanArtist	{"author": "Spring Schoenhuth"}	f	\N
103	FanArtist	{"author": "Likhain (M. Sereno)"}	f	\N
104	Fanzine	{"title": "Journey Planet, edited by Team Journey Planet"}	f	\N
105	Fancast	{"title": "Journey Planet, edited by Team Journey Planet"}	f	\N
106	Semiprozine	{"title": "Journey Planet, edited by Team Journey Planet"}	f	\N
107	RetroDramaticShort	{"title": "Bambi", "producer": "disney"}	f	\N
109	RetroDramaticShort	{"title": "Cat People"}	f	\N
111	RetroDramaticShort	{"title": "The Ghost of Frankenstein", "producer": "universal"}	f	\N
113	RetroDramaticShort	{"title": "I Married a Witch"}	f	\N
115	RetroDramaticShort	{"title": "Invisible Agent", "producer": "universal"}	f	\N
117	RetroEditorShort	{"editor": "Oscar J. Friend"}	f	\N
118	RetroEditorShort	{"editor": "John W. Campbell"}	f	\N
119	RetroEditorShort	{"editor": "Raymond A. Palmer"}	f	\N
120	RetroProArtist	{"author": "Edd Cartier"}	f	\N
121	RetroFanWriter	{"author": "Art Widner"}	f	\N
122	RetroFanWriter	{"author": "Arthur Wilson \\"Bob\\" Tucker"}	f	\N
123	RetroFanWriter	{"author": "Forrest J Ackerman"}	f	\N
124	RetroFanzine	{"title": "Futurian War Digest, edited by J. Michael Rosenblum"}	f	\N
125	RetroFanzine	{"title": "Inspiration, edited by Lynn Bridges"}	f	\N
126	RetroFanzine	{"title": "The Phantagraph, edited by Donald A. Wollheim"}	f	\N
127	RetroFanzine	{"title": "Spaceways, edited by Harry Warner, Jr."}	f	\N
\.


--
-- Data for Name: classification; Type: TABLE DATA; Schema: hugo; Owner: hugo
--


COPY hugo.classification (category, nomination, canon_id) FROM stdin;
RetroNovel	{"title": "Voyage to Venus", "author": "C S Lewis"}	33
RetroNovel	{"title": "Perelandra", "author": "C.S. Lewis"}	33
RetroDramaticShort	{"title": "I Married a Witch"}	113
RetroDramaticLong	{"title": "I Married a Witch, written by Robert Pirosh and Marc Connelly, directed by René Clair ()", "producer": "Cinema Guild Productions / Paramount Pictures"}	113
RetroDramaticShort	{"title": "Invisible Agent", "producer": "universal"}	115
RetroDramaticLong	{"title": "Invisible Agent, written by Curtis Siodmak, directed by Edwin L. Marin ", "producer": "Frank Lloyd Productions / Universal Pictures"}	115
Novel	{"title": "AAA1", "author": "BBB", "publisher": "CCC"}	\N
RetroNovelette	{"title": "RetroTest3", "author": "CCC", "publisher": "KKK"}	\N
RetroNovella	{"title": "RetroTest3", "author": "CCC", "publisher": "KKK"}	\N
RetroDramaticShort	{"title": "Some", "series": "40s", "producer": "Stuff"}	\N
RetroDramaticShort	{"title": "Some", "series": "Other", "producer": "Stuff"}	\N
RetroNovel	{"title": "RetroTest3", "author": "CCC", "publisher": "KKK"}	7
RetroNovel	{"title": "RetroTest", "author": "AAA", "publisher": "JJJ"}	8
RetroNovel	{"title": "RetroTest2", "author": "BBB", "publisher": "JJJ"}	8
Series	{"title": "InCryptid", "author": "Seanan Macguire"}	34
Novel	{"title": "AAA3", "author": "BBB1", "publisher": "CCC1"}	\N
Novel	{"title": "AAA", "author": "BBB", "publisher": "CCC"}	\N
EditorShort	{"editor": "\\nJonathan Strahan"}	55
EditorShort	{"editor": "Jonathan Strahan"}	55
EditorShort	{"editor": "Lee Harri"}	56
EditorShort	{"editor": "\\nLee Harris"}	56
RetroDramaticShort	{"title": "Bambi", "producer": "disney"}	107
RetroDramaticLong	{"title": "Bambi, written by Perce Pearce, Larry Morey, et al., directed by David D. Hand et al. ()", "producer": "Walt Disney Productions"}	107
Series	{"title": "InCryptid", "author": " Seanan McGuire", "publisher": "DAW"}	34
Series	{"title": "The Memoirs of Lady Trent", "author": "Brennan"}	35
Series	{"title": "The Memoirs of Lady Trent", "author": "Marie Brennan", "publisher": "Tor US / Titan UK"}	35
RetroNovel	{"title": "ബാല്യകാലസഖി", "author": "വൈക്കം മുഹമ്മദ് ബഷീർ"}	\N
RetroNovel	{"title": "RetroHugoNovel1", "author": "RetroNovelAuthor", "publisher": "RetroNovelPublisher"}	\N
Series	{"title": "Stormlight Archive", "author": "Sanderson"}	36
Series	{"title": "The Stormlight Archive", "author": "Brandon Sanderson", "publisher": "Tor US / Gollancz UK"}	36
RetroDramaticShort	{"title": "Cat People"}	109
RetroDramaticLong	{"title": "Cat People, written by DeWitt Bodeen, directed by Jacques Tourneur ()", "producer": "RKO Radio Pictures, Inc."}	109
RetroDramaticShort	{"title": "The Ghost of Frankenstein", "producer": "universal"}	111
RetroDramaticLong	{"title": "The Ghost of Frankenstein, written by W. Scott Darling, directed by Erle C. Kenton ()", "producer": "Universal Pictures"}	111
GraphicStory	{"title": "Monstress, Vol. 2: The Blood", "author": "Liu & Takeda ", "publisher": "image"}	37
GraphicStory	{"title": "Monstress, Volume 2: The Blood", "author": "written by Marjorie M. Liu, illustrated by Sana Takeda", "publisher": "Image Comics)"}	37
GraphicStory	{"title": "My Favorite Thing is Monsters", "author": "Emil Ferris"}	38
GraphicStory	{"title": "My Favorite Thing is Monsters", "author": "Emil Ferris", "publisher": "Fantagraphics"}	38
GraphicStory	{"title": "My Favorite Thing is Monsters"}	38
Novel	{"title": "Autonomous "}	39
Novel	{"title": "Autonomous", "author": "Annalee Newitz"}	39
Novel	{"title": "Six wakes", "author": "Lafferty"}	40
Novel	{"title": "Six Wakes", "author": "Mur Lafferty", "publisher": "Orbit"}	40
Novel	{"title": "Stone sky", "author": "Jemisin"}	41
Novel	{"title": "The Stone Sky", "author": "N K Jemisin"}	41
Novel	{"title": "The Stone Sky", "author": "NK Jemisin", "publisher": "Orbit"}	41
Novel	{"title": "An Unkindness of Ghosts"}	42
Novel	{"title": "An Unkindness of Ghosts", "author": "Rivers Solomon", "publisher": "Akashic"}	42
RetroNovel	{"title": "Darkness and the Light", "author": "Olaf Stapledon", "publisher": "Methuen / S.J.R. Saunders"}	43
RetroNovel	{"title": "Darkness and the Light,", "author": "Stapledon"}	43
RetroNovel	{"title": "Islandia", "author": "Austin Tappan Wright"}	44
RetroNovel	{"title": "Islandia", "author": "Austin Tappan Wright", "publisher": "Farrar & Rinehart"}	44
RetroNovel	{"title": "Second Stage Lensmen", "author": "E. E. \\"Doc\\" Smith", "publisher": "Astounding Science Fiction, November 1941 to February 1942"}	45
RetroNovel	{"title": "Second Stage Lensmen", "author": "E E Doc SMith"}	45
RetroNovel	{"title": "Beyond This Horizon", "author": "Anson MacDonald (Robert A. Heinlein) ", "publisher": "Astounding Science Fiction, April & May 1942"}	46
RetroNovel	{"title": "Beyond This Horizon", "author": "Heinlein"}	46
Novella	{"title": "Dusk or Dakr or Dawn or Day"}	49
Novelette	{"title": "Dusk or Dark or Dawn or Day"}	49
ShortStory	{"title": "Confessions ofa Con Girl"}	49
ShortStory	{"title": "Fandom for Robots"}	49
Novella	{"title": "Fandom for robost"}	49
Novella	{"title": "The Dark Birds"}	49
Novelette	{"title": "Dark birds"}	49
Novella	{"title": "Waiting Out the End of the World in Patty's Place Cafe"}	52
ShortStory	{"title": "Waiting Out the End of the World in Patty's\\nPlace Cafe"}	52
Novella	{"title": "Welcome to your authentic Indian experience by Rebecca roanhorse"}	53
ShortStory	{"title": "welcome to your authentic indian experience", "author": "Rebecca Roanhorse"}	53
Novelette	{"title": "Wind Will Rove", "author": "Sarah Pinsker"}	\N
Novel	{"title": "Collapsing Empire", "author": "Scalzi"}	57
Novel	{"title": "The Collapsing Empire", "author": "Jhon Scalzi"}	57
Novel	{"title": "Provenance", "author": "Anne Leckey"}	58
Novel	{"title": "Provenance", "author": "Anne Lekie"}	58
Novel	{"title": "Six Wakes", "author": "Mur Lafferty"}	40
Novel	{"title": "The Stone Sky", "author": "NK Jemisen"}	41
Novella	{"title": "Down Among the Sticks and Bones", "author": "Seanan McGuire"}	59
Novella	{"title": "Down Among the Sticks and Bones", "author": "Seanan McGuire", "publisher": "Tor.com Publishing"}	59
Novella	{"title": "Binti: Home", "author": "Nnedi Okorafor"}	60
Novella	{"title": "Binti: Home", "author": "Nnedi Okorafor", "publisher": "Tor.com Publishing"}	60
Novella	{"title": "All Systems Red", "author": "Martha Wells"}	61
Novella	{"title": "All Systems Red", "author": "Martha Wells", "publisher": "Tor.com Publishing"}	61
DramaticLong	{"title": "The Good Place (Season 1) "}	62
DramaticLong	{"title": "The Good Place (Season 1)", "producer": "Fremulon"}	62
DramaticLong	{"title": "Star Wars: The Last Jedi", "producer": "Disney"}	63
DramaticLong	{"title": "Star Wars: The Last Jedi, written and directed by Rian Johnson", "producer": "Lucasfilm, Ltd."}	63
DramaticLong	{"title": "Wonder Woman"}	64
DramaticLong	{"title": "Wonder Woman, screenplay by Allan Heinberg, story by Zack Snyder & Allan Heinberg and Jason Fuchs, directed by Patty Jenkins", "producer": "DC Films / Warner Brothers"}	64
ShortStory	{"title": "Utopia, LOL?", "author": "jamie Wahls"}	65
ShortStory	{"title": "Utopia, LOL?"}	65
ShortStory	{"title": "Clearly Lettered in a Mostly Steady Hand", "author": "Fran Wild"}	66
ShortStory	{"title": "Clearly lettered i na mostly steady hand"}	66
ShortStory	{"title": "\\"Carnival Nine,\\"", "author": "Caroline M. Yoachim", "publisher": "Beneath Ceaseless Skies, May 2017"}	67
ShortStory	{"title": "Carnibal Nine"}	67
ShortStory	{"title": "Carnival 9", "author": "Yoachim"}	67
ShortStory	{"title": "\\"Sun, Moon, Dust\\" ", "author": "Ursula Vernon", "publisher": "Uncanny, May/June 2017"}	68
ShortStory	{"title": "Sun, Moon, Dust", "author": "Ursula Vernon"}	68
EditorLong	{"editor": "Diana Pho"}	69
EditorLong	{"editor": "Diana M. Pho"}	69
Semiprozine	{"title": "Strange Horizons, edited by Kate Dollarhyde, Gautam Bhatia, A.J. Odasso, Lila Garrott, Heather McDougal, Ciro Faienza, Tahlia Day, Vanessa Rose Phin, and the Strange Horizons staff"}	70
Semiprozine	{"title": "Strange Horizons"}	70
Semiprozine	{"title": "The Book Smugglers, edited by Ana Grilo and Thea James"}	71
Semiprozine	{"title": "The Book Smugglers"}	71
Fanzine	{"title": "File 770, edited by Mike Glyer"}	72
Fanzine	{"title": "File 770"}	72
Fancast	{"title": "Ditch Diggers", "address": "http://murverse.com/tag/ditch-diggers/"}	73
Fancast	{"title": "Ditch Diggers"}	73
FanWriter	{"author": "Mike Glyer", "example": "file 770"}	74
FanWriter	{"author": "Mike Glyer"}	74
Astounding	{"author": "Jeannette Ng", "example": "under the pendulum sun"}	75
Astounding	{"author": "Jeannette Ng"}	75
RetroNovella	{"title": "\\"Asylum,\\"", "author": "A.E. van Vogt", "publisher": "Astounding Science Fiction, May 1942"}	76
RetroNovella	{"title": "Asylum", "author": "van Vogt"}	76
RetroNovella	{"title": "\\"Hell is Forever,\\"", "author": "Alfred Bester", "publisher": "Unknown Worlds, August 1942"}	77
RetroNovella	{"title": "Hell is Forever", "author": "Bester"}	77
RetroNovella	{"title": "\\"The Unpleasant Profession of Jonathan Hoag,\\"", "author": "John Riverside (Robert A. Heinlein)", "publisher": "Unknown Worlds, October 1942"}	78
RetroNovella	{"title": "The Unpleasant Profession of Jonathan Hoag", "author": "Heinlein"}	78
RetroNovella	{"title": "\\"Nerves,\\" ", "author": "Lester del Rey ", "publisher": "Astounding Science Fiction, September 1942"}	79
RetroNovella	{"title": "Nerves", "author": "del Ray"}	79
RetroNovelette	{"title": "\\"Bridle and Saddle,\\"", "author": "Isaac Asimov", "publisher": "Astounding Science Fiction, June 1942"}	80
RetroNovelette	{"title": "Bridle and Saddle", "author": "Asimov"}	80
RetroNovelette	{"title": "\\"Foundation,\\"", "author": "Isaac Asimov ", "publisher": "Astounding Science Fiction, May 1942"}	81
RetroNovelette	{"title": "Foundation", "author": "Asimov"}	81
RetroNovelette	{"title": "\\"Goldfish Bowl,\\"", "author": "Anson MacDonald (Robert A. Heinlein) ", "publisher": "Astounding Science Fiction, March 1942"}	82
RetroNovelette	{"title": "Goldfish Bowl", "author": "Heinlein"}	82
RetroNovelette	{"title": "\\"The Star Mouse,\\"", "author": "Fredric Brown", "publisher": "Planet Stories, Spring 1942"}	83
RetroNovelette	{"title": "The Star Mouse", "author": "Brown"}	83
RetroNovelette	{"title": "\\"There Shall Be Darkness,\\"", "author": "C.L. Moore", "publisher": "Astounding Science Fiction, February 1942"}	84
RetroNovelette	{"title": "There Shall Be Darkness", "author": "Moore"}	84
RetroShortStory	{"title": "\\"Etaoin Shrdlu,\\" ", "author": "Fredric Brown ", "publisher": "Unknown Worlds, February 1942"}	85
RetroShortStory	{"title": "Etaoin Shrdlu", "author": "Fred Brown"}	85
RetroShortStory	{"title": "\\"Mimic,\\"", "author": "Martin Pearson (Donald A. Wollheim)", "publisher": "Astonishing Stories, December 1942"}	86
RetroShortStory	{"title": "Mimic", "author": "pearson"}	86
RetroShortStory	{"title": "\\"Proof,\\"", "author": "Hal Clement ", "publisher": "Astounding Science Fiction, June 1942"}	87
RetroShortStory	{"title": "Proof", "author": "Clement"}	87
RetroShortStory	{"title": "\\"Runaround,\\"", "author": "Isaac Asimov ", "publisher": "Astounding Science Fiction, March 1942"}	88
RetroShortStory	{"title": "Runaround", "author": "Asimov"}	88
RetroShortStory	{"title": "\\"The Sunken Land,\\"", "author": "Fritz Leiber", "publisher": "Unknown Worlds, February 1942"}	89
RetroShortStory	{"title": "The Sunken Land", "author": "Leiber"}	89
Novella	{"title": "\\"And Then There Were (N-One),\\"", "author": "Sarah Pinsker", "publisher": "Uncanny, March/April 2017"}	90
Novella	{"title": "And then there were (n-one)", "author": "Pinkser"}	90
RelatedWork	{"title": "An Archive of our own"}	91
RelatedWork	{"title": "Archive of Our Own", "author": "OTW", "publisher": "OTW"}	91
Novelette	{"title": "Extracurricular Activities", "author": "Yoon Ha lee"}	92
Novelette	{"title": "\\"Extracurricular Activities,\\"", "author": "Yoon Ha Lee", "publisher": "Tor.com, February 15, 2017"}	92
RelatedWork	{"title": "Iain M. Banks", "author": "Paul Kincaid"}	93
RelatedWork	{"title": "Iain M. Banks (Modern Masters of Science Fiction) ", "author": "Paul Kincaid", "publisher": "University of Illinois Press"}	93
RelatedWork	{"title": "Luminescent Threads", "author": "edited by Alexandra Pierce and Mimi Mondal", "publisher": "12th planet"}	94
RelatedWork	{"title": "Luminescent Threads: Connections to Octavia E. Butler", "author": "Alexandra Pierce and Mimi Mondal", "publisher": "Twelfth Planet Press"}	94
Novelette	{"title": "Secret life of bots"}	95
Novelette	{"title": "Th\\ne Secret Life of Bots", "author": "Suzanne Palmer"}	95
Novelette	{"title": "Waiting on a Bright Moon", "author": "JY Yang"}	96
Novelette	{"title": "Waiting on a Bright Moon "}	96
RelatedWork	{"title": "WorldCon 75 restaurant guide", "author": "WorldCon 75", "publisher": "Worldcon75"}	97
RelatedWork	{"title": "WorldCon 75 restaurant guide "}	97
DramaticShort	{"title": "Expanse: Caliban's War"}	98
DramaticShort	{"title": "Expanse Caliban's Ware", "series": "Expanse"}	98
DramaticShort	{"title": "Michael's Gambit", "series": "The Good Place", "producer": "Fremulon / 3 Arts Entertainment / Universal Television"}	99
DramaticShort	{"title": "Michael's Gambit", "series": "Good Place"}	99
DramaticShort	{"title": "Michael's Gambi", "series": "The Good Place", "producer": "fremulon"}	99
ProArtist	{"author": "Bastien Lecouffe Deharme"}	100
ProArtist	{"author": "Bastien Lecouffe\\n-\\nDeharme"}	100
FanArtist	{"author": "Grace P. Fong"}	101
FanArtist	{"author": "Grace Fong"}	101
FanArtist	{"author": "Spring Schoenhuth"}	102
FanArtist	{"author": "spring Schonehuth"}	102
FanArtist	{"author": "Likhain (M. Sereno)"}	103
FanArtist	{"author": "Likhain", "example": "https://likhain.net/"}	103
Fanzine	{"title": "Journey Planet, edited by Team Journey Planet"}	104
Fancast	{"title": "Verity!", "address": "veriypodcast.com"}	105
Semiprozine	{"title": "Journey Planet"}	106
RetroEditorShort	{"editor": "Oscar J. Friend"}	117
RetroEditorShort	{"editor": "oscar friend"}	117
RetroEditorShort	{"editor": "John W. Campbell"}	118
RetroEditorShort	{"editor": "Campbell"}	118
RetroEditorShort	{"editor": "Raymond A. Palmer"}	119
RetroEditorShort	{"editor": "raymond palmer"}	119
RetroProArtist	{"author": "Edd Cartier"}	120
RetroProArtist	{"author": "Ed Cartier"}	120
RetroFanWriter	{"author": "Art Widner"}	121
RetroFanWriter	{"author": "Art Wider"}	121
RetroFanWriter	{"author": "Arthur Wilson \\"Bob\\" Tucker"}	122
RetroFanWriter	{"author": "bob tucker"}	122
RetroFanWriter	{"author": "Forrest J Ackerman"}	123
RetroFanWriter	{"author": "forrest ackerman"}	123
RetroFanzine	{"title": "Futurian War Digest, edited by J. Michael Rosenblum"}	124
RetroFanzine	{"title": "Futurian War Digest,"}	124
RetroFanzine	{"title": "Inspiration, edited by Lynn Bridges"}	125
RetroFanzine	{"title": "inspiration"}	125
RetroFanzine	{"title": "The Phantagraph, edited by Donald A. Wollheim"}	126
RetroFanzine	{"title": "phantagraph"}	126
RetroFanzine	{"title": "Spaceways, edited by Harry Warner, Jr."}	127
RetroFanzine	{"title": "Spaceways"}	127
\.


--
-- Data for Name: finalists; Type: TABLE DATA; Schema: hugo; Owner: hugo
--


COPY hugo.finalists (id, category, sortindex, title, subtitle) FROM stdin;
1	Novel	1	All the Birds in the Sky	by Charlie Jane Anders (Tor Books / Titan Books)
2	Novel	2	A Closed and Common Orbit	by Becky Chambers (Hodder & Stoughton / Harper Voyager US)
3	Novel	3	Death's End	by Cixin Liu, translated by Ken Liu (Tor Books / Head of Zeus)
4	Novel	4	Ninefox Gambit	by Yoon Ha Lee (Solaris Books)
5	Novel	5	The Obelisk Gate	by N. K. Jemisin (Orbit Books)
6	Novel	6	Too Like the Lightning	by Ada Palmer (Tor Books)
7	Novella	1	The Ballad of Black Tom	by Victor LaValle (Tor.com publishing)
8	Novella	2	The Dream-Quest of Vellitt Boe	by Kij Johnson (Tor.com publishing)
9	Novella	3	Every Heart a Doorway	by Seanan McGuire (Tor.com publishing)
10	Novella	4	Penric and the Shaman	by Lois McMaster Bujold (Spectrum Literary Agency)
11	Novella	5	A Taste of Honey	by Kai Ashante Wilson (Tor.com publishing)
12	Novella	6	This Census-Taker	by China Miéville (Del Rey / Picador)
13	Novelette	1	Alien Stripper Boned From Behind By The T-Rex	by Stix Hiscock (self-published)
14	Novelette	2	"The Art of Space Travel"	by Nina Allan (Tor.com, July 2016)
15	Novelette	3	The Jewel and Her Lapidary	by Fran Wilde (Tor.com publishing, May 2016)
16	Novelette	4	"The Tomato Thief"	by Ursula Vernon (Apex Magazine, January 2016)
17	Novelette	5	"Touring with the Alien"	by Carolyn Ives Gilman (Clarkesworld Magazine, April 2016)
18	Novelette	6	"You'll Surely Drown Here If You Stay"	by Alyssa Wong (Uncanny Magazine, May 2016)
19	ShortStory	1	"The City Born Great"	by N. K. Jemisin (Tor.com, September 2016)
20	ShortStory	2	"A Fist of Permutations in Lightning and Wildflowers"	by Alyssa Wong (Tor.com, March 2016)
21	ShortStory	3	"Our Talons Can Crush Galaxies"	by Brooke Bolander (Uncanny Magazine, November 2016)
22	ShortStory	4	"Seasons of Glass and Iron"	by Amal El-Mohtar (The Starlit Wood: New Fairy Tales, Saga Press)
23	ShortStory	5	"That Game We Played During the War"	by Carrie Vaughn (Tor.com, March 2016)
24	ShortStory	6	"An Unimaginable Light"	by John C. Wright (God, Robot, Castalia House)
25	RelatedWork	1	The Geek Feminist Revolution	by Kameron Hurley (Tor Books)
26	RelatedWork	2	The Princess Diarist	by Carrie Fisher (Blue Rider Press)
27	RelatedWork	3	Traveler of Worlds: Conversations with Robert Silverberg	by Robert Silverberg and Alvaro Zinos-Amaro (Fairwood)
28	RelatedWork	4	The View From the Cheap Seats	by Neil Gaiman (William Morrow / Harper Collins)
29	RelatedWork	5	The Women of Harry Potter posts	by Sarah Gailey (Tor.com)
30	RelatedWork	6	Words Are My Matter: Writings About Life and Books, 2000-2016	by Ursula K. Le Guin (Small Beer)
31	GraphicStory	1	Black Panther, Volume 1: A Nation Under Our Feet	written by Ta-Nehisi Coates, illustrated by Brian Stelfreeze (Marvel)
32	GraphicStory	2	Monstress, Volume 1: Awakening	written by Marjorie Liu, illustrated by Sana Takeda (Image)
33	GraphicStory	3	Ms. Marvel, Volume 5: Super Famous	written by G. Willow Wilson, illustrated by Takeshi Miyazawa (Marvel)
34	GraphicStory	4	Paper Girls, Volume 1	written by Brian K. Vaughan, illustrated by Cliff Chiang, colored by Matthew Wilson, lettered by Jared Fletcher (Image)
35	GraphicStory	5	Saga, Volume 6	illustrated by Fiona Staples, written by Brian K. Vaughan, lettered by Fonografiks (Image)
36	GraphicStory	6	The Vision, Volume 1: Little Worse Than A Man	written by Tom King, illustrated by Gabriel Hernandez Walta (Marvel)
37	DramaticLong	1	Arrival	screenplay by Eric Heisserer based on a short story by Ted Chiang, directed by Denis Villeneuve (21 Laps Entertainment/FilmNation Entertainment/Lava Bear Films)
38	DramaticLong	2	Deadpool	screenplay by Rhett Reese & Paul Wernick, directed by Tim Miller (Twentieth Century Fox Film Corporation/Marvel Entertainment/Kinberg Genre/The Donners' Company/TSG Entertainment)
39	DramaticLong	3	Ghostbusters	screenplay by Katie Dippold & Paul Feig, directed by Paul Feig (Columbia Pictures/LStar Capital/Village Roadshow Pictures/Pascal Pictures/Feigco Entertainment/Ghostcorps/The Montecito Picture Company)
40	DramaticLong	4	Hidden Figures	screenplay by Allison Schroeder\tand Theodore Melfi, directed by Theodore Melfi (Fox 2000 Pictures/Chernin Entertainment/Levantine Films/TSG Entertainment)
41	DramaticLong	5	Rogue One	screenplay by Chris Weitz and Tony Gilroy, directed by Gareth Edwards (Lucasfilm/Allison Shearmur Productions/Black Hangar Studios/Stereo D/Walt Disney Pictures)
42	DramaticLong	6	Stranger Things, Season One	created by the Duffer Brothers (21 Laps Entertainment/Monkey Massacre)
43	DramaticShort	1	Black Mirror: "San Junipero"	written by Charlie Brooker, directed by Owen Harris (House of Tomorrow)
44	DramaticShort	2	Doctor Who: "The Return of Doctor Mysterio"	written by Steven Moffat, directed by Ed Bazalgette (BBC Cymru Wales)
45	DramaticShort	3	The Expanse: "Leviathan Wakes"	written by Mark Fergus and Hawk Ostby, directed by Terry McDonough (SyFy)
46	DramaticShort	4	Game of Thrones: "Battle of the Bastards"	written by David Benioff and D. B. Weiss, directed by Miguel Sapochnik (HBO)
47	DramaticShort	5	Game of Thrones: "The Door"	written by David Benioff and D. B. Weiss, directed by Jack Bender (HBO)
48	DramaticShort	6	Splendor & Misery [album]	by Clipping (Daveed Diggs, William Hutson, Jonathan Snipes)
49	EditorShort	1	John Joseph Adams	\N
50	EditorShort	2	Neil Clarke	\N
51	EditorShort	3	Ellen Datlow	\N
52	EditorShort	4	Jonathan Strahan	\N
53	EditorShort	5	Lynne M. Thomas & Michael Damian Thomas	\N
54	EditorShort	6	Sheila Williams	\N
55	EditorLong	1	Vox Day	\N
56	EditorLong	2	Sheila E. Gilbert	\N
57	EditorLong	3	Liz Gorinsky	\N
58	EditorLong	4	Devi Pillai	\N
59	EditorLong	5	Miriam Weinberg	\N
60	EditorLong	6	Navah Wolfe	\N
61	ProArtist	1	Galen Dara	\N
62	ProArtist	2	Julie Dillon	\N
63	ProArtist	3	Chris McGrath	\N
64	ProArtist	4	Victo Ngai	\N
65	ProArtist	5	John Picacio	\N
66	ProArtist	6	Sana Takeda	\N
67	Semiprozine	1	Beneath Ceaseless Skies	editor-in-chief and publisher Scott H. Andrews
68	Semiprozine	2	Cirsova Heroic Fantasy and Science Fiction Magazine	edited by P. Alexander
69	Semiprozine	3	GigaNotoSaurus	edited by Rashida J. Smith
70	Semiprozine	4	Strange Horizons	edited by Niall Harrison, Catherine Krahe, Vajra Chandrasekera, Vanessa Rose Phin, Li Chua, Aishwarya Subramanian, Tim Moore, Anaea Lay, and the Strange Horizons staff
71	Semiprozine	5	Uncanny Magazine	edited by Lynne M. Thomas & Michael Damian Thomas, Michi Trota, Julia Rios, and podcast produced by Erika Ensign & Steven Schapansky
72	Semiprozine	6	The Book Smugglers	edited by Ana Grilo and Thea James
73	Fanzine	1	Castalia House Blog	edited by Jeffro Johnson
74	Fanzine	2	Journey Planet	edited by James Bacon, Chris Garcia, Esther MacCallum-Stewart, Helena Nash, Errick Nunnally, Pádraig Ó Méalóid, Chuck Serface, and Erin Underwood
75	Fanzine	3	Lady Business	edited by Clare, Ira, Jodie, KJ, Renay, and Susan
76	Fanzine	4	nerds of a feather, flock together	edited by The G, Vance Kotrla, and Joe Sherry
77	Fanzine	5	Rocket Stack Rank	edited by Greg Hullender and Eric Wong
78	Fanzine	6	SF Bluestocking	edited by Bridget McKinney
79	Fancast	1	The Coode Street Podcast	presented by Gary K. Wolfe and Jonathan Strahan
80	Fancast	2	Ditch Diggers	presented by Mur Lafferty and Matt Wallace
81	Fancast	3	Fangirl Happy Hour	presented by Ana Grilo and Renay Williams
82	Fancast	4	Galactic Suburbia	presented by Alisa Krasnostein, Alexandra Pierce and Tansy Rayner Roberts, produced by Andrew Finch
83	Fancast	5	The Rageaholic	presented by RazörFist
84	Fancast	6	Tea and Jeopardy	presented by Emma Newman with Peter Newman
85	FanWriter	1	Mike Glyer	\N
86	FanWriter	2	Jeffro Johnson	\N
87	FanWriter	3	Natalie Luhrs	\N
88	FanWriter	4	Foz Meadows	\N
89	FanWriter	5	Abigail Nussbaum	\N
90	FanWriter	6	Chuck Tingle	\N
91	FanArtist	1	Ninni Aalto	\N
92	FanArtist	2	Vesa Lehtimäki	\N
93	FanArtist	3	Likhain (M. Sereno)	\N
94	FanArtist	4	Spring Schoenhuth	\N
95	FanArtist	5	Steve Stiles	\N
96	FanArtist	6	Mansik Yang	\N
97	Series	1	The Craft Sequence	by Max Gladstone (Tor Books)
98	Series	2	The Expanse	by James S.A. Corey (Orbit US / Orbit UK)
99	Series	3	The October Daye Books	by Seanan McGuire (DAW / Corsair)
100	Series	4	The Peter Grant / Rivers of London series	by Ben Aaronovitch (Gollancz / Del Rey / DAW / Subterranean)
101	Series	5	The Temeraire series	by Naomi Novik (Del Rey / Harper Voyager UK)
102	Series	6	The Vorkosigan Saga	by Lois McMaster Bujold (Baen)
103	Astounding	1	Sarah Gailey	1st year of eligibility
104	Astounding	2	J. Mulrooney	1st year of eligibility
105	Astounding	3	Malka Older	2nd year of eligibility
106	Astounding	4	Ada Palmer	1st year of eligibility
107	Astounding	5	Laurie Penny	2nd year of eligibility
108	Astounding	6	Kelly Robson	2nd year of eligibility
\.


--
-- Data for Name: membership_types; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.membership_types (membership, allow_lookup, badge, daypass_available, hugo_nominator, member, wsfs_member) FROM stdin;
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.people (id, last_modified, membership, member_number, legal_name, public_first_name, public_last_name, email, city, state, country, postcode, address, badge_name, badge_subtitle, paper_pubs, hugo_voter, hugo_nominator) FROM stdin;
\.


--
-- Data for Name: nominations; Type: TABLE DATA; Schema: hugo; Owner: hugo
--


COPY hugo.nominations (id, "time", client_ip, client_ua, person_id, signature, category, nominations) FROM stdin;
1	2018-10-06 08:22:31.013582+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36	13	kkk	Novel	{"{\\"title\\": \\"AAA\\", \\"author\\": \\"BBB\\", \\"publisher\\": \\"CCC\\"}","{\\"title\\": \\"AAA1\\", \\"author\\": \\"BBB\\", \\"publisher\\": \\"CCC\\"}","{\\"title\\": \\"AAA3\\", \\"author\\": \\"BBB1\\", \\"publisher\\": \\"CCC1\\"}"}
2	2018-10-06 16:52:15.968363+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	13	kkk	RetroNovel	{"{\\"title\\": \\"RetroTest\\", \\"author\\": \\"AAA\\", \\"publisher\\": \\"JJJ\\"}","{\\"title\\": \\"RetroTest2\\", \\"author\\": \\"BBB\\", \\"publisher\\": \\"JJJ\\"}"}
3	2018-10-06 21:21:55.207328+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	13	sss	RetroNovella	{"{\\"title\\": \\"RetroTest3\\", \\"author\\": \\"CCC\\", \\"publisher\\": \\"KKK\\"}"}
4	2018-10-06 21:21:55.209944+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	13	sss	RetroNovel	{"{\\"title\\": \\"RetroTest\\", \\"author\\": \\"AAA\\", \\"publisher\\": \\"JJJ\\"}","{\\"title\\": \\"RetroTest2\\", \\"author\\": \\"BBB\\", \\"publisher\\": \\"JJJ\\"}","{\\"title\\": \\"RetroTest3\\", \\"author\\": \\"CCC\\", \\"publisher\\": \\"KKK\\"}"}
5	2018-10-06 21:22:38.30028+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	13	sss	RetroNovelette	{"{\\"title\\": \\"RetroTest3\\", \\"author\\": \\"CCC\\", \\"publisher\\": \\"KKK\\"}"}
6	2018-10-06 21:24:42.747539+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	13	sss	RetroNovelette	{"{\\"title\\": \\"RetroTest3\\", \\"author\\": \\"CCC\\", \\"publisher\\": \\"KKK\\"}","{\\"title\\": \\"RetroTest4\\", \\"author\\": \\"CCC\\", \\"publisher\\": \\"KKK\\"}"}
7	2018-10-08 19:49:30.049343+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	13	AA	RetroNovel	{}
8	2018-10-08 19:49:30.070745+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	13	AA	RetroNovella	{}
9	2018-10-08 19:49:30.157913+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	13	AA	Novel	{}
10	2018-10-08 19:49:30.160644+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	13	AA	RetroNovelette	{}
11	2018-10-08 19:53:33.730908+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1001	AK	Novel	{"{\\"title\\": \\"Test Email\\", \\"author\\": \\"Test Author\\", \\"publisher\\": \\"Test Publisher\\"}"}
12	2018-10-09 12:03:08.024242+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1027	Nicholas Whyte	Novel	{"{\\"title\\": \\"Kingdom of Ash\\", \\"author\\": \\"Sarah Maas\\"}","{\\"title\\": \\"Cruel Prince\\", \\"author\\": \\"Holly Black\\"}","{\\"title\\": \\"Circe\\", \\"author\\": \\"Madeleine Miller\\"}"}
13	2018-10-09 13:20:43.410417+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1001	AK	RetroNovel	{"{\\"title\\": \\"RetroHugoNovel1\\", \\"author\\": \\"RetroNovelAuthor\\", \\"publisher\\": \\"RetroNovelPublisher\\"}"}
14	2018-10-09 16:59:07.040484+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1027	Nicholas Whyte	RelatedWork	{"{\\"title\\": \\"An Archive of our own\\"}"}
15	2018-10-09 17:01:11.333607+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1027	Nicholas Whyte	RetroNovel	{"{\\"title\\": \\"Perelandra\\", \\"author\\": \\"C.S. Lewis\\"}"}
16	2018-10-09 17:01:11.335056+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1027	Nicholas Whyte	RetroNovella	{"{\\"title\\": \\"The Little Prince\\", \\"author\\": \\"Antoine de Saint-Exupery\\"}"}
17	2018-10-09 17:03:05.466771+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1027	Nicholas Whyte	RetroNovel	{"{\\"title\\": \\"Perelandra\\", \\"author\\": \\"C.S. Lewis\\"}","{\\"title\\": \\"ബാല്യകാലസഖി\\", \\"author\\": \\"വൈക്കം മുഹമ്മദ് ബഷീർ\\"}"}
18	2018-10-13 07:39:57.176965+00	::ffff:172.18.0.10	Mozilla/5.0 (iPad; CPU OS 12_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1	1027	Nicholas Whyte	Novel	{"{\\"title\\": \\"Stone sky\\", \\"author\\": \\"Jemisin\\"}","{\\"title\\": \\"Six wakes\\", \\"author\\": \\"Lafferty\\"}","{\\"title\\": \\"Stars are legion\\", \\"author\\": \\"Madeleine Miller\\"}","{\\"title\\": \\"Autonomous \\"}"}
19	2018-10-13 07:41:00.208399+00	::ffff:172.18.0.10	Mozilla/5.0 (iPad; CPU OS 12_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1	1027	Nicholas Whyte	Novella	{"{\\"title\\": \\"Fandom for robost\\"}","{\\"title\\": \\"Welcome to your authentic Indian experience by Rebecca roanhorse\\"}","{\\"title\\": \\"Waiting Out the End of the World in Patty's Place Cafe\\"}"}
20	2018-10-13 07:54:41.382228+00	::ffff:172.18.0.10	Mozilla/5.0 (iPad; CPU OS 12_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1	1027	Nicholas Whyte	Novelette	{"{\\"title\\": \\"Secret life of bots\\"}","{\\"title\\": \\"Dark birds\\"}","{\\"title\\": \\"Series of steaks\\"}"}
21	2018-10-13 09:39:26.283948+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	Novel	{"{\\"title\\": \\"Autonomous\\", \\"author\\": \\"Annalee Newitz\\"}","{\\"title\\": \\"An Unkindness of Ghosts\\", \\"author\\": \\"Rivers Solomon\\", \\"publisher\\": \\"Akashic\\"}","{\\"title\\": \\"Borne\\", \\"author\\": \\"Vandermeer\\"}","{\\"title\\": \\"Provenance\\", \\"author\\": \\"Anne Lekie\\"}","{\\"title\\": \\"The Stone Sky\\", \\"author\\": \\"N K Jemisin\\"}"}
22	2018-10-13 09:42:24.783275+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	Novelette	{"{\\"title\\": \\"All Systems Red\\", \\"author\\": \\"Martha Wells\\"}","{\\"title\\": \\"17776 - What Football Will Look Like In The Future\\", \\"author\\": \\"Jon Bois\\"}","{\\"title\\": \\"Binti: Home\\", \\"author\\": \\"Nnedi Okorafor\\"}","{\\"title\\": \\"The Refrigerator Monologues\\", \\"author\\": \\"Catherynne Valente\\"}","{\\"title\\": \\"In Calabria\\", \\"author\\": \\"Peter Beagle\\"}"}
23	2018-10-13 09:43:15.299124+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	Novella	{"{\\"title\\": \\"All Systems Red\\", \\"author\\": \\"Martha Wells\\"}","{\\"title\\": \\"17776 - What Football Will Look Like In The Future\\", \\"author\\": \\"Jon Bois\\"}","{\\"title\\": \\"Binti: Home\\", \\"author\\": \\"Nnedi Okorafor\\"}","{\\"title\\": \\"The Refrigerator Monologues\\", \\"author\\": \\"Catherynne Valente\\"}","{\\"title\\": \\"In Calabria\\", \\"author\\": \\"Peter Beagle\\"}"}
24	2018-10-13 09:44:55.866655+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	Novelette	{"{\\"title\\": \\"Wind Will Rove\\", \\"author\\": \\"Sarah Pinsker\\"}","{\\"title\\": \\"The Worshipful Society of Glovers\\", \\"author\\": \\"Mary Robinette Kowal\\"}","{\\"title\\": \\"Waiting on a Bright Moon\\", \\"author\\": \\"JY Yang\\"}","{\\"title\\": \\"Extracurricular Activities\\", \\"author\\": \\"Yoon Ha lee\\"}","{\\"title\\": \\"Th\\\\ne Secret Life of Bots\\", \\"author\\": \\"Suzanne Palmer\\"}"}
25	2018-10-13 09:47:03.869914+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	ShortStory	{"{\\"title\\": \\"Sun, Moon, Dust\\", \\"author\\": \\"Ursula Vernon\\"}","{\\"title\\": \\"welcome to your authentic indian experience\\", \\"author\\": \\"Rebecca Roanhorse\\"}","{\\"title\\": \\"Utopia, LOL?\\", \\"author\\": \\"jamie Wahls\\"}","{\\"title\\": \\"Clearly Lettered in a Mostly Steady Hand\\", \\"author\\": \\"Fran Wild\\"}","{\\"title\\": \\"Carnival 9\\", \\"author\\": \\"Yoachim\\"}"}
26	2018-10-13 09:50:08.545906+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	RelatedWork	{"{\\"title\\": \\"Iain M. Banks\\", \\"author\\": \\"Paul Kincaid\\"}","{\\"title\\": \\"Archive of Our Own\\", \\"author\\": \\"OTW\\", \\"publisher\\": \\"OTW\\"}","{\\"title\\": \\"WorldCon 75 restaurant guide\\", \\"author\\": \\"WorldCon 75\\", \\"publisher\\": \\"Worldcon75\\"}","{\\"title\\": \\"Freshly Remember'd: Kirk Drift\\", \\"author\\": \\"Erin Horáková\\", \\"publisher\\": \\"strange horizon\\"}","{\\"title\\": \\"Luminescent Threads\\", \\"author\\": \\"edited by Alexandra Pierce and Mimi Mondal\\", \\"publisher\\": \\"12th planet?\\"}"}
27	2018-10-13 09:50:14.140633+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	RelatedWork	{"{\\"title\\": \\"Iain M. Banks\\", \\"author\\": \\"Paul Kincaid\\"}","{\\"title\\": \\"Archive of Our Own\\", \\"author\\": \\"OTW\\", \\"publisher\\": \\"OTW\\"}","{\\"title\\": \\"WorldCon 75 restaurant guide\\", \\"author\\": \\"WorldCon 75\\", \\"publisher\\": \\"Worldcon75\\"}","{\\"title\\": \\"Freshly Remember'd: Kirk Drift\\", \\"author\\": \\"Erin Horáková\\", \\"publisher\\": \\"strange horizon\\"}","{\\"title\\": \\"Luminescent Threads\\", \\"author\\": \\"edited by Alexandra Pierce and Mimi Mondal\\", \\"publisher\\": \\"12th planet\\"}"}
28	2018-10-13 10:12:59.640951+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	GraphicStory	{"{\\"title\\": \\"Monstress, Vol. 2: The Blood\\", \\"author\\": \\"Liu & Takeda \\", \\"publisher\\": \\"image\\"}","{\\"title\\": \\"Saga Volume 7\\", \\"author\\": \\"Brian Vaughan, Fiona Staples\\", \\"publisher\\": \\"Image Comics\\"}","{\\"title\\": \\"My Favorite Thing is Monsters\\", \\"author\\": \\"Emil Ferris\\"}","{\\"title\\": \\"Ladycastle\\", \\"author\\": \\"Delilah S Dawson\\"}","{\\"title\\": \\"Ms. Marvel vol. 8: Mecca\\", \\"author\\": \\"g wilow wilson\\"}"}
29	2018-10-13 10:17:06.968711+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	DramaticLong	{"{\\"title\\": \\"Wonder Woman\\"}","{\\"title\\": \\"Star Wars: The Last Jedi\\", \\"producer\\": \\"Disney\\"}","{\\"title\\": \\"The Expanse Season 2\\"}","{\\"title\\": \\"The Good Place (Season 1)\\", \\"producer\\": \\"Fremulon\\"}","{\\"title\\": \\"your \\\\nname\\"}"}
30	2018-10-13 10:19:36.435884+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	EditorShort	{"{\\"editor\\": \\"Ann Vandermeer\\"}","{\\"editor\\": \\"Jonathan Strahan\\"}","{\\"editor\\": \\"Lee Harri\\"}","{\\"editor\\": \\"Ellen datlow\\"}","{\\"editor\\": \\"Gardner Dozois\\"}"}
31	2018-10-13 10:19:39.695719+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	DramaticShort	{"{\\"title\\": \\"Orphan Black: To Right the Wrongs of Many\\", \\"series\\": \\"Orphan Bl;ack\\"}","{\\"title\\": \\"Dr Who: Thin Ice\\", \\"series\\": \\"dr. who\\"}","{\\"title\\": \\"Magic to Make the Sanest Man Go Mad\\", \\"series\\": \\"star trek\\"}","{\\"title\\": \\"Caliban's War\\", \\"series\\": \\"The Expanse\\"}","{\\"title\\": \\"Michael's Gambi\\", \\"series\\": \\"The Good Place\\", \\"producer\\": \\"fremulon\\"}"}
32	2018-10-13 10:20:50.249745+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	EditorLong	{"{\\"editor\\": \\"Diana Pho\\"}","{\\"editor\\": \\"Patrick Nielsen Hayden\\"}","{\\"editor\\": \\"Navah Wolfe\\"}","{\\"editor\\": \\"Joe Monti\\"}","{\\"editor\\": \\"Betsy Wollheim\\"}"}
33	2018-10-13 10:21:45.134651+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	ProArtist	{"{\\"author\\": \\"Victo Ngai\\"}","{\\"author\\": \\"Julie Dillon\\"}","{\\"author\\": \\"tran Nguyen\\"}","{\\"author\\": \\"Bastien Lecouffe\\\\n-\\\\nDeharme\\"}","{\\"author\\": \\"Kathleen Jennings\\"}"}
34	2018-10-13 10:22:33.923653+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	Semiprozine	{"{\\"title\\": \\"Uncanny Magazine\\"}","{\\"title\\": \\"Strange Horizons\\"}","{\\"title\\": \\"Clarkesworld\\"}","{\\"title\\": \\"Lightspeed\\"}","{\\"title\\": \\"Fiyah\\"}"}
35	2018-10-13 10:23:18.343217+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	Fanzine	{"{\\"title\\": \\"File 770\\"}","{\\"title\\": \\"SF Bluestocking\\"}","{\\"title\\": \\"Ansible\\"}","{\\"title\\": \\"Black Gate\\"}","{\\"title\\": \\"Lady Business\\"}"}
36	2018-10-13 10:25:13.343842+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	Fancast	{"{\\"title\\": \\"Ditch Diggers\\", \\"address\\": \\"http://murverse.com/tag/ditch-diggers/\\"}","{\\"title\\": \\"Eating the Fantastic\\", \\"address\\": \\"http://www.scottedelman.com/tag/eating-the-fantastic/\\"}","{\\"title\\": \\"Breaking the Glass Slipper\\"}","{\\"title\\": \\"Fangirl Happy Hour\\"}","{\\"title\\": \\"Verity!\\", \\"address\\": \\"veriypodcast.com\\"}"}
37	2018-10-13 10:27:04.37738+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	FanWriter	{"{\\"author\\": \\"Mike Glyer\\", \\"example\\": \\"file 770\\"}","{\\"author\\": \\"Bogi Takács\\"}","{\\"author\\": \\"Erin Horáková\\", \\"example\\": \\"http://glasgow.academia.edu/ErinHor%C3%A1kov%C3%A1\\"}","{\\"author\\": \\"Elsa Sjunneson-Henry\\"}","{\\"author\\": \\"Liz Bourke\\"}"}
38	2018-10-13 10:29:59.452293+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	FanArtist	{"{\\"author\\": \\"Likhain\\", \\"example\\": \\"https://likhain.net/\\"}","{\\"author\\": \\"spring Schonehuth\\"}","{\\"author\\": \\"Kirbi Fagan\\"}","{\\"author\\": \\"Maya Hahto\\"}","{\\"author\\": \\"Grace Fong\\"}"}
39	2018-10-13 10:31:46.576705+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	Series	{"{\\"title\\": \\"The Expanse\\", \\"author\\": \\"james corey\\"}","{\\"title\\": \\"The Memoirs of Lady Trent\\", \\"author\\": \\"Brennan\\"}","{\\"title\\": \\"InCryptid\\", \\"author\\": \\"Seanan Macguire\\"}","{\\"title\\": \\"Stormlight Archive\\", \\"author\\": \\"Sanderson\\"}","{\\"title\\": \\"Five Gods\\", \\"author\\": \\"Lois McMaster Bujold\\"}"}
40	2018-10-13 10:33:01.318908+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	Astounding	{"{\\"author\\": \\"Jeannette Ng\\", \\"example\\": \\"under the pendulum sun\\"}","{\\"author\\": \\"Rebecca Roanhorse\\"}","{\\"author\\": \\"Rivers Solomon\\"}","{\\"author\\": \\"Analee Newiz\\", \\"example\\": \\"autonomous\\"}","{\\"author\\": \\"SA Chakraborty\\"}"}
41	2018-10-13 10:34:53.453655+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	Lodestar	{"{\\"title\\": \\"A Skinful of Shadows\\", \\"author\\": \\"Frances Hardinge\\"}","{\\"title\\": \\"Summer in Orcus\\", \\"author\\": \\"Ursula Vernon\\"}","{\\"title\\": \\"Jane, Unlimited\\", \\"author\\": \\"kristin cashor\\"}","{\\"title\\": \\"Strange the Dreamer\\", \\"author\\": \\"L taylor\\"}","{\\"title\\": \\"Weave a Circle Round\\", \\"author\\": \\"K Maren\\"}"}
42	2018-10-13 11:47:08.776992+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	RetroNovel	{"{\\"title\\": \\"Beyond This Horizon\\", \\"author\\": \\"Heinlein\\"}","{\\"title\\": \\"Darkness and the Light,\\", \\"author\\": \\"Stapledon\\"}","{\\"title\\": \\"Islandia\\", \\"author\\": \\"Austin Tappan Wright\\"}","{\\"title\\": \\"Second Stage Lensmen\\", \\"author\\": \\"E E Doc SMith\\"}","{\\"title\\": \\"Uninvited\\", \\"author\\": \\"Dorothy Macardle\\"}"}
43	2018-10-13 11:48:10.359533+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	RetroNovella	{"{\\"title\\": \\"Asylum\\", \\"author\\": \\"van Vogt\\"}","{\\"title\\": \\"Hell is Forever\\", \\"author\\": \\"Bester\\"}","{\\"title\\": \\"Nerves\\", \\"author\\": \\"del Ray\\"}","{\\"title\\": \\"The Unpleasant Profession of Jonathan Hoag\\", \\"author\\": \\"Heinlein\\"}","{\\"title\\": \\"Waldo\\", \\"author\\": \\"Heinlein\\"}"}
44	2018-10-13 11:49:10.373951+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	RetroNovelette	{"{\\"title\\": \\"Foundation\\", \\"author\\": \\"Asimov\\"}","{\\"title\\": \\"Bridle and Saddle\\", \\"author\\": \\"Asimov\\"}","{\\"title\\": \\"Goldfish Bowl\\", \\"author\\": \\"Heinlein\\"}","{\\"title\\": \\"The Star Mouse\\", \\"author\\": \\"Brown\\"}","{\\"title\\": \\"There Shall Be Darkness\\", \\"author\\": \\"Moore\\"}"}
45	2018-10-13 11:50:13.350289+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	RetroShortStory	{"{\\"title\\": \\"Proof\\", \\"author\\": \\"Clement\\"}","{\\"title\\": \\"Runaround\\", \\"author\\": \\"Asimov\\"}","{\\"title\\": \\"Etaoin Shrdlu\\", \\"author\\": \\"Fred Brown\\"}","{\\"title\\": \\"The Sunken Land\\", \\"author\\": \\"Leiber\\"}","{\\"title\\": \\"Mimic\\", \\"author\\": \\"pearson\\"}"}
46	2018-10-13 11:51:57.394477+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	RetroDramaticShort	{"{\\"title\\": \\"Bambi\\", \\"producer\\": \\"disney\\"}","{\\"title\\": \\"The Ghost of Frankenstein\\", \\"producer\\": \\"universal\\"}","{\\"title\\": \\"Invisible Agent\\", \\"producer\\": \\"universal\\"}","{\\"title\\": \\"I Married a Witch\\"}","{\\"title\\": \\"Cat People\\"}"}
47	2018-10-13 11:52:39.980159+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	RetroEditorShort	{"{\\"editor\\": \\"Campbell\\"}","{\\"editor\\": \\"oscar friend\\"}","{\\"editor\\": \\"Dorothy McIlwraith\\"}","{\\"editor\\": \\"raymond palmer\\"}","{\\"editor\\": \\"Malcolm Reiss\\"}"}
48	2018-10-13 11:53:29.821889+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	RetroProArtist	{"{\\"author\\": \\"Hannes Bok\\"}","{\\"author\\": \\"Margaret Brundage\\"}","{\\"author\\": \\"Ed Cartier\\"}","{\\"author\\": \\"Virgil Finlay\\"}","{\\"author\\": \\"Hubert Rogers\\"}"}
49	2018-10-13 11:54:19.412036+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	RetroFanzine	{"{\\"title\\": \\"Futurian War Digest,\\"}","{\\"title\\": \\"inspiration\\"}","{\\"title\\": \\"phantagraph\\"}","{\\"title\\": \\"Spaceways\\"}","{\\"title\\": \\"Le Zombie\\"}"}
50	2018-10-13 11:55:07.495525+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0	1011	Clare Boothby	RetroFanWriter	{"{\\"author\\": \\"forrest ackerman\\"}","{\\"author\\": \\"bob tucker\\"}","{\\"author\\": \\"Art Widner\\"}","{\\"author\\": \\"Donald Wolhime\\"}","{\\"author\\": \\"Art Wider\\"}"}
51	2018-10-13 14:33:15.361795+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	Novella	{"{\\"title\\": \\"All Systems Red\\", \\"author\\": \\"Martha Wells\\", \\"publisher\\": \\"Tor.com Publishing\\"}","{\\"title\\": \\"\\\\\\"And Then There Were (N-One),\\\\\\"\\", \\"author\\": \\"Sarah Pinsker\\", \\"publisher\\": \\"Uncanny, March/April 2017\\"}","{\\"title\\": \\"Binti: Home\\", \\"author\\": \\"Nnedi Okorafor\\", \\"publisher\\": \\"Tor.com Publishing\\"}","{\\"title\\": \\"The Black Tides of Heaven\\", \\"author\\": \\"JY Yang\\", \\"publisher\\": \\"Tor.com Publishing\\"}","{\\"title\\": \\"Down Among the Sticks and Bones\\", \\"author\\": \\"Seanan McGuire\\", \\"publisher\\": \\"Tor.com Publishing\\"}"}
52	2018-10-13 14:33:21.209922+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	Novel	{"{\\"title\\": \\"A Kiss of Angels\\", \\"author\\": \\"Catie Murphy\\", \\"publisher\\": \\"MizKit Productions\\"}","{\\"title\\": \\"The Secret Fourth Broken Earth Novel\\", \\"author\\": \\"NK Jemisin\\", \\"publisher\\": \\"Orbit\\"}","{\\"title\\": \\"The Stone Sky\\", \\"author\\": \\"NK Jemisin\\", \\"publisher\\": \\"Orbit\\"}","{\\"title\\": \\"Six Wakes\\", \\"author\\": \\"Mur Lafferty\\", \\"publisher\\": \\"Orbit\\"}","{\\"title\\": \\"Raven Stratagem\\", \\"author\\": \\"Yoon Ha Lee\\", \\"publisher\\": \\"Solaris\\"}"}
53	2018-10-13 14:37:20.819277+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	Novelette	{"{\\"title\\": \\"\\\\\\"Children of Thorns, Children of Water,\\\\\\" \\", \\"author\\": \\"Aliette de Bodard\\", \\"publisher\\": \\"Uncanny, July-August 2017\\"}","{\\"title\\": \\"\\\\\\"Extracurricular Activities,\\\\\\"\\", \\"author\\": \\"Yoon Ha Lee\\", \\"publisher\\": \\"Tor.com, February 15, 2017\\"}","{\\"title\\": \\"\\\\\\"The Secret Life of Bots,\\\\\\"\\", \\"author\\": \\"Suzanne Palmer\\", \\"publisher\\": \\"Clarkesworld, September 2017\\"}","{\\"title\\": \\"\\\\\\"The Martian Obelisk,\\\\\\"\\", \\"author\\": \\"Linda Nagata\\", \\"publisher\\": \\"Tor.com, July 19, 2017\\"}","{\\"title\\": \\"\\\\\\"Sun, Moon, Dust\\\\\\" \\", \\"author\\": \\"Ursula Vernon\\", \\"publisher\\": \\"Uncanny, May/June 2017\\"}"}
54	2018-10-13 14:38:54.165793+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	Novelette	{"{\\"title\\": \\"\\\\\\"Children of Thorns, Children of Water,\\\\\\" \\", \\"author\\": \\"Aliette de Bodard\\", \\"publisher\\": \\"Uncanny, July-August 2017\\"}","{\\"title\\": \\"\\\\\\"Extracurricular Activities,\\\\\\"\\", \\"author\\": \\"Yoon Ha Lee\\", \\"publisher\\": \\"Tor.com, February 15, 2017\\"}","{\\"title\\": \\"\\\\\\"The Secret Life of Bots,\\\\\\"\\", \\"author\\": \\"Suzanne Palmer\\", \\"publisher\\": \\"Clarkesworld, September 2017\\"}","{\\"title\\": \\"\\\\\\"A Series of Steaks,\\\\\\"\\", \\"author\\": \\"Vina Jie-Min Prasad \\", \\"publisher\\": \\"Clarkesworld, January 2017\\"}","{\\"title\\": \\"\\\\\\"Small Changes Over Long Periods of Time,\\\\\\"\\", \\"author\\": \\"K.M. Szpara\\", \\"publisher\\": \\"Uncanny, May/June 2017\\"}"}
67	2018-10-13 14:58:28.405102+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	Series	{"{\\"title\\": \\"The Books of the Raksura\\", \\"author\\": \\"Martha Wells\\", \\"publisher\\": \\"Night Shade\\"}","{\\"title\\": \\"The Divine Cities\\", \\"author\\": \\"Robert Jackson Bennett \\", \\"publisher\\": \\"Broadway\\"}","{\\"title\\": \\"InCryptid\\", \\"author\\": \\" Seanan McGuire\\", \\"publisher\\": \\"DAW\\"}","{\\"title\\": \\"The Memoirs of Lady Trent\\", \\"author\\": \\"Marie Brennan\\", \\"publisher\\": \\"Tor US / Titan UK\\"}","{\\"title\\": \\"The Stormlight Archive\\", \\"author\\": \\"Brandon Sanderson\\", \\"publisher\\": \\"Tor US / Gollancz UK\\"}"}
55	2018-10-13 14:43:26.696262+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RelatedWork	{"{\\"title\\": \\"Crash Override: How Gamergate (Nearly) Destroyed My Life, and How We Can Win the Fight Against Online Hate\\", \\"author\\": \\"Zoe Quinn\\", \\"publisher\\": \\"PublicAffairs\\"}","{\\"title\\": \\"Iain M. Banks (Modern Masters of Science Fiction) \\", \\"author\\": \\"Paul Kincaid\\", \\"publisher\\": \\"University of Illinois Press\\"}","{\\"title\\": \\"A Lit Fuse: The Provocative Life of Harlan Ellison\\", \\"author\\": \\"Nat Segaloff \\", \\"publisher\\": \\"NESFA Press\\"}","{\\"title\\": \\"Luminescent Threads: Connections to Octavia E. Butler\\", \\"author\\": \\"Alexandra Pierce and Mimi Mondal\\", \\"publisher\\": \\"Twelfth Planet Press\\"}","{\\"title\\": \\"No Time to Spare: Thinking About What Matters\\", \\"author\\": \\"Ursula K. Le Guin\\", \\"publisher\\": \\"Houghton Mifflin Harcourt\\"}"}
56	2018-10-13 14:45:12.600184+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	GraphicStory	{"{\\"title\\": \\"Black Bolt, Volume 1: Hard Time\\", \\"author\\": \\"written by Saladin Ahmed, illustrated by Christian Ward, lettered by Clayton Cowles \\", \\"publisher\\": \\"Marvel\\"}","{\\"title\\": \\"Bitch Planet, Volume 2: President Bitch\\", \\"author\\": \\"written by Kelly Sue DeConnick, illustrated by Valentine De Landro and Taki Soma, colored by Kelly Fitzpatrick, lettered by Clayton Cowles\\", \\"publisher\\": \\"Image Comics\\"}","{\\"title\\": \\"Monstress, Volume 2: The Blood\\", \\"author\\": \\"written by Marjorie M. Liu, illustrated by Sana Takeda\\", \\"publisher\\": \\"Image Comics)\\"}","{\\"title\\": \\"My Favorite Thing is Monsters\\", \\"author\\": \\"Emil Ferris\\", \\"publisher\\": \\"Fantagraphics\\"}","{\\"title\\": \\"Paper Girls, Volume 3\\", \\"author\\": \\"written by Brian K. Vaughan, illustrated by Cliff Chiang, colored by Matthew Wilson, lettered by Jared Fletcher \\", \\"publisher\\": \\"Image Comics\\"}"}
57	2018-10-13 14:47:55.779162+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	DramaticLong	{"{\\"title\\": \\"Blade Runner 2049, written by Hampton Fancher and Michael Green, directed by Denis Villeneuve\\", \\"producer\\": \\"Alcon Entertainment / Bud Yorkin Productions / Torridon Films / Columbia Pictures\\"}","{\\"title\\": \\"Get Out, written and directed by Jordan Peele\\", \\"producer\\": \\"Blumhouse Productions / Monkeypaw Productions / QC Entertainment\\"}","{\\"title\\": \\"The Shape of Water, written by Guillermo del Toro and Vanessa Taylor, directed by Guillermo del Toro \\", \\"producer\\": \\"TSG Entertainment / Double Dare You / Fox Searchlight Pictures\\"}","{\\"title\\": \\"Star Wars: The Last Jedi, written and directed by Rian Johnson\\", \\"producer\\": \\"Lucasfilm, Ltd.\\"}","{\\"title\\": \\"Wonder Woman, screenplay by Allan Heinberg, story by Zack Snyder & Allan Heinberg and Jason Fuchs, directed by Patty Jenkins\\", \\"producer\\": \\"DC Films / Warner Brothers\\"}"}
58	2018-10-13 14:52:06.560656+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	EditorShort	{"{\\"editor\\": \\"John Joseph Adams\\"}","{\\"editor\\": \\"Neil Clarke\\"}","{\\"editor\\": \\"\\\\nLee Harris\\"}","{\\"editor\\": \\"\\\\nJonathan Strahan\\"}","{\\"editor\\": \\"\\\\nLynne M. Thomas & Michael Damian Thomas\\"}"}
59	2018-10-13 14:52:07.775642+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	DramaticShort	{"{\\"title\\": \\"\\\\\\"USS Callister\\\\\\"\\", \\"series\\": \\"Black Mirror\\", \\"producer\\": \\"House of Tomorrow\\"}","{\\"title\\": \\"\\\\\\"The Deep\\\\\\" [song]\\", \\"producer\\": \\"Clipping (Daveed Diggs, William Hutson, Jonathan Snipes)\\"}","{\\"title\\": \\"Twice Upon a Time\\", \\"series\\": \\"Doctor Who\\", \\"producer\\": \\"BBC Cymru Wales\\"}","{\\"title\\": \\"Michael's Gambit\\", \\"series\\": \\"The Good Place\\", \\"producer\\": \\"Fremulon / 3 Arts Entertainment / Universal Television\\"}","{\\"title\\": \\"The Trolley Problem\\", \\"series\\": \\"The Good Place\\", \\"producer\\": \\"Fremulon / 3 Arts Entertainment / Universal Television\\"}"}
60	2018-10-13 14:52:10.932318+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	EditorLong	{"{\\"editor\\": \\"Sheila E. Gilbert\\"}","{\\"editor\\": \\"Joe Monti\\"}","{\\"editor\\": \\"Diana M. Pho\\"}","{\\"editor\\": \\"Devi Pillai\\"}","{\\"editor\\": \\"Miriam Weinberg\\"}"}
61	2018-10-13 14:53:39.157491+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	Semiprozine	{"{\\"title\\": \\"Beneath Ceaseless Skies, editor-in-chief and publisher Scott H. Andrews\\"}","{\\"title\\": \\"The Book Smugglers, edited by Ana Grilo and Thea James\\"}","{\\"title\\": \\"Escape Pod, edited by Mur Lafferty, S.B. Divya, and Norm Sherman, with assistant editor Benjamin C. Kinney\\"}","{\\"title\\": \\"Fireside Magazine, edited by Brian White and Julia Rios; managing editor Elsa Sjunneson-Henry; special feature editor Mikki Kendall; publisher & art director Pablo Defendini\\"}","{\\"title\\": \\"Strange Horizons, edited by Kate Dollarhyde, Gautam Bhatia, A.J. Odasso, Lila Garrott, Heather McDougal, Ciro Faienza, Tahlia Day, Vanessa Rose Phin, and the Strange Horizons staff\\"}"}
62	2018-10-13 14:53:40.456997+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	ProArtist	{"{\\"author\\": \\"Galen Dara\\"}","{\\"author\\": \\"Kathleen Jennings\\"}","{\\"author\\": \\"Bastien Lecouffe Deharme\\"}","{\\"author\\": \\"Victo Ngai\\"}","{\\"author\\": \\"John Picacio\\"}"}
63	2018-10-13 14:54:08.122871+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	Fanzine	{"{\\"title\\": \\"File 770, edited by Mike Glyer\\"}","{\\"title\\": \\"Galactic Journey, edited by Gideon Marcus\\"}","{\\"title\\": \\"Journey Planet, edited by Team Journey Planet\\"}","{\\"title\\": \\"nerds of a feather, flock together, edited by The G, Vance Kotrla, and Joe Sherry\\"}","{\\"title\\": \\"Rocket Stack Rank, edited by Greg Hullender and Eric Wong\\"}"}
64	2018-10-13 14:54:59.784163+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	Fancast	{"{\\"title\\": \\"The Coode Street Podcast\\"}","{\\"title\\": \\"Ditch Diggers\\"}","{\\"title\\": \\"Fangirl Happy Hour\\"}","{\\"title\\": \\"Galactic Suburbia\\"}","{\\"title\\": \\"Sword and Laser\\"}"}
65	2018-10-13 14:55:31.23696+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	FanWriter	{"{\\"author\\": \\"Camestros Felapton\\"}","{\\"author\\": \\"Sarah Gailey\\"}","{\\"author\\": \\"Mike Glyer\\"}","{\\"author\\": \\"Foz Meadows\\"}","{\\"author\\": \\"Charles Payseur\\"}"}
66	2018-10-13 14:55:54.28458+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	FanArtist	{"{\\"author\\": \\"Geneva Benton\\"}","{\\"author\\": \\"Grace P. Fong\\"}","{\\"author\\": \\"Maya Hahto\\"}","{\\"author\\": \\"Likhain (M. Sereno)\\"}","{\\"author\\": \\"Spring Schoenhuth\\"}"}
68	2018-10-13 14:58:57.884501+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	Astounding	{"{\\"author\\": \\"Katherine Arden\\"}","{\\"author\\": \\"Sarah Kuhn\\"}","{\\"author\\": \\"Jeannette Ng\\"}","{\\"author\\": \\"Vina Jie-Min Prasad\\"}","{\\"author\\": \\"Rebecca Roanhorse\\"}"}
69	2018-10-13 15:01:18.165499+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	Lodestar	{"{\\"title\\": \\"Akata Warrior\\", \\"author\\": \\"Nnedi Okorafor\\", \\"publisher\\": \\"Viking\\"}","{\\"title\\": \\"The Art of Starving\\", \\"author\\": \\"Sam J. Miller\\", \\"publisher\\": \\"HarperTeen\\"}","{\\"title\\": \\"The Book of Dust: La Belle Sauvage\\", \\"author\\": \\"Philip Pullman\\", \\"publisher\\": \\"Knopf\\"}","{\\"title\\": \\"In Other Lands\\", \\"author\\": \\"Sarah Rees Brennan\\", \\"publisher\\": \\"Big Mouth House\\"}","{\\"title\\": \\"A Skinful of Shadows\\", \\"author\\": \\"Frances Hardinge\\", \\"publisher\\": \\"Macmillan UK / Harry N. Abrams US\\"}"}
70	2018-10-13 15:03:22.230732+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroNovel	{"{\\"title\\": \\"Beyond This Horizon\\", \\"author\\": \\"Anson MacDonald (Robert A. Heinlein) \\", \\"publisher\\": \\"Astounding Science Fiction, April & May 1942\\"}","{\\"title\\": \\"Darkness and the Light\\", \\"author\\": \\"Olaf Stapledon\\", \\"publisher\\": \\"Methuen / S.J.R. Saunders\\"}","{\\"title\\": \\"Donovan's Brain\\", \\"author\\": \\"Curt Siodmak\\", \\"publisher\\": \\"Black Mask, September-November 1942\\"}","{\\"title\\": \\"Islandia\\", \\"author\\": \\"Austin Tappan Wright\\", \\"publisher\\": \\"Farrar & Rinehart\\"}","{\\"title\\": \\"Second Stage Lensmen\\", \\"author\\": \\"E. E. \\\\\\"Doc\\\\\\" Smith\\", \\"publisher\\": \\"Astounding Science Fiction, November 1941 to February 1942\\"}"}
71	2018-10-13 15:04:51.136616+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroNovella	{"{\\"title\\": \\"\\\\\\"Asylum,\\\\\\"\\", \\"author\\": \\"A.E. van Vogt\\", \\"publisher\\": \\"Astounding Science Fiction, May 1942\\"}","{\\"title\\": \\"\\\\\\"The Compleat Werewolf,\\\\\\"\\", \\"author\\": \\"Anthony Boucher\\", \\"publisher\\": \\"Unknown Worlds, April 1942\\"}","{\\"title\\": \\"\\\\\\"Hell is Forever,\\\\\\"\\", \\"author\\": \\"Alfred Bester\\", \\"publisher\\": \\"Unknown Worlds, August 1942\\"}","{\\"title\\": \\"\\\\\\"Nerves,\\\\\\" \\", \\"author\\": \\"Lester del Rey \\", \\"publisher\\": \\"Astounding Science Fiction, September 1942\\"}","{\\"title\\": \\"\\\\\\"The Unpleasant Profession of Jonathan Hoag,\\\\\\"\\", \\"author\\": \\"John Riverside (Robert A. Heinlein)\\", \\"publisher\\": \\"Unknown Worlds, October 1942\\"}"}
72	2018-10-13 15:06:17.47721+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroNovelette	{"{\\"title\\": \\"\\\\\\"Bridle and Saddle,\\\\\\"\\", \\"author\\": \\"Isaac Asimov\\", \\"publisher\\": \\"Astounding Science Fiction, June 1942\\"}","{\\"title\\": \\"\\\\\\"Foundation,\\\\\\"\\", \\"author\\": \\"Isaac Asimov \\", \\"publisher\\": \\"Astounding Science Fiction, May 1942\\"}","{\\"title\\": \\"\\\\\\"Goldfish Bowl,\\\\\\"\\", \\"author\\": \\"Anson MacDonald (Robert A. Heinlein) \\", \\"publisher\\": \\"Astounding Science Fiction, March 1942\\"}","{\\"title\\": \\"\\\\\\"The Star Mouse,\\\\\\"\\", \\"author\\": \\"Fredric Brown\\", \\"publisher\\": \\"Planet Stories, Spring 1942\\"}","{\\"title\\": \\"\\\\\\"There Shall Be Darkness,\\\\\\"\\", \\"author\\": \\"C.L. Moore\\", \\"publisher\\": \\"Astounding Science Fiction, February 1942\\"}"}
73	2018-10-13 15:08:39.685232+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroShortStory	{"{\\"title\\": \\"\\\\\\"Etaoin Shrdlu,\\\\\\" \\", \\"author\\": \\"Fredric Brown \\", \\"publisher\\": \\"Unknown Worlds, February 1942\\"}","{\\"title\\": \\"\\\\\\"Mimic,\\\\\\"\\", \\"author\\": \\"Martin Pearson (Donald A. Wollheim)\\", \\"publisher\\": \\"Astonishing Stories, December 1942\\"}","{\\"title\\": \\"\\\\\\"Proof,\\\\\\"\\", \\"author\\": \\"Hal Clement \\", \\"publisher\\": \\"Astounding Science Fiction, June 1942\\"}","{\\"title\\": \\"\\\\\\"Runaround,\\\\\\"\\", \\"author\\": \\"Isaac Asimov \\", \\"publisher\\": \\"Astounding Science Fiction, March 1942\\"}","{\\"title\\": \\"\\\\\\"The Sunken Land,\\\\\\"\\", \\"author\\": \\"Fritz Leiber\\", \\"publisher\\": \\"Unknown Worlds, February 1942\\"}"}
74	2018-10-13 15:16:25.133698+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroDramaticLong	{"{\\"title\\": \\"Bambi, written by Perce Pearce, Larry Morey, et al., directed by David D. Hand et al. ()\\", \\"producer\\": \\"Walt Disney Productions\\"}","{\\"title\\": \\"Cat People, written by DeWitt Bodeen, directed by Jacques Tourneur ()\\", \\"producer\\": \\"RKO Radio Pictures, Inc.\\"}","{\\"title\\": \\"The Ghost of Frankenstein, written by W. Scott Darling, directed by Erle C. Kenton ()\\", \\"producer\\": \\"Universal Pictures\\"}","{\\"title\\": \\"I Married a Witch, written by Robert Pirosh and Marc Connelly, directed by René Clair ()\\", \\"producer\\": \\"Cinema Guild Productions / Paramount Pictures\\"}","{\\"title\\": \\"Invisible Agent, written by Curtis Siodmak, directed by Edwin L. Marin \\", \\"producer\\": \\"Frank Lloyd Productions / Universal Pictures\\"}"}
75	2018-10-13 15:16:59.990787+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroEditorShort	{"{\\"editor\\": \\"John W. Campbell\\"}","{\\"editor\\": \\"Oscar J. Friend\\"}","{\\"editor\\": \\"Dorothy McIlwraith\\"}","{\\"editor\\": \\"Raymond A. Palmer\\"}","{\\"editor\\": \\"Malcolm Reiss\\"}"}
76	2018-10-13 15:19:05.818101+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroDramaticShort	{"{\\"title\\": \\"Some\\", \\"series\\": \\"40s\\", \\"producer\\": \\"Stuff\\"}","{\\"title\\": \\"Some\\", \\"series\\": \\"Other\\", \\"producer\\": \\"Stuff\\"}","{\\"title\\": \\"Black\\", \\"series\\": \\"White\\", \\"producer\\": \\"Stuff\\"}","{\\"title\\": \\"Narrated\\", \\"series\\": \\"Old \\", \\"producer\\": \\"Stuff\\"}","{\\"title\\": \\"Look\\", \\"series\\": \\"More\\", \\"producer\\": \\"Stuff\\"}"}
77	2018-10-13 15:19:08.970966+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroRelatedWork	{"{\\"title\\": \\"An Old Book About How Really, All Good SF Is By Men\\", \\"author\\": \\"The Menz\\"}","{\\"title\\": \\"How Afro-Futurism Could Be A Thing If We Didn't Keep Screwing With Their Countries\\", \\"author\\": \\"The Colonising Menz\\"}"}
78	2018-10-13 15:19:52.718916+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroGraphicStory	{"{\\"title\\": \\"The Beano\\", \\"author\\": \\"Type\\", \\"publisher\\": \\"Stuff\\"}","{\\"title\\": \\"Desperate Dan\\", \\"author\\": \\"Type\\", \\"publisher\\": \\"Stuff\\"}","{\\"title\\": \\"Mindy\\", \\"author\\": \\"Type\\", \\"publisher\\": \\"Stuff\\"}","{\\"title\\": \\"Illustrated\\", \\"author\\": \\"Nancy\\", \\"publisher\\": \\"Drew\\"}","{\\"title\\": \\"War\\", \\"author\\": \\"Comics\\", \\"publisher\\": \\"Natch\\"}"}
79	2018-10-13 15:20:53.846671+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroEditorLong	{"{\\"editor\\": \\"A Dude\\"}","{\\"editor\\": \\"Maybe Another Dude?\\"}","{\\"editor\\": \\"I Know Nothing About 40s Editors\\"}","{\\"editor\\": \\"I Don't Know a Lot About 21st Century Editors Either\\"}","{\\"editor\\": \\"Ginger Rocks, OFC!\\"}"}
80	2018-10-13 15:21:17.959755+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroSemiprozine	{"{\\"title\\": \\"Ansible\\"}","{\\"title\\": \\"Was\\"}","{\\"title\\": \\"Probably\\"}","{\\"title\\": \\"Out\\"}","{\\"title\\": \\"Then\\"}"}
81	2018-10-13 15:21:49.049223+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroFancast	{"{\\"title\\": \\"Something\\", \\"address\\": \\"On\\"}","{\\"title\\": \\"A\\", \\"address\\": \\"Steampunk\\"}","{\\"title\\": \\"Wax\\", \\"address\\": \\"Cylinder\\"}"}
82	2018-10-13 15:22:58.629553+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroSeries	{"{\\"title\\": \\"Lord of the Rings\\", \\"author\\": \\"Wasn't \\", \\"volume\\": \\"Out\\", \\"publisher\\": \\"For\\"}","{\\"title\\": \\"Another\\", \\"author\\": \\"Eleven\\", \\"volume\\": \\"Years...\\"}"}
83	2018-10-13 15:23:01.284144+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroFanArtist	{"{\\"author\\": \\"Cave\\", \\"example\\": \\"Paintings?\\"}"}
84	2018-10-13 15:23:03.094473+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroFanWriter	{"{\\"author\\": \\"Forrest J Ackerman\\"}","{\\"author\\": \\"Jack Speer\\"}","{\\"author\\": \\"Arthur Wilson \\\\\\"Bob\\\\\\" Tucker\\"}","{\\"author\\": \\"Harry Warner, Jr.\\"}","{\\"author\\": \\"Art Widner\\"}"}
85	2018-10-13 15:23:07.011783+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroFanzine	{"{\\"title\\": \\"Futurian War Digest, edited by J. Michael Rosenblum\\"}","{\\"title\\": \\"Inspiration, edited by Lynn Bridges\\"}","{\\"title\\": \\"The Phantagraph, edited by Donald A. Wollheim\\"}","{\\"title\\": \\"Spaceways, edited by Harry Warner, Jr.\\"}","{\\"title\\": \\"Voice of the Imagi-Nation, edited by Forrest J Ackerman and Morojo\\"}"}
86	2018-10-13 15:23:09.543395+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	RetroProArtist	{"{\\"author\\": \\"Hannes Bok\\"}","{\\"author\\": \\"Margaret Brundage\\"}","{\\"author\\": \\"Edd Cartier\\"}","{\\"author\\": \\"Virgil Finlay\\"}","{\\"author\\": \\"Harold W. McCauley\\"}"}
87	2018-10-13 15:25:30.68318+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1007	Brian Nisbet	ShortStory	{"{\\"title\\": \\"\\\\\\"The Martian Obelisk,\\\\\\"\\", \\"author\\": \\"Linda Nagata\\", \\"publisher\\": \\"Tor.com, July 19, 2017\\"}","{\\"title\\": \\"\\\\\\"Sun, Moon, Dust\\\\\\" \\", \\"author\\": \\"Ursula Vernon\\", \\"publisher\\": \\"Uncanny, May/June 2017\\"}","{\\"title\\": \\"\\\\\\"Fandom for Robots,\\\\\\"\\", \\"author\\": \\"Vina Jie-Min Prasad\\", \\"publisher\\": \\"Uncanny, September/October 2017\\"}","{\\"title\\": \\"\\\\\\"Welcome to your Authentic Indian Experience™,”\\", \\"author\\": \\"Rebecca Roanhorse\\", \\"publisher\\": \\"Apex, August 2017\\"}","{\\"title\\": \\"\\\\\\"Carnival Nine,\\\\\\"\\", \\"author\\": \\"Caroline M. Yoachim\\", \\"publisher\\": \\"Beneath Ceaseless Skies, May 2017\\"}"}
88	2018-10-13 16:35:50.611511+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	DramaticLong	{"{\\"title\\": \\"The Muppet Movie\\"}","{\\"title\\": \\"The Good Place (Season 1) \\"}"}
89	2018-10-13 16:35:50.640871+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	EditorLong	{"{\\"editor\\": \\"Beth Meacham \\"}"}
90	2018-10-13 16:35:50.624279+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	EditorShort	{"{\\"editor\\": \\"Ellen datlow\\"}"}
92	2018-10-13 16:35:50.691494+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	Semiprozine	{"{\\"title\\": \\"The Book Smugglers\\"}","{\\"title\\": \\"Journey Planet\\"}"}
93	2018-10-13 16:35:50.700716+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	GraphicStory	{"{\\"title\\": \\"My Favorite Thing is Monsters\\"}","{\\"title\\": \\"Unbeatable Squirrel Girl, Vol. 6: Who Run The\\\\nWorld? Squirrels \\"}"}
91	2018-10-13 16:35:50.671783+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	Novella	{"{\\"title\\": \\"The Furthest Station\\"}","{\\"title\\": \\"The Dark Birds\\"}","{\\"title\\": \\"Crispin's Model \\"}"}
94	2018-10-13 16:35:51.124432+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	Fancast	{"{\\"title\\": \\"Fast Forward\\", \\"address\\": \\"www.fast-forward.tv/\\"}"}
95	2018-10-13 16:35:51.142232+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	ProArtist	{"{\\"author\\": \\"Yuko Shimizu \\"}","{\\"author\\": \\"John Picacio\\"}"}
96	2018-10-13 16:35:51.173478+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	DramaticShort	{"{\\"title\\": \\"Star Trek Continues: What Ships Are For\\"}","{\\"title\\": \\"Expanse: Caliban's War\\"}","{\\"title\\": \\"Game of Thrones: The Dragon and the Wolf\\"}"}
97	2018-10-13 16:35:51.275436+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	ShortStory	{"{\\"title\\": \\"Confessions of a Con Girl \\"}","{\\"title\\": \\"Waiting Out the End of the World in Patty's\\\\nPlace Cafe\\"}"}
98	2018-10-13 16:35:51.303124+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	Fanzine	{"{\\"title\\": \\"Locus\\"}"}
99	2018-10-13 16:35:51.354709+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	RelatedWork	{"{\\"title\\": \\"WorldCon 75 restaurant guide \\"}","{\\"title\\": \\"An Unexpected Honor\\"}"}
100	2018-10-13 16:35:51.502219+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	Novel	{"{\\"title\\": \\"Winter Tide\\"}","{\\"title\\": \\"The Strange Case of the Alchemist's\\\\nDaughter\\"}","{\\"title\\": \\"An Unkindness of Ghosts\\"}","{\\"title\\": \\"The Collapsing Empire\\", \\"author\\": \\"Jhon Scalzi\\"}"}
101	2018-10-13 16:35:51.508096+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1012	Colette H Fozard	Novelette	{"{\\"title\\": \\"Dusk or Dark or Dawn or Day\\"}","{\\"title\\": \\"Waiting on a Bright Moon \\"}"}
102	2018-10-14 11:38:15.203793+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	661	David Matthewman	Novel	{"{\\"title\\": \\"84k\\", \\"author\\": \\"Claire North\\", \\"publisher\\": \\"Orbit\\"}","{\\"title\\": \\"Record of a Spaceborn Few\\", \\"author\\": \\"Becky Chambers\\", \\"publisher\\": \\"Hodder & Stoughton\\"}","{\\"title\\": \\"Doctor Who: Rose\\", \\"author\\": \\"Russell T Davies\\", \\"publisher\\": \\"Target\\"}"}
103	2018-10-14 11:38:15.239924+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	661	David Matthewman	ShortStory	{"{\\"title\\": \\"The Tale of the Three Beautiful Raptor Sisters, and the Prince who was Made of Meat\\", \\"author\\": \\"Brooke Bolander\\", \\"publisher\\": \\"Uncanny Magazine\\"}"}
104	2018-10-14 11:44:02.741088+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	661	David Matthewman	DramaticLong	{"{\\"title\\": \\"Black Panther\\", \\"producer\\": \\"Marvel\\"}","{\\"title\\": \\"Deadpool 2\\", \\"producer\\": \\"Fox\\"}"}
105	2018-10-14 11:44:02.752419+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	661	David Matthewman	DramaticShort	{"{\\"title\\": \\"The Good Place: Everything is Bonzer\\", \\"series\\": \\"The Good Place\\", \\"producer\\": \\"NBC\\"}"}
106	2018-10-14 11:44:02.763144+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	661	David Matthewman	Series	{"{\\"title\\": \\"Doctor Who Target Books\\", \\"author\\": \\"Many\\", \\"volume\\": \\"Rose/The Christmas Invasion/Day of the Doctor/Twice Upon a Time\\", \\"publisher\\": \\"WH Allen/Virgin Books/BBC Books\\"}"}
107	2018-10-14 11:44:02.776279+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	661	David Matthewman	RelatedWork	{"{\\"title\\": \\"The Only Thing Faster Than Tonight: Mr. Darkness\\", \\"author\\": \\"Elise Mathesen\\", \\"publisher\\": \\"Uncanny Magazine\\"}"}
108	2018-10-14 11:47:02.891849+00	::ffff:172.18.0.10	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	661	David Matthewman	RetroNovel	{"{\\"title\\": \\"The Fountainhead\\", \\"author\\": \\"Ayn Rand\\", \\"publisher\\": \\"Bobbs Merrill\\"}","{\\"title\\": \\"Voyage to Venus\\", \\"author\\": \\"C S Lewis\\"}"}
109	2018-10-14 13:31:12.030411+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0	1033	Tammy Coxen	ShortStory	{"{\\"title\\": \\"Fandom for Robots\\"}","{\\"title\\": \\"Carnibal Nine\\"}","{\\"title\\": \\"Clearly lettered i na mostly steady hand\\"}","{\\"title\\": \\"Utopia, LOL?\\"}","{\\"title\\": \\"Confessions ofa Con Girl\\"}"}
110	2018-10-14 13:33:31.076034+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0	1033	Tammy Coxen	DramaticShort	{"{\\"title\\": \\"Michael's Gambit\\", \\"series\\": \\"Good Place\\"}","{\\"title\\": \\"Expanse Caliban's Ware\\", \\"series\\": \\"Expanse\\"}","{\\"title\\": \\"Home\\", \\"series\\": \\"Expanse\\"}","{\\"title\\": \\"Dance Dance Resolution\\", \\"series\\": \\"The Good Place\\"}","{\\"title\\": \\"Black Mirror\\", \\"series\\": \\"USS Callister\\"}"}
111	2018-10-14 13:35:40.135838+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0	1033	Tammy Coxen	Novel	{"{\\"title\\": \\"The Stone Sky\\", \\"author\\": \\"NK Jemisen\\"}","{\\"title\\": \\"Six Wakes\\", \\"author\\": \\"Mur Lafferty\\"}","{\\"title\\": \\"Provenance\\", \\"author\\": \\"Anne Leckey\\"}","{\\"title\\": \\"Collapsing Empire\\", \\"author\\": \\"Scalzi\\"}","{\\"title\\": \\"Artemis\\"}"}
112	2018-10-14 13:37:40.531813+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0	1033	Tammy Coxen	Novella	{"{\\"title\\": \\"Dusk or Dakr or Dawn or Day\\"}","{\\"title\\": \\"All Systems Red\\", \\"author\\": \\"Martha Wells\\"}","{\\"title\\": \\"Down Among the Sticks and Bones\\", \\"author\\": \\"Seanan McGuire\\"}","{\\"title\\": \\"Passing Strange\\"}","{\\"title\\": \\"And then there were (n-one)\\", \\"author\\": \\"Pinkser\\"}"}
113	2018-10-15 07:13:49.965338+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	RetroNovel	{"{\\"title\\": \\"Beyond This Horizon\\", \\"author\\": \\"Anson MacDonald\\", \\"publisher\\": \\"Astounding Science Fiction\\"}","{\\"title\\": \\"Darkness and the Light\\", \\"author\\": \\"Olaf Stapledon\\", \\"publisher\\": \\"Methuen / S.J.R. Saunders\\"}","{\\"title\\": \\"Donovan's Brain\\", \\"author\\": \\"Curt Siodmak\\", \\"publisher\\": \\"Black Mask\\"}","{\\"title\\": \\"Islandia\\", \\"author\\": \\"Austin Tappan Wright\\", \\"publisher\\": \\"Farrar & Rinehart\\"}","{\\"title\\": \\"Second Stage Lensmen\\", \\"author\\": \\"E. E. \\\\\\"Doc\\\\\\" Smith\\", \\"publisher\\": \\"Astounding Science Fiction\\"}"}
114	2018-10-15 07:16:09.088095+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	RetroNovella	{"{\\"title\\": \\"Asylum\\", \\"author\\": \\"A.E. van Vogt\\", \\"publisher\\": \\"Astounding Science Fiction\\"}","{\\"title\\": \\"The Compleat Werewolf\\", \\"author\\": \\"Anthony Boucher\\", \\"publisher\\": \\"Unknown Worlds\\"}","{\\"title\\": \\"Hell is Forever\\", \\"author\\": \\"Alfred Bester\\", \\"publisher\\": \\"Unknown Worlds\\"}","{\\"title\\": \\"Nerves\\", \\"author\\": \\"Lester del Rey\\", \\"publisher\\": \\"Astounding Science Fiction\\"}","{\\"title\\": \\"The Unpleasant Profession of Jonathan Hoag\\", \\"author\\": \\"John Riverside\\", \\"publisher\\": \\"Unknown Worlds\\"}"}
115	2018-10-15 07:17:51.547931+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	RetroNovelette	{"{\\"title\\": \\"Bridle and Saddle\\", \\"author\\": \\"Isaac Asimov\\", \\"publisher\\": \\"Astounding Science Fiction\\"}","{\\"title\\": \\"Foundation\\", \\"author\\": \\"Isaac Asimov\\", \\"publisher\\": \\"Astounding Science Fiction\\"}","{\\"title\\": \\"Goldfish Bowl\\", \\"author\\": \\"Anson MacDonald \\", \\"publisher\\": \\"Astounding Science Fiction\\"}","{\\"title\\": \\"The Star Mouse\\", \\"author\\": \\"Fredric Brown\\", \\"publisher\\": \\"Planet Stories\\"}","{\\"title\\": \\"There Shall Be Darkness\\", \\"author\\": \\"C.L. Moore\\", \\"publisher\\": \\"Astounding Science Fiction\\"}"}
116	2018-10-15 07:19:54.56295+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	RetroShortStory	{"{\\"title\\": \\"Etaoin Shrdlu\\", \\"author\\": \\"Fredric Brown\\", \\"publisher\\": \\"Unknown Worlds\\"}","{\\"title\\": \\"Mimic\\", \\"author\\": \\"Martin Pearson\\", \\"publisher\\": \\"Astonishing Stories\\"}","{\\"title\\": \\"Proof\\", \\"author\\": \\"Hal Clement\\", \\"publisher\\": \\"Astounding Science Fiction\\"}","{\\"title\\": \\"Runaround\\", \\"author\\": \\"Isaac Asimov\\", \\"publisher\\": \\"Astounding Science Fiction\\"}","{\\"title\\": \\"The Sunken Land\\", \\"author\\": \\"Fritz Leiber\\", \\"publisher\\": \\"Unknown Worlds,\\"}"}
117	2018-10-15 07:23:20.827361+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	RetroDramaticLong	{"{\\"title\\": \\"Bambi\\", \\"producer\\": \\"Walt Disney Productions\\"}","{\\"title\\": \\"Cat People\\", \\"producer\\": \\"RKO Radio Pictures\\"}","{\\"title\\": \\"The Ghost of Frankenstein\\", \\"producer\\": \\"Universal Pictures\\"}","{\\"title\\": \\"I Married a Witch\\", \\"producer\\": \\"Cinema Guild Productions / Paramount Pictures\\"}","{\\"title\\": \\"Invisible Agent\\", \\"producer\\": \\"Frank Lloyd Productions / Universal Pictures\\"}"}
118	2018-10-15 07:24:17.345108+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	RetroEditorShort	{"{\\"editor\\": \\"\\\\nDonald A. Wollheim\\"}","{\\"editor\\": \\"Oscar J. Friend\\"}","{\\"editor\\": \\"Dorothy McIlwraith\\"}","{\\"editor\\": \\"Raymond A. Palmer\\"}","{\\"editor\\": \\"John W. Campbell\\"}"}
119	2018-10-15 07:25:09.471576+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	RetroProArtist	{"{\\"author\\": \\"Harold W. McCauley\\"}","{\\"author\\": \\"Margaret Brundage\\"}","{\\"author\\": \\"Virgil Finlay\\"}","{\\"author\\": \\"Edd Cartier\\"}","{\\"author\\": \\"Hannes Bok\\"}"}
120	2018-10-15 07:26:09.116803+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	RetroFanzine	{"{\\"title\\": \\"Voice of the Imagi-Nation, edited by Forrest J Ackerman and Morojo\\"}","{\\"title\\": \\"Inspiration, edited by Lynn Bridges\\"}","{\\"title\\": \\"The Phantagraph, edited by Donald A. Wollheim\\"}","{\\"title\\": \\"Spaceways, edited by Harry Warner, Jr.\\"}","{\\"title\\": \\"Futurian War Digest, edited by J. Michael Rosenblum\\"}"}
121	2018-10-15 07:27:04.580061+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	RetroFanWriter	{"{\\"author\\": \\"Donald A. Wollheim\\"}","{\\"author\\": \\"Forrest J Ackerman\\"}","{\\"author\\": \\"Arthur Wilson \\\\\\"Bob\\\\\\" Tucker\\"}","{\\"author\\": \\"Jack Speer\\"}","{\\"author\\": \\"Harry Warner, Jr.\\"}"}
122	2018-10-15 07:29:42.301667+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	Novel	{"{\\"title\\": \\"The Collapsing Empire\\", \\"author\\": \\" John Scalzi \\", \\"publisher\\": \\"Tor\\"}","{\\"title\\": \\"New York 2140\\", \\"author\\": \\"Kim Stanley Robinson\\", \\"publisher\\": \\"Orbit\\"}","{\\"title\\": \\"Provenance\\", \\"author\\": \\"Ann Leckie\\", \\"publisher\\": \\"Orbit\\"}","{\\"title\\": \\"Raven Stratagem\\", \\"author\\": \\"Yoon Ha Lee\\", \\"publisher\\": \\"Solaris\\"}","{\\"title\\": \\"The Stone Sky\\", \\"author\\": \\"N.K. Jemisin\\", \\"publisher\\": \\"Orbit\\"}"}
123	2018-10-15 07:32:31.234441+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	Novella	{"{\\"title\\": \\"All Systems Red\\", \\"author\\": \\"Martha Wells\\", \\"publisher\\": \\"Tor.com Publishing\\"}","{\\"title\\": \\"River of Teeth\\", \\"author\\": \\"Sarah Gailey\\", \\"publisher\\": \\"Tor.com Publishing\\"}","{\\"title\\": \\"Down Among the Sticks and Bones\\", \\"author\\": \\"Seanan McGuire\\", \\"publisher\\": \\"Tor.com Publishing\\"}","{\\"title\\": \\"The Black Tides of Heaven\\", \\"author\\": \\"JY Yang\\", \\"publisher\\": \\"Tor.com Publishing\\"}","{\\"title\\": \\"_Home\\", \\"author\\": \\"Nnedi Okorafor\\", \\"publisher\\": \\"Tor.com Publishing\\"}"}
124	2018-10-15 07:36:08.552294+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	Novelette	{"{\\"title\\": \\"Children of Thorns, Children of Water\\", \\"author\\": \\"Aliette de Bodard\\", \\"publisher\\": \\"Uncanny\\"}","{\\"title\\": \\"Wind Will Rove\\", \\"author\\": \\"Sarah Pinsker\\", \\"publisher\\": \\"Asimov’s\\"}","{\\"title\\": \\"Small Changes Over Long Periods of Time\\", \\"author\\": \\"K.M. Szpara \\", \\"publisher\\": \\"Uncanny\\"}","{\\"title\\": \\"A Series of Steaks\\", \\"author\\": \\"Vina Jie-Min Prasad\\", \\"publisher\\": \\"Clarkesworld\\"}","{\\"title\\": \\"The Secret Life of Bots\\", \\"author\\": \\"Suzanne Palmer\\", \\"publisher\\": \\"Clarkesworld,\\"}"}
125	2018-10-15 07:38:47.708683+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	ShortStory	{"{\\"title\\": \\"Carnival Nine\\", \\"author\\": \\"Caroline M. Yoachim\\", \\"publisher\\": \\"Beneath Ceaseless Skies\\"}","{\\"title\\": \\"Welcome to your Authentic Indian Experience™\\", \\"author\\": \\"Rebecca Roanhorse\\", \\"publisher\\": \\"Apex\\"}","{\\"title\\": \\"Sun, Moon, Dust\\", \\"author\\": \\"Ursula Vernon\\", \\"publisher\\": \\"Uncanny\\"}","{\\"title\\": \\"The Martian Obelisk\\", \\"author\\": \\"Linda Nagata\\", \\"publisher\\": \\"Tor.com\\"}","{\\"title\\": \\"Fandom for Robots\\", \\"author\\": \\"Vina Jie-Min Prasad\\", \\"publisher\\": \\"Uncanny\\"}"}
126	2018-10-15 07:42:18.39126+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	RelatedWork	{"{\\"title\\": \\"Crash Override: How Gamergate (Nearly) Destroyed My Life, and How We Can Win the Fight Against Online Hate\\", \\"author\\": \\"Zoe Quinn \\", \\"publisher\\": \\"PublicAffairs\\"}","{\\"title\\": \\"Sleeping with Monsters: Readings and Reactions in Science Fiction and Fantasy\\", \\"author\\": \\"Liz Bourke\\", \\"publisher\\": \\"Aqueduct Press\\"}","{\\"title\\": \\"No Time to Spare: Thinking About What Matters\\", \\"author\\": \\"Ursula K. Le Guin\\", \\"publisher\\": \\"Houghton Mifflin Harcourt\\"}","{\\"title\\": \\"Luminescent Threads: Connections to Octavia E. Butler\\", \\"author\\": \\"Alexandra Pierce and Mimi Mondal\\", \\"publisher\\": \\"Twelfth Planet Press\\"}","{\\"title\\": \\"A Lit Fuse: The Provocative Life of Harlan Ellison\\", \\"author\\": \\"Nat Segaloff\\", \\"publisher\\": \\"NESFA Press\\"}"}
127	2018-10-16 14:53:47.467554+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	GraphicStory	{"{\\"title\\": \\"Bitch Planet, Volume 2: President Bitch, \\", \\"author\\": \\"written by Kelly Sue DeConnick, illustrated by Valentine De Landro and Taki Soma, colored by Kelly Fitzpatrick, lettered by Clayton Cowles \\", \\"publisher\\": \\"Image Comics\\"}","{\\"title\\": \\"Saga, Volume 7\\", \\"author\\": \\"Brian K. Vaughan, Fiona Staples\\", \\"publisher\\": \\"Image Comics\\"}","{\\"title\\": \\"Paper Girls, Volume 3\\", \\"author\\": \\"Brian K. Vaughan, illustrated by Cliff Chiang, colored by Matthew Wilson, lettered by Jared Fletcher\\", \\"publisher\\": \\"Image Comics\\"}","{\\"title\\": \\"My Favorite Thing is Monsters\\", \\"author\\": \\"Emil Ferris\\", \\"publisher\\": \\"Fantagraphics\\"}","{\\"title\\": \\"Monstress, Volume 2: The Blood\\", \\"author\\": \\"Marjorie M. Liu, illustrated by Sana Takeda\\", \\"publisher\\": \\"Image Comics\\"}"}
128	2018-10-16 14:56:07.375824+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	DramaticLong	{"{\\"title\\": \\"Blade Runner 2049\\", \\"producer\\": \\"Alcon Entertainment / Bud Yorkin Productions / Torridon Films / Columbia Pictures\\"}","{\\"title\\": \\"Wonder Woman\\", \\"producer\\": \\"DC Films / Warner Brothers\\"}","{\\"title\\": \\"Star Wars: The Last Jedi\\", \\"producer\\": \\"Lucasfilm, Ltd.\\"}","{\\"title\\": \\"The Shape of Water\\", \\"producer\\": \\"TSG Entertainment / Double Dare You / Fox Searchlight Pictures\\"}"}
129	2018-10-16 15:00:29.858889+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	DramaticShort	{"{\\"title\\": \\"Magic to Make the Sanest Man Go Mad\\", \\"series\\": \\"Star Trek: Discovery\\", \\"producer\\": \\"CBS Television Studios\\"}","{\\"title\\": \\"The Trolley Problem\\", \\"series\\": \\"The Good Place\\", \\"producer\\": \\"Fremulon / 3 Arts Entertainment / Universal Television\\"}","{\\"title\\": \\"Michael's Gambit\\", \\"series\\": \\"The Good Place\\", \\"producer\\": \\"Fremulon / 3 Arts Entertainment / Universal Television\\"}","{\\"title\\": \\"Twice Upon a Time\\", \\"series\\": \\"Doctor Who\\", \\"producer\\": \\"BBC Cymru Wales\\"}","{\\"title\\": \\"USS Callister\\", \\"series\\": \\"Black Mirror\\", \\"producer\\": \\"House of Tomorrow\\"}"}
130	2018-10-16 15:01:15.533578+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	EditorShort	{"{\\"editor\\": \\"Lynne M. Thomas & Michael Damian Thomas\\"}","{\\"editor\\": \\"Sheila Williams\\"}","{\\"editor\\": \\"Jonathan Strahan\\"}","{\\"editor\\": \\"Lee Harris\\"}","{\\"editor\\": \\"Neil Clarke\\"}"}
131	2018-10-16 15:01:50.937863+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	EditorLong	{"{\\"editor\\": \\"Navah Wolfe\\"}","{\\"editor\\": \\"Miriam Weinberg\\"}","{\\"editor\\": \\"Devi Pillai\\"}","{\\"editor\\": \\"Diana M. Pho\\"}","{\\"editor\\": \\"Joe Monti\\"}"}
132	2018-10-16 15:02:28.412118+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	ProArtist	{"{\\"author\\": \\"Sana Takeda\\"}","{\\"author\\": \\"John Picacio\\"}","{\\"author\\": \\"Victo Ngai\\"}","{\\"author\\": \\"Kathleen Jennings\\"}","{\\"author\\": \\"Galen Dara\\"}"}
133	2018-10-16 15:03:15.27723+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	FanArtist	{"{\\"author\\": \\"Steve Stiles\\"}","{\\"author\\": \\"Spring Schoenhuth\\"}","{\\"author\\": \\"Maya Hahto\\"}","{\\"author\\": \\"Grace P. Fong\\"}","{\\"author\\": \\"Geneva Benton\\"}"}
134	2018-10-16 15:03:47.243889+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	FanWriter	{"{\\"author\\": \\"Bogi Takács\\"}","{\\"author\\": \\"Charles Payseur\\"}","{\\"author\\": \\"Foz Meadows\\"}","{\\"author\\": \\"Mike Glyer\\"}","{\\"author\\": \\"Camestros Felapton\\"}"}
135	2018-10-16 15:05:33.174053+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	Fanzine	{"{\\"title\\": \\"SF Bluestocking\\"}","{\\"title\\": \\"Galactic Journey\\"}","{\\"title\\": \\"Journey Planet\\"}","{\\"title\\": \\"nerds of a feather, flock together\\"}","{\\"title\\": \\"Rocket Stack Rank\\"}"}
136	2018-10-16 15:08:58.820679+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	Lodestar	{"{\\"title\\": \\"Summer in Orcus\\", \\"author\\": \\"T. Kingfisher, Lauren Henderson\\", \\"publisher\\": \\"Sofawolf Press\\"}","{\\"title\\": \\"Akata Warrior\\", \\"author\\": \\"Nnedi Okorafor\\", \\"publisher\\": \\"Viking\\"}","{\\"title\\": \\"The Art of Starving\\", \\"author\\": \\"Sam J. Miller\\", \\"publisher\\": \\"HarperTeen\\"}","{\\"title\\": \\"The Book of Dust: La Belle Sauvage,\\", \\"author\\": \\"Philip Pullman\\", \\"publisher\\": \\"Knopf\\"}","{\\"title\\": \\"In Other Lands\\", \\"author\\": \\"Sarah Rees Brennan\\", \\"publisher\\": \\"Big Mouth House\\"}"}
137	2018-10-16 15:09:54.926036+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	Astounding	{"{\\"author\\": \\"Rivers Solomon\\"}","{\\"author\\": \\"Rebecca Roanhorse\\"}","{\\"author\\": \\"Jeannette Ng\\"}","{\\"author\\": \\"Sarah Kuhn\\"}","{\\"author\\": \\"Vina Jie-Min Prasad\\"}"}
138	2018-10-16 15:10:55.250706+00	::ffff:172.18.0.10	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36	1037	Sanna Lopperi	Semiprozine	{"{\\"title\\": \\"Strange Horizons, edited by Kate Dollarhyde, Gautam Bhatia, A.J. Odasso, Lila Garrott, Heather McDougal, Ciro Faienza, Tahlia Day, Vanessa Rose Phin, and the Strange Horizons staff\\"}","{\\"title\\": \\"The Book Smugglers, edited by Ana Grilo and Thea James\\"}","{\\"title\\": \\"Escape Pod, edited by Mur Lafferty, S.B. Divya, and Norm Sherman, with assistant editor Benjamin C. Kinney\\"}","{\\"title\\": \\"Fireside Magazine, edited by Brian White and Julia Rios; managing editor Elsa Sjunneson-Henry; special feature editor Mikki Kendall; publisher & art director Pablo Defendini\\"}","{\\"title\\": \\"Beneath Ceaseless Skies, editor-in-chief and publisher Scott H. Andrews\\"}"}
\.


--
-- Data for Name: packet; Type: TABLE DATA; Schema: hugo; Owner: hugo
--


COPY hugo.packet (category, filename, filesize, format) FROM stdin;
\.


--
-- Data for Name: votes; Type: TABLE DATA; Schema: hugo; Owner: hugo
--


COPY hugo.votes (id, "time", client_ip, client_ua, person_id, signature, category, votes) FROM stdin;
\.


--
-- Data for Name: badge_and_daypass_prints; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.badge_and_daypass_prints (person, "timestamp", membership, member_number, daypass) FROM stdin;
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.countries (entry, country) FROM stdin;
\.


--
-- Data for Name: daypass_amounts; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.daypass_amounts (status, day1, day2, day3, day4, day5) FROM stdin;
\.


--
-- Data for Name: daypasses; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.daypasses (id, person_id, status, day1, day2, day3, day4, day5) FROM stdin;
\.


--
-- Data for Name: keys; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.keys (email, key) FROM stdin;
admin@example.com	key
member-admin@example.com	key
site-select@example.com	key
hugo-admin@example.com	key
\.


--
-- Data for Name: log; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.log (id, "timestamp", client_ip, client_ua, author, subject, action, parameters, description) FROM stdin;
\.


--
-- Data for Name: payment_categories; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.payment_categories (key, label, account, allow_create_account, custom_email, listed, description, fields) FROM stdin;
\.


--
-- Data for Name: payment_fields; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.payment_fields (key, generated, label, required, type) FROM stdin;
\.


--
-- Data for Name: payment_types; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.payment_types (key, category, amount, label, description, sort_index) FROM stdin;
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.payments (id, created, updated, payment_email, status, stripe_charge_id, stripe_receipt, stripe_token, error, amount, currency, person_id, person_name, category, type, data, invoice, comments) FROM stdin;
\.



--
-- Data for Name: siteselection_votes; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.siteselection_votes (person_id, "time", token, voter_name, voter_email) FROM stdin;
\.


--
-- Data for Name: stripe_keys; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.stripe_keys (name, type, key) FROM stdin;
\.


--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: admin
--


COPY public.session (sid, sess, expire) FROM stdin;
\.


--
-- Data for Name: artist; Type: TABLE DATA; Schema: raami; Owner: raami
--


COPY raami.artist (people_id, name, continent, url, filename, filedata, category, description, transport, auction, half, print, digital, legal, agent, contact, waitlist, postage) FROM stdin;
\.


--
-- Data for Name: works; Type: TABLE DATA; Schema: raami; Owner: raami
--


COPY raami.works (id, people_id, title, width, height, depth, technique, orientation, graduation, filename, filedata, price, gallery, year, original, copies, start, sale, permission, form) FROM stdin;
\.

