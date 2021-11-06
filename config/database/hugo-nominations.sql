
--
-- Data for Name: admins; Type: TABLE DATA; Schema: admin; Owner: admin
--

COPY admin.admins (email, member_admin, member_list, siteselection, hugo_admin, raami_admin, admin_admin) FROM stdin;
\.


--
-- Data for Name: canon; Type: TABLE DATA; Schema: hugo; Owner: hugo
--


COPY hugo.canon (id, category, nomination, disqualified, relocated) FROM stdin;
\.


--
-- Data for Name: classification; Type: TABLE DATA; Schema: hugo; Owner: hugo
--


COPY hugo.classification (category, nomination, canon_id) FROM stdin;
\.


--
-- Data for Name: finalists; Type: TABLE DATA; Schema: hugo; Owner: hugo
--


COPY hugo.finalists (id, category, sortindex, title, subtitle) FROM stdin;
\.


--
-- Data for Name: membership_types; Type: TABLE DATA; Schema: kansa; Owner: kansa
--


COPY kansa.membership_types (membership, allow_lookup, badge, daypass_available, hugo_nominator, member, wsfs_member) FROM stdin;
\.


--
-- Data for Name: nominations; Type: TABLE DATA; Schema: hugo; Owner: hugo
--


COPY hugo.nominations (id, "time", client_ip, client_ua, person_id, signature, category, nominations) FROM stdin;
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


