--
-- leyqblfdrlswgjQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2021-02-10 23:11:26

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16515)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO leyqblfdrlswgj;

--
-- TOC entry 214 (class 1259 OID 16513)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO leyqblfdrlswgj;

--
-- TOC entry 3193 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leyqblfdrlswgj
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 217 (class 1259 OID 16525)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO leyqblfdrlswgj;

--
-- TOC entry 216 (class 1259 OID 16523)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO leyqblfdrlswgj;

--
-- TOC entry 3194 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leyqblfdrlswgj
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 213 (class 1259 OID 16507)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO leyqblfdrlswgj;

--
-- TOC entry 212 (class 1259 OID 16505)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO leyqblfdrlswgj;

--
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leyqblfdrlswgj
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 219 (class 1259 OID 16533)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO leyqblfdrlswgj;

--
-- TOC entry 221 (class 1259 OID 16543)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO leyqblfdrlswgj;

--
-- TOC entry 220 (class 1259 OID 16541)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO leyqblfdrlswgj;

--
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leyqblfdrlswgj
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 218 (class 1259 OID 16531)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO leyqblfdrlswgj;

--
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leyqblfdrlswgj
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 223 (class 1259 OID 16551)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO leyqblfdrlswgj;

--
-- TOC entry 222 (class 1259 OID 16549)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO leyqblfdrlswgj;

--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leyqblfdrlswgj
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 225 (class 1259 OID 16611)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO leyqblfdrlswgj;

--
-- TOC entry 224 (class 1259 OID 16609)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO leyqblfdrlswgj;

--
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 224
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leyqblfdrlswgj
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 211 (class 1259 OID 16497)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO leyqblfdrlswgj;

--
-- TOC entry 210 (class 1259 OID 16495)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO leyqblfdrlswgj;

--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 210
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leyqblfdrlswgj
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 209 (class 1259 OID 16486)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO leyqblfdrlswgj;

--
-- TOC entry 208 (class 1259 OID 16484)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO leyqblfdrlswgj;

--
-- TOC entry 3201 (class 0 OID 0)
-- Dependencies: 208
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leyqblfdrlswgj
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 226 (class 1259 OID 16643)
-- Name: django_session; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO leyqblfdrlswgj;

--
-- TOC entry 204 (class 1259 OID 16427)
-- Name: leagueaveragetotals; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.leagueaveragetotals (
    season character varying,
    points integer,
    rebounds integer,
    offensive_rebounds integer,
    defensive_rebounds integer,
    assists integer,
    rim_assists integer,
    turnovers integer,
    live_turnovers integer,
    free_throws_made integer,
    free_throws_attempted integer,
    field_goals_made integer,
    field_goals_attempted integer,
    threes_made integer,
    threes_attempted integer,
    rim_attempted integer,
    rim_made integer,
    possessions integer,
    true_shooting_pct numeric,
    effective_field_goal_pct numeric,
    rebound_pct numeric
);


ALTER TABLE public.leagueaveragetotals OWNER TO leyqblfdrlswgj;

--
-- TOC entry 203 (class 1259 OID 16419)
-- Name: playergameresults; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.playergameresults (
    game_id character varying NOT NULL,
    player_id integer NOT NULL,
    team_id integer,
    game_date date,
    season character varying,
    rebounds integer,
    offensive_rebounds integer,
    defensive_rebounds integer,
    assists integer,
    rim_assists integer,
    turnovers integer,
    live_turnovers integer,
    free_throws_made integer,
    free_throws_attempted integer,
    field_goals_made integer,
    field_goals_attempted integer,
    threes_made integer,
    threes_attempted integer,
    rim_attempted integer,
    rim_made integer,
    true_shooting_pct numeric,
    effective_field_goal_pct numeric,
    plus_minus integer,
    steals integer,
    blocks integer,
    fouls integer,
    minutes character varying,
    offensive_possessions integer,
    defensive_possessions integer,
    points integer,
    is_starter boolean,
    offensive_rating numeric,
    defensive_rating numeric,
    pace numeric,
    is_home boolean,
    usage_pct numeric
);


ALTER TABLE public.playergameresults OWNER TO leyqblfdrlswgj;

--
-- TOC entry 200 (class 1259 OID 16395)
-- Name: players; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    team_id integer
);


ALTER TABLE public.players OWNER TO leyqblfdrlswgj;

--
-- TOC entry 207 (class 1259 OID 16449)
-- Name: playertotals; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.playertotals (
    player_id integer NOT NULL,
    season character varying,
    team_id integer,
    game_date date,
    score integer,
    rebounds integer,
    offensive_rebounds integer,
    defensive_rebounds integer,
    assists integer,
    rim_assists integer,
    turnovers integer,
    live_turnovers integer,
    free_throws_made integer,
    free_throws_attempted integer,
    field_goals_made integer,
    field_goals_attempted integer,
    threes_made integer,
    threes_attempted integer,
    rim_attempted integer,
    rim_made integer,
    possessions integer,
    true_shooting_pct numeric,
    effective_field_goal_pct numeric,
    rebound_pct numeric
);


ALTER TABLE public.playertotals OWNER TO leyqblfdrlswgj;

--
-- TOC entry 205 (class 1259 OID 16433)
-- Name: standings; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.standings (
    team_id integer NOT NULL,
    wins integer,
    losses integer,
    seed integer,
    season character varying
);


ALTER TABLE public.standings OWNER TO leyqblfdrlswgj;

--
-- TOC entry 202 (class 1259 OID 16411)
-- Name: teamgameresults; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.teamgameresults (
    game_id character varying NOT NULL,
    team_id integer NOT NULL,
    season character varying,
    game_date date,
    score integer,
    rebounds integer,
    offensive_rebounds integer,
    defensive_rebounds integer,
    assists integer,
    rim_assists integer,
    turnovers integer,
    live_turnovers integer,
    free_throws_made integer,
    free_throws_attempted integer,
    field_goals_made integer,
    field_goals_attempted integer,
    threes_made integer,
    threes_attempted integer,
    rim_attempted integer,
    rim_made integer,
    true_shooting_pct numeric,
    effective_field_goal_pct numeric,
    rotation_chart_location character varying,
    shot_chart_location character varying,
    steals integer,
    blocks integer,
    fouls integer,
    defensive_possessions integer,
    defensive_rating numeric,
    is_home boolean,
    num_overtimes integer,
    offensive_possessions integer,
    offensive_rating numeric,
    pace numeric
);


ALTER TABLE public.teamgameresults OWNER TO leyqblfdrlswgj;

--
-- TOC entry 201 (class 1259 OID 16403)
-- Name: teams; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    team_name character varying,
    abbr_name character varying,
    city character varying
);


ALTER TABLE public.teams OWNER TO leyqblfdrlswgj;

--
-- TOC entry 206 (class 1259 OID 16441)
-- Name: teamtotals; Type: TABLE; Schema: public; Owner: leyqblfdrlswgj
--

CREATE TABLE public.teamtotals (
    team_id integer NOT NULL,
    season character varying,
    points integer,
    rebounds integer,
    offensive_rebounds integer,
    defensive_rebounds integer,
    assists integer,
    rim_assists integer,
    turnovers integer,
    live_turnovers integer,
    free_throws_made integer,
    free_throws_attempted integer,
    field_goals_made integer,
    field_goals_attempted integer,
    threes_made integer,
    threes_attempted integer,
    rim_attempted integer,
    rim_made integer,
    possessions integer,
    true_shooting_pct numeric,
    effective_field_goal_pct numeric,
    rebound_pct numeric
);


ALTER TABLE public.teamtotals OWNER TO leyqblfdrlswgj;

--
-- TOC entry 2949 (class 2604 OID 16518)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2950 (class 2604 OID 16528)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2948 (class 2604 OID 16510)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2951 (class 2604 OID 16536)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2952 (class 2604 OID 16546)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2953 (class 2604 OID 16554)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2954 (class 2604 OID 16614)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2947 (class 2604 OID 16500)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2946 (class 2604 OID 16489)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3176 (class 0 OID 16515)
-- Dependencies: 215
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3178 (class 0 OID 16525)
-- Dependencies: 217
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3174 (class 0 OID 16507)
-- Dependencies: 213
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add leagueaveragetotals	7	add_leagueaveragetotals
26	Can change leagueaveragetotals	7	change_leagueaveragetotals
27	Can delete leagueaveragetotals	7	delete_leagueaveragetotals
28	Can view leagueaveragetotals	7	view_leagueaveragetotals
29	Can add playergameresults	8	add_playergameresults
30	Can change playergameresults	8	change_playergameresults
31	Can delete playergameresults	8	delete_playergameresults
32	Can view playergameresults	8	view_playergameresults
33	Can add teamgameresults	9	add_teamgameresults
34	Can change teamgameresults	9	change_teamgameresults
35	Can delete teamgameresults	9	delete_teamgameresults
36	Can view teamgameresults	9	view_teamgameresults
37	Can add playertotals	10	add_playertotals
38	Can change playertotals	10	change_playertotals
39	Can delete playertotals	10	delete_playertotals
40	Can view playertotals	10	view_playertotals
41	Can add players	11	add_players
42	Can change players	11	change_players
43	Can delete players	11	delete_players
44	Can view players	11	view_players
45	Can add teamtotals	12	add_teamtotals
46	Can change teamtotals	12	change_teamtotals
47	Can delete teamtotals	12	delete_teamtotals
48	Can view teamtotals	12	view_teamtotals
49	Can add teams	13	add_teams
50	Can change teams	13	change_teams
51	Can delete teams	13	delete_teams
52	Can view teams	13	view_teams
53	Can add standings	14	add_standings
54	Can change standings	14	change_standings
55	Can delete standings	14	delete_standings
56	Can view standings	14	view_standings
57	Can add auth group	15	add_authgroup
58	Can change auth group	15	change_authgroup
59	Can delete auth group	15	delete_authgroup
60	Can view auth group	15	view_authgroup
61	Can add auth group permissions	16	add_authgrouppermissions
62	Can change auth group permissions	16	change_authgrouppermissions
63	Can delete auth group permissions	16	delete_authgrouppermissions
64	Can view auth group permissions	16	view_authgrouppermissions
65	Can add auth permission	17	add_authpermission
66	Can change auth permission	17	change_authpermission
67	Can delete auth permission	17	delete_authpermission
68	Can view auth permission	17	view_authpermission
69	Can add auth user	18	add_authuser
70	Can change auth user	18	change_authuser
71	Can delete auth user	18	delete_authuser
72	Can view auth user	18	view_authuser
73	Can add auth user groups	19	add_authusergroups
74	Can change auth user groups	19	change_authusergroups
75	Can delete auth user groups	19	delete_authusergroups
76	Can view auth user groups	19	view_authusergroups
77	Can add auth user user permissions	20	add_authuseruserpermissions
78	Can change auth user user permissions	20	change_authuseruserpermissions
79	Can delete auth user user permissions	20	delete_authuseruserpermissions
80	Can view auth user user permissions	20	view_authuseruserpermissions
81	Can add django admin log	21	add_djangoadminlog
82	Can change django admin log	21	change_djangoadminlog
83	Can delete django admin log	21	delete_djangoadminlog
84	Can view django admin log	21	view_djangoadminlog
85	Can add django content type	22	add_djangocontenttype
86	Can change django content type	22	change_djangocontenttype
87	Can delete django content type	22	delete_djangocontenttype
88	Can view django content type	22	view_djangocontenttype
89	Can add django migrations	23	add_djangomigrations
90	Can change django migrations	23	change_djangomigrations
91	Can delete django migrations	23	delete_djangomigrations
92	Can view django migrations	23	view_djangomigrations
93	Can add django session	24	add_djangosession
94	Can change django session	24	change_djangosession
95	Can delete django session	24	delete_djangosession
96	Can view django session	24	view_djangosession
\.


--
-- TOC entry 3180 (class 0 OID 16533)
-- Dependencies: 219
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 3182 (class 0 OID 16543)
-- Dependencies: 221
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3184 (class 0 OID 16551)
-- Dependencies: 223
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3186 (class 0 OID 16611)
-- Dependencies: 225
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3172 (class 0 OID 16497)
-- Dependencies: 211
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	gamerecaps	leagueaveragetotals
8	gamerecaps	playergameresults
9	gamerecaps	teamgameresults
10	gamerecaps	playertotals
11	gamerecaps	players
12	gamerecaps	teamtotals
13	gamerecaps	teams
14	gamerecaps	standings
15	gamerecaps	authgroup
16	gamerecaps	authgrouppermissions
17	gamerecaps	authpermission
18	gamerecaps	authuser
19	gamerecaps	authusergroups
20	gamerecaps	authuseruserpermissions
21	gamerecaps	djangoadminlog
22	gamerecaps	djangocontenttype
23	gamerecaps	djangomigrations
24	gamerecaps	djangosession
\.


--
-- TOC entry 3170 (class 0 OID 16486)
-- Dependencies: 209
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-01-30 22:45:37.278857-05
2	auth	0001_initial	2021-01-30 22:45:37.338737-05
3	admin	0001_initial	2021-01-30 22:45:37.445837-05
4	admin	0002_logentry_remove_auto_add	2021-01-30 22:45:37.465783-05
5	admin	0003_logentry_add_action_flag_choices	2021-01-30 22:45:37.471767-05
6	contenttypes	0002_remove_content_type_name	2021-01-30 22:45:37.484165-05
7	auth	0002_alter_permission_name_max_length	2021-01-30 22:45:37.490664-05
8	auth	0003_alter_user_email_max_length	2021-01-30 22:45:37.498646-05
9	auth	0004_alter_user_username_opts	2021-01-30 22:45:37.505649-05
10	auth	0005_alter_user_last_login_null	2021-01-30 22:45:37.511613-05
11	auth	0006_require_contenttypes_0002	2021-01-30 22:45:37.513607-05
12	auth	0007_alter_validators_add_error_messages	2021-01-30 22:45:37.520344-05
13	auth	0008_alter_user_username_max_length	2021-01-30 22:45:37.537286-05
14	auth	0009_alter_user_last_name_max_length	2021-01-30 22:45:37.547262-05
15	auth	0010_alter_group_name_max_length	2021-01-30 22:45:37.557233-05
16	auth	0011_update_proxy_permissions	2021-01-30 22:45:37.563904-05
17	auth	0012_alter_user_first_name_max_length	2021-01-30 22:45:37.570536-05
18	sessions	0001_initial	2021-01-30 22:47:05.06145-05
19	gamerecaps	0001_initial	2021-01-30 23:05:57.445892-05
20	gamerecaps	0002_authgroup_authgrouppermissions_authpermission_authuser_authusergroups_authuseruserpermissions_django	2021-01-31 11:30:33.756594-05
\.


--
-- TOC entry 3187 (class 0 OID 16643)
-- Dependencies: 226
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 3165 (class 0 OID 16427)
-- Dependencies: 204
-- Data for Name: leagueaveragetotals; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.leagueaveragetotals (season, points, rebounds, offensive_rebounds, defensive_rebounds, assists, rim_assists, turnovers, live_turnovers, free_throws_made, free_throws_attempted, field_goals_made, field_goals_attempted, threes_made, threes_attempted, rim_attempted, rim_made, possessions, true_shooting_pct, effective_field_goal_pct, rebound_pct) FROM stdin;
\.


--
-- TOC entry 3164 (class 0 OID 16419)
-- Dependencies: 203
-- Data for Name: playergameresults; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.playergameresults (game_id, player_id, team_id, game_date, season, rebounds, offensive_rebounds, defensive_rebounds, assists, rim_assists, turnovers, live_turnovers, free_throws_made, free_throws_attempted, field_goals_made, field_goals_attempted, threes_made, threes_attempted, rim_attempted, rim_made, true_shooting_pct, effective_field_goal_pct, plus_minus, steals, blocks, fouls, minutes, offensive_possessions, defensive_possessions, points, is_starter, offensive_rating, defensive_rating, pace, is_home, usage_pct) FROM stdin;
0022000290	1629027	1610612737	2021-01-29	2020-21	3	1	2	5	1	2	1	16	17	10	18	5	9	0	0	0.7916666666666666	0.6944444444444444	12	0	0	4	33:41	67	69	41	t	120.6	100.0	98.35	f	\N
0022000290	1628381	1610612737	2021-01-29	2020-21	8	3	5	0	0	1	1	4	6	6	10	1	4	2	2	0.6538461538461539	0.65	17	0	0	5	30:28	60	60	17	t	120.0	88.7	96.11	f	\N
0022000290	1628989	1610612737	2021-01-29	2020-21	5	2	3	3	1	0	0	0	1	2	10	1	5	1	0	0.25	0.25	21	1	0	5	29:59	60	59	5	t	124.2	93.3	97.65	f	\N
0022000290	203991	1610612737	2021-01-29	2020-21	14	5	9	3	0	1	1	1	1	6	14	0	0	6	5	0.4642857142857143	0.42857142857142855	15	0	3	2	29:49	61	62	13	t	118.8	95.3	103.03	f	\N
0022000290	1629631	1610612737	2021-01-29	2020-21	2	1	1	1	0	0	0	0	0	3	7	0	2	3	2	0.42857142857142855	0.42857142857142855	7	1	0	0	12:05	27	27	6	t	96.4	74.1	109.24	f	\N
0022000290	1629629	1610612737	2021-01-29	2020-21	3	0	3	0	0	2	1	2	4	2	7	1	5	0	0	0.3888888888888889	0.35714285714285715	10	1	1	4	32:08	66	64	7	f	127.3	110.4	99.36	f	\N
0022000290	203524	1610612737	2021-01-29	2020-21	3	0	3	0	0	0	0	0	0	1	5	0	4	1	1	0.2	0.2	4	1	0	2	19:32	44	43	2	f	113.3	104.4	110.53	f	\N
0022000290	201568	1610612737	2021-01-29	2020-21	3	0	3	0	0	3	1	1	2	4	8	2	4	0	0	0.6111111111111112	0.625	-3	0	0	2	18:18	39	39	11	f	102.6	107.5	103.61	f	\N
0022000290	200765	1610612737	2021-01-29	2020-21	2	0	2	4	2	3	1	0	0	3	4	2	3	1	1	1.0	1.0	4	1	0	3	14:35	35	32	8	f	111.4	97.2	116.85	f	\N
0022000290	1630168	1610612737	2021-01-29	2020-21	4	0	4	0	0	0	0	2	3	2	3	0	0	1	1	0.75	0.6666666666666666	0	0	0	2	11:20	25	25	6	f	96.0	92.3	108.0	f	\N
0022000290	203503	1610612737	2021-01-29	2020-21	0	0	0	0	0	1	0	0	0	0	1	0	1	0	0	0.0	0.0	-5	0	0	1	06:07	12	15	0	f	61.5	86.7	109.86	f	\N
0022000290	1629164	1610612737	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-2	0	0	0	01:01	2	3	0	f	0.0	66.7	118.03	f	\N
0022000290	1628981	1610612737	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:57	2	2	0	f	0.0	0.0	100.17	f	\N
0022000290	0	1610612737	2021-01-29	2020-21	6	1	5	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000290	203078	1610612764	2021-01-29	2020-21	2	1	1	3	0	1	1	6	7	10	26	0	8	4	3	0.44642857142857145	0.38461538461538464	-17	2	1	4	31:47	64	63	26	t	103.1	129.7	96.66	t	\N
0022000290	201566	1610612764	2021-01-29	2020-21	6	0	6	4	1	3	1	7	8	8	18	3	5	3	2	0.5909090909090909	0.5277777777777778	-9	0	1	2	27:06	58	57	26	t	100.0	115.0	106.27	t	\N
0022000290	1629010	1610612764	2021-01-29	2020-21	6	0	6	1	0	3	0	4	5	1	7	0	1	0	0	0.3333333333333333	0.14285714285714285	-12	1	1	4	24:11	48	48	6	t	100.0	119.6	99.23	t	\N
0022000290	1629060	1610612764	2021-01-29	2020-21	5	3	2	1	0	1	0	2	2	3	9	1	2	2	2	0.45	0.3888888888888889	-8	0	0	4	24:05	49	50	9	t	107.8	123.5	101.63	t	\N
0022000290	201577	1610612764	2021-01-29	2020-21	4	2	2	0	0	2	1	0	0	3	5	0	0	1	1	0.6	0.6	-7	0	0	1	20:10	43	42	6	t	88.4	107.1	101.17	t	\N
0022000290	202722	1610612764	2021-01-29	2020-21	3	0	3	0	0	0	0	1	2	0	7	0	6	0	0	0.0625	0.0	-13	1	0	2	25:04	53	53	1	f	87.5	117.0	104.36	t	\N
0022000290	1629726	1610612764	2021-01-29	2020-21	2	0	2	1	0	0	0	7	8	1	2	1	2	0	0	1.0	0.75	4	1	0	2	20:45	44	44	10	f	113.3	106.8	102.94	t	\N
0022000290	203526	1610612764	2021-01-29	2020-21	2	1	1	1	1	1	1	0	0	2	5	1	1	0	0	0.5	0.5	-1	0	0	1	19:52	41	42	5	f	88.4	90.7	103.89	t	\N
0022000290	203458	1610612764	2021-01-29	2020-21	9	4	5	1	0	1	0	2	4	3	6	1	3	2	2	0.5625	0.5833333333333334	-11	1	1	2	17:18	36	37	9	f	86.8	118.9	104.05	t	\N
0022000290	1629067	1610612764	2021-01-29	2020-21	3	1	2	1	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-11	0	0	3	15:36	33	34	0	f	80.0	114.7	106.15	t	\N
0022000290	1629021	1610612764	2021-01-29	2020-21	4	1	3	0	0	1	1	0	0	0	0	0	0	0	0	0.0	0.0	5	0	0	2	10:28	21	20	0	f	138.1	120.0	94.01	t	\N
0022000290	1630216	1610612764	2021-01-29	2020-21	0	0	0	0	0	0	0	2	2	0	0	0	0	0	0	1.0	0.0	0	0	0	0	01:49	5	5	2	f	40.0	40.0	132.11	t	\N
0022000290	1630264	1610612764	2021-01-29	2020-21	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	01:49	5	5	0	f	40.0	40.0	132.11	t	\N
0022000290	1	1610612764	2021-01-29	2020-21	6	3	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000297	1629029	1610612742	2021-01-29	2020-21	6	0	6	7	2	2	2	7	10	8	17	2	6	3	2	0.5681818181818182	0.5294117647058824	-27	1	0	2	32:15	64	64	25	t	92.3	133.8	96.74	f	\N
0022000297	203501	1610612742	2021-01-29	2020-21	1	0	1	3	1	1	0	0	0	1	5	0	1	0	0	0.2	0.2	-13	1	0	3	26:24	51	51	2	t	105.8	133.3	93.64	f	\N
0022000297	1626196	1610612742	2021-01-29	2020-21	2	1	1	2	2	0	0	0	0	3	8	0	3	1	1	0.375	0.375	-14	1	0	4	25:03	50	51	6	t	98.0	123.1	98.68	f	\N
0022000297	204001	1610612742	2021-01-29	2020-21	9	3	6	0	0	1	1	2	3	4	14	1	5	4	2	0.36666666666666664	0.32142857142857145	-18	0	0	5	24:36	48	50	11	t	93.9	123.1	98.54	f	\N
0022000297	1627827	1610612742	2021-01-29	2020-21	0	0	0	0	0	1	0	0	0	4	9	3	8	1	1	0.6111111111111112	0.6111111111111112	-13	1	0	3	22:33	45	44	11	t	97.8	128.9	96.85	f	\N
0022000297	1628973	1610612742	2021-01-29	2020-21	2	0	2	2	0	0	0	3	4	4	7	2	4	0	0	0.7222222222222222	0.7142857142857143	-11	0	0	2	26:15	51	53	13	f	107.7	126.4	96.0	f	\N
0022000297	201949	1610612742	2021-01-29	2020-21	4	2	2	2	1	3	2	2	2	4	7	0	0	3	2	0.625	0.5714285714285714	-10	0	2	3	21:57	44	45	10	f	102.2	121.7	99.5	f	\N
0022000297	203504	1610612742	2021-01-29	2020-21	3	0	3	2	0	1	1	0	0	3	8	0	4	1	1	0.375	0.375	-2	2	0	4	18:20	38	38	6	f	102.6	107.9	99.49	f	\N
0022000297	203939	1610612742	2021-01-29	2020-21	5	2	3	0	0	0	0	2	4	2	4	0	1	3	2	0.5	0.5	1	0	0	0	14:07	27	27	6	f	139.3	140.7	93.51	f	\N
0022000297	1626161	1610612742	2021-01-29	2020-21	3	0	3	0	0	1	1	0	0	0	0	0	0	0	0	0.0	0.0	-1	0	0	1	09:11	21	20	0	f	76.2	77.3	112.38	f	\N
0022000297	1630182	1610612742	2021-01-29	2020-21	1	0	1	0	0	0	0	0	1	3	3	1	1	1	1	1.1666666666666667	1.1666666666666667	4	0	1	0	08:31	19	18	7	f	121.1	100.0	107.08	f	\N
0022000288	1628410	1610612754	2021-01-29	2020-21	0	0	0	0	0	1	1	0	0	1	1	1	1	0	0	1.5	1.5	3	1	0	0	00:45	1	2	3	f	150.0	0.0	128.0	f	\N
0022000297	1626246	1610612742	2021-01-29	2020-21	3	0	3	1	0	0	0	0	1	1	1	0	0	0	0	1.0	1.0	3	0	0	0	03:36	9	8	2	f	111.1	77.8	120.0	f	\N
0022000297	1628411	1610612742	2021-01-29	2020-21	1	0	1	1	0	0	0	2	2	0	2	0	0	1	0	0.3333333333333333	0.0	3	0	1	0	03:36	9	8	2	f	111.1	77.8	120.0	f	\N
0022000297	1630179	1610612742	2021-01-29	2020-21	0	0	0	0	0	1	1	0	0	0	1	0	0	0	0	0.0	0.0	3	0	0	0	03:36	9	8	0	f	111.1	77.8	120.0	f	\N
0022000297	0	1610612742	2021-01-29	2020-21	5	4	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000297	1626220	1610612762	2021-01-29	2020-21	11	2	9	3	0	1	0	4	4	0	4	0	1	1	0	0.3333333333333333	0.0	22	1	2	2	36:31	72	73	4	t	128.4	98.6	97.27	t	\N
0022000297	201144	1610612762	2021-01-29	2020-21	3	1	2	9	6	1	0	4	4	7	17	4	10	1	1	0.5789473684210527	0.5294117647058824	30	3	0	1	32:33	67	65	22	t	129.4	86.6	99.54	t	\N
0022000297	202711	1610612762	2021-01-29	2020-21	0	0	0	2	1	1	0	5	5	10	16	7	11	3	3	0.8888888888888888	0.84375	21	0	0	2	32:06	64	64	32	t	140.6	106.2	96.45	t	\N
0022000297	204060	1610612762	2021-01-29	2020-21	4	0	4	4	2	4	2	0	0	4	7	2	4	1	1	0.7142857142857143	0.7142857142857143	4	1	0	4	27:32	53	54	10	t	121.8	110.5	97.66	t	\N
0022000297	203497	1610612762	2021-01-29	2020-21	12	5	7	0	0	4	1	7	8	5	7	0	0	7	5	0.85	0.7142857142857143	14	0	2	5	25:26	52	50	17	t	126.9	102.0	97.2	t	\N
0022000297	203903	1610612762	2021-01-29	2020-21	6	1	5	1	0	2	1	4	4	5	16	4	12	2	0	0.5	0.4375	14	0	0	1	30:29	62	61	18	f	127.4	104.8	97.6	t	\N
0022000297	1629752	1610612762	2021-01-29	2020-21	7	3	4	1	0	0	0	0	1	5	8	2	4	4	3	0.75	0.75	6	3	0	6	20:53	41	42	12	f	121.4	104.7	97.69	t	\N
0022000297	1627777	1610612762	2021-01-29	2020-21	6	2	4	0	0	1	1	0	0	1	9	0	4	2	1	0.1111111111111111	0.1111111111111111	-2	0	1	1	16:39	35	35	2	f	88.9	97.1	102.34	t	\N
0022000297	1629671	1610612762	2021-01-29	2020-21	4	3	1	1	0	1	1	0	0	0	1	0	1	0	0	0.0	0.0	-3	0	0	1	10:44	23	22	0	f	95.8	113.0	105.09	t	\N
0022000297	1628962	1610612762	2021-01-29	2020-21	2	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-5	0	0	1	02:43	6	7	0	f	42.9	114.3	123.68	t	\N
0022000297	1629714	1610612762	2021-01-29	2020-21	1	0	1	0	0	0	0	0	0	1	2	1	1	1	0	0.75	0.75	-5	0	0	1	02:43	6	7	3	f	42.9	114.3	123.68	t	\N
0022000297	1627885	1610612762	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-1	0	0	0	01:41	4	5	0	f	60.0	80.0	142.57	t	\N
0022000297	1	1610612762	2021-01-29	2020-21	2	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000296	203999	1610612743	2021-01-29	2020-21	10	1	9	5	3	4	1	2	4	14	24	5	11	2	1	0.6730769230769231	0.6875	-9	1	1	3	38:43	78	75	35	t	112.8	126.0	96.09	f	\N
0022000296	1627750	1610612743	2021-01-29	2020-21	6	1	5	7	1	1	1	0	0	9	14	2	4	2	2	0.7142857142857143	0.7142857142857143	-9	2	1	2	35:13	72	71	20	t	104.1	116.4	99.5	f	\N
0022000296	203914	1610612743	2021-01-29	2020-21	3	0	3	1	1	1	0	3	4	3	7	2	5	2	1	0.6111111111111112	0.5714285714285714	0	2	0	1	33:41	68	66	11	t	117.6	119.4	96.19	f	\N
0022000296	203115	1610612743	2021-01-29	2020-21	1	1	0	2	1	1	0	0	0	4	9	1	2	7	3	0.5	0.5	0	0	0	3	30:04	58	57	9	t	123.7	125.9	93.4	f	\N
0022000296	200794	1610612743	2021-01-29	2020-21	5	1	4	2	1	0	0	6	8	1	2	0	1	1	1	0.6666666666666666	0.5	7	0	1	1	22:47	46	44	8	t	123.9	113.6	94.81	f	\N
0022000296	1628420	1610612743	2021-01-29	2020-21	0	0	0	3	0	1	1	1	2	4	10	1	5	3	2	0.45454545454545453	0.45	-15	0	0	1	23:09	48	48	10	f	93.9	122.0	102.64	f	\N
0022000296	203210	1610612743	2021-01-29	2020-21	7	1	6	1	0	1	1	0	0	1	2	1	1	1	0	0.75	0.75	-16	1	0	3	19:58	40	42	3	f	104.9	134.1	102.16	f	\N
0022000296	1629008	1610612743	2021-01-29	2020-21	4	1	3	0	0	3	1	1	2	3	5	2	2	1	1	0.75	0.8	-16	0	2	1	18:52	40	41	9	f	92.7	128.6	105.58	f	\N
0022000296	1630267	1610612743	2021-01-29	2020-21	0	0	0	3	0	2	2	0	0	0	1	0	0	0	0	0.0	0.0	-1	2	0	0	10:09	21	23	0	f	100.0	104.3	108.75	f	\N
0022000296	1628392	1610612743	2021-01-29	2020-21	1	1	0	1	0	1	1	0	0	1	3	0	0	2	0	0.3333333333333333	0.3333333333333333	1	0	0	0	05:08	10	10	2	f	130.0	120.0	93.51	f	\N
0022000296	1628427	1610612743	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	2	0	0	0	00:34	1	2	0	f	200.0	0.0	126.69	f	\N
0022000296	1630181	1610612743	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	1.0	1.0	2	0	0	0	00:34	1	2	2	f	200.0	0.0	126.69	f	\N
0022000296	1630192	1610612743	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	2	0	0	0	00:34	1	2	0	f	200.0	0.0	126.69	f	\N
0022000296	1630210	1610612743	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	2	0	0	0	00:34	1	2	0	f	200.0	0.0	126.69	f	\N
0022000296	0	1610612743	2021-01-29	2020-21	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000296	201942	1610612759	2021-01-29	2020-21	1	0	1	10	5	1	1	7	7	11	14	1	2	3	3	0.8823529411764706	0.8214285714285714	9	0	0	2	36:11	71	71	30	t	122.2	109.7	95.51	t	\N
0022000296	1629640	1610612759	2021-01-29	2020-21	9	4	5	3	3	1	0	0	0	9	14	1	2	8	7	0.6785714285714286	0.6785714285714286	2	1	1	0	32:17	62	63	19	t	127.0	123.8	93.67	t	\N
0022000296	1627749	1610612759	2021-01-29	2020-21	7	2	5	3	1	2	2	5	7	10	19	1	3	9	7	0.5681818181818182	0.5526315789473685	10	1	0	5	32:13	64	64	26	t	130.3	115.2	98.34	t	\N
0022000296	1629022	1610612759	2021-01-29	2020-21	5	0	5	3	2	4	4	0	0	1	5	1	2	0	0	0.3	0.3	4	0	0	2	28:34	57	57	3	t	124.6	117.5	95.78	t	\N
0022000296	200746	1610612759	2021-01-29	2020-21	3	0	3	3	1	0	0	2	2	1	3	1	1	0	0	0.625	0.5	1	0	0	1	22:14	43	42	5	t	116.3	111.4	93.91	t	\N
0022000296	201988	1610612759	2021-01-29	2020-21	2	0	2	1	0	0	0	5	5	4	9	4	8	0	0	0.7727272727272727	0.6666666666666666	9	3	0	3	27:39	57	58	17	f	111.9	96.6	102.43	t	\N
0022000296	1627751	1610612759	2021-01-29	2020-21	6	3	3	1	0	0	0	0	2	2	4	0	0	2	2	0.4	0.5	11	1	0	2	25:12	52	54	4	f	127.8	107.4	102.86	t	\N
0022000296	1630170	1610612759	2021-01-29	2020-21	2	0	2	0	0	0	0	2	3	3	4	1	2	0	0	0.9	0.875	2	1	0	1	17:39	37	37	9	f	112.8	113.5	103.34	t	\N
0022000296	200752	1610612759	2021-01-29	2020-21	6	0	6	5	2	3	1	0	0	3	9	0	3	4	2	0.3333333333333333	0.3333333333333333	8	1	0	2	16:19	36	36	6	f	110.8	91.7	107.37	t	\N
0022000296	1628966	1610612759	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-2	0	0	0	00:34	2	1	0	f	0.0	200.0	126.69	t	\N
0022000296	1629683	1610612759	2021-01-29	2020-21	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	-2	0	0	0	00:34	2	1	0	f	0.0	200.0	126.69	t	\N
0022000296	1630200	1610612759	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-2	0	0	0	00:34	2	1	0	f	0.0	200.0	126.69	t	\N
0022000296	1	1610612759	2021-01-29	2020-21	1	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000295	202681	1610612751	2021-01-29	2020-21	5	2	3	7	2	3	1	4	4	10	16	1	3	5	3	0.6944444444444444	0.65625	25	1	1	2	33:40	74	73	25	t	150.7	117.3	106.93	f	\N
0022000295	203925	1610612751	2021-01-29	2020-21	1	0	1	2	2	1	0	1	1	7	13	5	9	2	2	0.7692307692307693	0.7307692307692307	21	2	0	2	33:03	72	69	20	t	149.3	123.9	104.53	f	\N
0022000295	201935	1610612751	2021-01-29	2020-21	10	0	10	11	4	1	1	4	4	9	14	3	6	7	5	0.8333333333333334	0.75	15	0	1	5	32:27	69	68	25	t	145.7	124.3	103.52	f	\N
0022000295	1628971	1610612751	2021-01-29	2020-21	5	1	4	1	0	1	0	1	1	9	11	0	1	8	7	0.8636363636363636	0.8181818181818182	2	0	0	2	24:16	51	52	19	t	129.4	120.8	102.83	f	\N
0022000295	201599	1610612751	2021-01-29	2020-21	8	3	5	2	1	1	1	0	1	5	7	0	0	6	4	0.7142857142857143	0.7142857142857143	-5	0	2	1	20:19	41	42	10	t	131.7	137.2	99.27	f	\N
0022000295	201145	1610612751	2021-01-29	2020-21	5	1	4	3	0	2	0	2	2	4	10	1	5	5	3	0.55	0.45	26	3	0	3	29:16	66	66	11	f	146.3	105.9	110.71	f	\N
0022000295	1627789	1610612751	2021-01-29	2020-21	5	0	5	3	1	0	0	1	2	4	10	4	8	2	0	0.5909090909090909	0.6	22	1	0	4	19:45	46	45	13	f	144.7	100.0	113.01	f	\N
0022000295	1629617	1610612751	2021-01-29	2020-21	11	3	8	1	1	2	1	1	1	4	7	1	3	4	3	0.7142857142857143	0.6428571428571429	0	0	0	4	19:24	44	46	10	f	113.3	110.9	112.68	f	\N
0022000295	1629013	1610612751	2021-01-29	2020-21	0	0	0	1	0	0	0	0	0	4	8	3	7	1	1	0.6875	0.6875	6	0	0	2	18:22	40	42	11	f	119.0	102.3	111.07	f	\N
0022000295	1629185	1610612751	2021-01-29	2020-21	0	0	0	1	1	0	0	0	0	1	2	1	2	0	0	0.75	0.75	-1	0	0	0	04:44	11	11	3	f	109.1	118.2	111.55	f	\N
0022000295	204020	1610612751	2021-01-29	2020-21	0	0	0	1	1	0	0	0	0	0	2	0	1	1	0	0.0	0.0	-1	0	0	0	04:44	11	11	0	f	109.1	118.2	111.55	f	\N
0022000295	0	1610612751	2021-01-29	2020-21	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000295	1630177	1610612760	2021-01-29	2020-21	3	0	3	3	0	1	1	2	2	8	9	6	6	1	0	1.2	1.2222222222222223	-8	1	0	0	33:25	72	72	24	t	125.3	139.7	106.29	t	\N
0022000295	1629652	1610612760	2021-01-29	2020-21	1	0	1	2	0	2	1	5	6	2	14	1	9	4	1	0.3125	0.17857142857142858	-8	0	0	1	32:50	69	68	10	t	127.5	139.1	100.87	t	\N
0022000295	1629647	1610612760	2021-01-29	2020-21	5	0	5	4	1	2	1	2	2	5	9	2	5	3	2	0.7	0.6666666666666666	6	1	1	1	32:35	72	70	14	t	128.4	121.9	108.28	t	\N
0022000295	1628983	1610612760	2021-01-29	2020-21	4	1	3	5	2	4	2	10	13	7	10	0	1	9	7	0.75	0.7	-14	0	1	2	31:09	67	67	24	t	118.6	142.6	106.32	t	\N
0022000295	201143	1610612760	2021-01-29	2020-21	6	2	4	4	1	0	0	0	0	6	15	4	6	4	1	0.5333333333333333	0.5333333333333333	-2	1	2	1	23:38	49	49	16	t	133.3	140.0	102.57	t	\N
0022000295	1628977	1610612760	2021-01-29	2020-21	3	0	3	2	0	2	1	9	9	4	9	1	3	4	3	0.6923076923076923	0.5	-16	0	0	3	22:41	52	52	18	f	101.8	135.8	114.27	t	\N
0022000295	1630197	1610612760	2021-01-29	2020-21	2	0	2	0	0	0	0	0	0	1	6	0	3	1	1	0.16666666666666666	0.16666666666666666	-24	0	0	0	16:25	36	37	2	f	87.2	156.8	111.11	t	\N
0022000295	203488	1610612760	2021-01-29	2020-21	4	0	4	0	0	1	1	0	0	2	4	2	4	0	0	0.75	0.75	-11	0	0	1	15:34	35	36	6	f	102.7	136.1	112.63	t	\N
0022000295	1629676	1610612760	2021-01-29	2020-21	4	1	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-23	0	0	3	11:46	27	28	0	f	63.3	150.0	118.3	t	\N
0022000295	1629026	1610612760	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-10	1	0	0	05:26	13	12	0	f	78.6	175.0	114.6	t	\N
0022000295	1630221	1610612760	2021-01-29	2020-21	0	0	0	0	0	0	0	1	2	1	2	0	0	1	1	0.5	0.5	-2	0	0	0	05:03	11	12	3	f	118.2	125.0	109.31	t	\N
0022000295	1628382	1610612760	2021-01-29	2020-21	3	1	2	1	1	0	0	0	0	2	6	0	1	1	0	0.3333333333333333	0.3333333333333333	1	0	0	0	04:44	11	11	4	f	118.2	109.1	111.55	t	\N
0022000295	1629650	1610612760	2021-01-29	2020-21	1	1	0	2	0	0	0	0	0	2	2	0	0	1	1	1.0	1.0	1	0	0	0	04:44	11	11	4	f	118.2	109.1	111.55	t	\N
0022000295	1	1610612760	2021-01-29	2020-21	6	3	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000294	202699	1610612755	2021-01-29	2020-21	11	1	10	3	2	1	0	3	4	6	17	2	3	3	2	0.4722222222222222	0.4117647058823529	16	1	2	0	34:18	70	72	17	t	115.3	91.8	101.46	f	\N
0022000294	203954	1610612755	2021-01-29	2020-21	11	3	8	3	1	0	0	16	18	10	19	1	2	7	5	0.6666666666666666	0.5526315789473685	21	1	0	3	26:38	56	57	37	t	133.3	94.8	103.63	f	\N
0022000294	1627732	1610612755	2021-01-29	2020-21	4	1	3	7	1	1	1	3	4	4	10	0	0	7	3	0.4583333333333333	0.4	18	1	0	1	25:49	55	56	11	t	132.1	98.2	105.05	f	\N
0022000294	203552	1610612755	2021-01-29	2020-21	2	0	2	1	0	0	0	2	2	4	7	2	3	0	0	0.75	0.7142857142857143	18	1	0	2	25:22	53	54	12	t	134.5	103.7	103.17	f	\N
0022000294	201980	1610612755	2021-01-29	2020-21	3	0	3	2	2	2	1	0	0	1	2	1	2	0	0	0.75	0.75	17	2	1	0	23:02	49	50	3	t	140.0	106.0	104.2	f	\N
0022000294	1627788	1610612755	2021-01-29	2020-21	3	1	2	0	0	0	0	0	0	3	6	2	4	0	0	0.6666666666666666	0.6666666666666666	9	2	0	0	28:02	58	60	8	f	95.0	80.0	102.73	f	\N
0022000294	1629680	1610612755	2021-01-29	2020-21	0	0	0	1	0	0	0	0	0	1	3	0	1	1	1	0.3333333333333333	0.3333333333333333	13	3	2	1	21:32	45	45	2	f	100.0	71.7	102.48	f	\N
0022000294	1629003	1610612755	2021-01-29	2020-21	2	1	1	2	0	2	1	5	6	4	12	0	1	4	0	0.43333333333333335	0.3333333333333333	12	0	0	2	19:56	42	42	13	f	97.6	67.4	102.34	f	\N
0022000294	2730	1610612755	2021-01-29	2020-21	10	3	7	0	0	2	0	1	2	1	2	0	0	2	1	0.5	0.5	5	0	1	4	17:05	35	36	3	f	91.7	75.7	102.56	f	\N
0022000294	1630178	1610612755	2021-01-29	2020-21	0	0	0	0	0	1	0	2	2	3	5	0	0	0	0	0.6666666666666666	0.6	-5	0	0	2	09:42	19	20	8	f	90.0	115.0	98.97	f	\N
0022000294	1628396	1610612755	2021-01-29	2020-21	4	2	2	1	0	0	0	0	0	0	2	0	0	2	0	0.0	0.0	-2	0	0	0	04:17	9	9	0	f	100.0	122.2	100.86	f	\N
0022000294	1630198	1610612755	2021-01-29	2020-21	1	0	1	0	0	0	0	0	0	2	2	0	0	0	0	1.0	1.0	-2	0	0	2	04:17	9	9	4	f	100.0	122.2	100.86	f	\N
0022000294	0	1610612755	2021-01-29	2020-21	6	2	4	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000294	1627736	1610612750	2021-01-29	2020-21	5	1	4	2	2	3	2	1	1	9	19	3	9	4	3	0.5789473684210527	0.5526315789473685	-25	0	0	3	30:03	64	62	22	t	95.3	134.4	102.23	t	\N
0022000294	1630162	1610612750	2021-01-29	2020-21	4	0	4	3	1	1	1	2	2	5	13	3	7	1	0	0.5357142857142857	0.5	-25	0	0	2	28:48	62	62	15	t	100.0	135.9	105.0	t	\N
0022000294	1626156	1610612750	2021-01-29	2020-21	0	0	0	4	0	2	2	7	7	3	11	1	7	1	1	0.5	0.3181818181818182	-21	1	0	2	25:28	54	53	14	t	100.0	138.2	103.66	t	\N
0022000294	202334	1610612750	2021-01-29	2020-21	8	1	7	1	0	1	0	0	0	1	3	0	0	3	1	0.3333333333333333	0.3333333333333333	-21	0	0	5	22:38	47	48	2	t	89.6	133.3	101.8	t	\N
0022000294	1629006	1610612750	2021-01-29	2020-21	1	0	1	2	2	1	1	0	0	2	3	0	0	2	2	0.6666666666666666	0.6666666666666666	-10	0	0	1	17:47	41	39	4	t	102.4	126.8	110.67	t	\N
0022000294	1630183	1610612750	2021-01-29	2020-21	7	0	7	0	0	0	0	0	0	3	8	0	2	2	1	0.375	0.375	-13	0	1	5	24:23	50	50	6	f	78.0	102.0	99.41	t	\N
0022000294	1629020	1610612750	2021-01-29	2020-21	5	0	5	2	1	3	2	1	4	5	5	0	0	4	4	0.9166666666666666	1.0	0	1	1	3	23:31	51	48	11	f	92.3	96.0	104.1	t	\N
0022000294	1629669	1610612750	2021-01-29	2020-21	1	0	1	1	0	3	0	3	4	3	9	1	5	0	0	0.45454545454545453	0.3888888888888889	-7	0	1	4	23:24	49	48	10	f	80.0	95.9	101.54	t	\N
0022000294	1627774	1610612750	2021-01-29	2020-21	4	1	3	0	0	0	0	0	0	2	4	2	3	0	0	0.75	0.75	5	0	1	1	21:26	44	43	6	f	93.2	80.0	99.66	t	\N
0022000294	201937	1610612750	2021-01-29	2020-21	2	0	2	4	1	4	3	0	0	2	6	0	0	1	0	0.3333333333333333	0.3333333333333333	-5	1	0	3	18:15	39	38	4	f	71.8	84.6	102.58	t	\N
0022000294	1629162	1610612750	2021-01-29	2020-21	1	1	0	1	0	0	0	0	0	0	1	0	0	0	0	0.0	0.0	2	0	0	0	04:17	9	9	0	f	122.2	100.0	100.86	t	\N
0022000294	1	1610612750	2021-01-29	2020-21	5	2	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000289	202695	1610612746	2021-01-29	2020-21	4	0	4	3	1	0	0	6	6	8	15	2	6	4	3	0.6470588235294118	0.6	23	0	0	1	28:35	57	56	24	t	124.6	85.7	94.88	f	\N
0022000289	202331	1610612746	2021-01-29	2020-21	9	2	7	5	1	4	2	3	3	10	19	3	9	5	4	0.65	0.6052631578947368	27	2	0	2	27:55	57	58	26	t	118.6	74.1	100.59	f	\N
0022000289	201587	1610612746	2021-01-29	2020-21	4	0	4	3	0	0	0	0	0	1	4	1	4	0	0	0.375	0.375	28	0	0	0	27:34	55	53	3	t	123.6	74.1	94.9	f	\N
0022000289	202704	1610612746	2021-01-29	2020-21	4	1	3	3	2	1	1	0	0	4	7	2	4	1	1	0.7142857142857143	0.7142857142857143	23	2	0	2	24:36	49	47	10	t	130.6	85.4	94.63	f	\N
0022000289	201586	1610612746	2021-01-29	2020-21	9	1	8	1	1	1	0	1	1	6	10	0	2	5	4	0.65	0.6	24	0	3	0	23:26	46	45	13	t	130.4	78.3	94.22	f	\N
0022000289	202694	1610612746	2021-01-29	2020-21	1	0	1	2	1	0	0	1	1	5	10	2	4	0	0	0.65	0.6	6	2	1	0	23:51	51	49	13	f	113.7	100.0	103.65	f	\N
0022000289	1628379	1610612746	2021-01-29	2020-21	3	0	3	1	0	0	0	0	0	2	5	2	4	0	0	0.6	0.6	0	0	0	2	22:39	47	47	6	f	106.3	106.3	101.67	f	\N
0022000289	1627826	1610612746	2021-01-29	2020-21	7	3	4	1	0	1	1	0	0	2	5	0	0	5	2	0.4	0.4	0	0	0	2	20:37	44	44	4	f	104.4	102.2	105.99	f	\N
0022000289	101150	1610612746	2021-01-29	2020-21	2	0	2	3	2	2	1	0	0	4	11	1	1	1	1	0.4090909090909091	0.4090909090909091	7	1	0	2	17:27	38	36	9	f	115.8	97.4	104.53	f	\N
0022000289	1629611	1610612746	2021-01-29	2020-21	4	1	3	2	2	0	0	0	0	2	5	0	2	3	2	0.4	0.4	-8	1	0	2	12:11	27	26	4	f	96.3	125.9	106.37	f	\N
0022000289	1629599	1610612746	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	0	0	0	0	03:43	8	8	0	f	87.5	87.5	103.32	f	\N
0022000289	1629662	1610612746	2021-01-29	2020-21	2	1	1	1	0	1	0	0	0	2	2	0	0	2	2	1.0	1.0	0	0	0	1	03:43	8	8	4	f	87.5	87.5	103.32	f	\N
0022000289	1630187	1610612746	2021-01-29	2020-21	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0.0	0.0	0	0	1	1	03:43	8	8	0	f	87.5	87.5	103.32	f	\N
0022000289	0	1610612746	2021-01-29	2020-21	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000289	1630175	1610612753	2021-01-29	2020-21	3	0	3	6	2	4	1	2	2	2	10	0	5	4	2	0.2727272727272727	0.2	-8	0	0	2	30:06	60	59	6	t	95.0	106.6	96.48	t	\N
0022000289	203932	1610612753	2021-01-29	2020-21	7	2	5	2	0	6	3	0	0	4	13	1	1	1	1	0.34615384615384615	0.34615384615384615	-27	1	0	3	28:44	58	61	9	t	86.4	125.8	101.07	t	\N
0022000289	202696	1610612753	2021-01-29	2020-21	6	2	4	1	0	3	1	0	0	4	13	2	4	2	1	0.38461538461538464	0.38461538461538464	-27	0	0	2	28:32	56	56	10	t	77.2	124.6	95.89	t	\N
0022000289	203095	1610612753	2021-01-29	2020-21	4	0	4	3	0	0	0	1	1	3	13	1	6	6	2	0.3076923076923077	0.2692307692307692	-29	1	0	2	25:37	51	52	8	t	76.5	130.8	96.46	t	\N
0022000289	203516	1610612753	2021-01-29	2020-21	5	1	4	1	1	2	2	0	0	2	2	2	2	0	0	1.5	1.5	-18	2	0	1	18:23	36	36	6	t	81.1	133.3	95.24	t	\N
0022000289	1629109	1610612753	2021-01-29	2020-21	7	4	3	0	0	0	0	0	0	2	7	2	7	0	0	0.42857142857142855	0.42857142857142855	-16	0	0	1	26:26	57	57	6	f	87.9	115.5	105.37	t	\N
0022000289	203920	1610612753	2021-01-29	2020-21	3	1	2	2	0	0	0	3	4	2	4	0	0	2	1	0.5833333333333334	0.5	1	0	2	0	23:48	47	50	7	f	112.5	106.0	98.82	t	\N
0022000289	203082	1610612753	2021-01-29	2020-21	4	0	4	1	0	1	1	7	7	8	12	1	3	0	0	0.8214285714285714	0.7083333333333334	-9	0	0	1	23:27	48	50	24	f	95.9	109.8	102.4	t	\N
0022000289	1628407	1610612753	2021-01-29	2020-21	6	0	6	4	0	1	0	3	4	1	7	1	3	2	0	0.3333333333333333	0.21428571428571427	1	2	0	0	22:37	46	48	6	f	108.5	104.2	100.81	t	\N
0022000289	1628964	1610612753	2021-01-29	2020-21	4	2	2	0	0	0	0	0	0	4	6	0	1	4	3	0.6666666666666666	0.6666666666666666	1	0	0	0	06:10	13	13	8	f	100.0	92.3	101.19	t	\N
0022000289	1629648	1610612753	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	2	0	1	0	0	0.0	0.0	1	0	0	0	06:10	13	13	0	f	100.0	92.3	101.19	t	\N
0022000289	1	1610612753	2021-01-29	2020-21	5	4	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000293	203507	1610612749	2021-01-29	2020-21	11	3	8	5	1	4	4	6	7	15	27	2	7	13	11	0.6551724137931034	0.5925925925925926	1	2	2	3	38:51	83	84	38	t	125.0	119.5	105.64	f	\N
0022000293	201950	1610612749	2021-01-29	2020-21	9	3	6	5	2	1	0	3	4	8	17	3	9	6	4	0.5789473684210527	0.5588235294117647	-6	1	1	3	38:02	80	81	22	t	123.5	129.3	102.86	f	\N
0022000293	203114	1610612749	2021-01-29	2020-21	8	1	7	8	4	1	0	3	3	6	17	1	6	4	2	0.4444444444444444	0.38235294117647056	5	2	0	4	36:23	78	78	16	t	127.5	122.8	104.88	f	\N
0022000293	201572	1610612749	2021-01-29	2020-21	3	1	2	0	0	2	1	4	6	5	8	2	5	3	3	0.7272727272727273	0.75	3	0	1	2	32:27	71	73	16	t	123.3	117.6	108.69	f	\N
0022000293	1628978	1610612749	2021-01-29	2020-21	3	0	3	2	1	1	0	0	0	4	8	2	3	2	2	0.625	0.625	-10	0	0	3	24:28	52	53	10	t	107.4	123.6	106.88	f	\N
0022000293	1627854	1610612749	2021-01-29	2020-21	3	0	3	1	1	1	0	0	0	3	5	2	3	0	0	0.8	0.8	3	0	0	2	21:41	48	49	8	f	139.6	128.0	108.48	f	\N
0022000293	1626192	1610612749	2021-01-29	2020-21	7	1	6	3	2	0	0	0	0	4	6	1	2	3	2	0.75	0.75	8	0	1	0	20:23	44	45	9	f	127.3	106.7	104.83	f	\N
0022000293	1626171	1610612749	2021-01-29	2020-21	4	3	1	1	0	1	1	1	2	2	4	0	0	3	1	0.5	0.5	-7	0	0	1	12:47	25	23	5	f	111.5	150.0	93.87	f	\N
0022000293	201571	1610612749	2021-01-29	2020-21	1	0	1	3	2	1	1	0	0	1	2	0	0	1	0	0.5	0.5	-12	0	0	0	10:07	20	19	2	f	85.7	157.9	94.89	f	\N
0022000293	1628470	1610612749	2021-01-29	2020-21	0	0	0	1	0	0	0	0	0	0	2	0	0	1	0	0.0	0.0	-10	0	0	1	04:51	9	10	0	f	45.5	150.0	104.1	f	\N
0022000293	0	1610612749	2021-01-29	2020-21	4	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000293	203500	1610612740	2021-01-29	2020-21	20	10	10	2	1	1	1	0	0	2	5	0	0	4	2	0.4	0.4	-4	0	0	3	38:08	79	79	4	t	123.5	131.6	100.72	t	\N
0022000293	1627742	1610612740	2021-01-29	2020-21	0	0	0	4	0	1	1	11	13	7	15	3	8	1	1	0.6363636363636364	0.5666666666666667	-1	1	1	1	35:21	75	74	28	t	122.1	126.7	103.2	t	\N
0022000293	1628366	1610612740	2021-01-29	2020-21	3	0	3	8	3	2	0	0	0	10	20	7	13	3	1	0.675	0.675	9	1	0	2	35:02	74	75	27	t	120.8	110.5	104.81	t	\N
0022000293	202339	1610612740	2021-01-29	2020-21	2	1	1	4	1	2	2	0	2	9	21	7	14	1	0	0.5681818181818182	0.5952380952380952	2	0	1	1	34:27	75	73	25	t	123.1	127.0	105.89	t	\N
0022000293	1629627	1610612740	2021-01-29	2020-21	9	1	8	7	1	2	0	7	10	7	13	0	0	10	5	0.6176470588235294	0.5384615384615384	10	1	1	2	34:02	74	74	21	t	123.7	112.0	106.48	t	\N
0022000293	1628404	1610612740	2021-01-29	2020-21	5	0	5	5	1	0	0	2	3	5	8	3	5	1	1	0.8333333333333334	0.8125	9	1	0	3	24:41	54	53	15	f	136.4	120.0	106.92	t	\N
0022000293	1629638	1610612740	2021-01-29	2020-21	4	0	4	0	0	0	0	0	0	3	10	0	5	4	3	0.3	0.3	-4	2	0	1	22:29	48	48	6	f	124.5	135.4	103.54	t	\N
0022000293	1629740	1610612740	2021-01-29	2020-21	2	0	2	2	1	1	1	0	0	2	4	1	3	0	0	0.625	0.625	4	1	0	3	15:50	36	34	5	f	113.5	108.6	109.14	t	\N
0022000293	1	1610612740	2021-01-29	2020-21	5	3	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000292	1627741	1610612758	2021-01-29	2020-21	3	1	2	2	1	2	2	3	3	7	12	5	8	1	0	0.7916666666666666	0.7916666666666666	7	1	1	1	39:37	84	83	22	t	130.6	125.3	101.78	f	\N
0022000292	203084	1610612758	2021-01-29	2020-21	7	3	4	5	0	3	3	6	6	8	13	4	7	3	2	0.8125	0.7692307692307693	6	0	0	1	37:18	77	77	26	t	125.0	122.1	100.99	f	\N
0022000292	1628368	1610612758	2021-01-29	2020-21	2	1	1	4	0	7	6	5	7	8	14	3	5	6	4	0.7058823529411765	0.6785714285714286	-2	1	0	4	34:25	71	70	24	t	116.2	123.9	101.08	f	\N
0022000292	1626158	1610612758	2021-01-29	2020-21	5	2	3	2	0	4	2	3	4	1	4	0	0	1	0	0.4166666666666667	0.25	3	1	2	6	26:11	54	53	5	t	118.2	112.7	100.83	f	\N
0022000292	1628963	1610612758	2021-01-29	2020-21	5	1	4	1	0	3	0	0	2	3	8	1	4	3	2	0.3888888888888889	0.4375	4	1	0	4	19:48	43	41	7	t	116.3	109.5	103.03	f	\N
0022000292	1630169	1610612758	2021-01-29	2020-21	6	1	5	11	6	2	1	1	1	4	10	1	7	1	1	0.5	0.45	2	1	1	3	33:22	70	72	10	f	121.9	120.8	104.3	f	\N
0022000292	202709	1610612758	2021-01-29	2020-21	1	0	1	4	3	0	0	2	2	6	9	2	4	3	3	0.8888888888888888	0.7777777777777778	-10	1	0	3	24:28	50	52	16	f	113.0	136.5	104.01	f	\N
0022000292	202355	1610612758	2021-01-29	2020-21	9	2	7	1	0	1	0	4	6	6	7	0	0	7	6	0.8	0.8571428571428571	0	1	1	3	19:33	38	41	16	f	124.4	124.4	100.75	f	\N
0022000292	203922	1610612758	2021-01-29	2020-21	0	0	0	1	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	0	0	0	0	05:18	13	11	0	f	130.8	154.5	108.65	f	\N
0022000292	0	1610612758	2021-01-29	2020-21	5	2	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000292	1627783	1610612761	2021-01-29	2020-21	4	0	4	2	2	3	2	10	14	11	20	0	1	12	8	0.6153846153846154	0.55	-11	1	0	2	37:50	81	81	32	t	117.1	130.5	104.04	t	\N
0022000292	200768	1610612761	2021-01-29	2020-21	3	2	1	6	1	4	3	1	1	7	17	2	8	6	3	0.47058823529411764	0.47058823529411764	-6	0	0	3	37:11	77	74	17	t	115.6	125.0	98.76	t	\N
0022000292	1627832	1610612761	2021-01-29	2020-21	5	1	4	6	2	1	0	9	10	7	16	3	7	4	1	0.6190476190476191	0.53125	9	4	0	3	36:14	75	75	26	t	132.0	118.4	100.02	t	\N
0022000292	203382	1610612761	2021-01-29	2020-21	10	3	7	0	0	3	2	1	2	2	6	1	3	3	1	0.42857142857142855	0.4166666666666667	-7	1	0	3	23:26	50	49	6	t	111.8	125.5	104.52	t	\N
0022000292	1629056	1610612761	2021-01-29	2020-21	2	1	1	0	0	1	0	2	2	4	7	2	4	2	1	0.75	0.7142857142857143	-5	1	1	3	18:57	40	41	12	t	122.0	127.9	106.39	t	\N
0022000292	1629139	1610612761	2021-01-29	2020-21	6	2	4	2	1	1	0	2	2	4	5	2	3	1	1	1.0	1.0	10	2	0	2	24:27	49	51	12	f	138.8	111.5	99.14	t	\N
0022000292	1626169	1610612761	2021-01-29	2020-21	1	1	0	1	1	1	0	0	0	1	3	1	3	0	0	0.5	0.5	5	3	0	2	19:14	38	39	3	f	131.6	109.8	98.52	t	\N
0022000292	1627761	1610612761	2021-01-29	2020-21	0	0	0	3	0	0	0	0	0	3	5	1	1	4	2	0.7	0.7	10	2	1	3	17:40	38	37	7	f	126.3	100.0	103.19	t	\N
0022000292	1628449	1610612761	2021-01-29	2020-21	3	1	2	0	0	0	0	0	0	2	5	0	0	4	2	0.4	0.4	-8	0	0	4	13:43	28	28	4	f	114.3	137.9	99.73	t	\N
0022000292	1629744	1610612761	2021-01-29	2020-21	1	1	0	0	0	1	0	2	2	1	2	1	2	0	0	0.8333333333333334	0.75	-4	0	0	2	11:08	24	24	5	f	129.2	145.8	103.57	t	\N
0022000292	1628778	1610612761	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-3	0	0	0	00:10	0	1	0	f	0.0	300.0	142.57	t	\N
0022000292	1	1610612761	2021-01-29	2020-21	7	4	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000291	1629012	1610612739	2021-01-29	2020-21	1	1	0	5	2	2	1	5	6	6	18	0	4	7	3	0.40476190476190477	0.3333333333333333	-10	0	0	2	34:54	67	68	17	t	88.2	100.0	94.9	f	\N
0022000291	1630171	1610612739	2021-01-29	2020-21	3	1	2	2	0	2	1	3	4	1	4	0	1	3	1	0.4166666666666667	0.25	2	0	0	4	32:25	61	61	5	t	98.4	90.6	92.54	f	\N
0022000291	1629636	1610612739	2021-01-29	2020-21	3	1	2	1	1	4	4	2	2	9	17	4	6	3	2	0.6666666666666666	0.6470588235294118	-7	2	0	2	29:06	56	54	24	t	94.7	108.9	93.17	f	\N
0022000291	1626204	1610612739	2021-01-29	2020-21	8	1	7	0	0	0	0	0	0	1	9	0	5	2	1	0.1111111111111111	0.1111111111111111	-2	1	1	2	29:00	54	53	2	t	96.4	100.0	91.03	f	\N
0022000291	203083	1610612739	2021-01-29	2020-21	15	4	11	2	2	2	1	0	0	2	7	0	0	7	2	0.2857142857142857	0.2857142857142857	1	2	2	0	23:55	47	46	4	t	89.6	89.4	95.33	f	\N
0022000291	1628386	1610612739	2021-01-29	2020-21	9	5	4	3	1	1	0	5	6	5	8	0	0	6	4	0.6818181818181818	0.625	-22	1	1	2	25:41	48	48	15	f	85.7	128.0	92.51	f	\N
0022000291	1627752	1610612739	2021-01-29	2020-21	1	1	0	1	1	0	0	0	0	1	7	1	1	2	0	0.21428571428571427	0.21428571428571427	-12	1	0	1	22:12	41	42	3	f	90.7	115.9	94.05	f	\N
0022000291	1629685	1610612739	2021-01-29	2020-21	3	0	3	0	0	1	1	0	0	3	5	2	4	1	1	0.8	0.8	-23	0	1	3	20:06	35	38	8	f	73.0	128.2	90.75	f	\N
0022000291	1626224	1610612739	2021-01-29	2020-21	0	0	0	1	0	0	0	0	0	1	7	1	4	2	0	0.21428571428571427	0.21428571428571427	-28	1	0	3	16:38	31	29	3	f	54.8	145.2	89.5	f	\N
0022000291	1629731	1610612739	2021-01-29	2020-21	0	0	0	0	0	2	0	0	0	0	2	0	1	1	0	0.0	0.0	-4	0	0	1	06:03	10	11	0	f	100.0	127.3	83.31	f	\N
0022000291	0	1610612739	2021-01-29	2020-21	6	3	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000291	1629628	1610612752	2021-01-29	2020-21	4	0	4	2	2	3	2	6	7	8	19	2	5	9	5	0.5454545454545454	0.47368421052631576	27	2	0	5	39:49	76	76	24	t	114.5	76.9	92.83	t	\N
0022000291	203944	1610612752	2021-01-29	2020-21	8	0	8	6	2	2	2	2	3	7	13	0	2	4	4	0.5714285714285714	0.5384615384615384	14	1	1	2	35:09	66	68	16	t	106.0	83.8	92.18	t	\N
0022000291	202692	1610612752	2021-01-29	2020-21	6	0	6	1	0	0	0	0	0	3	5	1	2	0	0	0.7	0.7	4	0	0	1	23:51	45	45	7	t	93.5	84.8	92.58	t	\N
0022000291	203901	1610612752	2021-01-29	2020-21	1	0	1	3	2	2	2	0	0	1	6	0	1	4	1	0.16666666666666666	0.16666666666666666	2	1	0	1	23:08	44	45	2	t	88.9	82.6	94.41	t	\N
0022000291	1629011	1610612752	2021-01-29	2020-21	4	2	2	1	0	2	0	2	2	2	3	0	0	3	2	0.75	0.6666666666666666	-6	1	3	5	22:16	43	44	6	t	81.4	91.1	94.89	t	\N
0022000291	203457	1610612752	2021-01-29	2020-21	6	2	4	0	0	1	0	2	2	1	2	0	0	2	1	0.6666666666666666	0.5	24	0	1	4	25:05	46	45	4	f	136.2	85.1	89.94	t	\N
0022000291	1630193	1610612752	2021-01-29	2020-21	5	3	2	3	2	2	1	2	2	9	17	5	8	3	1	0.7352941176470589	0.6764705882352942	19	0	0	4	24:52	46	45	25	f	131.9	91.5	90.72	t	\N
0022000291	203085	1610612752	2021-01-29	2020-21	3	1	2	3	1	1	1	0	0	6	11	1	6	4	4	0.5909090909090909	0.5909090909090909	17	3	0	1	24:09	45	45	13	f	128.3	89.4	92.42	t	\N
0022000291	1630167	1610612752	2021-01-29	2020-21	3	0	3	1	0	0	0	0	0	2	4	1	3	1	1	0.625	0.625	7	0	1	0	12:51	24	22	5	f	129.2	96.0	91.52	t	\N
0022000291	1628995	1610612752	2021-01-29	2020-21	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-6	0	0	1	08:11	14	14	0	f	100.0	131.3	90.92	t	\N
0022000291	201959	1610612752	2021-01-29	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	3	0	0	0	00:39	1	1	0	f	300.0	0.0	109.37	t	\N
0022000291	1	1610612752	2021-01-29	2020-21	7	2	5	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000288	1627734	1610612754	2021-01-29	2020-21	11	1	10	6	3	4	2	6	9	8	16	0	1	11	7	0.55	0.5	8	0	0	2	37:45	75	73	22	t	112.0	100.0	96.0	f	\N
0022000288	203200	1610612754	2021-01-29	2020-21	1	0	1	4	2	1	1	0	0	2	8	2	8	0	0	0.375	0.375	-1	1	0	1	37:36	77	77	6	t	101.3	103.8	100.2	f	\N
0022000288	1627763	1610612754	2021-01-29	2020-21	4	1	3	8	4	2	0	2	2	8	20	3	10	9	4	0.5	0.475	-4	1	0	1	36:23	72	71	21	t	111.0	118.1	95.67	f	\N
0022000288	1626167	1610612754	2021-01-29	2020-21	8	2	6	2	0	2	1	0	0	9	14	2	7	6	6	0.7142857142857143	0.7142857142857143	1	1	2	3	36:04	72	70	20	t	106.8	106.9	96.51	f	\N
0022000288	203087	1610612754	2021-01-29	2020-21	5	1	4	1	0	2	0	2	2	4	10	2	4	2	0	0.5454545454545454	0.5	7	2	2	1	30:39	62	60	12	t	115.9	108.2	97.1	f	\N
0022000288	204456	1610612754	2021-01-29	2020-21	2	1	1	6	5	1	1	0	0	1	2	0	0	0	0	0.5	0.5	-8	1	0	0	18:00	38	37	2	f	102.6	117.5	103.94	f	\N
0022000288	203926	1610612754	2021-01-29	2020-21	6	3	3	0	0	2	1	0	0	5	7	1	3	4	4	0.7857142857142857	0.7857142857142857	-10	0	0	3	17:21	36	37	11	f	86.5	113.5	102.36	f	\N
0022000288	1628988	1610612754	2021-01-29	2020-21	0	0	0	3	2	1	0	0	0	0	5	0	1	2	0	0.0	0.0	-7	0	0	1	16:14	37	36	0	f	87.2	113.9	110.88	f	\N
0022000288	1629048	1610612754	2021-01-29	2020-21	2	0	2	0	0	0	0	0	0	4	4	0	0	4	4	1.0	1.0	-4	0	0	1	09:13	20	22	8	f	100.0	113.6	111.97	f	\N
0022000288	0	1610612754	2021-01-29	2020-21	5	1	4	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000288	202330	1610612766	2021-01-29	2020-21	8	0	8	6	3	2	1	2	2	4	12	1	3	1	0	0.4230769230769231	0.375	-7	0	2	2	38:06	77	77	11	t	94.9	102.5	100.16	t	\N
0022000288	1629023	1610612766	2021-01-29	2020-21	9	3	6	3	1	3	2	2	4	7	8	3	4	3	3	0.95	1.0625	5	2	1	0	34:57	69	71	19	t	115.7	104.1	98.23	t	\N
0022000288	1628984	1610612766	2021-01-29	2020-21	3	1	2	10	4	3	1	0	0	5	14	4	9	2	0	0.5	0.5	12	0	0	1	32:51	63	66	14	t	128.1	106.1	94.95	t	\N
0022000288	1626179	1610612766	2021-01-29	2020-21	5	2	3	2	0	1	0	0	0	7	12	5	8	2	1	0.7916666666666666	0.7916666666666666	0	1	0	0	32:09	63	63	19	t	104.6	104.6	97.05	t	\N
0022000288	203469	1610612766	2021-01-29	2020-21	6	1	5	1	0	1	0	0	0	6	11	0	0	8	4	0.5454545454545454	0.5454545454545454	-4	1	1	4	25:35	51	52	12	t	92.3	100.0	97.6	t	\N
0022000288	1630163	1610612766	2021-01-29	2020-21	6	1	5	7	5	5	3	2	3	7	13	0	6	7	7	0.5714285714285714	0.5384615384615384	0	2	0	1	29:47	63	62	16	f	104.6	106.3	103.92	t	\N
0022000288	1628970	1610612766	2021-01-29	2020-21	4	0	4	3	2	1	0	0	0	4	9	1	3	5	3	0.5	0.5	-1	0	0	2	26:38	56	56	9	f	105.2	108.8	103.63	t	\N
0022000288	1628370	1610612766	2021-01-29	2020-21	0	0	0	2	1	1	0	0	0	2	4	2	4	0	0	0.75	0.75	5	1	0	2	14:17	32	32	6	f	118.8	100.0	109.22	t	\N
0022000288	202687	1610612766	2021-01-29	2020-21	1	1	0	1	0	0	0	0	0	1	2	0	0	1	1	0.5	0.5	5	0	1	1	05:40	11	11	2	f	172.7	127.3	93.18	t	\N
0022000288	1	1610612766	2021-01-29	2020-21	2	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000284	2544	1610612747	2021-01-28	2020-21	7	2	5	10	5	2	1	2	3	8	19	4	8	9	4	0.55	0.5263157894736842	-11	1	0	2	35:45	65	66	22	t	103.0	115.9	91.3	f	\N
0022000284	1628398	1610612747	2021-01-28	2020-21	10	3	7	0	0	1	0	1	1	9	17	3	7	9	6	0.6470588235294118	0.6176470588235294	-16	0	1	2	29:56	55	56	22	t	103.4	131.0	93.02	f	\N
0022000284	203471	1610612747	2021-01-28	2020-21	3	1	2	4	4	0	0	5	7	2	8	1	2	4	1	0.45454545454545453	0.3125	-16	0	0	0	28:45	52	53	10	t	103.6	130.4	92.66	f	\N
0022000284	203484	1610612747	2021-01-28	2020-21	2	0	2	1	0	1	0	0	0	3	7	0	1	3	2	0.42857142857142855	0.42857142857142855	-20	0	1	2	27:55	51	50	6	t	96.2	134.0	91.13	f	\N
0022000284	201188	1610612747	2021-01-28	2020-21	9	2	7	4	2	1	1	0	0	0	2	0	0	0	0	0.0	0.0	-6	0	0	1	25:00	45	45	0	t	114.9	127.7	90.24	f	\N
0022000284	1626149	1610612747	2021-01-28	2020-21	3	1	2	1	1	3	1	0	1	4	10	0	0	5	2	0.4	0.4	-9	1	1	2	23:00	44	44	8	f	82.6	106.8	93.91	f	\N
0022000284	1627936	1610612747	2021-01-28	2020-21	2	1	1	2	0	0	0	0	0	3	7	0	1	4	2	0.42857142857142855	0.42857142857142855	4	0	0	2	19:42	36	37	6	f	105.4	92.1	91.37	f	\N
0022000284	202083	1610612747	2021-01-28	2020-21	1	0	1	0	0	0	0	0	0	1	5	1	3	1	0	0.3	0.3	-7	0	0	1	16:50	31	31	3	f	84.4	106.3	91.25	f	\N
0022000284	1629659	1610612747	2021-01-28	2020-21	2	0	2	1	1	1	0	0	0	5	7	3	3	3	2	0.9285714285714286	0.9285714285714286	-1	0	0	2	14:08	27	27	13	f	96.4	100.0	95.09	f	\N
0022000284	202693	1610612747	2021-01-28	2020-21	4	2	2	2	0	1	0	0	0	0	3	0	2	0	0	0.0	0.0	1	0	0	2	12:59	24	24	0	f	88.5	88.0	94.25	f	\N
0022000284	1626188	1610612747	2021-01-28	2020-21	1	0	1	0	0	1	1	0	0	0	2	0	1	1	0	0.0	0.0	2	0	0	0	02:00	5	4	0	f	100.0	75.0	108.0	f	\N
0022000284	1628035	1610612747	2021-01-28	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	2	0	0	0	02:00	5	4	0	f	100.0	75.0	108.0	f	\N
0022000284	1629719	1610612747	2021-01-28	2020-21	0	0	0	0	0	0	0	0	0	1	1	0	0	1	1	1.0	1.0	2	0	0	0	02:00	5	4	2	f	100.0	75.0	108.0	f	\N
0022000284	0	1610612747	2021-01-28	2020-21	3	1	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000284	203924	1610612765	2021-01-28	2020-21	3	0	3	6	4	0	0	2	2	5	14	2	4	5	2	0.4666666666666667	0.42857142857142855	21	0	0	1	37:05	68	68	14	t	125.7	95.7	90.62	t	\N
0022000284	201933	1610612765	2021-01-28	2020-21	3	0	3	6	2	0	0	2	2	8	16	5	10	1	1	0.6764705882352942	0.65625	24	0	0	3	35:21	64	65	23	t	128.4	92.5	90.99	t	\N
0022000284	201961	1610612765	2021-01-28	2020-21	2	0	2	2	1	2	1	0	0	7	12	6	9	2	1	0.8333333333333334	0.8333333333333334	24	0	0	1	28:39	51	52	20	t	138.9	94.4	90.49	t	\N
0022000284	1626153	1610612765	2021-01-28	2020-21	8	2	6	6	3	0	0	0	0	3	7	0	2	4	3	0.42857142857142855	0.42857142857142855	21	2	0	0	26:44	47	48	6	t	140.0	98.0	89.79	t	\N
0022000284	203486	1610612765	2021-01-28	2020-21	10	0	10	2	1	0	0	3	3	7	8	0	0	6	6	0.9444444444444444	0.875	7	0	1	5	26:44	49	50	17	t	121.6	105.8	92.49	t	\N
0022000284	1630191	1610612765	2021-01-28	2020-21	6	3	3	0	0	0	0	4	4	2	6	0	1	2	1	0.5	0.3333333333333333	8	0	1	1	21:16	40	39	8	f	112.5	90.2	91.39	t	\N
0022000284	201565	1610612765	2021-01-28	2020-21	1	0	1	3	0	2	1	2	2	6	12	0	2	7	3	0.5384615384615384	0.5	-6	2	0	0	20:21	40	39	14	f	92.5	110.3	93.17	t	\N
0022000284	1628367	1610612765	2021-01-28	2020-21	2	0	2	2	2	2	0	0	0	1	6	1	4	0	0	0.25	0.25	-4	0	0	3	17:09	34	32	3	f	94.1	109.1	93.76	t	\N
0022000284	1629635	1610612765	2021-01-28	2020-21	1	0	1	0	0	2	0	0	0	1	5	0	3	2	1	0.2	0.2	-9	0	0	4	12:39	25	24	2	f	84.0	120.0	94.82	t	\N
0022000284	1629004	1610612765	2021-01-28	2020-21	2	0	2	0	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	-11	0	0	0	12:12	23	24	0	f	82.6	125.0	92.42	t	\N
0022000284	1628402	1610612765	2021-01-28	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:55	2	2	0	f	0.0	0.0	104.16	t	\N
0022000284	1629686	1610612765	2021-01-28	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:55	2	2	0	f	0.0	0.0	104.16	t	\N
0022000284	1	1610612765	2021-01-28	2020-21	12	6	6	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000287	1629018	1610612757	2021-01-28	2020-21	3	0	3	1	1	2	2	0	0	8	16	7	13	2	0	0.71875	0.71875	2	1	0	2	37:58	77	77	23	t	96.2	94.9	99.24	f	\N
0022000287	2546	1610612757	2021-01-28	2020-21	9	2	7	1	0	2	2	0	0	3	15	0	4	3	1	0.2	0.2	9	2	1	2	37:44	77	76	6	t	105.1	94.9	99.86	f	\N
0022000287	203081	1610612757	2021-01-28	2020-21	4	0	4	9	4	4	2	3	4	11	23	5	11	3	2	0.6	0.5869565217391305	1	0	0	0	37:41	77	76	30	t	105.1	107.9	98.72	f	\N
0022000287	202683	1610612757	2021-01-28	2020-21	13	4	9	2	1	3	1	3	4	5	9	0	0	6	3	0.5909090909090909	0.5555555555555556	-1	1	2	3	32:54	67	66	13	t	103.0	104.5	97.79	f	\N
0022000287	1627884	1610612757	2021-01-28	2020-21	7	4	3	0	0	0	0	0	0	5	8	1	3	5	4	0.6875	0.6875	0	1	3	1	26:54	57	57	11	t	105.2	107.0	102.6	f	\N
0022000287	1629014	1610612757	2021-01-28	2020-21	8	0	8	0	0	2	0	0	0	5	13	4	9	2	1	0.5384615384615384	0.5384615384615384	-8	0	0	2	28:22	57	59	14	f	94.9	108.5	99.84	f	\N
0022000287	203918	1610612757	2021-01-28	2020-21	2	0	2	1	0	0	0	0	0	1	5	0	1	0	0	0.2	0.2	-7	1	0	3	19:40	39	43	2	f	95.3	111.6	104.89	f	\N
0022000287	1628385	1610612757	2021-01-28	2020-21	3	0	3	2	0	1	1	0	0	1	4	0	0	3	1	0.25	0.25	-2	0	1	2	14:46	30	31	2	f	87.9	100.0	104.02	f	\N
0022000287	1629642	1610612757	2021-01-28	2020-21	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	-9	0	0	1	04:01	9	10	0	f	77.8	160.0	113.53	f	\N
0022000287	0	1610612757	2021-01-28	2020-21	5	3	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000287	203506	1610612745	2021-01-28	2020-21	7	0	7	5	1	0	0	1	1	11	23	2	10	8	7	0.5434782608695652	0.5217391304347826	4	1	1	1	36:36	76	74	25	t	103.9	100.0	99.02	t	\N
0022000287	1626174	1610612745	2021-01-28	2020-21	12	1	11	0	0	3	1	5	6	8	12	1	4	3	3	0.7333333333333333	0.7083333333333334	16	1	1	0	32:10	67	67	22	t	114.9	91.0	99.96	t	\N
0022000287	200782	1610612745	2021-01-28	2020-21	6	2	4	0	0	0	0	0	0	1	4	0	2	1	1	0.25	0.25	3	0	2	2	31:27	64	64	2	t	98.5	93.8	99.21	t	\N
0022000287	202322	1610612745	2021-01-28	2020-21	5	0	5	6	0	2	1	5	6	6	16	3	7	4	3	0.5263157894736842	0.46875	3	0	1	0	29:44	61	62	20	t	100.0	90.6	100.9	t	\N
0022000287	1630256	1610612745	2021-01-28	2020-21	3	2	1	1	0	2	1	0	0	1	3	0	2	1	1	0.3333333333333333	0.3333333333333333	-13	1	0	2	16:43	35	36	2	t	83.3	119.4	103.37	t	\N
0022000287	201569	1610612745	2021-01-28	2020-21	4	1	3	1	0	4	2	2	2	2	11	2	7	1	0	0.3333333333333333	0.2727272727272727	2	0	1	2	29:51	60	58	8	f	105.0	101.7	96.48	t	\N
0022000287	1628425	1610612745	2021-01-28	2020-21	3	0	3	1	1	1	0	0	0	2	7	2	5	0	0	0.42857142857142855	0.42857142857142855	5	2	1	1	20:42	43	41	6	f	107.0	95.3	99.71	t	\N
0022000287	1627863	1610612745	2021-01-28	2020-21	2	1	1	1	0	0	0	1	1	4	7	2	5	2	2	0.7857142857142857	0.7142857142857143	9	0	0	0	19:14	39	38	11	f	117.5	95.0	99.83	t	\N
0022000287	1628021	1610612745	2021-01-28	2020-21	1	1	0	1	1	0	0	0	1	1	2	0	1	1	1	0.5	0.5	1	2	0	2	12:30	27	28	2	f	110.3	103.3	113.34	t	\N
0022000287	202326	1610612745	2021-01-28	2020-21	4	2	2	3	2	1	1	1	1	2	5	1	4	1	1	0.6	0.5	-15	1	0	2	11:03	23	22	6	f	87.5	156.5	102.08	t	\N
0022000287	1	1610612745	2021-01-28	2020-21	5	2	3	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000285	202704	1610612746	2021-01-28	2020-21	8	0	8	6	2	3	1	1	2	6	15	3	8	2	1	0.5	0.5	4	1	0	4	36:37	74	75	16	t	109.2	103.9	99.63	f	\N
0022000285	201587	1610612746	2021-01-28	2020-21	6	0	6	2	0	0	0	0	0	6	12	6	9	1	0	0.75	0.75	3	2	0	2	31:07	63	65	18	t	97.0	93.8	101.04	f	\N
0022000285	1628379	1610612746	2021-01-28	2020-21	4	0	4	3	0	1	1	0	0	4	10	1	6	2	2	0.45	0.45	8	0	0	1	27:16	53	53	9	t	107.1	96.3	96.8	f	\N
0022000285	1629611	1610612746	2021-01-28	2020-21	3	1	2	2	0	1	0	5	5	3	6	1	3	2	2	0.75	0.5833333333333334	17	0	1	3	26:49	54	54	12	t	128.6	96.5	101.16	f	\N
0022000285	201586	1610612746	2021-01-28	2020-21	13	5	8	3	0	2	0	0	0	4	13	2	4	0	0	0.38461538461538464	0.38461538461538464	16	1	1	1	26:03	51	51	10	t	125.0	92.5	96.77	f	\N
0022000285	101150	1610612746	2021-01-28	2020-21	5	1	4	4	0	1	1	8	9	4	9	1	1	4	2	0.6153846153846154	0.5	-2	2	0	2	28:23	58	56	17	f	108.3	113.6	100.6	f	\N
0022000285	202694	1610612746	2021-01-28	2020-21	5	1	4	1	0	1	0	4	4	5	13	2	8	1	1	0.5333333333333333	0.46153846153846156	-8	1	0	2	26:09	55	53	16	f	110.5	126.8	103.71	f	\N
0022000285	1627826	1610612746	2021-01-28	2020-21	8	5	3	1	0	2	1	2	2	2	4	0	0	2	1	0.6	0.5	-10	1	2	3	21:12	43	43	6	f	95.3	113.3	99.62	f	\N
0022000285	1629599	1610612746	2021-01-28	2020-21	3	0	3	0	0	1	1	0	0	2	5	1	3	2	1	0.5	0.5	-8	3	0	2	16:24	34	35	5	f	94.1	105.3	105.34	f	\N
0022000285	0	1610612746	2021-01-28	2020-21	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000285	1628389	1610612748	2021-01-28	2020-21	13	3	10	7	2	1	1	4	4	6	16	0	1	5	4	0.4411764705882353	0.375	-3	1	0	1	34:39	69	67	16	t	97.1	101.4	96.97	t	\N
0022000285	1629134	1610612748	2021-01-28	2020-21	3	1	2	3	1	1	1	0	0	5	12	0	3	5	4	0.4166666666666667	0.4166666666666667	-5	0	0	3	32:56	68	66	10	t	97.1	102.9	99.84	t	\N
0022000285	1629130	1610612748	2021-01-28	2020-21	5	1	4	3	1	0	0	0	0	2	8	2	5	2	0	0.375	0.375	-8	1	0	2	32:47	65	65	6	t	95.5	104.4	98.1	t	\N
0022000285	1629639	1610612748	2021-01-28	2020-21	10	1	9	5	4	3	2	2	2	8	21	1	6	7	4	0.42857142857142855	0.40476190476190477	1	1	0	1	31:56	66	66	19	t	117.6	112.9	103.72	t	\N
0022000285	203482	1610612748	2021-01-28	2020-21	4	0	4	1	1	3	3	0	0	3	6	3	6	0	0	0.75	0.75	-3	0	0	0	24:49	52	51	9	t	100.0	109.6	102.5	t	\N
0022000285	1629216	1610612748	2021-01-28	2020-21	4	0	4	4	1	4	3	4	4	6	13	2	4	4	2	0.6428571428571429	0.5384615384615384	1	2	0	4	25:37	48	51	18	f	109.6	109.8	96.5	t	\N
0022000285	1629644	1610612748	2021-01-28	2020-21	1	0	1	1	0	0	0	0	0	2	4	1	2	1	0	0.625	0.625	-1	0	1	3	23:11	45	46	5	f	108.5	110.6	97.32	t	\N
0022000285	1629622	1610612748	2021-01-28	2020-21	0	0	0	0	0	1	1	0	0	4	6	4	6	0	0	1.0	1.0	-1	0	0	3	20:44	44	43	12	f	106.5	113.6	104.18	t	\N
0022000285	1630173	1610612748	2021-01-28	2020-21	5	2	3	0	0	0	0	2	5	4	4	0	0	3	3	1.0	1.0	-1	0	0	1	13:21	28	30	10	f	123.3	126.7	107.87	t	\N
0022000285	1	1610612748	2021-01-28	2020-21	2	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000286	201939	1610612744	2021-01-28	2020-21	4	1	3	4	2	4	2	2	2	10	20	5	10	5	3	0.6428571428571429	0.625	-23	0	0	2	31:14	68	66	27	t	89.7	121.7	105.27	f	\N
0022000286	203952	1610612744	2021-01-28	2020-21	5	0	5	1	0	2	2	1	2	6	11	3	6	2	2	0.6666666666666666	0.6818181818181818	-18	0	0	2	28:10	61	60	16	t	83.6	111.3	104.8	f	\N
0022000286	1626162	1610612744	2021-01-28	2020-21	4	0	4	1	0	1	1	2	2	1	11	0	5	4	0	0.16666666666666666	0.09090909090909091	-17	1	0	2	25:32	53	53	4	t	90.7	120.0	102.45	f	\N
0022000286	203110	1610612744	2021-01-28	2020-21	4	3	1	6	4	2	1	0	0	1	7	0	1	5	1	0.14285714285714285	0.14285714285714285	-17	3	0	3	24:55	53	52	2	t	83.3	114.8	104.03	f	\N
0022000286	1626172	1610612744	2021-01-28	2020-21	4	1	3	1	0	0	0	0	0	1	2	0	0	1	1	0.5	0.5	-6	2	0	1	15:30	32	32	2	t	96.9	112.1	100.65	f	\N
0022000286	1629672	1610612744	2021-01-28	2020-21	1	1	0	2	0	2	0	0	0	6	10	0	1	2	1	0.6	0.6	-5	0	0	1	18:40	39	40	12	f	85.0	97.5	102.86	f	\N
0022000286	1630164	1610612744	2021-01-28	2020-21	6	4	2	1	1	1	0	1	2	2	9	0	0	4	2	0.25	0.2222222222222222	-10	1	0	2	18:31	41	41	5	f	87.8	107.0	108.87	f	\N
0022000286	1627814	1610612744	2021-01-28	2020-21	6	0	6	0	0	0	0	0	0	0	3	0	2	0	0	0.0	0.0	-4	0	0	0	18:24	41	39	0	f	95.2	104.8	109.57	f	\N
0022000286	202954	1610612744	2021-01-28	2020-21	1	0	1	0	0	0	0	0	0	4	6	0	1	2	2	0.6666666666666666	0.6666666666666666	-6	0	0	2	17:04	34	35	8	f	80.6	100.0	99.84	f	\N
0022000286	1628539	1610612744	2021-01-28	2020-21	3	0	3	1	0	0	0	0	0	1	4	1	3	1	0	0.375	0.375	-3	0	0	0	15:28	34	34	3	f	94.3	102.9	108.62	f	\N
0022000286	203145	1610612744	2021-01-28	2020-21	5	2	3	2	2	1	1	0	0	3	7	1	3	2	1	0.5	0.5	0	1	0	2	15:16	35	34	7	f	100.0	100.0	113.19	f	\N
0022000286	1629673	1610612744	2021-01-28	2020-21	1	0	1	0	0	0	0	0	0	3	5	1	3	2	2	0.7	0.7	2	0	1	0	05:38	12	12	7	f	83.3	66.7	102.25	f	\N
0022000286	1630185	1610612744	2021-01-28	2020-21	4	0	4	2	1	0	0	0	0	0	4	0	3	0	0	0.0	0.0	2	0	0	2	05:38	12	12	0	f	83.3	66.7	102.25	f	\N
0022000286	0	1610612744	2021-01-28	2020-21	4	1	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000286	1628969	1610612756	2021-01-28	2020-21	1	0	1	5	1	1	1	7	8	6	10	1	4	4	3	0.7142857142857143	0.65	25	2	1	2	31:48	67	69	20	t	122.9	87.1	105.66	t	\N
0022000286	1629661	1610612756	2021-01-28	2020-21	5	0	5	2	2	1	1	0	0	5	10	3	8	1	1	0.65	0.65	8	0	0	2	30:03	63	64	13	t	101.5	90.9	106.15	t	\N
0022000286	203109	1610612756	2021-01-28	2020-21	9	1	8	3	1	0	0	6	6	4	8	2	5	2	2	0.75	0.625	20	1	0	2	28:42	60	59	16	t	118.0	86.7	101.18	t	\N
0022000286	101108	1610612756	2021-01-28	2020-21	3	1	2	4	1	4	2	0	0	6	13	1	2	1	1	0.5	0.5	27	2	0	1	27:08	58	56	13	t	128.8	83.1	104.37	t	\N
0022000286	1629028	1610612756	2021-01-28	2020-21	13	4	9	4	1	5	2	2	2	5	7	0	0	5	4	0.75	0.7142857142857143	11	1	0	4	23:19	48	48	12	t	116.3	92.0	101.9	t	\N
0022000286	1627846	1610612756	2021-01-28	2020-21	5	0	5	3	3	3	2	2	2	6	15	2	5	6	3	0.5	0.4666666666666667	12	0	0	1	25:08	55	56	16	f	101.8	80.7	108.86	t	\N
0022000286	1626163	1610612756	2021-01-28	2020-21	13	1	12	8	4	0	0	3	4	4	9	1	2	3	2	0.6	0.5	12	1	0	0	24:30	53	53	12	f	105.6	81.8	106.87	t	\N
0022000286	202734	1610612756	2021-01-28	2020-21	2	0	2	2	1	0	0	0	0	1	6	0	1	3	1	0.16666666666666666	0.16666666666666666	-6	0	0	1	20:52	44	47	2	f	82.6	91.7	108.12	t	\N
0022000286	204038	1610612756	2021-01-28	2020-21	5	1	4	3	1	0	0	1	1	3	5	1	3	0	0	0.8	0.7	7	0	0	1	20:01	44	45	8	f	110.6	100.0	110.31	t	\N
0022000286	1630188	1610612756	2021-01-28	2020-21	0	0	0	0	0	0	0	0	0	1	2	0	0	1	1	0.5	0.5	-4	0	0	0	05:04	11	11	2	f	54.5	90.9	104.21	t	\N
0022000286	1628975	1610612756	2021-01-28	2020-21	1	1	0	0	0	0	0	0	0	0	3	0	2	0	0	0.0	0.0	-7	0	0	0	03:25	7	7	0	f	0.0	100.0	98.34	t	\N
0022000286	1	1610612756	2021-01-28	2020-21	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000302	203484	1610612747	2021-01-30	2020-21	2	0	2	0	0	2	2	0	0	0	4	0	2	2	0	0.0	0.0	-4	0	0	1	20:12	39	39	0	t	102.6	112.8	92.67	f	\N
0022000302	201188	1610612747	2021-01-30	2020-21	1	0	1	0	0	0	0	1	2	0	2	0	2	0	0	0.16666666666666666	0.0	1	1	0	0	18:01	35	35	1	t	105.6	105.7	94.58	f	\N
0022000302	1626149	1610612747	2021-01-30	2020-21	5	3	2	1	0	2	1	0	0	8	10	0	0	1	1	0.8	0.8	0	2	3	0	29:52	57	59	16	f	98.3	98.3	94.86	f	\N
0022000302	1628398	1610612747	2021-01-30	2020-21	6	1	5	0	0	0	0	0	0	4	8	3	7	1	1	0.6875	0.6875	1	0	0	0	23:09	46	46	11	f	93.6	91.5	97.45	f	\N
0022000302	1629659	1610612747	2021-01-30	2020-21	4	1	3	2	0	2	1	0	0	3	8	0	1	2	1	0.375	0.375	-3	2	0	5	22:59	45	46	6	f	93.5	97.9	97.11	f	\N
0022000302	1627936	1610612747	2021-01-30	2020-21	3	1	2	1	0	0	0	0	0	1	2	0	1	1	1	0.5	0.5	14	0	0	2	19:34	39	37	2	f	107.7	73.7	94.35	f	\N
0022000302	1628369	1610612738	2021-01-30	2020-21	9	0	9	3	2	4	2	4	6	12	18	2	3	3	3	0.7142857142857143	0.7222222222222222	0	2	0	1	39:47	77	76	30	t	98.7	101.3	92.88	t	\N
0022000302	1627759	1610612738	2021-01-30	2020-21	1	1	0	3	2	2	1	0	2	13	19	2	4	7	7	0.7	0.7368421052631579	13	1	1	4	37:57	76	74	28	t	110.4	97.3	95.55	t	\N
0022000302	1628464	1610612738	2021-01-30	2020-21	7	3	4	1	0	2	1	2	2	5	11	2	3	4	2	0.5833333333333334	0.5454545454545454	8	1	1	1	34:51	69	68	14	t	110.1	98.6	95.07	t	\N
0022000302	202689	1610612738	2021-01-30	2020-21	6	0	6	4	2	1	1	2	2	1	12	0	5	2	0	0.15384615384615385	0.08333333333333333	-8	0	1	1	28:12	53	56	4	t	91.1	105.4	95.28	t	\N
0022000302	203935	1610612738	2021-01-30	2020-21	2	0	2	7	5	1	1	0	0	2	7	0	3	0	0	0.2857142857142857	0.2857142857142857	-5	2	1	2	26:15	52	53	4	t	98.1	109.4	97.78	t	\N
0022000302	1629057	1610612738	2021-01-30	2020-21	7	2	5	2	1	1	1	0	0	5	5	0	0	5	5	1.0	1.0	-1	2	2	4	18:29	37	36	10	f	110.8	110.5	97.49	t	\N
0022000302	1628400	1610612738	2021-01-30	2020-21	3	0	3	1	1	1	0	0	0	0	1	0	1	0	0	0.0	0.0	-4	0	0	0	16:11	31	31	0	f	84.4	96.9	94.83	t	\N
0022000305	203924	1610612765	2021-01-30	2020-21	1	0	1	1	0	2	2	6	8	5	8	2	5	0	0	0.8181818181818182	0.75	-22	1	0	1	28:26	60	61	18	t	88.5	124.6	102.98	f	\N
0022000305	1626153	1610612765	2021-01-30	2020-21	6	0	6	4	0	0	0	2	4	2	6	1	3	1	0	0.4375	0.4166666666666667	-29	1	0	1	23:24	46	50	7	t	80.0	138.0	102.56	f	\N
0022000305	201933	1610612765	2021-01-30	2020-21	3	1	2	2	1	2	1	2	2	1	8	1	3	0	0	0.2777777777777778	0.1875	-28	0	0	2	21:26	45	45	5	t	78.3	136.2	104.14	f	\N
0022000305	201961	1610612765	2021-01-30	2020-21	2	0	2	1	0	0	0	0	0	0	6	0	5	0	0	0.0	0.0	-25	1	0	0	17:34	36	37	0	t	74.4	145.9	103.83	f	\N
0022000305	203486	1610612765	2021-01-30	2020-21	2	0	2	1	0	0	0	2	2	2	3	0	0	1	1	0.75	0.6666666666666666	-24	0	1	0	16:16	33	34	6	t	72.2	147.1	103.28	f	\N
0022000305	1628367	1610612765	2021-01-30	2020-21	6	1	5	1	1	2	0	7	8	4	9	2	6	1	1	0.6538461538461539	0.5555555555555556	-6	1	1	3	24:12	51	49	17	f	96.1	112.2	99.17	f	\N
0022000305	1629635	1610612765	2021-01-30	2020-21	3	0	3	2	0	4	0	1	2	2	5	0	3	0	0	0.4166666666666667	0.4	-3	1	0	4	21:06	41	41	5	f	95.1	100.0	94.41	f	\N
0022000305	1630191	1610612765	2021-01-30	2020-21	5	2	3	0	0	1	0	2	4	3	4	0	0	2	2	0.6666666666666666	0.75	-2	0	2	2	19:44	43	42	8	f	97.7	104.8	103.38	f	\N
0022000305	201565	1610612765	2021-01-30	2020-21	2	2	0	2	0	0	0	2	2	3	11	0	1	2	1	0.3333333333333333	0.2727272727272727	-1	1	0	0	17:03	37	34	8	f	97.3	108.8	99.94	f	\N
0022000305	1630180	1610612765	2021-01-30	2020-21	4	0	4	1	0	0	0	0	0	1	4	0	3	0	0	0.25	0.25	-1	0	0	1	15:27	31	31	2	f	90.6	96.8	97.86	f	\N
0022000305	1626143	1610612765	2021-01-30	2020-21	3	1	2	0	0	0	0	0	0	1	3	0	1	0	0	0.3333333333333333	0.3333333333333333	-1	0	0	0	12:00	22	23	2	f	104.5	104.3	90.0	f	\N
0022000305	1629004	1610612765	2021-01-30	2020-21	0	0	0	1	0	1	1	0	0	1	5	1	4	0	0	0.3	0.3	-2	0	0	0	09:25	18	20	3	f	115.8	120.0	99.4	f	\N
0022000305	1628402	1610612765	2021-01-30	2020-21	0	0	0	1	0	1	1	0	0	1	2	0	0	0	0	0.5	0.5	3	0	0	0	07:33	15	15	2	f	100.0	80.0	95.36	f	\N
0022000305	203585	1610612765	2021-01-30	2020-21	2	0	2	0	0	1	1	0	0	3	3	2	2	0	0	1.3333333333333333	1.3333333333333333	6	0	0	0	06:24	12	13	8	f	125.0	69.2	93.75	f	\N
0022000305	0	1610612765	2021-01-30	2020-21	5	3	2	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000305	201939	1610612744	2021-01-30	2020-21	5	0	5	7	4	5	3	0	0	11	17	6	8	2	0	0.8235294117647058	0.8235294117647058	26	2	0	1	29:57	65	64	28	t	123.1	83.1	104.17	t	\N
0022000305	203110	1610612744	2021-01-30	2020-21	5	0	5	6	3	1	1	0	0	2	5	0	2	1	1	0.4	0.4	23	1	0	0	27:45	60	58	4	t	123.3	85.0	103.78	t	\N
0022000305	1626162	1610612744	2021-01-30	2020-21	6	2	4	1	1	1	0	0	2	8	14	2	6	3	3	0.6	0.6428571428571429	24	0	1	2	27:03	55	57	18	t	127.3	78.0	101.15	t	\N
0022000305	203952	1610612744	2021-01-30	2020-21	4	1	3	3	0	1	0	1	2	8	17	3	6	5	5	0.5555555555555556	0.5588235294117647	28	1	1	4	25:28	51	50	20	t	135.3	77.4	98.07	t	\N
0022000305	1626172	1610612744	2021-01-30	2020-21	6	2	4	4	1	0	0	0	0	3	3	0	0	2	2	1.0	1.0	15	0	2	1	22:31	43	43	6	t	114.0	79.1	91.67	t	\N
0022000305	202954	1610612744	2021-01-30	2020-21	2	0	2	7	1	1	0	0	0	3	3	1	1	0	0	1.1666666666666667	1.1666666666666667	0	1	0	2	21:09	43	42	7	f	104.7	104.7	97.52	t	\N
0022000305	1629673	1610612744	2021-01-30	2020-21	2	1	1	1	1	1	0	5	5	4	8	3	6	1	0	0.8	0.6875	2	0	1	4	20:42	40	39	16	f	117.5	112.5	92.75	t	\N
0022000305	1627814	1610612744	2021-01-30	2020-21	2	0	2	1	0	1	0	0	0	2	3	2	3	0	0	1.0	1.0	5	0	0	4	19:55	40	40	6	f	117.5	105.0	96.4	t	\N
0022000305	1630164	1610612744	2021-01-30	2020-21	9	2	7	2	1	0	0	1	1	5	13	0	1	6	4	0.4230769230769231	0.38461538461538464	9	0	0	2	17:15	40	39	11	f	115.0	90.2	112.7	t	\N
0022000305	203145	1610612744	2021-01-30	2020-21	4	0	4	0	0	1	1	0	0	0	2	0	2	0	0	0.0	0.0	1	1	0	3	15:37	33	33	0	f	100.0	94.1	102.97	t	\N
0022000305	1629672	1610612744	2021-01-30	2020-21	2	0	2	2	0	1	1	0	0	1	4	0	0	1	1	0.25	0.25	3	0	0	0	08:14	16	16	2	f	143.8	117.6	96.19	t	\N
0022000305	1628539	1610612744	2021-01-30	2020-21	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	-1	0	0	0	04:24	9	9	0	f	77.8	88.9	98.18	t	\N
0022000305	1	1610612744	2021-01-30	2020-21	3	1	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000303	1629028	1610612756	2021-01-30	2020-21	17	6	11	4	1	2	2	2	4	8	16	0	1	10	7	0.5	0.5	10	1	0	2	39:04	77	77	18	t	111.5	98.7	95.85	f	\N
0022000303	101108	1610612756	2021-01-30	2020-21	3	1	2	12	3	3	2	12	13	8	18	1	3	0	0	0.5833333333333334	0.4722222222222222	5	4	0	3	35:10	69	70	29	t	116.9	109.9	96.91	f	\N
0022000303	1629661	1610612756	2021-01-30	2020-21	4	0	4	0	0	0	0	3	3	1	4	1	1	1	0	0.6	0.375	-5	0	0	2	33:40	65	66	6	t	109.0	114.7	96.24	f	\N
0022000303	1628969	1610612756	2021-01-30	2020-21	4	0	4	1	0	2	1	1	2	6	12	1	2	4	2	0.5384615384615384	0.5416666666666666	6	0	0	3	32:54	67	67	14	t	119.4	107.2	99.21	f	\N
0022000303	203109	1610612756	2021-01-30	2020-21	3	0	3	0	0	2	0	0	0	5	10	4	9	0	0	0.7	0.7	-1	1	0	2	31:55	63	64	14	t	109.5	107.7	96.25	f	\N
0022000303	204038	1610612756	2021-01-30	2020-21	1	0	1	0	0	2	0	5	5	3	8	1	3	0	0	0.6	0.4375	8	0	0	2	23:39	47	47	12	f	112.2	97.9	98.44	f	\N
0022000303	1627846	1610612756	2021-01-30	2020-21	7	0	7	2	2	0	0	4	4	1	4	1	2	2	0	0.5833333333333334	0.375	9	1	0	2	22:01	47	49	7	f	118.4	98.0	107.89	f	\N
0022000303	202734	1610612756	2021-01-30	2020-21	1	0	1	1	1	0	0	0	0	2	4	0	0	1	1	0.5	0.5	1	1	0	1	12:50	27	27	4	f	100.0	96.4	104.73	f	\N
0022000303	1626163	1610612756	2021-01-30	2020-21	2	2	0	2	0	2	0	0	0	3	5	1	1	2	2	0.7	0.7	-3	1	0	2	08:47	18	18	7	f	110.0	138.9	103.83	f	\N
0022000303	0	1610612756	2021-01-30	2020-21	4	3	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000303	203501	1610612742	2021-01-30	2020-21	4	1	3	4	3	1	1	0	0	8	19	3	10	4	2	0.5	0.5	-2	1	0	0	35:32	72	71	19	t	109.7	114.1	96.59	t	\N
0022000303	1626196	1610612742	2021-01-30	2020-21	3	0	3	2	0	1	1	1	1	4	11	0	3	1	0	0.36363636363636365	0.36363636363636365	3	0	0	2	35:15	71	69	9	t	119.7	112.3	98.04	t	\N
0022000303	1627827	1610612742	2021-01-30	2020-21	5	0	5	1	0	1	0	1	2	3	5	2	4	1	1	0.75	0.8	7	1	0	2	34:04	69	68	9	t	112.9	102.9	98.63	t	\N
0022000303	1629029	1610612742	2021-01-30	2020-21	8	0	8	7	5	4	2	2	4	12	22	3	7	2	2	0.6041666666666666	0.6136363636363636	2	0	0	3	33:23	68	68	29	t	110.1	107.2	99.21	t	\N
0022000303	1626161	1610612742	2021-01-30	2020-21	9	3	6	2	1	1	0	0	0	7	8	0	0	7	6	0.875	0.875	5	0	4	6	29:44	57	57	14	t	119.0	106.7	95.29	t	\N
0022000303	1628973	1610612742	2021-01-30	2020-21	3	2	1	3	0	1	1	0	0	3	8	1	3	1	1	0.4375	0.4375	-17	0	0	2	26:22	53	53	7	f	90.7	120.0	99.22	t	\N
0022000303	201949	1610612742	2021-01-30	2020-21	3	0	3	1	1	2	2	0	0	3	4	0	0	2	1	0.75	0.75	-15	1	0	3	18:33	37	38	6	f	87.2	122.5	102.21	t	\N
0022000303	203939	1610612742	2021-01-30	2020-21	2	0	2	1	0	2	0	4	7	2	3	0	1	2	2	0.6666666666666666	0.6666666666666666	-12	2	0	6	17:59	37	37	8	f	81.6	107.5	104.1	t	\N
0022000303	203504	1610612742	2021-01-30	2020-21	1	0	1	1	1	2	2	0	0	2	3	0	1	0	0	0.6666666666666666	0.6666666666666666	-1	0	0	2	09:08	21	19	4	f	109.5	114.3	110.18	t	\N
0022000303	1	1610612742	2021-01-30	2020-21	4	3	1	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000304	1628415	1610612763	2021-01-30	2020-21	3	0	3	4	1	2	1	1	1	5	11	3	7	0	0	0.5909090909090909	0.5909090909090909	17	1	0	1	27:42	56	56	14	t	141.4	114.0	99.64	f	\N
0022000304	1629630	1610612763	2021-01-30	2020-21	2	1	1	11	3	5	3	2	3	8	14	1	5	5	3	0.6333333333333333	0.6071428571428571	9	0	0	1	27:36	57	59	19	t	126.2	115.3	104.35	f	\N
0022000304	1629634	1610612763	2021-01-30	2020-21	5	0	5	0	0	0	0	0	0	6	11	2	4	2	2	0.6363636363636364	0.6363636363636364	17	1	1	1	26:17	55	55	14	t	145.6	117.9	103.18	f	\N
0022000304	1630214	1610612763	2021-01-30	2020-21	6	1	5	3	1	0	0	0	1	3	8	0	1	3	1	0.375	0.375	4	1	2	4	21:19	44	45	6	t	124.4	113.0	102.46	f	\N
0022000304	203937	1610612763	2021-01-30	2020-21	5	0	5	1	1	2	1	2	3	6	8	2	2	1	0	0.8888888888888888	0.875	3	3	0	3	20:45	42	42	16	t	109.3	102.3	99.47	f	\N
0022000304	1629001	1610612763	2021-01-30	2020-21	5	2	3	2	0	0	0	0	0	8	13	4	7	2	2	0.7692307692307693	0.7692307692307693	11	0	2	5	32:18	65	66	20	f	132.8	116.4	99.57	f	\N
0022000304	203476	1610612763	2021-01-30	2020-21	7	4	3	3	0	3	0	5	7	4	7	2	3	3	2	0.75	0.7142857142857143	13	1	2	3	26:41	55	54	15	f	130.4	109.1	99.84	f	\N
0022000304	1626145	1610612763	2021-01-30	2020-21	1	0	1	8	2	0	0	0	0	4	9	0	3	0	0	0.4444444444444444	0.4444444444444444	7	0	0	2	21:55	46	44	8	f	117.0	104.3	101.84	f	\N
0022000304	1630217	1610612763	2021-01-30	2020-21	4	1	3	2	0	1	1	0	0	6	8	3	3	3	2	0.9375	0.9375	0	0	0	1	20:47	44	44	15	f	106.8	104.4	102.77	f	\N
0022000304	1629723	1610612763	2021-01-30	2020-21	7	1	6	0	0	1	1	0	0	1	2	0	0	1	1	0.5	0.5	4	0	0	2	14:40	31	30	2	f	116.1	97.0	104.73	f	\N
0022000304	0	1610612763	2021-01-30	2020-21	2	2	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000304	1627749	1610612759	2021-01-30	2020-21	4	0	4	7	2	2	0	2	3	6	12	1	2	7	4	0.5769230769230769	0.5416666666666666	-4	2	0	5	27:50	58	58	15	t	122.0	128.8	101.75	t	\N
0022000304	200746	1610612759	2021-01-30	2020-21	5	1	4	2	1	0	0	2	2	5	7	2	2	1	0	0.875	0.8571428571428571	-13	0	1	1	26:10	53	52	14	t	107.5	129.6	98.14	t	\N
0022000304	1629022	1610612759	2021-01-30	2020-21	1	0	1	5	1	1	1	0	0	5	9	2	5	3	2	0.6666666666666666	0.6666666666666666	-9	1	1	2	25:21	54	51	12	t	116.7	138.5	100.36	t	\N
0022000304	201942	1610612759	2021-01-30	2020-21	1	0	1	1	0	1	1	0	0	2	6	1	2	1	1	0.4166666666666667	0.4166666666666667	-8	0	0	2	25:05	51	51	5	t	115.7	128.8	98.55	t	\N
0022000304	1629640	1610612759	2021-01-30	2020-21	5	1	4	1	0	3	2	6	9	3	6	0	1	3	2	0.6	0.5	-10	1	0	0	20:50	44	44	12	t	117.8	140.0	103.68	t	\N
0022000304	200752	1610612759	2021-01-30	2020-21	4	1	3	0	0	2	1	2	2	4	8	2	3	3	2	0.6666666666666666	0.625	3	0	0	1	22:32	46	45	12	f	112.8	108.7	99.05	t	\N
0022000304	1628401	1610612759	2021-01-30	2020-21	2	0	2	1	1	1	0	3	4	6	11	3	6	3	2	0.6923076923076923	0.6818181818181818	-19	2	0	2	21:40	44	45	18	f	106.7	145.7	100.8	t	\N
0022000304	201988	1610612759	2021-01-30	2020-21	2	0	2	4	4	2	1	2	2	3	9	2	6	1	1	0.5	0.4444444444444444	-5	1	0	0	19:39	39	42	10	f	112.5	119.0	100.15	t	\N
0022000304	1627751	1610612759	2021-01-30	2020-21	6	4	2	4	1	1	1	0	0	4	6	0	0	5	4	0.6666666666666666	0.6666666666666666	1	0	3	1	18:10	39	39	8	f	122.5	123.1	104.37	t	\N
0022000304	1626168	1610612759	2021-01-30	2020-21	3	0	3	0	0	0	0	0	0	0	1	0	0	1	0	0.0	0.0	-2	0	0	0	10:32	23	22	0	f	108.3	121.7	107.09	t	\N
0022000304	1630170	1610612759	2021-01-30	2020-21	2	0	2	0	0	0	0	0	0	1	2	0	1	0	0	0.5	0.5	-5	0	0	0	09:31	19	20	2	f	89.5	110.0	98.35	t	\N
0022000304	1629234	1610612759	2021-01-30	2020-21	1	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0.0	0.0	-5	0	0	1	03:40	7	8	0	f	75.0	137.5	104.73	t	\N
0022000304	1628966	1610612759	2021-01-30	2020-21	1	0	1	0	0	0	0	0	0	0	2	0	1	0	0	0.0	0.0	-3	0	0	0	03:00	6	6	0	f	57.1	116.7	104.0	t	\N
0022000304	1629683	1610612759	2021-01-30	2020-21	0	0	0	0	0	0	0	2	2	0	1	0	0	0	0	0.5	0.0	-3	0	0	1	03:00	6	6	2	f	57.1	116.7	104.0	t	\N
0022000304	1630200	1610612759	2021-01-30	2020-21	1	1	0	0	0	0	0	2	2	0	2	0	0	0	0	0.3333333333333333	0.0	-3	0	0	0	03:00	6	6	2	f	57.1	116.7	104.0	t	\N
0022000304	1	1610612759	2021-01-30	2020-21	2	2	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000302	2544	1610612747	2021-01-30	2020-21	7	1	6	7	1	5	4	3	5	7	17	4	11	3	2	0.5526315789473685	0.5294117647058824	11	0	1	3	37:21	70	69	21	t	108.6	91.5	90.58	f	\N
0022000302	203076	1610612747	2021-01-30	2020-21	14	6	8	2	0	1	1	4	7	11	25	1	2	3	2	0.48214285714285715	0.46	-10	2	0	0	35:48	70	72	27	t	101.4	112.5	95.22	f	\N
0022000302	203471	1610612747	2021-01-30	2020-21	3	0	3	7	2	2	1	5	5	3	8	1	5	2	2	0.6	0.4375	-5	1	0	4	33:04	64	67	12	t	106.3	109.0	95.1	f	\N
0022000302	201952	1610612738	2021-01-30	2020-21	1	0	1	2	0	0	0	0	0	2	6	0	0	3	2	0.3333333333333333	0.3333333333333333	2	1	0	1	15:21	31	29	4	f	96.8	93.3	95.37	t	\N
0022000302	202684	1610612738	2021-01-30	2020-21	5	3	2	1	0	1	0	1	2	0	1	0	0	1	0	0.25	0.0	-5	1	0	0	14:36	28	27	1	f	82.1	100.0	92.0	t	\N
0022000302	1630174	1610612738	2021-01-30	2020-21	1	0	1	0	0	2	1	0	0	0	2	0	2	0	0	0.0	0.0	-5	0	0	2	08:21	16	15	0	f	70.6	106.3	94.85	t	\N
0022000302	1	1610612738	2021-01-30	2020-21	5	3	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000301	203084	1610612758	2021-01-30	2020-21	3	2	1	2	0	0	0	1	1	4	8	2	4	1	1	0.625	0.625	1	0	0	2	36:54	72	71	11	t	109.6	109.7	94.31	f	\N
0022000301	1627741	1610612758	2021-01-30	2020-21	5	0	5	3	0	4	0	0	0	6	15	6	13	0	0	0.6	0.6	4	3	0	3	36:39	72	71	18	t	112.3	108.3	94.95	f	\N
0022000301	1628368	1610612758	2021-01-30	2020-21	6	2	4	6	2	5	1	3	8	12	26	3	11	4	2	0.5	0.5192307692307693	-1	1	0	5	31:38	60	59	30	t	111.7	109.7	92.6	f	\N
0022000301	1626158	1610612758	2021-01-30	2020-21	6	1	5	1	1	0	0	0	0	2	4	0	0	1	1	0.5	0.5	5	1	1	2	28:02	52	51	4	t	101.9	92.5	90.75	f	\N
0022000301	1628963	1610612758	2021-01-30	2020-21	4	0	4	1	0	0	0	0	0	7	8	3	4	4	4	1.0625	1.0625	-2	2	0	3	25:46	49	49	17	t	108.0	112.0	93.14	f	\N
0022000301	1630169	1610612758	2021-01-30	2020-21	7	3	4	6	2	3	1	0	0	4	10	2	7	1	1	0.5	0.5	0	1	0	1	30:59	61	61	10	f	108.1	109.8	95.25	f	\N
0022000301	202355	1610612758	2021-01-30	2020-21	3	1	2	0	0	3	2	1	2	4	4	0	0	2	2	0.9	1.0	-6	1	2	1	19:58	42	42	9	f	119.0	130.2	102.17	f	\N
0022000301	1629657	1610612758	2021-01-30	2020-21	4	1	3	2	0	0	0	0	0	2	6	1	5	0	0	0.4166666666666667	0.4166666666666667	5	2	0	3	15:32	32	30	5	f	125.0	116.7	95.79	f	\N
0022000301	202709	1610612758	2021-01-30	2020-21	3	2	1	1	0	2	1	0	0	0	4	0	1	0	0	0.0	0.0	-11	1	0	1	14:32	30	31	0	f	86.7	119.4	100.69	f	\N
0022000301	0	1610612758	2021-01-30	2020-21	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000301	1629639	1610612748	2021-01-30	2020-21	4	1	3	3	2	4	3	3	4	5	12	2	5	2	0	0.5357142857142857	0.5	1	0	2	2	40:03	78	78	15	t	100.0	98.7	94.7	t	\N
0022000301	1628389	1610612748	2021-01-30	2020-21	13	2	11	4	3	5	4	4	4	7	11	0	0	3	3	0.7083333333333334	0.6363636363636364	-1	2	1	2	35:47	69	70	18	t	107.2	105.6	93.9	t	\N
0022000301	1629130	1610612748	2021-01-30	2020-21	3	0	3	1	0	2	2	0	0	5	9	4	8	0	0	0.7777777777777778	0.7777777777777778	6	0	1	2	34:56	68	68	14	t	119.1	108.7	94.14	t	\N
0022000301	202710	1610612748	2021-01-30	2020-21	7	1	6	8	4	0	0	14	16	8	19	0	2	6	5	0.5555555555555556	0.42105263157894735	-7	0	0	1	33:36	66	68	30	t	107.4	114.3	98.57	t	\N
0022000301	1629644	1610612748	2021-01-30	2020-21	0	0	0	0	0	0	0	0	0	0	2	0	1	0	0	0.0	0.0	-14	0	0	2	07:28	15	15	0	t	100.0	181.3	99.53	t	\N
0022000301	2738	1610612748	2021-01-30	2020-21	6	1	5	6	1	2	2	1	2	0	5	0	5	0	0	0.08333333333333333	0.0	8	1	0	2	25:58	49	50	1	f	110.0	92.2	93.31	t	\N
0022000301	203482	1610612748	2021-01-30	2020-21	4	2	2	3	2	1	0	0	0	4	9	3	8	1	1	0.6111111111111112	0.6111111111111112	14	2	0	3	25:43	50	50	11	f	124.0	96.0	93.32	t	\N
0022000301	1629622	1610612748	2021-01-30	2020-21	0	0	0	0	0	0	0	0	0	3	4	1	2	2	2	0.875	0.875	-3	0	0	0	13:25	25	25	7	f	92.3	108.0	91.3	t	\N
0022000301	1630173	1610612748	2021-01-30	2020-21	2	2	0	0	0	1	1	0	0	3	4	0	0	4	3	0.75	0.75	-1	0	0	0	12:18	24	25	6	f	129.2	123.1	97.49	t	\N
0022000301	1629216	1610612748	2021-01-30	2020-21	0	0	0	0	0	0	0	0	0	1	2	1	1	1	0	0.75	0.75	2	0	0	0	10:46	21	21	3	f	147.6	131.8	95.85	t	\N
0022000301	1	1610612748	2021-01-30	2020-21	4	2	2	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000300	1626174	1610612745	2021-01-30	2020-21	9	0	9	0	0	1	0	2	2	11	13	3	4	6	6	0.9642857142857143	0.9615384615384616	23	1	1	1	27:02	60	60	27	t	142.6	103.2	109.2	f	\N
0022000300	202322	1610612745	2021-01-30	2020-21	2	0	2	9	4	2	2	1	2	5	12	4	6	4	1	0.5769230769230769	0.5833333333333334	3	1	1	4	26:05	59	59	15	t	115.0	110.0	110.42	f	\N
0022000300	200782	1610612745	2021-01-30	2020-21	3	0	3	2	1	1	1	1	2	2	6	0	3	2	1	0.35714285714285715	0.3333333333333333	4	2	0	2	24:53	57	57	5	t	117.2	110.3	111.88	f	\N
0022000300	203506	1610612745	2021-01-30	2020-21	6	0	6	7	4	1	1	2	2	7	14	4	8	2	1	0.6666666666666666	0.6428571428571429	4	0	1	0	24:42	56	57	20	t	113.8	106.9	112.71	f	\N
0022000300	1630256	1610612745	2021-01-30	2020-21	9	3	6	0	0	0	0	0	0	6	8	1	2	4	3	0.8125	0.8125	15	3	0	3	23:56	53	51	13	t	127.8	100.0	108.3	f	\N
0022000300	1627863	1610612745	2021-01-30	2020-21	4	0	4	4	2	1	1	2	2	2	7	2	5	1	0	0.5	0.42857142857142855	9	1	1	1	27:41	59	57	8	f	116.9	100.0	103.17	f	\N
0022000300	201569	1610612745	2021-01-30	2020-21	0	0	0	4	0	3	3	4	5	4	9	2	6	3	2	0.6	0.5555555555555556	13	0	1	0	22:52	50	49	14	f	128.0	96.2	108.1	f	\N
0022000300	1628425	1610612745	2021-01-30	2020-21	3	0	3	3	0	0	0	0	0	3	7	2	5	1	1	0.5714285714285714	0.5714285714285714	11	0	0	4	18:12	40	40	8	f	130.0	97.6	108.13	f	\N
0022000300	1628021	1610612745	2021-01-30	2020-21	3	3	0	0	0	0	0	0	0	4	11	1	2	7	3	0.4090909090909091	0.4090909090909091	18	0	0	2	15:44	35	33	9	f	133.3	83.3	109.83	f	\N
0022000300	202326	1610612745	2021-01-30	2020-21	3	0	3	2	0	2	1	4	5	0	2	0	2	0	0	0.5	0.0	-3	0	0	5	13:50	31	29	4	f	93.5	100.0	109.3	f	\N
0022000300	1629066	1610612745	2021-01-30	2020-21	1	1	0	0	0	2	1	0	0	0	0	0	0	0	0	0.0	0.0	-9	0	0	0	05:01	10	11	0	f	30.0	109.1	100.47	f	\N
0022000300	1630222	1610612745	2021-01-30	2020-21	1	0	1	1	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	-9	0	0	2	05:01	10	11	0	f	30.0	109.1	100.47	f	\N
0022000300	203463	1610612745	2021-01-30	2020-21	1	0	1	0	0	1	1	0	0	1	2	1	2	0	0	0.75	0.75	-9	0	0	0	05:01	10	11	3	f	30.0	109.1	100.47	f	\N
0022000300	0	1610612745	2021-01-30	2020-21	4	1	3	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000300	1627742	1610612740	2021-01-30	2020-21	5	1	4	4	3	0	0	3	4	5	15	2	7	2	0	0.4411764705882353	0.4	-11	1	2	0	31:40	72	71	15	t	104.1	122.2	110.65	t	\N
0022000300	1629627	1610612740	2021-01-30	2020-21	7	2	5	4	0	4	2	3	6	11	19	1	2	14	10	0.6190476190476191	0.6052631578947368	-14	0	1	3	29:14	66	67	26	t	104.4	123.2	112.47	t	\N
0022000300	202339	1610612740	2021-01-30	2020-21	4	1	3	5	2	2	1	1	1	6	13	2	8	2	1	0.5769230769230769	0.5384615384615384	-15	0	0	0	28:44	63	64	15	t	100.0	127.7	111.09	t	\N
0022000300	1628366	1610612740	2021-01-30	2020-21	8	1	7	4	1	2	1	0	0	3	8	1	6	0	0	0.4375	0.4375	-4	3	1	2	27:49	63	62	7	t	109.4	117.5	109.57	t	\N
0022000300	203500	1610612740	2021-01-30	2020-21	2	1	1	1	0	3	2	0	0	2	3	0	1	0	0	0.6666666666666666	0.6666666666666666	-6	1	0	2	23:38	55	55	4	t	107.1	117.9	113.74	t	\N
0022000300	1629638	1610612740	2021-01-30	2020-21	5	0	5	4	2	0	0	4	6	4	13	1	8	3	1	0.40625	0.34615384615384615	-16	3	3	1	32:45	71	73	13	f	94.7	119.2	108.46	t	\N
0022000300	1628404	1610612740	2021-01-30	2020-21	4	0	4	2	2	2	1	0	0	1	3	1	2	1	0	0.5	0.5	-18	1	0	2	18:55	40	42	3	f	88.6	135.7	109.11	t	\N
0022000300	1629637	1610612740	2021-01-30	2020-21	5	2	3	0	0	0	0	4	5	3	3	0	0	3	3	1.0	1.0	-10	2	0	3	13:26	27	29	10	f	86.7	120.0	107.2	t	\N
0022000300	1629740	1610612740	2021-01-30	2020-21	4	0	4	0	0	0	0	1	1	1	3	1	2	1	0	0.5	0.5	6	0	0	1	10:32	22	22	4	f	109.1	78.3	102.53	t	\N
0022000300	1630184	1610612740	2021-01-30	2020-21	0	0	0	1	1	0	0	2	4	3	5	2	2	1	1	0.7142857142857143	0.8	4	0	0	0	09:53	20	19	10	f	120.0	105.3	94.7	t	\N
0022000300	1628414	1610612740	2021-01-30	2020-21	1	1	0	1	0	1	1	0	2	2	3	1	2	1	1	0.625	0.8333333333333334	7	0	0	0	06:42	13	13	5	f	115.4	61.5	93.13	t	\N
0022000300	1629117	1610612740	2021-01-30	2020-21	3	1	2	1	0	0	0	0	0	0	3	0	1	2	0	0.0	0.0	7	0	0	0	06:42	13	13	0	f	115.4	61.5	93.13	t	\N
0022000300	1	1610612740	2021-01-30	2020-21	3	2	1	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000299	201950	1610612749	2021-01-30	2020-21	5	2	3	5	2	3	3	2	2	7	17	5	10	6	2	0.5833333333333334	0.5588235294117647	16	2	2	2	40:08	84	81	21	t	129.8	112.0	99.85	f	\N
0022000299	203507	1610612749	2021-01-30	2020-21	18	2	16	9	1	3	1	10	18	12	19	0	4	13	12	0.6296296296296297	0.631578947368421	0	0	1	1	39:24	83	82	34	t	124.1	125.6	100.49	f	\N
0022000299	203114	1610612749	2021-01-30	2020-21	4	1	3	4	1	4	2	4	4	5	9	4	6	3	1	0.8181818181818182	0.7777777777777778	7	0	0	3	32:27	70	71	18	t	121.1	108.2	106.5	f	\N
0022000299	1628978	1610612749	2021-01-30	2020-21	2	0	2	1	1	0	0	0	0	0	6	0	5	1	0	0.0	0.0	-12	1	0	2	27:21	54	52	0	t	107.3	124.6	98.31	f	\N
0022000299	201572	1610612749	2021-01-30	2020-21	4	0	4	1	1	2	1	0	0	4	9	1	4	4	3	0.5	0.5	-6	2	2	1	26:33	55	54	9	t	110.9	121.8	99.44	f	\N
0022000299	1626192	1610612749	2021-01-30	2020-21	6	0	6	0	0	0	0	0	0	5	8	5	8	0	0	0.9375	0.9375	-2	1	1	3	29:13	60	59	15	f	123.0	128.3	99.42	f	\N
0022000299	1626171	1610612749	2021-01-30	2020-21	6	3	3	2	1	1	1	0	0	5	5	1	1	4	4	1.1	1.1	1	0	0	4	19:50	41	40	11	f	122.0	116.7	100.44	f	\N
0022000299	1627854	1610612749	2021-01-30	2020-21	0	0	0	0	0	0	0	0	0	2	7	2	5	0	0	0.42857142857142855	0.42857142857142855	-31	0	0	0	11:06	21	24	6	f	71.4	184.0	99.46	f	\N
0022000299	1628470	1610612749	2021-01-30	2020-21	1	0	1	0	0	2	0	0	0	0	2	0	2	0	0	0.0	0.0	-12	0	0	0	06:34	13	13	0	f	69.2	150.0	98.68	f	\N
0022000299	201571	1610612749	2021-01-30	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-21	0	0	1	04:22	8	10	0	f	37.5	240.0	98.93	f	\N
0022000299	1629670	1610612749	2021-01-30	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	01:31	3	2	0	f	0.0	0.0	94.95	f	\N
0022000299	1630241	1610612749	2021-01-30	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	01:31	3	2	0	f	0.0	0.0	94.95	f	\N
0022000299	0	1610612749	2021-01-30	2020-21	2	2	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000299	202330	1610612766	2021-01-30	2020-21	3	0	3	2	1	1	0	2	2	10	22	5	11	4	1	0.5869565217391305	0.5681818181818182	-11	2	1	3	36:29	77	77	27	t	109.1	121.8	101.99	t	\N
0022000299	1628984	1610612766	2021-01-30	2020-21	0	0	0	3	1	2	2	3	5	3	10	3	9	0	0	0.4583333333333333	0.45	5	0	0	3	35:07	70	68	12	t	125.0	123.2	96.38	t	\N
0022000299	203469	1610612766	2021-01-30	2020-21	15	4	11	7	0	1	1	1	2	3	9	0	1	7	3	0.35	0.3333333333333333	-4	0	1	2	34:26	70	71	7	t	119.4	125.0	100.35	t	\N
0022000299	1629023	1610612766	2021-01-30	2020-21	7	1	6	3	0	0	0	0	0	2	3	2	2	0	0	1.0	1.0	15	1	3	5	25:36	55	53	6	t	122.8	100.0	105.0	t	\N
0022000299	1626179	1610612766	2021-01-30	2020-21	2	0	2	1	0	2	2	1	1	4	9	3	6	1	0	0.6111111111111112	0.6111111111111112	-18	0	0	1	17:55	36	38	12	t	107.9	155.3	101.8	t	\N
0022000299	1630163	1610612766	2021-01-30	2020-21	5	2	3	9	5	1	0	9	9	8	10	2	3	7	6	0.9642857142857143	0.9	37	4	0	3	31:01	65	64	27	f	143.3	89.4	102.95	t	\N
0022000299	1628970	1610612766	2021-01-30	2020-21	5	0	5	4	2	2	1	0	0	5	9	1	2	4	3	0.6111111111111112	0.6111111111111112	25	1	0	2	28:35	56	58	11	f	139.0	95.0	99.92	t	\N
0022000299	1628370	1610612766	2021-01-30	2020-21	2	0	2	2	0	0	0	1	1	7	16	3	7	6	3	0.5625	0.53125	3	0	0	0	22:44	49	48	18	f	118.0	116.7	103.46	t	\N
0022000299	1628997	1610612766	2021-01-30	2020-21	0	0	0	1	1	0	0	0	0	2	4	2	3	1	0	0.75	0.75	6	0	0	1	06:34	11	13	6	f	153.8	107.7	94.95	t	\N
0022000299	1628998	1610612766	2021-01-30	2020-21	2	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	2	0	0	0	01:12	1	4	0	f	66.7	0.0	138.84	t	\N
0022000299	1630208	1610612766	2021-01-30	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:21	0	1	0	f	0.0	0.0	135.21	t	\N
0022000299	1	1610612766	2021-01-30	2020-21	4	3	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000298	1629018	1610612757	2021-01-30	2020-21	1	0	1	2	1	0	0	2	2	6	14	4	10	0	0	0.6	0.5714285714285714	9	4	1	2	36:42	73	72	18	t	135.6	121.6	96.13	f	\N
0022000298	203081	1610612757	2021-01-30	2020-21	5	0	5	9	6	4	3	6	6	15	26	8	17	6	4	0.7857142857142857	0.7307692307692307	0	1	0	2	36:27	71	70	44	t	129.2	129.2	94.81	f	\N
0022000298	203496	1610612757	2021-01-30	2020-21	2	0	2	4	0	0	0	2	2	3	5	1	3	1	1	0.75	0.7	19	4	0	3	34:23	68	67	9	t	144.9	117.4	96.33	f	\N
0022000298	202683	1610612757	2021-01-30	2020-21	11	5	6	1	0	2	1	4	7	9	13	0	0	12	8	0.6875	0.6923076923076923	17	0	0	2	33:44	66	65	22	t	140.9	111.8	95.36	f	\N
0022000298	1629642	1610612757	2021-01-30	2020-21	3	2	1	0	0	0	0	2	2	1	1	1	1	0	0	1.25	1.5	6	1	0	0	13:37	26	26	5	t	159.3	142.3	93.41	f	\N
0022000298	203918	1610612757	2021-01-30	2020-21	3	0	3	1	0	0	0	0	0	3	6	0	1	1	1	0.5	0.5	-4	1	0	4	27:22	55	53	6	f	117.5	129.1	98.22	f	\N
0022000298	1629014	1610612757	2021-01-30	2020-21	4	1	3	1	0	2	1	0	0	3	10	2	6	1	0	0.4	0.4	-1	0	0	1	27:05	52	51	8	f	127.8	132.1	94.78	f	\N
0022000298	2546	1610612757	2021-01-30	2020-21	3	0	3	1	0	0	0	0	0	2	8	0	3	0	0	0.25	0.25	-23	0	0	0	17:16	34	35	4	f	80.0	145.7	97.3	f	\N
0022000298	1628385	1610612757	2021-01-30	2020-21	3	1	2	1	0	0	0	0	0	3	5	1	1	4	2	0.7	0.7	-18	0	0	3	13:24	25	26	7	f	88.5	157.7	93.13	f	\N
0022000298	0	1610612757	2021-01-30	2020-21	5	1	4	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000298	1628374	1610612741	2021-01-30	2020-21	6	0	6	0	0	2	1	1	1	12	18	6	11	6	6	0.8611111111111112	0.8333333333333334	8	0	1	1	35:45	70	70	31	t	136.1	128.6	95.33	t	\N
0022000298	203897	1610612741	2021-01-30	2020-21	7	0	7	4	1	6	4	2	2	9	12	6	8	2	2	1.0	1.0	6	2	0	1	34:56	70	68	26	t	133.8	125.4	97.52	t	\N
0022000298	1629632	1610612741	2021-01-30	2020-21	3	0	3	6	2	1	1	5	5	6	11	3	6	2	1	0.7692307692307693	0.6818181818181818	-17	0	0	2	33:56	66	67	20	t	120.6	147.8	95.52	t	\N
0022000298	1630172	1610612741	2021-01-30	2020-21	1	0	1	1	0	1	1	2	2	4	7	1	3	0	0	0.6875	0.6428571428571429	-12	1	0	0	24:18	47	47	11	t	118.8	146.8	93.83	t	\N
0022000298	1629655	1610612741	2021-01-30	2020-21	5	2	3	1	1	0	0	0	0	2	4	0	0	4	2	0.5	0.5	-15	0	0	1	10:06	19	20	4	t	95.0	170.0	95.05	t	\N
0022000298	201152	1610612741	2021-01-30	2020-21	11	7	4	11	3	1	1	2	2	3	10	0	0	4	2	0.4	0.3	13	1	0	4	28:57	55	54	8	f	138.6	120.0	92.85	t	\N
0022000298	202066	1610612741	2021-01-30	2020-21	1	0	1	0	0	1	1	0	0	3	9	3	7	0	0	0.5	0.5	18	0	1	1	24:51	50	52	9	f	132.7	94.4	102.37	t	\N
0022000298	203490	1610612741	2021-01-30	2020-21	3	2	1	3	1	1	1	2	2	2	9	1	6	2	1	0.35	0.2777777777777778	-12	0	0	2	24:09	43	46	7	f	117.8	138.3	91.43	t	\N
0022000298	203107	1610612741	2021-01-30	2020-21	3	0	3	3	1	2	1	1	1	2	3	1	2	1	1	1.0	0.8333333333333334	3	0	0	0	13:18	25	25	6	f	140.0	128.0	90.23	t	\N
0022000298	1627756	1610612741	2021-01-30	2020-21	0	0	0	1	0	0	0	0	0	0	2	0	2	0	0	0.0	0.0	4	0	0	1	04:56	10	10	0	f	130.0	81.8	102.16	t	\N
0022000298	1626245	1610612741	2021-01-30	2020-21	3	0	3	1	1	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-1	1	0	1	04:48	10	11	0	f	90.9	100.0	110.0	t	\N
0022000298	1	1610612741	2021-01-30	2020-21	3	1	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000319	1628969	1610612756	2021-02-01	2020-21	4	0	4	3	0	4	3	2	2	4	12	0	4	6	4	0.38461538461538464	0.3333333333333333	-8	1	1	1	38:18	79	79	10	t	104.9	117.5	101.51	f	\N
0022000319	101108	1610612756	2021-02-01	2020-21	9	2	7	9	2	5	3	2	2	14	20	4	7	1	0	0.8095238095238095	0.8	-3	2	0	3	38:03	75	75	34	t	114.3	118.2	97.14	f	\N
0022000319	1629661	1610612756	2021-02-01	2020-21	5	2	3	0	0	0	0	2	2	3	8	2	6	2	1	0.5555555555555556	0.5	10	1	0	3	35:08	71	70	10	t	117.8	104.1	99.73	f	\N
0022000319	1629028	1610612756	2021-02-01	2020-21	17	6	11	1	0	2	2	0	1	5	12	0	1	8	3	0.4166666666666667	0.4166666666666667	-13	0	1	5	32:56	66	69	10	t	105.8	122.9	101.28	f	\N
0022000319	1626164	1610612756	2021-02-01	2020-21	1	0	1	0	0	2	0	2	2	9	19	4	8	1	0	0.6	0.5789473684210527	-1	1	0	4	31:25	61	61	24	t	114.1	117.5	97.01	f	\N
0022000319	204038	1610612756	2021-02-01	2020-21	2	0	2	0	0	1	1	0	0	2	2	2	2	0	0	1.5	1.5	10	1	0	3	19:49	40	42	6	f	100.0	81.0	104.15	f	\N
0022000319	203109	1610612756	2021-02-01	2020-21	2	0	2	1	0	0	0	0	0	1	9	0	4	2	1	0.1111111111111111	0.1111111111111111	-5	0	0	1	15:28	31	34	2	f	76.5	91.2	105.54	f	\N
0022000319	1626163	1610612756	2021-02-01	2020-21	4	1	3	2	2	2	0	2	3	4	7	1	2	3	2	0.6875	0.6428571428571429	14	1	1	2	15:04	31	29	11	f	112.5	75.9	97.2	f	\N
0022000319	202734	1610612756	2021-02-01	2020-21	1	0	1	3	2	0	0	0	0	1	3	0	1	1	0	0.3333333333333333	0.3333333333333333	1	0	0	2	13:49	31	31	2	f	100.0	103.2	111.17	f	\N
0022000319	0	1610612756	2021-02-01	2020-21	6	4	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000319	1629029	1610612742	2021-02-01	2020-21	5	0	5	8	3	4	3	10	11	7	19	1	4	6	4	0.5	0.39473684210526316	8	2	2	2	38:18	79	79	25	t	117.5	104.9	101.51	t	\N
0022000319	1627827	1610612742	2021-02-01	2020-21	5	2	3	1	0	1	1	0	0	2	7	1	4	2	1	0.35714285714285715	0.35714285714285715	3	1	0	3	37:17	74	75	5	t	118.4	114.5	97.85	t	\N
0022000319	1626196	1610612742	2021-02-01	2020-21	5	2	3	4	1	2	0	4	4	9	16	2	6	8	6	0.6666666666666666	0.625	4	2	0	3	36:40	73	73	24	t	116.0	109.2	98.83	t	\N
0022000319	204001	1610612742	2021-02-01	2020-21	10	0	10	1	0	4	1	4	4	6	15	3	7	1	1	0.5588235294117647	0.5	3	1	3	1	34:13	68	67	19	t	108.6	101.4	99.59	t	\N
0022000319	1628467	1610612742	2021-02-01	2020-21	6	3	3	1	1	2	2	0	0	1	5	0	1	4	1	0.2	0.2	-10	0	1	3	17:58	39	40	2	t	92.7	111.6	112.17	t	\N
0022000319	203501	1610612742	2021-02-01	2020-21	4	0	4	0	0	1	0	3	3	6	12	3	7	3	2	0.6923076923076923	0.625	-3	2	1	3	31:17	62	60	18	f	112.7	115.6	97.45	t	\N
0022000319	1628973	1610612742	2021-02-01	2020-21	4	0	4	1	0	0	0	3	3	4	9	0	3	4	3	0.55	0.4444444444444444	-8	1	0	1	21:14	45	43	11	f	84.4	97.9	103.99	t	\N
0022000319	1626161	1610612742	2021-02-01	2020-21	1	0	1	0	0	0	0	0	0	2	2	0	0	2	2	1.0	1.0	-4	0	0	0	13:47	30	30	4	f	103.2	116.1	107.98	t	\N
0022000319	201949	1610612742	2021-02-01	2020-21	2	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	3	0	0	0	05:58	13	12	0	f	92.3	69.2	104.67	t	\N
0022000319	203504	1610612742	2021-02-01	2020-21	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0.0	0.0	-1	0	0	1	03:18	7	6	0	f	28.6	42.9	101.82	t	\N
0022000319	1	1610612742	2021-02-01	2020-21	5	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000316	1629642	1610612757	2021-02-01	2020-21	6	5	1	1	1	1	1	3	3	11	18	5	7	7	4	0.7894736842105263	0.75	-10	1	2	2	29:39	64	64	30	t	107.6	126.6	105.23	f	\N
0022000316	1629018	1610612757	2021-02-01	2020-21	2	0	2	0	0	0	0	0	0	3	13	2	8	1	0	0.3076923076923077	0.3076923076923077	-18	0	1	1	29:03	63	64	8	t	96.9	125.0	105.75	f	\N
0022000316	203496	1610612757	2021-02-01	2020-21	8	2	6	2	0	2	2	0	0	2	9	1	5	3	1	0.2777777777777778	0.2777777777777778	-19	2	0	2	27:52	62	62	5	t	107.8	141.9	108.5	f	\N
0022000316	203081	1610612757	2021-02-01	2020-21	3	1	2	7	1	0	0	3	3	6	13	2	7	6	4	0.5714285714285714	0.5384615384615384	-32	1	1	0	27:25	59	58	17	t	106.7	165.5	103.29	f	\N
0022000316	202683	1610612757	2021-02-01	2020-21	11	4	7	0	0	4	3	0	0	5	12	0	0	8	4	0.4166666666666667	0.4166666666666667	-33	0	0	1	25:00	52	52	10	t	105.7	171.2	100.8	f	\N
0022000316	1629014	1610612757	2021-02-01	2020-21	3	0	3	5	1	0	0	2	2	5	15	3	8	1	0	0.46875	0.43333333333333335	-15	0	2	2	30:09	65	65	15	f	91.2	118.5	105.87	f	\N
0022000316	2546	1610612757	2021-02-01	2020-21	2	0	2	1	1	3	3	4	4	1	7	0	1	0	0	0.3333333333333333	0.14285714285714285	-18	1	0	1	18:21	40	40	6	f	85.4	132.5	105.94	f	\N
0022000316	1628385	1610612757	2021-02-01	2020-21	6	2	4	2	0	0	0	1	1	2	6	0	1	3	2	0.4166666666666667	0.3333333333333333	4	0	0	1	16:55	36	36	5	f	94.6	83.8	105.01	f	\N
0022000316	203918	1610612757	2021-02-01	2020-21	1	0	1	1	0	1	1	0	0	2	5	1	2	0	0	0.5	0.5	-17	1	0	0	16:50	37	37	5	f	73.7	121.6	106.93	f	\N
0022000316	1629604	1610612757	2021-02-01	2020-21	3	0	3	0	0	0	0	0	0	2	5	1	3	1	0	0.5	0.5	9	1	0	0	09:23	21	21	5	f	109.1	71.4	109.98	f	\N
0022000316	1629833	1610612757	2021-02-01	2020-21	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0.0	0.0	9	1	0	0	09:23	21	21	0	f	109.1	71.4	109.98	f	\N
0022000316	0	1610612757	2021-02-01	2020-21	8	3	5	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000316	201950	1610612749	2021-02-01	2020-21	7	2	5	6	2	2	2	0	0	10	14	2	3	7	6	0.7857142857142857	0.7857142857142857	34	3	0	0	29:58	63	64	22	t	160.3	103.1	102.51	t	\N
0022000316	203507	1610612749	2021-02-01	2020-21	4	1	3	6	0	1	0	2	3	8	11	0	0	11	8	0.75	0.7272727272727273	25	0	1	3	25:46	59	58	18	t	137.3	93.3	110.81	t	\N
0022000316	203114	1610612749	2021-02-01	2020-21	5	0	5	9	3	1	1	3	4	5	6	4	4	1	0	1.0625	1.1666666666666667	26	2	0	2	25:16	54	54	17	t	163.0	110.7	104.5	t	\N
0022000316	1628978	1610612749	2021-02-01	2020-21	4	2	2	3	1	1	1	1	2	2	10	1	3	4	1	0.2727272727272727	0.25	5	2	0	0	18:06	41	41	6	t	114.6	102.4	108.73	t	\N
0022000316	201572	1610612749	2021-02-01	2020-21	2	0	2	0	0	1	0	0	0	3	5	1	3	1	1	0.7	0.7	17	0	1	2	17:15	38	36	7	t	150.0	111.1	102.96	t	\N
0022000316	1626171	1610612749	2021-02-01	2020-21	8	1	7	2	2	1	0	0	1	9	13	3	5	4	4	0.8076923076923077	0.8076923076923077	31	2	1	2	23:44	49	50	21	f	153.1	86.3	101.12	t	\N
0022000316	1627854	1610612749	2021-02-01	2020-21	1	0	1	3	0	1	1	0	0	5	9	3	5	0	0	0.7222222222222222	0.7222222222222222	3	0	0	0	18:04	38	39	13	f	112.8	102.5	104.93	t	\N
0022000316	201571	1610612749	2021-02-01	2020-21	5	0	5	6	3	1	1	1	2	4	7	4	6	0	0	0.8125	0.8571428571428571	22	1	0	0	17:34	38	37	13	f	142.1	82.1	105.2	t	\N
0022000316	1626192	1610612749	2021-02-01	2020-21	4	1	3	1	1	0	0	0	0	3	7	1	5	2	2	0.5	0.5	10	0	0	1	15:50	34	35	7	f	105.9	70.3	107.62	t	\N
0022000316	1628470	1610612749	2021-02-01	2020-21	5	1	4	1	1	0	0	0	0	0	2	0	2	0	0	0.0	0.0	-2	0	2	1	13:32	27	28	0	f	110.7	117.9	99.37	t	\N
0022000316	1629670	1610612749	2021-02-01	2020-21	0	0	0	0	0	2	1	0	0	1	5	1	2	0	0	0.3	0.3	-11	0	1	0	09:48	22	22	3	f	68.2	113.0	110.2	t	\N
0022000316	1630241	1610612749	2021-02-01	2020-21	1	0	1	0	0	0	0	0	0	0	2	0	2	0	0	0.0	0.0	-11	0	0	0	09:48	22	22	0	f	68.2	113.0	110.2	t	\N
0022000316	1628391	1610612749	2021-02-01	2020-21	1	0	1	0	0	0	0	0	0	2	4	1	2	0	0	0.625	0.625	-9	0	0	1	09:23	21	21	5	f	71.4	109.1	109.98	t	\N
0022000316	203648	1610612749	2021-02-01	2020-21	6	1	5	1	0	1	1	0	0	1	1	0	0	1	1	1.0	1.0	0	0	1	1	05:56	14	13	2	f	78.6	78.6	113.26	t	\N
0022000316	1	1610612749	2021-02-01	2020-21	4	1	3	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000314	202330	1610612766	2021-02-01	2020-21	6	1	5	3	1	2	2	1	2	8	14	2	4	3	3	0.6333333333333333	0.6428571428571429	18	2	0	3	41:59	82	83	19	t	128.0	104.8	94.32	f	\N
0022000314	1628984	1610612766	2021-02-01	2020-21	4	1	3	5	0	1	0	4	5	7	13	6	11	0	0	0.8	0.7692307692307693	15	0	0	1	41:08	79	81	24	t	133.8	112.2	94.52	f	\N
0022000314	203469	1610612766	2021-02-01	2020-21	12	4	8	2	0	1	1	3	4	8	15	0	1	11	7	0.5588235294117647	0.5333333333333333	-9	1	2	3	39:24	79	82	19	t	108.5	119.5	99.92	f	\N
0022000314	1630163	1610612766	2021-02-01	2020-21	5	2	3	7	4	3	2	6	6	3	11	2	4	6	1	0.5	0.36363636363636365	-6	0	0	5	31:26	67	64	14	t	109.0	117.9	102.33	f	\N
0022000314	1629023	1610612766	2021-02-01	2020-21	7	3	4	3	1	1	1	0	0	3	12	0	2	6	2	0.25	0.25	-6	2	1	2	24:13	52	51	6	t	109.4	120.8	105.05	f	\N
0022000314	1628370	1610612766	2021-02-01	2020-21	5	1	4	2	2	2	2	5	5	11	18	9	13	2	1	0.9	0.8611111111111112	20	0	0	3	39:51	82	81	36	f	125.0	103.7	99.98	f	\N
0022000314	1628970	1610612766	2021-02-01	2020-21	3	1	2	5	1	1	0	2	2	2	8	1	3	3	1	0.3888888888888889	0.3125	14	1	1	3	27:05	51	53	7	f	120.4	96.2	94.78	f	\N
0022000314	1628997	1610612766	2021-02-01	2020-21	2	0	2	4	1	0	0	1	2	1	4	1	3	0	0	0.4	0.375	-6	0	0	2	19:54	38	40	4	f	104.9	119.5	98.88	f	\N
0022000314	0	1610612766	2021-02-01	2020-21	5	0	5	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000314	1628389	1610612748	2021-02-01	2020-21	9	3	6	2	0	1	0	3	4	10	15	0	0	8	7	0.6764705882352942	0.6666666666666666	-2	0	3	6	38:56	78	80	23	t	118.8	121.3	98.64	t	\N
0022000314	202710	1610612748	2021-02-01	2020-21	9	3	6	5	2	3	1	7	10	9	17	0	3	8	5	0.5681818181818182	0.5294117647058824	-7	4	0	2	37:14	74	74	25	t	112.2	121.6	95.4	t	\N
0022000314	1629639	1610612748	2021-02-01	2020-21	3	0	3	8	2	3	2	2	2	3	10	3	7	0	0	0.5	0.45	-9	1	0	2	33:29	65	66	11	t	113.8	123.9	94.63	t	\N
0022000314	1629130	1610612748	2021-02-01	2020-21	2	0	2	0	0	2	1	2	3	5	8	4	7	1	1	0.8888888888888888	0.875	2	0	0	4	27:41	56	52	16	t	114.3	112.7	96.24	t	\N
0022000314	203482	1610612748	2021-02-01	2020-21	7	3	4	0	0	1	1	0	0	4	7	3	5	1	1	0.7857142857142857	0.7857142857142857	-4	0	1	1	22:10	46	45	11	t	108.7	117.4	99.66	t	\N
0022000314	2738	1610612748	2021-02-01	2020-21	4	0	4	5	2	1	0	0	2	3	7	3	7	0	0	0.5625	0.6428571428571429	4	1	0	2	26:48	53	53	9	f	127.8	120.4	96.73	t	\N
0022000314	201609	1610612748	2021-02-01	2020-21	7	0	7	8	2	3	1	0	0	1	9	1	4	1	0	0.16666666666666666	0.16666666666666666	-11	1	1	1	24:42	51	51	3	f	98.1	117.0	101.98	t	\N
0022000314	202340	1610612748	2021-02-01	2020-21	2	0	2	0	0	0	0	0	0	0	4	0	4	0	0	0.0	0.0	-14	0	0	3	20:25	42	42	0	f	93.0	125.6	101.03	t	\N
0022000314	1629622	1610612748	2021-02-01	2020-21	2	0	2	0	0	1	0	0	0	7	11	5	9	2	2	0.8636363636363636	0.8636363636363636	7	1	0	4	19:53	43	43	19	f	127.9	104.3	107.42	t	\N
0022000314	1630173	1610612748	2021-02-01	2020-21	3	1	2	0	0	0	0	2	4	1	3	0	0	2	1	0.4	0.3333333333333333	-6	0	2	1	13:42	27	24	4	f	88.9	111.1	94.6	t	\N
0022000314	1	1610612748	2021-02-01	2020-21	3	2	1	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000312	1627736	1610612750	2021-02-01	2020-21	7	4	3	3	1	4	2	0	0	5	14	0	6	5	3	0.35714285714285715	0.35714285714285715	-11	1	0	2	33:11	66	66	10	t	95.5	111.9	96.92	f	\N
0022000312	1630162	1610612750	2021-02-01	2020-21	3	0	3	2	0	0	0	1	1	5	12	2	5	7	3	0.5416666666666666	0.5	-3	1	0	2	31:18	62	62	13	t	101.6	106.3	96.61	f	\N
0022000312	1626156	1610612750	2021-02-01	2020-21	2	0	2	4	2	0	0	1	2	7	19	3	9	3	2	0.45	0.4473684210526316	-4	1	0	1	28:56	57	56	18	t	100.0	106.9	96.22	f	\N
0022000312	1629006	1610612750	2021-02-01	2020-21	2	2	0	2	1	0	0	0	0	1	6	1	4	1	0	0.25	0.25	-12	1	0	0	22:14	43	43	3	t	84.1	111.4	94.99	f	\N
0022000312	202334	1610612750	2021-02-01	2020-21	5	2	3	0	0	0	0	2	2	3	5	0	0	3	2	0.6666666666666666	0.6	-7	0	1	2	19:36	37	36	8	t	84.2	105.4	91.84	f	\N
0022000312	1630183	1610612750	2021-02-01	2020-21	4	2	2	0	0	2	1	0	0	5	10	1	4	5	3	0.55	0.55	2	0	0	3	21:38	43	43	11	f	111.6	104.5	96.53	f	\N
0022000312	201937	1610612750	2021-02-01	2020-21	5	0	5	4	2	1	0	0	0	1	4	0	1	2	1	0.25	0.25	0	0	0	2	19:28	39	41	2	f	107.7	97.7	101.09	f	\N
0022000312	1629020	1610612750	2021-02-01	2020-21	9	0	9	4	2	1	1	2	4	1	4	0	0	3	1	0.3333333333333333	0.25	8	0	0	2	19:12	39	40	4	f	115.4	88.1	101.32	f	\N
0022000312	1629669	1610612750	2021-02-01	2020-21	4	3	1	1	0	0	0	1	2	5	13	1	3	6	2	0.42857142857142855	0.4230769230769231	2	0	0	2	17:06	34	34	12	f	105.9	97.1	96.84	f	\N
0022000312	1627774	1610612750	2021-02-01	2020-21	1	0	1	0	0	0	0	0	0	2	4	1	3	1	1	0.625	0.625	10	0	0	0	14:07	28	27	5	f	114.3	75.9	96.91	f	\N
0022000312	1629675	1610612750	2021-02-01	2020-21	3	2	1	0	0	0	0	0	0	5	11	2	3	8	3	0.5454545454545454	0.5454545454545454	5	0	0	5	13:14	27	27	12	f	118.5	96.4	99.65	f	\N
0022000312	0	1610612750	2021-02-01	2020-21	7	5	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000312	1629012	1610612739	2021-02-01	2020-21	3	0	3	3	0	2	1	10	11	7	17	2	4	3	2	0.5681818181818182	0.47058823529411764	12	0	0	0	41:28	82	80	26	t	108.5	93.9	94.98	t	\N
0022000312	1629636	1610612739	2021-02-01	2020-21	3	1	2	11	8	2	0	0	0	9	18	1	4	6	4	0.5277777777777778	0.5277777777777778	7	0	0	2	38:24	75	75	19	t	109.2	100.0	95.0	t	\N
0022000312	1628386	1610612739	2021-02-01	2020-21	18	4	14	1	0	1	0	9	14	7	9	0	0	5	4	0.71875	0.7777777777777778	8	0	5	1	34:46	68	69	23	t	105.7	94.3	96.64	t	\N
0022000312	1630171	1610612739	2021-02-01	2020-21	1	0	1	1	1	3	2	0	0	2	4	0	0	2	1	0.5	0.5	14	1	1	1	32:32	64	63	4	t	112.3	92.2	95.16	t	\N
0022000312	1627752	1610612739	2021-02-01	2020-21	9	1	8	4	2	3	1	3	4	2	10	1	7	2	1	0.3333333333333333	0.25	4	1	2	3	31:36	62	62	8	t	106.3	101.6	96.46	t	\N
0022000312	1626224	1610612739	2021-02-01	2020-21	7	6	1	2	1	0	0	0	0	4	12	2	4	5	1	0.4166666666666667	0.4166666666666667	-3	2	0	1	17:44	37	36	10	f	92.3	108.3	101.5	t	\N
0022000312	1630205	1610612739	2021-02-01	2020-21	4	1	3	1	0	0	0	1	2	2	5	0	1	3	2	0.4166666666666667	0.4	-18	0	1	1	14:11	26	31	5	f	66.7	122.6	103.03	t	\N
0022000312	201580	1610612739	2021-02-01	2020-21	5	2	3	0	0	2	0	0	0	0	3	0	0	1	0	0.0	0.0	-6	0	3	3	13:14	27	26	0	f	89.7	123.1	99.75	t	\N
0022000312	1628422	1610612739	2021-02-01	2020-21	1	0	1	2	0	0	0	0	0	2	5	1	1	1	1	0.5	0.5	-2	0	0	0	11:06	23	22	5	f	88.0	109.1	101.62	t	\N
0022000312	1629685	1610612739	2021-02-01	2020-21	1	0	1	1	1	0	0	0	0	0	1	0	1	0	0	0.0	0.0	-6	0	0	0	04:59	11	11	0	f	75.0	136.4	110.77	t	\N
0022000312	1	1610612739	2021-02-01	2020-21	7	2	5	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000315	203944	1610612752	2021-02-01	2020-21	11	1	10	7	4	5	3	8	9	7	16	1	4	5	1	0.575	0.46875	-9	2	0	3	39:14	81	81	23	t	103.7	114.8	99.1	f	\N
0022000315	1629628	1610612752	2021-02-01	2020-21	7	1	6	3	2	2	0	0	0	7	17	0	3	8	5	0.4117647058823529	0.4117647058823529	-11	0	0	5	30:19	62	61	14	t	93.7	112.9	98.96	f	\N
0022000315	203493	1610612752	2021-02-01	2020-21	2	0	2	1	1	0	0	2	2	1	7	0	4	1	0	0.25	0.14285714285714285	-1	1	0	1	21:49	45	44	4	t	104.4	106.7	99.01	f	\N
0022000315	1629011	1610612752	2021-02-01	2020-21	8	6	2	0	0	0	0	1	2	4	6	0	0	6	4	0.6428571428571429	0.6666666666666666	2	0	1	3	20:22	42	41	9	t	111.9	107.1	98.99	f	\N
0022000315	203901	1610612752	2021-02-01	2020-21	2	0	2	0	0	2	0	1	1	2	5	0	1	2	1	0.5	0.4	-5	1	0	0	17:41	36	36	5	t	91.9	105.4	100.43	f	\N
0022000315	1630193	1610612752	2021-02-01	2020-21	6	1	5	7	2	1	0	4	4	5	13	2	7	0	0	0.5714285714285714	0.46153846153846156	-3	0	0	2	30:19	62	62	16	f	109.7	114.5	98.16	f	\N
0022000315	202692	1610612752	2021-02-01	2020-21	1	1	0	1	1	0	0	3	4	6	12	3	6	2	2	0.6428571428571429	0.625	-3	2	0	2	28:30	57	59	18	f	112.3	113.6	97.68	f	\N
0022000315	203457	1610612752	2021-02-01	2020-21	7	1	6	0	0	0	0	0	0	4	6	0	1	3	3	0.6666666666666666	0.6666666666666666	-10	0	5	1	27:38	56	57	8	f	98.2	114.0	98.14	f	\N
0022000315	203085	1610612752	2021-02-01	2020-21	1	0	1	1	1	0	0	1	2	0	4	0	3	0	0	0.1	0.0	-1	0	0	0	15:22	32	32	1	f	103.0	109.4	101.52	f	\N
0022000315	1630167	1610612752	2021-02-01	2020-21	0	0	0	1	0	1	0	2	2	1	1	0	0	1	1	1.0	1.0	1	0	0	2	08:46	17	17	4	f	100.0	94.4	98.56	f	\N
0022000315	0	1610612752	2021-02-01	2020-21	4	2	2	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000315	1629632	1610612741	2021-02-01	2020-21	4	0	4	6	5	4	2	2	2	5	12	1	4	5	3	0.5	0.4583333333333333	13	0	0	0	37:28	77	77	13	t	115.6	98.7	98.65	t	\N
0022000315	1628374	1610612741	2021-02-01	2020-21	5	0	5	2	1	4	3	2	2	11	18	6	12	6	5	0.7894736842105263	0.7777777777777778	16	1	0	1	33:36	69	69	30	t	118.6	97.1	99.29	t	\N
0022000315	203897	1610612741	2021-02-01	2020-21	5	0	5	3	1	1	0	2	2	8	16	3	6	4	3	0.6176470588235294	0.59375	-1	1	0	4	32:11	64	67	21	t	107.5	109.0	99.92	t	\N
0022000315	1630172	1610612741	2021-02-01	2020-21	1	0	1	2	1	0	0	4	6	3	8	0	3	2	2	0.45454545454545453	0.375	-1	0	0	1	28:01	55	56	10	t	100.0	100.0	96.8	t	\N
0022000315	1629655	1610612741	2021-02-01	2020-21	9	5	4	0	0	0	0	0	1	6	8	0	0	8	6	0.75	0.75	1	0	0	4	21:49	42	42	12	t	102.3	104.8	94.61	t	\N
0022000315	201152	1610612741	2021-02-01	2020-21	8	0	8	8	4	1	0	0	1	6	10	1	1	4	3	0.65	0.65	6	1	1	5	30:39	65	65	13	f	115.4	106.2	101.84	t	\N
0022000315	202066	1610612741	2021-02-01	2020-21	1	1	0	4	2	0	0	2	2	2	8	0	5	2	1	0.3333333333333333	0.25	14	0	0	2	24:38	51	50	6	f	122.6	102.0	100.35	t	\N
0022000315	203490	1610612741	2021-02-01	2020-21	5	1	4	1	0	0	0	3	4	0	5	0	1	2	0	0.21428571428571427	0.0	2	0	0	1	18:09	39	37	3	f	107.7	105.3	101.82	t	\N
0022000315	203107	1610612741	2021-02-01	2020-21	2	0	2	4	2	2	1	0	0	0	1	0	1	0	0	0.0	0.0	-6	0	0	1	10:06	21	20	0	f	86.4	119.0	102.18	t	\N
0022000315	1627756	1610612741	2021-02-01	2020-21	0	0	0	0	0	0	0	0	0	1	2	0	1	0	0	0.5	0.5	-2	0	0	0	03:09	6	6	2	f	66.7	100.0	91.43	t	\N
0022000315	1628990	1610612741	2021-02-01	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-2	0	0	0	00:14	1	1	0	f	0.0	200.0	194.6	t	\N
0022000315	1	1610612741	2021-02-01	2020-21	8	4	4	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000313	2544	1610612747	2021-02-01	2020-21	7	0	7	9	6	2	1	9	11	5	12	2	6	2	2	0.6176470588235294	0.5	10	2	1	0	37:58	75	73	21	t	100.0	87.2	98.61	f	\N
0022000313	203076	1610612747	2021-02-01	2020-21	2	0	2	2	1	5	4	5	6	10	14	0	2	4	4	0.75	0.7142857142857143	2	1	3	4	35:54	70	71	25	t	116.7	113.9	96.27	f	\N
0022000313	203471	1610612747	2021-02-01	2020-21	3	1	2	3	1	0	0	3	3	6	10	1	1	3	1	0.7272727272727273	0.65	6	1	0	5	29:33	59	58	16	t	121.7	111.7	97.46	f	\N
0022000313	203484	1610612747	2021-02-01	2020-21	0	0	0	2	1	0	0	0	0	4	13	3	6	4	1	0.4230769230769231	0.4230769230769231	11	0	0	2	27:20	56	55	11	t	119.3	100.0	100.1	f	\N
0022000313	201188	1610612747	2021-02-01	2020-21	6	0	6	3	2	1	1	0	0	1	5	0	3	1	1	0.2	0.2	5	1	1	1	17:23	35	36	2	t	94.4	76.3	102.17	f	\N
0022000313	1626149	1610612747	2021-02-01	2020-21	3	2	1	0	0	0	0	3	4	8	9	0	0	7	6	0.8636363636363636	0.8888888888888888	-3	2	1	0	28:33	52	52	19	f	117.0	120.4	89.95	f	\N
0022000313	1627936	1610612747	2021-02-01	2020-21	2	1	1	2	1	3	2	0	0	4	7	0	2	3	3	0.5714285714285714	0.5714285714285714	13	2	0	5	24:56	48	48	8	f	124.0	96.1	97.22	f	\N
0022000313	1628398	1610612747	2021-02-01	2020-21	3	0	3	2	2	0	0	0	0	2	5	1	3	1	1	0.5	0.5	-1	0	0	0	19:28	35	37	5	f	100.0	100.0	92.47	f	\N
0022000313	1629659	1610612747	2021-02-01	2020-21	5	0	5	1	0	0	0	0	0	0	2	0	0	2	0	0.0	0.0	-3	1	1	3	18:55	35	35	0	f	100.0	111.1	92.62	f	\N
0022000313	0	1610612747	2021-02-01	2020-21	4	2	2	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000313	1628989	1610612737	2021-02-01	2020-21	4	0	4	3	2	0	0	1	2	3	8	3	5	2	0	0.5555555555555556	0.5625	-5	0	0	1	39:21	77	75	10	t	103.8	111.7	94.54	t	\N
0022000313	1629027	1610612737	2021-02-01	2020-21	4	0	4	16	13	7	5	10	11	7	15	1	4	3	3	0.625	0.5	-2	2	0	3	38:31	76	75	25	t	113.0	115.6	95.96	t	\N
0022000313	1628381	1610612737	2021-02-01	2020-21	7	1	6	0	0	1	1	0	0	10	17	2	5	8	7	0.6470588235294118	0.6470588235294118	2	0	0	4	35:02	68	69	22	t	105.6	104.3	96.58	t	\N
0022000313	203991	1610612737	2021-02-01	2020-21	13	4	9	1	0	2	1	0	0	8	11	0	0	9	7	0.7272727272727273	0.7272727272727273	1	1	3	3	30:10	59	59	16	t	116.4	116.7	96.27	t	\N
0022000313	1629629	1610612737	2021-02-01	2020-21	1	0	1	3	0	1	1	0	0	3	8	0	4	3	3	0.375	0.375	-6	0	0	3	29:18	59	60	6	t	101.6	113.3	99.11	t	\N
0022000313	203524	1610612737	2021-02-01	2020-21	0	0	0	0	0	2	0	0	0	2	6	2	5	0	0	0.5	0.5	-3	1	0	0	22:05	40	40	6	f	102.4	109.5	91.29	t	\N
0022000313	201568	1610612737	2021-02-01	2020-21	1	0	1	2	0	3	2	0	0	2	10	2	5	3	0	0.3	0.3	-8	1	0	1	19:06	37	36	6	f	92.3	115.8	96.75	t	\N
0022000313	200765	1610612737	2021-02-01	2020-21	2	0	2	2	0	0	0	0	0	2	2	1	1	1	1	1.25	1.25	-8	3	0	3	14:45	27	29	5	f	85.7	106.7	94.37	t	\N
0022000313	1628981	1610612737	2021-02-01	2020-21	4	1	3	0	0	1	0	3	4	0	1	0	0	1	0	0.5	0.0	-11	0	0	3	11:42	22	22	3	f	66.7	117.4	96.44	t	\N
0022000313	1	1610612737	2021-02-01	2020-21	6	5	1	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000318	200782	1610612745	2021-02-01	2020-21	5	1	4	2	1	1	0	0	0	2	4	2	4	0	0	0.75	0.75	29	2	0	2	26:57	57	57	6	t	138.6	86.2	102.44	f	\N
0022000318	1626174	1610612745	2021-02-01	2020-21	11	3	8	1	0	0	0	0	1	8	13	2	3	5	5	0.6923076923076923	0.6923076923076923	16	1	2	1	26:02	55	56	18	t	117.9	87.7	104.17	f	\N
0022000318	203506	1610612745	2021-02-01	2020-21	3	0	3	7	1	2	2	0	0	6	16	3	5	3	2	0.46875	0.46875	21	0	1	3	24:45	53	52	15	t	126.4	85.2	103.76	f	\N
0022000318	1630256	1610612745	2021-02-01	2020-21	7	1	6	4	1	2	2	0	0	5	6	1	2	4	4	0.9166666666666666	0.9166666666666666	25	0	1	1	22:59	51	51	11	t	123.1	73.6	109.64	f	\N
0022000318	202322	1610612745	2021-02-01	2020-21	6	1	5	5	3	3	2	0	0	7	12	4	5	5	3	0.75	0.75	9	2	1	1	21:42	46	46	18	t	97.9	78.7	103.96	f	\N
0022000318	1627863	1610612745	2021-02-01	2020-21	4	0	4	1	0	0	0	1	1	4	8	4	6	2	0	0.8125	0.75	12	1	1	0	25:51	57	58	13	f	140.7	120.3	109.56	f	\N
0022000318	201569	1610612745	2021-02-01	2020-21	0	0	0	2	0	1	1	4	4	8	12	5	9	2	2	0.9615384615384616	0.875	18	0	0	0	21:48	46	46	25	f	152.1	114.6	105.69	f	\N
0022000318	202326	1610612745	2021-02-01	2020-21	8	4	4	3	0	0	0	2	2	5	14	5	9	4	0	0.5666666666666667	0.5357142857142857	19	1	0	4	20:53	47	47	17	f	142.9	106.3	111.48	f	\N
0022000318	1628425	1610612745	2021-02-01	2020-21	0	0	0	1	0	1	1	0	0	0	4	0	2	1	0	0.0	0.0	7	1	0	3	18:12	38	40	0	f	136.6	119.5	108.13	f	\N
0022000318	203463	1610612745	2021-02-01	2020-21	3	0	3	1	0	1	0	3	3	2	8	1	5	1	1	0.4444444444444444	0.3125	-7	0	0	4	17:07	36	38	8	f	107.9	126.3	106.52	f	\N
0022000318	1630222	1610612745	2021-02-01	2020-21	3	0	3	3	0	0	0	0	0	2	3	1	1	0	0	0.8333333333333334	0.8333333333333334	-1	0	0	1	08:41	21	21	5	f	104.8	109.5	116.08	f	\N
0022000318	1629066	1610612745	2021-02-01	2020-21	0	0	0	0	0	0	0	0	0	0	2	0	1	1	0	0.0	0.0	2	0	0	0	05:03	13	13	0	f	100.0	84.6	123.56	f	\N
0022000318	0	1610612745	2021-02-01	2020-21	3	3	0	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000318	1629647	1610612760	2021-02-01	2020-21	6	1	5	1	0	2	1	2	4	6	13	1	4	7	4	0.5	0.5	-19	0	0	1	30:08	64	64	15	t	94.0	128.1	104.34	t	\N
0022000318	1628983	1610612760	2021-02-01	2020-21	2	0	2	5	0	5	5	1	2	8	15	2	5	4	3	0.59375	0.6	-31	1	2	1	28:58	63	62	19	t	92.1	139.1	105.22	t	\N
0022000318	1630177	1610612760	2021-02-01	2020-21	1	0	1	1	0	2	0	4	4	3	7	1	4	3	2	0.6111111111111112	0.5	-11	2	0	2	28:23	59	60	11	t	91.8	111.7	102.31	t	\N
0022000318	201143	1610612760	2021-02-01	2020-21	7	2	5	3	2	1	0	0	0	5	13	2	3	4	1	0.46153846153846156	0.46153846153846156	-18	2	1	1	25:18	54	54	12	t	87.3	120.0	104.35	t	\N
0022000318	1629652	1610612760	2021-02-01	2020-21	3	0	3	1	0	1	0	2	2	2	8	1	4	3	1	0.3888888888888889	0.3125	-19	0	0	0	23:51	51	51	7	t	84.6	121.2	104.65	t	\N
0022000318	1629026	1610612760	2021-02-01	2020-21	4	1	3	2	1	0	0	0	0	3	7	1	3	3	1	0.5	0.5	-12	0	0	1	20:17	46	45	7	f	106.4	131.9	111.22	t	\N
0022000318	1630197	1610612760	2021-02-01	2020-21	3	0	3	1	0	1	0	0	0	1	4	0	2	0	0	0.25	0.25	-9	0	1	1	20:04	46	44	2	f	106.5	123.4	111.23	t	\N
0022000318	1628977	1610612760	2021-02-01	2020-21	2	0	2	4	1	0	0	2	3	6	7	1	2	4	4	0.9375	0.9285714285714286	-14	1	0	3	15:22	34	33	15	f	129.4	170.6	106.31	t	\N
0022000318	203488	1610612760	2021-02-01	2020-21	5	3	2	0	0	1	1	0	0	2	5	2	2	2	0	0.6	0.6	-1	0	0	0	12:49	26	25	6	f	114.8	118.5	101.0	t	\N
0022000318	1629676	1610612760	2021-02-01	2020-21	3	0	3	0	0	1	1	2	2	0	3	0	0	2	0	0.25	0.0	-12	2	2	0	11:42	26	26	2	f	114.8	153.6	112.82	t	\N
0022000318	1628382	1610612760	2021-02-01	2020-21	2	0	2	1	1	0	0	2	2	3	6	2	5	0	0	0.7142857142857143	0.6666666666666666	0	0	0	1	10:31	25	25	10	f	100.0	100.0	114.1	t	\N
0022000318	1630221	1610612760	2021-02-01	2020-21	3	0	3	2	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	-2	0	0	1	07:34	18	18	0	f	111.1	122.2	114.19	t	\N
0022000318	1629650	1610612760	2021-02-01	2020-21	4	1	3	0	0	1	0	0	0	0	1	0	0	1	0	0.0	0.0	-2	0	2	1	05:03	13	13	0	f	84.6	100.0	123.56	t	\N
0022000318	1	1610612760	2021-02-01	2020-21	4	2	2	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000320	203937	1610612763	2021-02-01	2020-21	8	0	8	3	2	0	0	1	3	7	11	2	4	3	3	0.7083333333333334	0.7272727272727273	25	0	1	1	25:40	54	55	17	t	126.8	82.1	104.67	f	\N
0022000320	1630214	1610612763	2021-02-01	2020-21	9	1	8	1	0	1	0	2	3	4	6	0	0	4	3	0.7142857142857143	0.6666666666666666	18	2	2	2	23:50	50	51	10	t	115.1	81.1	106.67	f	\N
0022000320	1628415	1610612763	2021-02-01	2020-21	0	0	0	1	0	0	0	5	6	4	12	0	2	3	0	0.43333333333333335	0.3333333333333333	20	1	1	0	22:56	48	50	13	t	140.0	98.0	105.69	f	\N
0022000320	1629634	1610612763	2021-02-01	2020-21	6	1	5	2	1	0	0	4	4	7	10	0	1	5	5	0.8181818181818182	0.7	8	1	2	1	22:05	45	45	18	t	134.8	114.9	101.07	f	\N
0022000320	1629630	1610612763	2021-02-01	2020-21	3	1	2	8	4	4	4	2	2	5	9	1	1	5	3	0.65	0.6111111111111112	7	2	0	1	21:33	46	48	13	t	110.0	98.0	110.18	f	\N
0022000320	1626145	1610612763	2021-02-01	2020-21	3	1	2	14	4	1	1	0	0	5	9	1	3	3	2	0.6111111111111112	0.6111111111111112	23	2	0	1	27:46	57	57	11	f	143.1	101.7	101.18	f	\N
0022000320	1629001	1610612763	2021-02-01	2020-21	7	0	7	5	3	2	2	0	0	6	14	5	9	3	1	0.6071428571428571	0.6071428571428571	21	2	1	3	26:33	54	56	17	f	136.8	101.8	102.15	f	\N
0022000320	1630217	1610612763	2021-02-01	2020-21	3	0	3	1	1	0	0	0	0	4	9	2	5	2	2	0.5555555555555556	0.5555555555555556	9	0	1	2	25:18	51	52	10	f	118.9	101.9	100.55	f	\N
0022000320	203476	1610612763	2021-02-01	2020-21	9	4	5	1	0	1	1	0	0	8	10	3	3	3	3	0.95	0.95	13	0	1	5	24:10	49	50	19	f	144.0	113.5	101.36	f	\N
0022000320	1629723	1610612763	2021-02-01	2020-21	5	2	3	1	0	0	0	0	0	2	3	1	2	1	1	0.8333333333333334	0.8333333333333334	11	1	2	0	20:09	41	41	5	f	122.0	88.6	101.32	f	\N
0022000320	0	1610612763	2021-02-01	2020-21	1	1	0	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000320	1629640	1610612759	2021-02-01	2020-21	10	3	7	3	1	1	1	8	8	7	16	3	8	6	3	0.6578947368421053	0.53125	-17	1	1	1	30:34	62	62	25	t	98.5	126.6	101.24	t	\N
0022000320	201942	1610612759	2021-02-01	2020-21	5	2	3	6	1	2	2	2	4	6	12	0	2	2	1	0.5	0.5	-17	1	0	2	29:53	65	63	14	t	106.2	128.4	106.01	t	\N
0022000320	1627749	1610612759	2021-02-01	2020-21	5	1	4	4	0	1	1	0	0	2	9	2	6	0	0	0.3333333333333333	0.3333333333333333	-20	0	0	2	24:13	51	53	6	t	86.8	122.2	106.04	t	\N
0022000320	200746	1610612759	2021-02-01	2020-21	1	0	1	0	0	1	0	0	0	5	8	2	4	1	1	0.75	0.75	-17	1	1	0	18:15	40	39	12	t	97.5	136.6	106.52	t	\N
0022000320	1629022	1610612759	2021-02-01	2020-21	4	0	4	0	0	0	0	0	0	2	6	0	1	2	0	0.3333333333333333	0.3333333333333333	-20	1	0	2	15:56	35	37	4	t	86.1	137.8	109.96	t	\N
0022000320	201988	1610612759	2021-02-01	2020-21	2	0	2	1	0	1	0	0	0	4	9	3	5	4	1	0.6111111111111112	0.6111111111111112	1	1	0	0	23:13	47	44	11	f	119.1	114.6	98.21	t	\N
0022000320	1628401	1610612759	2021-02-01	2020-21	1	0	1	5	2	1	1	0	0	2	10	1	5	4	1	0.25	0.25	-5	0	2	3	21:23	44	41	5	f	104.4	115.6	101.01	t	\N
0022000320	1627751	1610612759	2021-02-01	2020-21	6	2	4	2	1	0	0	2	5	2	2	0	0	2	2	0.75	1.0	-10	0	2	2	20:34	40	41	6	f	97.6	121.4	98.09	t	\N
0022000320	200752	1610612759	2021-02-01	2020-21	3	1	2	1	1	2	2	1	2	2	7	1	3	1	0	0.375	0.35714285714285715	0	2	0	0	19:23	40	39	6	f	104.9	102.4	102.77	t	\N
0022000320	1630170	1610612759	2021-02-01	2020-21	2	0	2	1	1	1	1	0	0	1	4	1	2	1	0	0.375	0.375	-14	0	0	1	11:44	25	24	3	f	88.0	144.0	102.27	t	\N
0022000320	1626168	1610612759	2021-02-01	2020-21	0	0	0	1	0	0	0	0	0	2	2	0	0	2	2	1.0	1.0	-9	0	0	0	06:13	14	13	4	f	92.9	169.2	104.24	t	\N
0022000320	1628966	1610612759	2021-02-01	2020-21	0	0	0	1	1	0	0	2	2	0	1	0	1	0	0	0.5	0.0	-9	0	0	0	06:13	14	13	2	f	92.9	169.2	104.24	t	\N
0022000320	1629234	1610612759	2021-02-01	2020-21	2	1	1	0	0	1	1	0	1	2	3	0	0	1	1	0.6666666666666666	0.6666666666666666	-9	0	1	0	06:13	14	13	4	f	92.9	169.2	104.24	t	\N
0022000320	1629683	1610612759	2021-02-01	2020-21	1	0	1	3	2	3	2	0	0	0	0	0	0	0	0	0.0	0.0	-9	1	0	0	06:13	14	13	0	f	92.9	169.2	104.24	t	\N
0022000320	1	1610612759	2021-02-01	2020-21	3	3	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000317	203084	1610612758	2021-02-01	2020-21	8	2	6	4	1	3	2	3	3	8	14	5	9	2	2	0.8	0.75	13	1	1	0	40:23	84	86	24	t	120.9	104.6	102.81	f	\N
0022000317	1628368	1610612758	2021-02-01	2020-21	4	2	2	12	7	6	2	7	7	14	24	3	10	10	9	0.7037037037037037	0.6458333333333334	7	1	0	3	39:41	82	83	38	t	115.5	108.4	101.0	f	\N
0022000317	1627741	1610612758	2021-02-01	2020-21	8	1	7	3	1	1	1	4	6	4	16	4	15	0	0	0.4166666666666667	0.375	12	0	0	3	39:00	83	84	16	t	115.5	101.2	103.38	f	\N
0022000317	1626158	1610612758	2021-02-01	2020-21	10	2	8	3	1	4	3	5	7	6	7	0	0	4	4	0.85	0.8571428571428571	14	0	6	4	33:07	68	69	17	t	111.4	92.8	100.73	f	\N
0022000317	1628963	1610612758	2021-02-01	2020-21	4	1	3	1	0	2	1	0	2	5	12	0	2	6	3	0.38461538461538464	0.4166666666666667	-1	0	1	3	21:36	45	47	10	t	117.0	119.1	104.44	f	\N
0022000317	1630169	1610612758	2021-02-01	2020-21	11	3	8	6	3	1	0	0	0	2	7	1	4	1	0	0.35714285714285715	0.35714285714285715	13	1	0	0	32:26	68	68	5	f	112.9	97.1	102.11	f	\N
0022000317	202355	1610612758	2021-02-01	2020-21	6	2	4	0	0	2	1	1	1	2	5	0	0	4	2	0.5	0.4	-5	0	0	4	14:29	31	31	5	f	115.6	135.5	104.49	f	\N
0022000317	202709	1610612758	2021-02-01	2020-21	1	0	1	1	0	1	1	0	0	1	2	1	2	0	0	0.75	0.75	-5	0	0	0	14:26	29	31	3	f	100.0	109.4	103.09	f	\N
0022000317	1629657	1610612758	2021-02-01	2020-21	0	0	0	1	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	0	0	0	1	04:44	10	10	0	f	130.0	130.0	101.41	f	\N
0022000317	1629002	1610612758	2021-02-01	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-3	0	0	0	00:08	0	1	0	f	0.0	300.0	334.88	f	\N
0022000317	0	1610612758	2021-02-01	2020-21	7	5	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000317	202339	1610612740	2021-02-01	2020-21	2	0	2	4	2	3	0	2	4	5	11	2	7	2	1	0.5384615384615384	0.5454545454545454	-7	0	1	3	36:17	78	76	14	t	106.4	115.4	103.19	t	\N
0022000317	1627742	1610612740	2021-02-01	2020-21	5	0	5	2	2	1	1	7	8	6	20	1	7	5	4	0.3958333333333333	0.325	-1	1	1	3	35:36	78	75	20	t	115.4	118.2	104.49	t	\N
0022000317	1628366	1610612740	2021-02-01	2020-21	2	0	2	5	1	1	0	2	2	5	13	2	5	5	2	0.5	0.46153846153846156	-4	3	0	1	32:02	69	67	14	t	113.0	120.6	102.64	t	\N
0022000317	1629627	1610612740	2021-02-01	2020-21	8	2	6	2	1	4	2	4	4	6	13	1	2	9	5	0.5666666666666667	0.5	-13	2	3	3	30:55	66	65	17	t	103.0	120.6	104.8	t	\N
0022000317	1629637	1610612740	2021-02-01	2020-21	4	3	1	0	0	0	0	1	1	3	6	0	0	6	3	0.5833333333333334	0.5	3	0	0	4	11:18	24	23	7	t	116.7	100.0	104.07	t	\N
0022000317	1628404	1610612740	2021-02-01	2020-21	13	6	7	4	1	0	0	2	2	6	13	1	5	8	5	0.5357142857142857	0.5	-11	2	0	4	31:34	66	66	15	f	92.5	107.4	102.63	t	\N
0022000317	1626195	1610612740	2021-02-01	2020-21	11	6	5	2	1	1	0	1	2	6	11	0	1	8	5	0.5416666666666666	0.5454545454545454	3	1	0	1	28:34	61	59	13	f	116.1	113.1	103.35	t	\N
0022000317	1629638	1610612740	2021-02-01	2020-21	0	0	0	2	2	0	0	1	1	2	8	2	3	4	0	0.375	0.375	-5	1	0	2	18:07	36	37	7	f	97.2	105.3	98.03	t	\N
0022000317	1630184	1610612740	2021-02-01	2020-21	1	0	1	1	1	0	0	0	0	1	6	0	0	5	1	0.16666666666666666	0.16666666666666666	-10	1	0	1	15:37	32	32	2	f	84.8	115.2	101.43	t	\N
0022000317	1	1610612740	2021-02-01	2020-21	4	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000311	203083	1610612739	2021-01-31	2020-21	22	4	18	4	2	3	0	7	10	9	18	0	0	13	8	0.5681818181818182	0.5	1	1	1	3	32:42	69	69	25	t	104.2	105.8	102.75	f	\N
0022000311	1630171	1610612739	2021-01-31	2020-21	2	1	1	4	3	0	0	0	0	6	10	1	3	7	5	0.65	0.65	4	0	0	1	32:10	68	67	13	t	111.4	110.4	102.22	f	\N
0022000311	1626204	1610612739	2021-01-31	2020-21	16	4	12	4	4	2	1	0	0	1	3	0	0	2	1	0.3333333333333333	0.3333333333333333	-3	0	1	3	32:04	68	67	2	t	91.3	98.5	101.81	f	\N
0022000311	1629012	1610612739	2021-01-31	2020-21	2	0	2	2	2	5	3	0	0	8	16	0	1	3	2	0.5	0.5	5	0	0	2	31:47	66	67	16	t	104.4	98.5	101.94	f	\N
0022000311	1629636	1610612739	2021-01-31	2020-21	2	0	2	5	3	4	3	4	5	6	14	1	3	3	2	0.53125	0.4642857142857143	-5	1	0	3	31:19	64	65	17	t	103.1	110.8	99.65	f	\N
0022000311	1626224	1610612739	2021-01-31	2020-21	1	0	1	0	0	1	0	2	2	3	6	1	2	3	2	0.6428571428571429	0.5833333333333334	-5	1	0	1	23:14	47	49	9	f	104.0	116.3	102.24	f	\N
0022000311	1627752	1610612739	2021-01-31	2020-21	3	0	3	1	1	1	1	1	2	1	6	1	4	1	0	0.2857142857142857	0.25	-5	0	0	0	21:02	42	43	4	f	102.3	116.3	99.24	f	\N
0022000311	1628386	1610612739	2021-01-31	2020-21	5	1	4	0	0	1	1	2	2	4	5	0	0	4	4	0.8333333333333334	0.8	-6	0	1	1	15:18	30	31	10	f	100.0	116.1	95.69	f	\N
0022000311	1629685	1610612739	2021-01-31	2020-21	0	0	0	0	0	2	1	0	0	0	0	0	0	0	0	0.0	0.0	-8	0	0	0	13:09	26	27	0	f	103.7	133.3	98.56	f	\N
0022000323	1	1610612753	2021-02-02	2020-21	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000311	1628422	1610612739	2021-01-31	2020-21	2	0	2	0	0	0	0	2	2	3	6	0	3	1	1	0.5714285714285714	0.5	-3	0	0	0	07:15	15	15	8	f	75.0	100.0	102.62	f	\N
0022000311	0	1610612739	2021-01-31	2020-21	4	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000311	1626156	1610612750	2021-01-31	2020-21	1	1	0	5	0	2	2	0	0	7	18	5	10	2	1	0.5277777777777778	0.5277777777777778	1	0	0	2	30:42	64	65	19	t	110.9	104.5	102.41	t	\N
0022000311	1630162	1610612750	2021-01-31	2020-21	5	0	5	4	2	0	0	1	1	9	15	4	7	6	5	0.7666666666666667	0.7333333333333333	0	1	1	2	30:17	63	62	23	t	119.0	117.2	100.65	t	\N
0022000311	1627736	1610612750	2021-01-31	2020-21	3	0	3	2	2	1	0	0	2	9	17	5	11	4	3	0.6764705882352942	0.6764705882352942	-2	1	0	2	28:13	59	59	23	t	115.3	114.8	102.07	t	\N
0022000311	1629006	1610612750	2021-01-31	2020-21	4	1	3	2	1	0	0	5	6	0	6	0	2	2	0	0.2777777777777778	0.0	4	1	2	2	23:03	48	48	5	t	114.3	106.1	102.09	t	\N
0022000311	202334	1610612750	2021-01-31	2020-21	5	1	4	1	0	0	0	0	0	0	2	0	0	2	0	0.0	0.0	16	3	3	6	22:35	47	47	0	t	134.0	94.0	103.08	t	\N
0022000311	1629020	1610612750	2021-01-31	2020-21	8	3	5	0	0	3	0	1	2	3	6	0	0	6	3	0.5	0.5	-11	1	1	3	25:25	53	52	7	f	86.8	105.6	101.04	t	\N
0022000311	201937	1610612750	2021-01-31	2020-21	3	0	3	8	3	1	0	4	4	2	4	0	0	2	0	0.6666666666666666	0.5	2	1	0	1	20:27	44	41	8	f	97.7	93.2	103.22	t	\N
0022000311	1630183	1610612750	2021-01-31	2020-21	3	0	3	1	1	0	0	0	0	1	3	1	2	1	0	0.5	0.5	5	1	3	4	20:02	41	42	3	f	95.2	83.3	100.63	t	\N
0022000311	1627774	1610612750	2021-01-31	2020-21	2	1	1	0	0	0	0	0	0	4	7	0	2	5	4	0.5714285714285714	0.5714285714285714	7	0	1	0	19:47	41	40	8	f	97.6	82.9	100.69	t	\N
0022000311	1629669	1610612750	2021-01-31	2020-21	0	0	0	1	0	1	1	0	0	6	13	1	6	1	1	0.5	0.5	3	1	0	3	19:29	40	39	13	f	102.4	100.0	98.55	t	\N
0022000311	1	1610612750	2021-01-31	2020-21	3	0	3	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000310	202681	1610612751	2021-01-31	2020-21	4	1	3	8	0	3	2	5	5	10	20	1	2	1	1	0.5681818181818182	0.525	3	0	0	2	38:12	89	89	26	t	131.9	130.0	113.73	f	\N
0022000310	201142	1610612751	2021-01-31	2020-21	7	0	7	6	1	5	3	13	13	11	19	2	4	0	0	0.74	0.631578947368421	6	2	1	4	37:34	87	87	37	t	131.5	126.1	113.08	f	\N
0022000310	1628971	1610612751	2021-01-31	2020-21	9	2	7	3	0	0	0	1	2	1	2	0	0	2	1	0.5	0.5	3	2	0	5	31:50	70	71	3	t	128.8	124.7	110.06	f	\N
0022000310	203925	1610612751	2021-01-31	2020-21	1	0	1	5	0	1	1	0	0	11	17	8	13	1	1	0.8823529411764706	0.8823529411764706	-2	0	0	0	31:46	74	72	30	t	125.3	131.5	111.82	f	\N
0022000310	201599	1610612751	2021-01-31	2020-21	8	3	5	2	0	1	0	0	2	4	5	0	0	2	1	0.6666666666666666	0.8	14	0	1	3	18:58	42	42	8	t	132.6	100.0	108.82	f	\N
0022000310	201145	1610612751	2021-01-31	2020-21	7	1	6	3	1	2	1	5	6	7	10	4	5	0	0	0.8846153846153846	0.9	-19	1	2	5	30:19	72	73	23	f	121.3	150.7	117.16	f	\N
0022000310	1629013	1610612751	2021-01-31	2020-21	1	0	1	1	0	1	1	3	4	3	7	2	6	0	0	0.6111111111111112	0.5714285714285714	-7	1	1	0	20:29	46	49	11	f	124.5	138.8	114.83	f	\N
0022000310	1627789	1610612751	2021-01-31	2020-21	3	0	3	3	1	1	1	0	1	3	6	2	4	2	1	0.6666666666666666	0.6666666666666666	4	0	0	1	17:19	44	43	8	f	138.3	138.6	126.12	f	\N
0022000310	1629617	1610612751	2021-01-31	2020-21	2	0	2	2	0	1	0	0	0	0	1	0	1	0	0	0.0	0.0	-11	0	0	3	07:18	17	19	0	f	94.4	147.4	121.64	f	\N
0022000310	204020	1610612751	2021-01-31	2020-21	3	0	3	0	0	2	1	0	0	0	1	0	1	0	0	0.0	0.0	-6	0	0	1	06:15	14	15	0	f	100.0	133.3	111.36	f	\N
0022000310	0	1610612751	2021-01-31	2020-21	6	2	4	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000310	203078	1610612764	2021-01-31	2020-21	6	1	5	4	2	2	1	9	9	13	23	2	5	2	1	0.7115384615384616	0.6086956521739131	-12	0	0	3	37:36	86	87	37	t	119.3	133.0	112.34	t	\N
0022000310	201566	1610612764	2021-01-31	2020-21	10	4	6	8	1	3	3	5	7	16	28	4	7	5	4	0.6612903225806451	0.6428571428571429	7	2	1	4	34:36	82	81	41	t	137.6	129.4	117.92	t	\N
0022000310	1629060	1610612764	2021-01-31	2020-21	5	2	3	2	0	0	0	4	6	2	9	1	4	2	1	0.375	0.2777777777777778	-2	0	0	1	28:39	67	67	9	t	127.1	133.8	115.6	t	\N
0022000310	201577	1610612764	2021-01-31	2020-21	4	2	2	0	0	1	1	2	2	4	5	0	1	2	2	0.8333333333333334	0.8	-13	1	0	0	17:56	39	40	10	t	100.0	135.0	108.4	t	\N
0022000310	1630166	1610612764	2021-01-31	2020-21	2	1	1	0	0	0	0	0	0	1	4	0	2	2	1	0.25	0.25	-9	0	0	2	15:41	32	35	2	t	112.1	131.4	104.06	t	\N
0022000310	202722	1610612764	2021-01-31	2020-21	3	0	3	0	0	0	0	0	1	4	13	3	12	1	1	0.4230769230769231	0.4230769230769231	3	0	0	6	30:14	71	71	11	f	131.1	128.8	116.71	t	\N
0022000310	1629726	1610612764	2021-01-31	2020-21	2	0	2	1	0	0	0	2	2	2	6	1	5	1	1	0.5	0.4166666666666667	8	3	0	2	26:27	64	61	7	f	135.4	127.0	116.13	t	\N
0022000310	202397	1610612764	2021-01-31	2020-21	2	0	2	7	4	0	0	0	0	6	9	1	2	3	1	0.7222222222222222	0.7222222222222222	24	2	1	0	23:48	60	56	13	f	145.9	110.2	121.03	t	\N
0022000310	1629021	1610612764	2021-01-31	2020-21	5	1	4	2	0	0	0	3	5	7	8	0	0	5	5	0.85	0.875	11	2	0	3	20:40	48	46	17	f	150.0	124.5	112.65	t	\N
0022000310	203458	1610612764	2021-01-31	2020-21	0	0	0	0	0	1	1	0	0	1	3	0	1	0	0	0.3333333333333333	0.3333333333333333	-4	0	0	1	04:19	10	10	2	f	72.7	120.0	116.76	t	\N
0022000310	1629067	1610612764	2021-01-31	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	2	0	0	0	00:04	1	1	0	f	200.0	0.0	1004.66	t	\N
0022000310	1	1610612764	2021-01-31	2020-21	7	4	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000309	202696	1610612753	2021-01-31	2020-21	14	0	14	4	2	3	2	3	3	5	18	2	6	1	0	0.3684210526315789	0.3333333333333333	-20	2	1	1	35:16	67	69	15	t	87.1	115.7	95.3	f	\N
0022000309	1630175	1610612753	2021-01-31	2020-21	5	1	4	6	0	2	2	5	6	5	10	1	3	2	0	0.6153846153846154	0.55	-10	0	0	3	32:22	62	64	16	t	95.3	109.2	95.65	f	\N
0022000309	203095	1610612753	2021-01-31	2020-21	2	1	1	3	1	1	1	6	6	2	12	1	6	1	0	0.36666666666666664	0.20833333333333334	-20	1	1	1	28:22	54	54	11	t	92.7	129.1	93.07	f	\N
0022000309	203932	1610612753	2021-01-31	2020-21	5	1	4	3	0	0	0	4	6	4	8	2	5	1	1	0.6363636363636364	0.625	-8	1	0	2	22:45	44	43	14	t	100.0	117.4	97.05	f	\N
0022000309	203516	1610612753	2021-01-31	2020-21	4	0	4	0	0	0	0	1	2	3	5	1	2	1	1	0.6666666666666666	0.7	-2	0	0	3	19:26	39	38	8	t	107.7	115.8	95.09	f	\N
0022000309	203082	1610612753	2021-01-31	2020-21	0	0	0	2	0	0	0	2	2	1	5	0	3	1	1	0.3333333333333333	0.2	-22	1	0	3	28:20	54	57	4	f	87.7	126.3	96.56	f	\N
0022000309	203920	1610612753	2021-01-31	2020-21	6	3	3	0	0	2	2	1	2	3	7	1	3	3	2	0.5	0.5	4	1	2	2	25:39	53	53	8	f	113.2	105.7	99.18	f	\N
0022000309	1629109	1610612753	2021-01-31	2020-21	3	0	3	1	0	0	0	0	0	1	2	1	2	0	0	0.75	0.75	-4	0	0	1	21:46	47	50	3	f	108.0	116.0	110.22	f	\N
0022000309	1628407	1610612753	2021-01-31	2020-21	1	0	1	1	1	1	1	1	1	5	10	2	3	5	3	0.65	0.6	7	2	0	0	19:38	42	44	13	f	115.9	97.8	108.79	f	\N
0022000309	1628964	1610612753	2021-01-31	2020-21	1	0	1	0	0	0	0	0	0	3	3	1	1	2	2	1.1666666666666667	1.1666666666666667	5	0	1	1	03:13	9	9	7	f	188.9	133.3	134.3	f	\N
0022000309	1629648	1610612753	2021-01-31	2020-21	1	0	1	2	1	0	0	0	0	1	2	1	2	0	0	0.75	0.75	5	0	0	1	03:13	9	9	3	f	188.9	133.3	134.3	f	\N
0022000309	0	1610612753	2021-01-31	2020-21	2	2	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000309	200768	1610612761	2021-01-31	2020-21	6	0	6	15	9	3	2	2	2	4	13	2	9	2	2	0.42857142857142855	0.38461538461538464	30	2	0	4	36:37	72	70	12	t	128.4	89.0	96.35	t	\N
0022000309	1627783	1610612761	2021-01-31	2020-21	10	3	7	3	1	2	1	6	6	12	23	0	2	11	9	0.6	0.5217391304347826	27	3	1	1	33:54	66	65	30	t	127.9	90.9	94.87	t	\N
0022000309	1627832	1610612761	2021-01-31	2020-21	2	0	2	5	2	4	3	0	0	4	12	1	7	1	0	0.375	0.375	17	1	0	2	30:38	58	57	9	t	125.9	96.6	90.92	t	\N
0022000309	203382	1610612761	2021-01-31	2020-21	16	3	13	1	0	0	0	2	2	3	6	0	2	3	2	0.5714285714285714	0.5	18	0	0	2	29:09	54	56	8	t	123.2	89.5	93.06	t	\N
0022000309	1629056	1610612761	2021-01-31	2020-21	4	2	2	0	0	0	0	0	0	5	11	2	5	4	3	0.5454545454545454	0.5454545454545454	8	1	0	5	26:14	49	50	12	t	112.0	94.1	92.4	t	\N
0022000309	1627761	1610612761	2021-01-31	2020-21	2	0	2	2	1	0	0	3	4	4	6	1	1	5	3	0.75	0.75	16	0	1	2	21:37	46	44	12	f	118.8	89.1	104.36	t	\N
0022000309	1629139	1610612761	2021-01-31	2020-21	1	1	0	0	0	1	1	2	2	3	4	3	3	1	0	1.1	1.125	-7	1	3	3	18:56	42	42	11	f	95.5	114.0	110.28	t	\N
0022000309	1628449	1610612761	2021-01-31	2020-21	4	0	4	0	0	0	0	2	2	3	8	1	5	2	2	0.5	0.4375	-8	0	0	0	18:20	42	39	9	f	97.6	116.7	109.96	t	\N
0022000309	1626169	1610612761	2021-01-31	2020-21	2	0	2	0	0	0	0	2	2	0	2	0	1	1	0	0.3333333333333333	0.0	-6	0	0	3	12:04	25	25	2	f	77.8	103.8	105.41	t	\N
0022000309	1628778	1610612761	2021-01-31	2020-21	1	0	1	1	0	0	0	0	0	2	3	2	3	0	0	1.0	1.0	-14	0	0	0	08:27	22	20	6	f	90.9	170.0	118.98	t	\N
0022000309	1629744	1610612761	2021-01-31	2020-21	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	-8	0	0	0	02:02	7	6	0	f	100.0	250.0	153.44	t	\N
0022000309	1630201	1610612761	2021-01-31	2020-21	0	0	0	0	0	1	1	2	2	1	1	0	0	0	0	1.0	1.0	-8	0	0	0	02:02	7	6	4	f	100.0	250.0	153.44	t	\N
0022000309	1	1610612761	2021-01-31	2020-21	6	4	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000307	1627732	1610612755	2021-01-31	2020-21	6	1	5	7	1	3	1	3	6	9	12	0	0	12	9	0.7	0.75	4	4	2	2	34:45	73	74	21	t	117.6	110.7	102.94	f	\N
0022000307	202699	1610612755	2021-01-31	2020-21	8	1	7	0	0	3	1	5	5	10	19	2	5	5	3	0.6428571428571429	0.5789473684210527	10	0	1	4	30:30	65	64	27	t	115.2	101.5	103.08	f	\N
0022000307	203552	1610612755	2021-01-31	2020-21	0	0	0	1	1	1	1	2	2	3	9	1	4	2	0	0.45	0.3888888888888889	-13	1	0	0	24:51	54	52	9	t	96.3	122.6	103.32	f	\N
0022000307	201980	1610612755	2021-01-31	2020-21	5	2	3	2	1	1	1	0	0	3	8	0	4	1	1	0.375	0.375	-6	0	1	1	21:57	46	45	6	t	108.5	121.3	102.78	f	\N
0022000307	1628396	1610612755	2021-01-31	2020-21	4	1	3	2	2	0	0	0	0	1	2	0	0	0	0	0.5	0.5	-16	0	0	3	17:02	35	34	2	t	88.6	130.6	100.04	f	\N
0022000307	1629680	1610612755	2021-01-31	2020-21	1	1	0	1	1	0	0	1	1	3	7	1	4	2	1	0.5714285714285714	0.5	14	4	2	2	25:27	51	54	8	f	128.8	98.1	99.98	f	\N
0022000307	2730	1610612755	2021-01-31	2020-21	15	7	8	0	0	2	1	5	12	3	6	0	0	6	3	0.4583333333333333	0.5	23	0	2	3	25:16	49	52	11	f	136.0	86.5	96.92	f	\N
0022000307	1627788	1610612755	2021-01-31	2020-21	3	0	3	2	1	1	0	2	2	6	12	3	5	2	0	0.6538461538461539	0.625	26	0	0	3	22:57	47	47	17	f	147.9	93.8	100.35	f	\N
0022000307	1629003	1610612755	2021-01-31	2020-21	1	1	0	2	1	1	1	1	1	4	9	0	1	5	2	0.5	0.4444444444444444	-1	0	0	3	19:01	37	40	9	f	118.4	115.0	98.44	f	\N
0022000307	1630178	1610612755	2021-01-31	2020-21	1	0	1	3	0	0	0	2	2	3	8	1	3	3	2	0.5	0.4375	4	0	0	0	18:14	38	38	9	f	120.5	113.2	101.3	f	\N
0022000307	0	1610612755	2021-01-31	2020-21	6	4	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000307	1627763	1610612754	2021-01-31	2020-21	5	0	5	4	3	1	1	1	2	10	21	4	10	5	3	0.5681818181818182	0.5714285714285714	-4	1	1	2	37:40	79	77	25	t	107.6	114.1	100.06	t	\N
0022000307	1627734	1610612754	2021-01-31	2020-21	8	1	7	3	0	6	4	5	5	8	17	0	5	5	5	0.5833333333333334	0.47058823529411764	-5	0	0	2	36:55	77	75	21	t	107.7	118.7	99.47	t	\N
0022000307	203200	1610612754	2021-01-31	2020-21	5	0	5	0	0	0	0	1	1	2	7	1	4	2	1	0.42857142857142855	0.35714285714285715	-5	3	0	1	36:03	76	76	6	t	112.8	120.8	103.22	t	\N
0022000307	203087	1610612754	2021-01-31	2020-21	5	1	4	3	0	2	0	2	2	4	6	2	3	1	1	0.8571428571428571	0.8333333333333334	-6	0	3	2	30:28	64	62	12	t	101.5	110.8	102.4	t	\N
0022000307	1626167	1610612754	2021-01-31	2020-21	5	1	4	1	1	0	0	6	6	1	6	1	4	2	0	0.5	0.25	-5	1	1	6	29:22	57	58	9	t	105.1	113.6	96.47	t	\N
0022000307	204456	1610612754	2021-01-31	2020-21	4	0	4	8	5	6	4	1	2	4	9	0	0	3	2	0.45	0.4444444444444444	-11	1	0	2	25:41	55	55	9	f	105.4	125.0	104.63	t	\N
0022000332	1	1610612741	2021-02-03	2020-21	3	1	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000307	203926	1610612754	2021-01-31	2020-21	5	4	1	1	0	0	0	0	0	4	6	0	0	5	3	0.6666666666666666	0.6666666666666666	-4	0	1	6	21:03	44	42	8	f	109.1	120.9	99.18	t	\N
0022000307	1628988	1610612754	2021-01-31	2020-21	3	1	2	1	0	1	0	1	2	7	11	2	2	6	3	0.7083333333333334	0.7272727272727273	-2	0	0	2	16:59	35	35	17	f	113.9	119.4	101.69	t	\N
0022000307	1629048	1610612754	2021-01-31	2020-21	1	1	0	0	0	1	0	1	2	1	1	0	0	0	0	0.75	1.0	-1	0	1	2	05:43	13	14	3	f	130.8	128.6	113.35	t	\N
0022000307	1628410	1610612754	2021-01-31	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-2	0	0	0	00:06	0	1	0	f	0.0	200.0	436.36	t	\N
0022000307	1	1610612754	2021-01-31	2020-21	3	2	1	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000306	202711	1610612762	2021-01-31	2020-21	4	0	4	2	0	1	0	8	10	8	13	5	10	1	1	0.8055555555555556	0.8076923076923077	0	0	0	3	32:35	64	64	29	t	126.6	120.9	96.49	f	\N
0022000306	1628378	1610612762	2021-01-31	2020-21	1	0	1	3	1	5	3	4	4	3	12	3	8	1	0	0.4642857142857143	0.375	-6	1	0	3	31:06	62	60	13	t	122.6	132.3	95.69	f	\N
0022000306	201144	1610612762	2021-01-31	2020-21	3	1	2	8	2	1	1	7	7	2	10	1	6	1	0	0.46153846153846156	0.25	-18	0	0	1	27:49	55	56	12	t	115.8	144.8	99.22	f	\N
0022000306	1626220	1610612762	2021-01-31	2020-21	6	0	6	3	0	3	2	0	0	4	4	4	4	0	0	1.5	1.5	-10	0	0	4	26:07	50	49	12	t	123.5	143.1	93.78	f	\N
0022000306	203497	1610612762	2021-01-31	2020-21	8	6	2	1	0	0	0	4	8	4	7	0	0	4	2	0.5454545454545454	0.5714285714285714	-15	0	1	2	25:30	54	49	12	t	118.5	154.9	98.88	f	\N
0022000306	204060	1610612762	2021-01-31	2020-21	1	1	0	6	1	2	1	2	2	3	7	2	4	2	1	0.625	0.5714285714285714	-11	0	0	1	25:21	52	53	10	f	111.3	129.6	101.25	f	\N
0022000306	203903	1610612762	2021-01-31	2020-21	3	0	3	2	0	0	0	1	1	4	13	4	11	0	0	0.4642857142857143	0.46153846153846156	-12	0	1	2	25:19	53	51	13	f	117.0	137.0	101.44	f	\N
0022000306	202324	1610612762	2021-01-31	2020-21	6	2	4	1	0	1	0	3	3	2	3	0	0	1	1	0.875	0.6666666666666666	-3	1	2	4	19:25	36	40	7	f	118.9	114.6	96.35	f	\N
0022000306	1627777	1610612762	2021-01-31	2020-21	2	0	2	1	0	1	1	0	0	1	3	0	2	0	0	0.3333333333333333	0.3333333333333333	-8	1	0	1	14:28	31	31	2	f	106.3	127.3	107.83	f	\N
0022000306	1627885	1610612762	2021-01-31	2020-21	0	0	0	1	0	0	0	4	4	0	0	0	0	0	0	1.0	0.0	7	0	0	0	03:05	7	8	4	f	128.6	25.0	116.76	f	\N
0022000306	1629671	1610612762	2021-01-31	2020-21	2	0	2	0	0	0	0	0	0	1	1	1	1	0	0	1.5	1.5	7	0	0	0	03:05	7	8	3	f	128.6	25.0	116.76	f	\N
0022000306	1629714	1610612762	2021-01-31	2020-21	1	0	1	0	0	0	0	0	0	0	2	0	1	0	0	0.0	0.0	7	0	0	0	03:05	7	8	0	f	128.6	25.0	116.76	f	\N
0022000306	1629752	1610612762	2021-01-31	2020-21	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	7	0	0	0	03:05	7	8	0	f	128.6	25.0	116.76	f	\N
0022000306	0	1610612762	2021-01-31	2020-21	6	1	5	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000306	203115	1610612743	2021-01-31	2020-21	3	0	3	6	2	0	0	1	2	6	11	5	6	0	0	0.75	0.7727272727272727	13	0	1	4	37:28	74	75	18	t	128.6	114.7	97.35	t	\N
0022000306	203999	1610612743	2021-01-31	2020-21	12	3	9	5	0	3	0	9	10	17	26	4	4	6	5	0.7580645161290323	0.7307692307692307	14	2	1	2	37:20	74	74	47	t	134.2	118.9	96.43	t	\N
0022000306	1627750	1610612743	2021-01-31	2020-21	4	0	4	5	1	1	1	0	0	7	16	2	6	1	1	0.5	0.5	13	1	0	3	33:55	66	67	16	t	138.2	119.1	96.24	t	\N
0022000306	200794	1610612743	2021-01-31	2020-21	3	1	2	0	0	0	0	0	0	4	6	2	2	3	1	0.8333333333333334	0.8333333333333334	5	1	0	2	21:49	43	43	10	t	138.6	130.2	95.71	t	\N
0022000306	203914	1610612743	2021-01-31	2020-21	1	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	10	0	0	0	08:45	16	16	0	t	193.8	131.3	87.77	t	\N
0022000306	1628420	1610612743	2021-01-31	2020-21	2	0	2	5	0	0	0	1	1	2	5	1	1	0	0	0.5	0.5	7	2	0	2	25:42	52	52	6	f	118.5	107.5	99.92	t	\N
0022000306	203210	1610612743	2021-01-31	2020-21	5	1	4	1	0	0	0	0	0	4	7	1	2	2	1	0.6428571428571429	0.6428571428571429	11	1	0	3	23:44	48	48	9	f	130.0	108.0	101.12	t	\N
0022000306	1629008	1610612743	2021-01-31	2020-21	4	1	3	0	0	1	0	2	2	4	7	1	1	1	1	0.6875	0.6428571428571429	8	0	0	5	19:30	41	40	11	f	142.9	126.8	102.17	t	\N
0022000306	1630267	1610612743	2021-01-31	2020-21	2	0	2	5	1	1	1	3	4	3	5	2	4	0	0	0.7857142857142857	0.8	5	0	0	4	19:11	38	40	11	f	122.0	112.5	101.33	t	\N
0022000306	1630181	1610612743	2021-01-31	2020-21	1	0	1	0	0	2	1	0	0	0	0	0	0	0	0	0.0	0.0	-3	1	0	0	06:00	13	14	0	f	100.0	121.4	112.03	t	\N
0022000306	1628427	1610612743	2021-01-31	2020-21	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0.0	0.0	-7	0	0	0	01:39	5	4	0	f	0.0	175.0	130.91	t	\N
0022000306	1629626	1610612743	2021-01-31	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-7	0	0	0	01:39	5	4	0	f	0.0	175.0	130.91	t	\N
0022000306	1630192	1610612743	2021-01-31	2020-21	1	1	0	0	0	0	0	0	0	0	1	0	0	0	0	0.0	0.0	-7	0	0	1	01:39	5	4	0	f	0.0	175.0	130.91	t	\N
0022000306	1630210	1610612743	2021-01-31	2020-21	1	0	1	0	0	0	0	0	0	0	2	0	2	0	0	0.0	0.0	-7	0	0	1	01:39	5	4	0	f	0.0	175.0	130.91	t	\N
0022000306	1	1610612743	2021-01-31	2020-21	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000308	202695	1610612746	2021-01-31	2020-21	4	0	4	3	1	1	0	11	11	8	15	1	3	4	3	0.675	0.5666666666666667	19	1	1	1	34:04	65	64	28	t	158.5	129.2	91.59	f	\N
0022000308	202331	1610612746	2021-01-31	2020-21	8	1	7	5	1	1	0	2	2	7	16	1	8	4	2	0.5	0.46875	6	1	1	1	32:47	63	63	17	t	124.6	117.2	94.44	f	\N
0022000308	202704	1610612746	2021-01-31	2020-21	5	2	3	3	1	0	0	3	4	6	12	3	6	5	3	0.6428571428571429	0.625	8	0	0	2	25:40	49	50	18	t	148.0	132.0	93.56	f	\N
0022000308	201586	1610612746	2021-01-31	2020-21	3	1	2	1	0	1	1	2	3	5	6	3	4	2	2	1.0714285714285714	1.0833333333333333	9	0	1	2	23:41	44	44	15	t	146.7	129.5	90.19	f	\N
0022000308	202335	1610612746	2021-01-31	2020-21	3	0	3	0	0	0	0	0	0	5	5	3	3	0	0	1.3	1.3	5	0	1	2	19:43	35	36	13	t	143.2	133.3	88.93	f	\N
0022000308	202694	1610612746	2021-01-31	2020-21	3	0	3	0	0	0	0	0	0	4	8	3	6	0	0	0.6875	0.6875	9	0	0	2	28:17	58	56	11	f	126.7	119.6	98.38	f	\N
0022000308	1627826	1610612746	2021-01-31	2020-21	7	3	4	4	1	0	0	2	2	3	5	0	0	5	3	0.6666666666666666	0.6	5	0	0	0	22:41	45	44	8	f	127.7	122.2	97.34	f	\N
0022000308	101150	1610612746	2021-01-31	2020-21	3	0	3	5	1	2	2	2	2	3	9	1	5	0	0	0.45	0.3888888888888889	6	0	0	2	22:30	45	43	9	f	130.4	120.0	97.02	f	\N
0022000308	1629611	1610612746	2021-01-31	2020-21	1	0	1	1	0	0	0	2	2	1	3	0	1	2	1	0.5	0.3333333333333333	-1	0	0	1	16:04	32	31	4	f	109.1	115.6	97.0	f	\N
0022000308	1628379	1610612746	2021-01-31	2020-21	1	0	1	3	0	2	2	0	0	2	2	2	2	0	0	1.5	1.5	4	0	0	1	11:17	21	21	6	f	136.4	123.8	91.56	f	\N
0022000308	1629599	1610612746	2021-01-31	2020-21	0	0	0	1	0	0	0	0	2	0	0	0	0	0	0	0.0	0.0	0	0	0	0	01:38	4	4	0	f	75.0	75.0	117.55	f	\N
0022000308	1629662	1610612746	2021-01-31	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	01:38	4	4	0	f	75.0	75.0	117.55	f	\N
0022000308	0	1610612746	2021-01-31	2020-21	6	2	4	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000308	203944	1610612752	2021-01-31	2020-21	12	2	10	5	1	3	2	5	6	9	18	4	5	3	1	0.65	0.6111111111111112	-17	0	0	4	35:08	67	67	27	t	123.5	148.5	92.9	t	\N
0022000308	1629628	1610612752	2021-01-31	2020-21	2	0	2	2	1	2	0	5	6	9	14	0	1	6	5	0.6764705882352942	0.6428571428571429	-8	2	0	3	30:31	59	59	23	t	130.5	141.7	93.59	t	\N
0022000308	1629011	1610612752	2021-01-31	2020-21	6	3	3	0	0	0	0	1	2	4	6	0	0	6	4	0.6428571428571429	0.6666666666666666	-3	0	1	2	29:39	56	57	9	t	139.3	139.7	92.28	t	\N
0022000308	203493	1610612752	2021-01-31	2020-21	1	0	1	1	1	0	0	0	0	3	6	2	3	2	1	0.6666666666666666	0.6666666666666666	-7	0	1	1	26:05	49	49	8	t	126.5	138.0	91.09	t	\N
0022000308	203901	1610612752	2021-01-31	2020-21	3	0	3	3	2	0	0	3	4	3	7	1	2	3	1	0.5555555555555556	0.5	-6	0	0	2	20:44	38	38	10	t	131.6	143.6	89.13	t	\N
0022000308	1630193	1610612752	2021-01-31	2020-21	3	1	2	3	1	0	0	5	6	9	16	2	8	1	1	0.6666666666666666	0.625	-8	0	1	3	27:16	54	55	25	f	120.4	130.4	96.82	t	\N
0022000308	202692	1610612752	2021-01-31	2020-21	3	1	2	4	0	0	0	0	0	3	8	1	4	1	0	0.4375	0.4375	-7	2	1	0	21:55	43	44	7	f	123.3	130.4	97.46	t	\N
0022000308	201959	1610612752	2021-01-31	2020-21	5	3	2	1	0	0	0	0	0	0	4	0	1	2	0	0.0	0.0	-11	0	1	2	18:21	36	36	0	f	102.8	123.1	98.09	t	\N
0022000308	203085	1610612752	2021-01-31	2020-21	0	0	0	2	0	1	0	2	2	1	4	0	1	1	1	0.4	0.25	-6	1	0	2	17:29	33	34	4	f	111.8	125.7	94.72	t	\N
0022000308	1630167	1610612752	2021-01-31	2020-21	1	0	1	0	0	1	0	2	2	0	2	0	2	0	0	0.3333333333333333	0.0	3	0	0	1	12:52	25	26	2	f	119.2	107.7	96.99	t	\N
0022000308	1	1610612752	2021-01-31	2020-21	4	3	1	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000328	202331	1610612746	2021-02-03	2020-21	4	0	4	6	1	0	0	2	3	13	20	8	9	7	3	0.8333333333333334	0.85	29	0	0	4	34:05	65	65	36	t	146.3	101.5	95.07	f	\N
0022000328	202695	1610612746	2021-02-03	2020-21	6	0	6	3	1	4	2	3	4	9	14	3	6	3	3	0.75	0.75	25	1	0	0	31:34	60	58	24	t	146.7	103.3	92.0	f	\N
0022000559	1629018	1610612757	2021-02-02	2020-21	3	1	2	3	1	1	0	3	3	8	16	7	9	0	0	0.7222222222222222	0.71875	15	2	0	1	39:39	81	78	26	t	138.3	119.8	98.02	f	\N
0022000559	203081	1610612757	2021-02-02	2020-21	2	0	2	8	1	3	2	10	10	9	23	4	14	3	2	0.5740740740740741	0.4782608695652174	22	0	1	2	39:21	78	78	32	t	141.8	113.9	96.37	f	\N
0022000559	203496	1610612757	2021-02-02	2020-21	9	2	7	1	0	1	0	2	2	6	10	5	8	1	1	0.8636363636363636	0.85	12	1	0	3	36:57	74	72	19	t	136.5	120.3	96.13	f	\N
0022000559	202683	1610612757	2021-02-02	2020-21	15	5	10	2	1	2	0	2	2	6	10	0	0	6	5	0.6363636363636364	0.6	18	2	0	4	35:34	70	68	14	t	145.7	120.0	94.47	f	\N
0022000559	203918	1610612757	2021-02-02	2020-21	2	1	1	2	0	0	0	2	2	5	12	3	6	0	0	0.5769230769230769	0.5416666666666666	15	0	0	2	35:06	70	71	15	t	137.5	116.7	98.46	f	\N
0022000559	2546	1610612757	2021-02-02	2020-21	4	3	1	1	0	1	0	4	4	8	16	1	5	4	3	0.5833333333333334	0.53125	-5	1	0	3	26:16	56	55	21	f	125.0	131.6	103.25	f	\N
0022000559	1629014	1610612757	2021-02-02	2020-21	2	1	1	1	0	0	0	0	0	1	4	1	3	0	0	0.375	0.375	-7	0	0	2	13:39	30	30	3	f	109.7	132.3	109.01	f	\N
0022000559	1628385	1610612757	2021-02-02	2020-21	7	1	6	1	0	0	0	0	0	1	4	0	1	0	0	0.25	0.25	-7	0	0	1	11:33	26	28	2	f	115.4	132.1	112.37	f	\N
0022000559	1629833	1610612757	2021-02-02	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-3	0	0	0	01:12	3	3	0	f	0.0	100.0	120.0	f	\N
0022000559	1629604	1610612757	2021-02-02	2020-21	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	-5	0	0	1	00:43	2	2	0	f	0.0	250.0	133.95	f	\N
0022000559	0	1610612757	2021-02-02	2020-21	6	3	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000559	203078	1610612764	2021-02-02	2020-21	2	1	1	4	3	4	3	3	5	14	24	6	12	7	5	0.7115384615384616	0.7083333333333334	-12	0	1	2	37:55	74	75	37	t	122.4	140.0	95.58	t	\N
0022000559	1629060	1610612764	2021-02-02	2020-21	5	1	4	1	0	1	0	1	2	10	12	3	4	3	3	0.9230769230769231	0.9583333333333334	-11	0	1	2	34:00	65	67	24	t	120.6	138.8	95.28	t	\N
0022000559	201566	1610612764	2021-02-02	2020-21	12	1	11	10	3	4	2	2	2	7	15	1	3	7	6	0.5666666666666667	0.5	-14	0	0	4	32:51	67	67	17	t	113.0	135.3	100.09	t	\N
0022000559	1630166	1610612764	2021-02-02	2020-21	7	3	4	3	1	0	0	1	1	5	6	2	3	3	3	1.0833333333333333	1.0	4	0	0	3	23:04	44	43	13	t	140.0	131.1	93.64	t	\N
0022000559	201577	1610612764	2021-02-02	2020-21	1	0	1	0	0	0	0	0	0	1	1	0	0	1	1	1.0	1.0	-14	0	1	2	12:32	25	24	2	t	100.0	150.0	97.66	t	\N
0022000559	202722	1610612764	2021-02-02	2020-21	1	0	1	0	0	1	0	0	0	2	10	2	10	0	0	0.3	0.3	-22	0	0	4	30:04	61	63	6	f	109.5	144.4	100.58	t	\N
0022000559	202397	1610612764	2021-02-02	2020-21	5	0	5	9	2	2	1	1	2	1	4	0	1	1	1	0.3	0.25	1	2	0	1	27:24	56	57	3	f	133.3	131.6	99.85	t	\N
0022000559	1629021	1610612764	2021-02-02	2020-21	1	0	1	2	1	0	0	0	0	3	5	0	2	3	3	0.6	0.6	-5	0	1	0	16:30	37	38	6	f	118.9	128.9	109.14	t	\N
0022000559	1629726	1610612764	2021-02-02	2020-21	2	0	2	1	0	0	0	5	5	2	5	2	5	0	0	0.7857142857142857	0.6	0	0	0	1	15:21	34	34	11	f	122.9	126.5	107.88	t	\N
0022000559	203458	1610612764	2021-02-02	2020-21	3	0	3	2	0	1	0	0	0	1	1	0	0	1	1	1.0	1.0	12	0	1	2	07:55	16	16	2	f	162.5	82.4	100.04	t	\N
0022000559	1629067	1610612764	2021-02-02	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	3	0	0	0	01:12	3	3	0	f	100.0	0.0	120.0	t	\N
0022000559	1630216	1610612764	2021-02-02	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	3	0	0	0	01:12	3	3	0	f	100.0	0.0	120.0	t	\N
0022000559	1	1610612764	2021-02-02	2020-21	2	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000326	1628369	1610612738	2021-02-02	2020-21	9	0	9	3	0	4	3	5	6	9	19	4	10	0	0	0.6136363636363636	0.5789473684210527	13	0	0	2	38:25	77	75	27	t	119.2	101.3	98.08	f	\N
0022000326	1627759	1610612738	2021-02-02	2020-21	10	2	8	4	0	3	0	1	1	8	20	1	6	3	3	0.45	0.425	4	0	1	5	32:07	67	67	18	t	107.4	98.6	103.1	f	\N
0022000326	202689	1610612738	2021-02-02	2020-21	7	3	4	5	1	0	0	4	4	6	18	3	9	0	0	0.475	0.4166666666666667	9	0	0	1	30:30	63	63	19	t	107.8	92.3	101.5	f	\N
0022000326	1628464	1610612738	2021-02-02	2020-21	11	2	9	1	1	1	1	1	2	3	7	1	2	1	0	0.5	0.5	24	1	1	4	28:41	57	56	8	t	125.4	84.7	98.69	f	\N
0022000326	202684	1610612738	2021-02-02	2020-21	8	3	5	0	0	3	1	3	6	5	5	0	0	2	2	0.8125	1.0	-4	0	0	3	25:22	50	50	13	t	110.0	118.0	94.63	f	\N
0022000326	1629684	1610612738	2021-02-02	2020-21	4	2	2	0	0	1	1	4	6	4	4	3	3	1	1	1.0714285714285714	1.375	-13	0	2	1	27:21	56	58	15	f	100.0	116.7	102.67	f	\N
0022000326	1629750	1610612738	2021-02-02	2020-21	0	0	0	0	0	0	0	0	0	1	2	0	0	1	1	0.5	0.5	-2	1	0	2	20:29	37	41	2	f	125.6	121.4	94.83	f	\N
0022000326	201952	1610612738	2021-02-02	2020-21	0	0	0	2	0	2	2	2	2	3	6	1	2	0	0	0.6428571428571429	0.5833333333333334	-4	1	0	0	17:09	32	33	9	f	117.6	125.7	96.56	f	\N
0022000326	1628400	1610612738	2021-02-02	2020-21	0	0	0	1	0	0	0	0	0	0	2	0	2	0	0	0.0	0.0	2	0	0	0	11:26	22	23	0	f	104.3	95.7	96.67	f	\N
0022000326	1629057	1610612738	2021-02-02	2020-21	2	0	2	0	0	1	1	0	0	0	1	0	0	1	0	0.0	0.0	-9	0	0	2	08:30	19	19	0	f	105.0	150.0	113.23	f	\N
0022000326	0	1610612738	2021-02-02	2020-21	7	4	3	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000326	203952	1610612744	2021-02-02	2020-21	2	0	2	3	0	1	0	2	5	6	16	1	8	4	3	0.4166666666666667	0.40625	10	0	1	0	38:14	79	78	15	t	114.6	106.3	101.09	t	\N
0022000326	201939	1610612744	2021-02-02	2020-21	11	0	11	8	3	3	3	7	7	12	21	7	14	0	0	0.8260869565217391	0.7380952380952381	4	3	0	0	38:10	81	80	38	t	112.0	109.9	103.15	t	\N
0022000326	203110	1610612744	2021-02-02	2020-21	11	1	10	7	0	5	0	0	0	1	7	0	3	1	1	0.14285714285714285	0.14285714285714285	7	2	2	5	36:30	78	77	2	t	116.3	110.3	103.89	t	\N
0022000326	1626162	1610612744	2021-02-02	2020-21	1	0	1	2	1	1	0	1	2	5	11	1	3	4	2	0.5	0.5	-25	0	0	4	26:17	50	51	12	t	88.2	134.6	94.05	t	\N
0022000326	1626172	1610612744	2021-02-02	2020-21	3	3	0	3	0	0	0	0	0	2	5	0	0	3	1	0.4	0.4	5	0	0	1	13:20	27	27	4	t	128.6	114.8	99.0	t	\N
0022000326	1629308	1610612744	2021-02-02	2020-21	2	1	1	1	1	0	0	1	1	6	9	3	3	2	1	0.8888888888888888	0.8333333333333334	-8	1	1	4	26:53	54	54	16	f	82.5	98.2	100.85	t	\N
0022000326	203145	1610612744	2021-02-02	2020-21	2	1	1	3	1	0	0	2	2	3	4	2	3	1	1	1.0	1.0	16	2	0	4	17:02	36	36	10	f	132.4	89.2	104.31	t	\N
0022000326	1627814	1610612744	2021-02-02	2020-21	3	0	3	2	0	0	0	0	0	1	4	0	2	0	0	0.25	0.25	-11	0	0	2	14:43	28	27	2	f	82.8	125.0	92.87	t	\N
0022000326	1629672	1610612744	2021-02-02	2020-21	0	0	0	0	0	1	0	3	6	1	4	0	0	2	1	0.35714285714285715	0.25	-8	0	0	0	14:03	25	24	5	f	100.0	134.6	90.53	t	\N
0022000326	202954	1610612744	2021-02-02	2020-21	1	0	1	1	0	0	0	0	0	1	2	1	1	0	0	0.75	0.75	-11	1	0	2	12:08	21	20	3	f	63.6	119.0	84.96	t	\N
0022000326	1628539	1610612744	2021-02-02	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	1	0	0	1	02:40	6	6	0	f	216.7	171.4	117.37	t	\N
0022000326	1	1610612744	2021-02-02	2020-21	3	1	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000325	203924	1610612765	2021-02-02	2020-21	4	0	4	4	3	1	0	7	8	9	18	2	5	4	2	0.6136363636363636	0.5555555555555556	-6	0	3	4	38:28	80	79	27	t	101.2	110.0	100.46	f	\N
0022000325	1626153	1610612765	2021-02-02	2020-21	5	0	5	1	1	2	2	0	0	4	13	0	3	4	2	0.3076923076923077	0.3076923076923077	-14	4	0	1	31:51	65	65	8	t	90.8	110.6	98.71	f	\N
0022000325	201933	1610612765	2021-02-02	2020-21	3	0	3	2	1	3	2	2	3	4	13	1	6	0	0	0.39285714285714285	0.34615384615384615	-16	1	0	0	29:24	61	59	11	t	86.9	115.0	98.78	f	\N
0022000325	203486	1610612765	2021-02-02	2020-21	14	6	8	2	0	0	0	3	3	7	11	0	0	7	7	0.7083333333333334	0.6363636363636364	-19	1	0	2	28:16	58	56	17	t	87.9	120.7	98.49	f	\N
0022000325	201961	1610612765	2021-02-02	2020-21	2	1	1	1	1	1	1	1	1	1	7	0	2	3	0	0.14285714285714285	0.14285714285714285	-20	0	0	2	18:09	37	36	3	t	83.8	137.8	97.85	f	\N
0022000325	1628367	1610612765	2021-02-02	2020-21	8	3	5	2	2	6	4	5	5	7	15	3	7	3	2	0.6470588235294118	0.5666666666666667	8	0	2	3	29:51	62	64	22	f	115.6	101.5	103.72	f	\N
0022000325	1630191	1610612765	2021-02-02	2020-21	5	2	3	1	0	0	0	0	0	2	3	0	0	2	1	0.6666666666666666	0.6666666666666666	7	0	0	2	19:44	41	44	4	f	125.6	106.8	105.81	f	\N
0022000325	203585	1610612765	2021-02-02	2020-21	2	0	2	3	0	1	0	0	0	2	5	1	1	2	1	0.5	0.5	2	0	0	3	16:09	34	35	5	f	131.4	125.7	104.02	f	\N
0022000325	1629635	1610612765	2021-02-02	2020-21	1	0	1	2	0	1	0	0	0	0	1	0	0	0	0	0.0	0.0	-2	1	0	2	12:07	25	27	0	f	130.8	133.3	104.98	f	\N
0022000325	1630180	1610612765	2021-02-02	2020-21	1	0	1	0	0	0	0	0	0	2	6	1	2	1	1	0.4166666666666667	0.4166666666666667	9	0	0	1	10:49	22	23	5	f	130.4	91.3	102.06	f	\N
0022000325	1629004	1610612765	2021-02-02	2020-21	1	0	1	0	0	0	0	0	0	1	1	1	1	0	0	1.5	1.5	-9	0	0	1	05:12	10	12	3	f	100.0	166.7	106.05	f	\N
0022000325	0	1610612765	2021-02-02	2020-21	5	4	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000355	1	1610612740	2021-02-06	2020-21	4	2	2	0	0	3	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000325	1628378	1610612762	2021-02-02	2020-21	6	1	5	1	0	1	1	8	11	10	17	4	7	6	4	0.7619047619047619	0.7058823529411765	23	1	0	0	34:37	69	70	32	t	121.4	87.3	97.76	t	\N
0022000325	1626220	1610612762	2021-02-02	2020-21	13	2	11	3	1	2	1	0	0	5	11	2	6	4	2	0.5454545454545454	0.5454545454545454	17	3	1	3	33:48	68	69	12	t	114.5	89.9	97.99	t	\N
0022000325	202711	1610612762	2021-02-02	2020-21	3	0	3	3	2	1	1	4	4	5	12	4	8	1	1	0.6428571428571429	0.5833333333333334	24	1	0	2	32:23	65	66	18	t	118.2	80.6	98.57	t	\N
0022000325	201144	1610612762	2021-02-02	2020-21	4	1	3	5	1	2	1	4	4	7	15	2	6	3	3	0.5882352941176471	0.5333333333333333	-9	1	0	0	32:10	67	66	20	t	101.4	116.2	102.22	t	\N
0022000325	203497	1610612762	2021-02-02	2020-21	7	1	6	2	1	3	2	5	6	2	4	0	0	3	2	0.6428571428571429	0.5	-7	0	3	3	29:29	60	59	9	t	106.5	117.7	100.94	t	\N
0022000325	204060	1610612762	2021-02-02	2020-21	3	1	2	6	3	2	1	2	2	1	5	1	4	1	0	0.4166666666666667	0.3	4	1	0	2	24:02	54	51	5	f	116.7	111.3	106.85	t	\N
0022000325	203903	1610612762	2021-02-02	2020-21	0	0	0	1	0	2	0	0	0	5	10	2	6	1	1	0.6	0.6	0	0	0	1	21:45	47	46	12	f	127.1	129.8	104.83	t	\N
0022000325	202324	1610612762	2021-02-02	2020-21	6	1	5	1	0	0	0	2	2	2	4	0	1	2	1	0.6	0.5	19	1	2	4	18:31	40	40	6	f	127.5	80.0	103.69	t	\N
0022000325	1627777	1610612762	2021-02-02	2020-21	2	1	1	1	1	0	0	0	0	1	4	1	4	0	0	0.375	0.375	-11	1	0	2	13:15	30	28	3	f	106.7	148.3	106.87	t	\N
0022000325	1	1610612762	2021-02-02	2020-21	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000322	1629630	1610612763	2021-02-02	2020-21	1	0	1	5	4	4	2	6	6	2	10	0	1	6	2	0.38461538461538464	0.2	-24	2	1	1	28:35	62	62	10	t	108.1	140.0	106.6	f	\N
0022000322	1628415	1610612763	2021-02-02	2020-21	3	1	2	1	0	2	1	3	3	10	18	2	5	6	3	0.6578947368421053	0.6111111111111112	-25	3	1	1	27:36	59	61	25	t	105.0	139.7	106.96	f	\N
0022000322	1629634	1610612763	2021-02-02	2020-21	3	1	2	2	1	0	0	1	1	4	7	0	1	2	2	0.6428571428571429	0.5714285714285714	-22	2	0	2	25:24	55	56	9	t	101.8	138.6	106.77	f	\N
0022000322	1630214	1610612763	2021-02-02	2020-21	4	1	3	2	1	1	1	2	2	5	10	0	0	5	4	0.5454545454545454	0.5	-20	0	2	5	22:59	49	49	12	t	112.0	146.2	106.51	f	\N
0022000322	203937	1610612763	2021-02-02	2020-21	5	3	2	2	1	2	1	2	2	2	7	0	2	3	1	0.375	0.2857142857142857	-19	1	0	2	20:57	45	45	6	t	111.1	150.0	104.2	f	\N
0022000322	1630217	1610612763	2021-02-02	2020-21	3	1	2	5	4	2	1	1	1	6	13	3	6	4	1	0.5769230769230769	0.5769230769230769	2	0	0	4	26:12	57	54	16	f	115.8	110.3	105.34	f	\N
0022000322	203476	1610612763	2021-02-02	2020-21	6	0	6	1	1	2	0	3	4	1	4	0	0	2	1	0.4166666666666667	0.25	2	1	1	3	25:01	55	54	5	f	109.1	107.4	104.57	f	\N
0022000322	1629001	1610612763	2021-02-02	2020-21	2	0	2	6	1	3	2	3	3	4	8	1	5	2	2	0.6666666666666666	0.5625	5	0	2	2	22:01	49	47	12	f	114.3	106.3	105.79	f	\N
0022000322	1626145	1610612763	2021-02-02	2020-21	3	1	2	3	0	0	0	0	0	5	10	2	3	2	1	0.6	0.6	3	0	0	0	20:59	45	44	12	f	113.3	109.1	101.84	f	\N
0022000322	1629723	1610612763	2021-02-02	2020-21	6	2	4	0	0	0	0	2	2	3	6	1	2	3	2	0.6428571428571429	0.5833333333333334	8	2	0	2	20:16	44	43	9	f	122.7	102.2	105.39	f	\N
0022000322	0	1610612763	2021-02-02	2020-21	6	5	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000322	1627734	1610612754	2021-02-02	2020-21	13	4	9	5	1	3	1	4	6	13	15	2	2	11	10	0.8888888888888888	0.9333333333333333	21	2	0	3	35:02	73	75	32	t	132.9	106.7	103.44	t	\N
0022000322	1626167	1610612754	2021-02-02	2020-21	11	1	10	3	2	4	3	1	2	9	13	3	6	5	4	0.7857142857142857	0.8076923076923077	31	0	5	4	31:38	70	69	22	t	132.9	94.3	108.46	t	\N
0022000322	203200	1610612754	2021-02-02	2020-21	1	0	1	2	2	1	0	2	2	3	6	2	4	1	1	0.7142857142857143	0.6666666666666666	24	0	2	4	31:25	69	69	10	t	134.8	98.6	106.22	t	\N
0022000322	1627763	1610612754	2021-02-02	2020-21	2	0	2	7	3	2	1	3	3	9	16	2	5	7	5	0.6470588235294118	0.625	20	1	0	2	28:49	60	60	23	t	140.3	111.7	101.61	t	\N
0022000322	203087	1610612754	2021-02-02	2020-21	5	2	3	3	1	1	1	2	2	6	9	5	7	2	1	0.95	0.9444444444444444	18	1	0	0	26:40	56	56	19	t	139.7	112.5	102.56	t	\N
0022000322	204456	1610612754	2021-02-02	2020-21	3	0	3	7	5	3	1	0	2	3	7	0	1	2	1	0.375	0.42857142857142855	16	4	1	2	28:35	63	64	6	f	121.9	96.9	107.51	t	\N
0022000322	203926	1610612754	2021-02-02	2020-21	5	2	3	1	0	2	2	0	0	5	9	1	3	5	4	0.6111111111111112	0.6111111111111112	6	0	0	0	22:33	49	51	11	f	124.0	109.8	107.49	t	\N
0022000322	1628988	1610612754	2021-02-02	2020-21	1	0	1	2	2	2	2	3	6	1	6	1	1	2	0	0.3333333333333333	0.25	-8	0	0	1	18:19	41	42	6	f	100.0	121.4	111.37	t	\N
0022000322	1629048	1610612754	2021-02-02	2020-21	0	0	0	0	0	0	0	3	4	0	0	0	0	0	0	0.75	0.0	-11	0	0	3	06:37	13	14	3	f	92.9	171.4	101.56	t	\N
0022000322	203960	1610612754	2021-02-02	2020-21	1	0	1	0	0	0	0	2	2	0	1	0	0	0	0	0.5	0.0	-7	0	0	0	04:12	9	8	2	f	77.8	175.0	97.14	t	\N
0022000322	1628410	1610612754	2021-02-02	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-10	0	0	0	03:05	6	6	0	f	66.7	233.3	93.41	t	\N
0022000322	1629103	1610612754	2021-02-02	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-10	0	0	0	03:05	6	6	0	f	66.7	233.3	93.41	t	\N
0022000322	1	1610612754	2021-02-02	2020-21	6	3	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000324	202695	1610612746	2021-02-02	2020-21	5	1	4	5	1	0	0	8	9	12	24	1	5	6	4	0.5892857142857143	0.5208333333333334	7	4	2	1	39:15	82	81	33	t	128.6	123.2	101.5	f	\N
0022000324	201587	1610612746	2021-02-02	2020-21	6	2	4	0	0	0	0	2	3	7	10	5	8	2	2	0.9545454545454546	0.95	2	1	0	1	37:54	80	79	21	t	121.0	121.5	101.32	f	\N
0022000324	202331	1610612746	2021-02-02	2020-21	4	2	2	6	1	3	3	1	1	11	24	3	7	8	5	0.5416666666666666	0.5208333333333334	-3	2	0	4	35:49	73	72	26	t	117.6	121.6	99.13	f	\N
0022000324	202704	1610612746	2021-02-02	2020-21	5	0	5	4	1	2	2	1	1	3	9	2	6	1	0	0.5	0.4444444444444444	-6	2	0	3	34:42	71	72	9	t	119.2	125.7	101.67	f	\N
0022000324	201586	1610612746	2021-02-02	2020-21	10	3	7	1	0	0	0	2	2	3	11	1	2	3	1	0.375	0.3181818181818182	1	0	2	2	20:50	43	43	9	t	111.4	111.6	100.22	f	\N
0022000324	202694	1610612746	2021-02-02	2020-21	4	0	4	0	0	0	0	1	1	6	10	3	6	0	0	0.8	0.75	-9	1	1	2	30:35	63	64	16	f	120.0	133.8	102.02	f	\N
0022000324	101150	1610612746	2021-02-02	2020-21	1	1	0	5	2	1	0	0	0	2	7	0	0	1	0	0.2857142857142857	0.2857142857142857	-4	2	0	1	20:26	40	40	4	f	117.1	123.8	97.49	f	\N
0022000324	1627826	1610612746	2021-02-02	2020-21	3	2	1	0	0	2	1	0	0	1	2	0	0	2	1	0.5	0.5	-8	0	0	4	16:14	30	31	2	f	112.5	137.5	94.71	f	\N
0022000324	1628379	1610612746	2021-02-02	2020-21	1	0	1	0	0	0	0	0	0	0	2	0	2	0	0	0.0	0.0	0	0	0	0	04:15	8	8	0	f	112.5	100.0	96.0	f	\N
0022000324	0	1610612746	2021-02-02	2020-21	4	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000324	201935	1610612751	2021-02-02	2020-21	11	1	10	14	8	3	1	8	8	7	15	1	6	3	3	0.6388888888888888	0.5	8	1	0	5	43:04	89	89	23	t	124.7	114.4	99.75	t	\N
0022000324	201142	1610612751	2021-02-02	2020-21	9	0	9	0	0	5	5	5	5	11	13	1	1	3	3	0.9333333333333333	0.8846153846153846	-8	0	1	3	38:10	78	80	28	t	121.3	129.6	101.24	t	\N
0022000324	202681	1610612751	2021-02-02	2020-21	5	1	4	2	1	1	1	3	3	15	23	6	8	5	4	0.8125	0.782608695652174	-4	1	2	4	36:37	76	76	39	t	124.7	128.2	101.59	t	\N
0022000324	203925	1610612751	2021-02-02	2020-21	4	1	3	3	0	2	1	0	0	5	11	3	7	3	2	0.5909090909090909	0.5909090909090909	16	0	0	2	34:37	72	71	13	t	129.2	106.9	99.84	t	\N
0022000324	201145	1610612751	2021-02-02	2020-21	4	0	4	1	1	1	1	2	3	2	8	1	5	2	1	0.3888888888888889	0.3125	-2	1	0	1	31:31	66	67	7	t	121.2	120.6	102.04	t	\N
0022000324	201599	1610612751	2021-02-02	2020-21	6	1	5	2	1	0	0	1	4	3	4	0	0	4	3	0.5833333333333334	0.75	6	1	0	0	16:29	32	31	7	f	133.3	115.2	96.1	t	\N
0022000324	1628971	1610612751	2021-02-02	2020-21	1	0	1	1	0	1	1	0	0	0	0	0	0	0	0	0.0	0.0	4	1	0	1	16:19	31	31	0	f	120.6	115.6	97.08	t	\N
0022000324	1627789	1610612751	2021-02-02	2020-21	3	1	2	1	1	1	1	0	0	1	2	1	2	0	0	0.75	0.75	-5	1	1	0	12:18	24	24	3	f	124.0	144.0	97.56	t	\N
0022000324	1629013	1610612751	2021-02-02	2020-21	1	1	0	1	0	2	1	2	3	1	3	0	2	1	1	0.5	0.3333333333333333	5	0	0	1	10:55	22	21	4	f	122.7	100.0	96.73	t	\N
0022000324	1	1610612751	2021-02-02	2020-21	3	2	1	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000323	1627832	1610612761	2021-02-02	2020-21	3	0	3	2	1	1	1	9	9	17	23	11	14	8	6	1.0	0.9782608695652174	20	3	3	2	37:06	77	78	54	t	133.8	106.4	100.27	f	\N
0022000323	1627783	1610612761	2021-02-02	2020-21	5	1	4	8	2	4	3	4	4	4	11	0	2	7	3	0.46153846153846156	0.36363636363636365	15	1	0	1	36:24	75	75	12	t	123.7	103.9	100.22	f	\N
0022000323	200768	1610612761	2021-02-02	2020-21	10	1	9	10	6	3	0	3	5	4	11	3	8	1	1	0.5384615384615384	0.5	19	4	0	3	34:25	71	72	14	t	127.8	100.0	101.11	f	\N
0022000323	203382	1610612761	2021-02-02	2020-21	5	0	5	1	0	0	0	0	0	2	4	0	2	1	1	0.5	0.5	25	0	0	1	32:13	70	68	4	t	134.3	100.0	103.55	f	\N
0022000323	1626181	1610612761	2021-02-02	2020-21	2	0	2	2	0	2	0	5	5	7	15	4	9	5	3	0.6764705882352942	0.6	11	4	0	3	28:40	63	62	23	t	125.4	106.3	106.33	f	\N
0022000323	1627761	1610612761	2021-02-02	2020-21	5	1	4	5	4	0	0	0	0	2	6	0	2	3	2	0.3333333333333333	0.3333333333333333	8	2	0	2	18:56	37	39	4	f	129.7	102.6	96.34	f	\N
0022000323	1628449	1610612761	2021-02-02	2020-21	5	2	3	2	1	0	0	2	2	2	3	1	1	1	1	0.875	0.8333333333333334	-1	0	1	2	18:43	35	38	7	f	113.9	110.5	94.89	f	\N
0022000323	1629139	1610612761	2021-02-02	2020-21	1	0	1	0	0	1	0	0	0	1	2	0	1	1	1	0.5	0.5	0	0	0	0	11:05	22	22	2	f	113.0	113.0	99.61	f	\N
0022000323	1629056	1610612761	2021-02-02	2020-21	1	0	1	0	0	0	0	0	0	0	1	0	0	1	0	0.0	0.0	-7	0	0	1	07:26	14	16	0	f	113.3	150.0	100.09	f	\N
0022000323	1626169	1610612761	2021-02-02	2020-21	0	0	0	2	0	0	0	0	0	0	2	0	1	0	0	0.0	0.0	-6	0	0	3	07:11	16	15	0	f	75.0	112.5	106.91	f	\N
0022000323	1628778	1610612761	2021-02-02	2020-21	2	0	2	0	0	0	0	0	0	1	2	1	2	0	0	0.75	0.75	-3	0	0	0	02:37	5	5	3	f	60.0	120.0	91.72	f	\N
0022000323	1629744	1610612761	2021-02-02	2020-21	0	0	0	0	0	0	0	0	0	0	2	0	2	0	0	0.0	0.0	-3	0	0	0	02:37	5	5	0	f	60.0	120.0	91.72	f	\N
0022000323	1630201	1610612761	2021-02-02	2020-21	1	1	0	0	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	-3	0	0	0	02:37	5	5	0	f	60.0	120.0	91.72	f	\N
0022000323	0	1610612761	2021-02-02	2020-21	4	1	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000323	202696	1610612753	2021-02-02	2020-21	18	3	15	4	1	2	2	1	1	9	19	2	7	2	2	0.5263157894736842	0.5263157894736842	-14	0	0	3	37:14	78	77	21	t	105.1	124.4	101.2	t	\N
0022000323	1630175	1610612753	2021-02-02	2020-21	7	1	6	2	0	4	4	1	1	7	12	1	3	5	4	0.6666666666666666	0.625	-19	1	0	1	30:35	65	65	16	t	100.0	128.8	103.59	t	\N
0022000323	203095	1610612753	2021-02-02	2020-21	5	0	5	4	1	6	5	6	8	7	15	1	5	1	1	0.5588235294117647	0.5	-14	0	2	4	29:00	62	63	21	t	103.1	127.0	105.1	t	\N
0022000323	1629109	1610612753	2021-02-02	2020-21	0	0	0	3	2	0	0	0	0	1	5	1	4	0	0	0.3	0.3	3	1	1	2	25:19	54	54	3	t	110.7	107.3	105.23	t	\N
0022000323	203516	1610612753	2021-02-02	2020-21	4	2	2	1	1	1	1	1	1	4	6	1	2	4	3	0.8333333333333334	0.75	-2	1	0	1	19:20	41	42	10	t	109.3	114.0	106.76	t	\N
0022000323	203082	1610612753	2021-02-02	2020-21	3	0	3	2	1	1	0	0	0	1	8	1	5	1	0	0.1875	0.1875	-14	0	1	4	23:45	49	46	3	f	100.0	137.0	96.0	t	\N
0022000323	1628407	1610612753	2021-02-02	2020-21	5	1	4	1	0	0	0	1	1	5	10	4	6	3	1	0.75	0.7	-3	0	0	0	21:18	43	42	15	f	109.1	121.4	96.9	t	\N
0022000323	1629643	1610612753	2021-02-02	2020-21	0	0	0	3	0	1	1	0	0	4	5	2	2	1	0	1.0	1.0	6	1	0	4	17:59	37	36	10	f	118.4	105.4	100.09	t	\N
0022000323	1629648	1610612753	2021-02-02	2020-21	2	1	1	4	0	0	0	0	0	1	6	1	4	0	0	0.25	0.25	4	0	0	1	17:25	35	34	3	f	120.0	111.8	95.08	t	\N
0022000323	203920	1610612753	2021-02-02	2020-21	1	1	0	0	0	1	1	2	2	2	3	0	0	2	1	0.75	0.6666666666666666	-25	0	0	2	15:28	31	31	6	f	83.9	164.5	96.21	t	\N
0022000323	1628964	1610612753	2021-02-02	2020-21	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	3	0	0	0	02:37	5	5	0	f	120.0	60.0	91.72	t	\N
0022000331	203078	1610612764	2021-02-03	2020-21	8	4	4	4	0	5	3	6	8	11	23	4	11	4	3	0.5925925925925926	0.5652173913043478	-4	1	1	4	38:05	79	77	32	t	98.7	105.1	98.94	f	\N
0022000331	1629060	1610612764	2021-02-03	2020-21	9	3	6	5	0	3	1	5	9	3	11	0	2	2	1	0.36666666666666664	0.2727272727272727	5	1	0	1	35:24	72	71	11	t	105.6	100.0	96.95	f	\N
0022000331	1630166	1610612764	2021-02-03	2020-21	4	0	4	0	0	3	2	0	0	5	9	3	5	3	2	0.7222222222222222	0.7222222222222222	-9	1	0	2	32:55	65	66	13	t	101.5	111.9	96.24	f	\N
0022000331	202397	1610612764	2021-02-03	2020-21	4	0	4	6	2	1	1	0	0	0	8	0	0	4	0	0.0	0.0	1	1	0	3	27:04	54	55	0	t	101.9	96.4	97.54	f	\N
0022000331	201577	1610612764	2021-02-03	2020-21	4	2	2	0	0	1	1	0	0	4	6	1	1	3	2	0.75	0.75	-1	0	2	1	18:13	38	37	9	t	97.4	100.0	100.13	f	\N
0022000331	203458	1610612764	2021-02-03	2020-21	8	2	6	3	0	0	0	4	4	3	4	0	1	3	3	0.8333333333333334	0.75	7	0	0	1	27:22	55	55	10	f	108.9	96.4	98.27	f	\N
0022000331	202722	1610612764	2021-02-03	2020-21	4	1	3	1	1	4	3	2	2	3	8	3	8	0	0	0.6111111111111112	0.5625	14	2	1	2	26:11	55	54	11	f	116.4	89.3	101.74	f	\N
0022000331	1628972	1610612764	2021-02-03	2020-21	7	2	5	1	1	0	0	1	2	3	9	2	4	0	0	0.45	0.4444444444444444	2	0	1	3	21:01	44	43	9	f	109.1	104.5	100.43	f	\N
0022000331	1629726	1610612764	2021-02-03	2020-21	1	0	1	0	0	0	0	0	0	3	6	2	5	1	1	0.6666666666666666	0.6666666666666666	0	0	0	0	13:45	28	27	8	f	100.0	107.1	101.24	f	\N
0022000331	0	1610612764	2021-02-03	2020-21	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000331	202710	1610612748	2021-02-03	2020-21	8	3	5	9	3	0	0	9	11	5	11	0	1	4	3	0.59375	0.45454545454545453	-1	1	0	1	37:09	75	74	19	t	100.0	101.3	96.9	t	\N
0022000331	1628389	1610612748	2021-02-03	2020-21	11	2	9	6	1	3	1	1	2	8	15	0	0	5	4	0.53125	0.5333333333333333	2	2	1	5	34:55	71	71	17	t	101.4	100.0	99.67	t	\N
0022000331	1629639	1610612748	2021-02-03	2020-21	2	0	2	0	0	1	1	0	0	8	15	4	9	0	0	0.6666666666666666	0.6666666666666666	-3	0	0	2	34:15	70	70	20	t	100.0	104.3	98.1	t	\N
0022000331	1629130	1610612748	2021-02-03	2020-21	2	0	2	3	2	1	0	0	0	3	9	3	8	0	0	0.5	0.5	3	1	0	2	27:53	55	56	9	t	110.9	101.8	96.4	t	\N
0022000331	203482	1610612748	2021-02-03	2020-21	11	2	9	0	0	1	0	2	2	2	9	2	8	0	0	0.4	0.3333333333333333	8	1	1	3	27:02	56	54	8	t	103.6	90.9	98.59	t	\N
0022000331	201609	1610612748	2021-02-03	2020-21	2	1	1	4	1	6	4	1	1	4	11	1	4	0	0	0.45454545454545453	0.4090909090909091	-10	1	0	2	28:26	58	57	10	f	91.5	110.3	98.76	t	\N
0022000331	2738	1610612748	2021-02-03	2020-21	2	0	2	2	0	1	0	0	0	1	3	1	3	0	0	0.5	0.5	-11	2	0	3	20:58	41	44	3	f	97.7	117.8	100.68	t	\N
0022000331	202340	1610612748	2021-02-03	2020-21	2	1	1	0	0	0	0	0	0	3	5	1	1	1	1	0.7	0.7	1	1	0	3	13:11	26	29	7	f	122.2	110.3	101.95	t	\N
0022000331	1630173	1610612748	2021-02-03	2020-21	4	0	4	0	0	0	0	3	6	2	4	0	0	4	2	0.5	0.5	-5	2	0	0	13:05	26	27	7	f	100.0	114.8	97.22	t	\N
0022000331	1629622	1610612748	2021-02-03	2020-21	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	1	0	0	0	03:06	7	8	0	f	87.5	75.0	123.87	t	\N
0022000331	1	1610612748	2021-02-03	2020-21	1	1	0	0	0	3	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000327	202699	1610612755	2021-02-03	2020-21	6	1	5	4	2	1	0	9	9	8	15	1	4	4	3	0.6842105263157895	0.5666666666666667	8	0	0	1	37:45	80	79	26	t	118.5	110.0	102.36	f	\N
0022000327	1627732	1610612755	2021-02-03	2020-21	6	2	4	9	0	5	1	1	2	7	12	0	0	8	4	0.5769230769230769	0.5833333333333334	16	1	1	4	34:58	74	72	15	t	121.3	104.2	100.9	f	\N
0022000327	203954	1610612755	2021-02-03	2020-21	11	0	11	2	1	4	1	9	10	11	18	3	5	4	3	0.7391304347826086	0.6944444444444444	12	2	1	3	33:45	70	67	34	t	127.1	113.2	98.19	f	\N
0022000327	201980	1610612755	2021-02-03	2020-21	1	0	1	1	0	1	0	0	1	6	9	4	7	0	0	0.8888888888888888	0.8888888888888888	6	2	2	1	30:58	64	64	16	t	122.7	115.4	101.53	f	\N
0022000327	203552	1610612755	2021-02-03	2020-21	0	0	0	3	1	1	0	0	0	0	3	0	2	0	0	0.0	0.0	18	0	1	4	28:34	57	55	0	t	127.6	98.2	96.66	f	\N
0022000327	1629680	1610612755	2021-02-03	2020-21	2	2	0	0	0	0	0	0	0	2	5	1	2	3	1	0.5	0.5	-11	1	0	3	20:16	47	50	5	f	95.8	114.0	115.98	f	\N
0022000327	1629003	1610612755	2021-02-03	2020-21	1	1	0	2	2	0	0	4	4	4	12	1	4	4	1	0.46153846153846156	0.375	-5	0	1	2	18:54	42	43	13	f	100.0	106.8	109.21	f	\N
0022000327	1627788	1610612755	2021-02-03	2020-21	1	0	1	0	0	2	1	0	0	2	3	0	1	2	2	0.6666666666666666	0.6666666666666666	-1	1	0	0	16:05	36	36	4	f	89.2	94.4	108.93	f	\N
0022000327	2730	1610612755	2021-02-03	2020-21	10	4	6	1	0	3	1	3	6	1	2	0	0	2	1	0.5	0.5	-3	2	0	2	14:10	32	33	5	f	87.9	97.0	111.81	f	\N
0022000327	1630178	1610612755	2021-02-03	2020-21	2	0	2	1	1	0	0	0	0	0	1	0	0	1	0	0.0	0.0	-5	0	0	1	04:35	8	11	0	f	100.0	116.7	109.53	f	\N
0022000327	0	1610612755	2021-02-03	2020-21	7	0	7	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000327	1628984	1610612766	2021-02-03	2020-21	1	0	1	7	2	2	2	8	10	4	15	2	11	0	0	0.47368421052631576	0.3333333333333333	6	0	0	3	39:45	83	84	18	t	122.9	112.9	101.43	t	\N
0022000327	1630163	1610612766	2021-02-03	2020-21	7	1	6	3	2	6	2	3	3	8	16	3	6	6	4	0.6470588235294118	0.59375	-3	2	0	2	38:18	83	84	22	t	103.6	105.9	105.9	t	\N
0022000327	202330	1610612766	2021-02-03	2020-21	6	1	5	9	4	2	2	2	2	9	19	2	4	6	2	0.55	0.5263157894736842	8	0	0	1	37:33	82	80	22	t	118.3	108.5	104.82	t	\N
0022000327	1628970	1610612766	2021-02-03	2020-21	8	1	7	3	1	3	2	0	0	7	11	2	5	6	5	0.7272727272727273	0.7272727272727273	-12	0	1	5	32:18	65	69	16	t	100.0	114.5	101.09	t	\N
0022000327	203469	1610612766	2021-02-03	2020-21	8	5	3	4	0	0	0	3	4	3	9	0	1	7	3	0.4090909090909091	0.3333333333333333	-5	0	1	5	31:01	64	65	9	t	120.3	124.2	100.59	t	\N
0022000327	1628370	1610612766	2021-02-03	2020-21	2	0	2	1	1	2	1	2	2	4	10	3	7	1	0	0.5909090909090909	0.55	-13	0	0	1	27:38	62	58	13	f	96.8	121.7	105.91	t	\N
0022000327	1628997	1610612766	2021-02-03	2020-21	2	1	1	1	0	1	0	1	2	3	5	2	3	2	1	0.75	0.8	-7	1	1	3	17:33	37	37	9	f	97.4	118.9	102.56	t	\N
0022000327	202687	1610612766	2021-02-03	2020-21	4	1	3	0	0	0	0	0	0	1	2	0	0	2	1	0.5	0.5	2	1	1	1	11:52	27	26	2	f	88.9	84.6	107.19	t	\N
0022000327	1628998	1610612766	2021-02-03	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-11	0	0	1	04:02	7	7	0	f	57.1	187.5	89.26	t	\N
0022000327	1	1610612766	2021-02-03	2020-21	5	3	2	0	0	3	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000336	1628369	1610612738	2021-02-03	2020-21	9	1	8	10	2	4	1	3	3	11	26	2	10	5	4	0.5	0.46153846153846156	6	2	0	2	38:54	79	81	27	t	123.2	115.9	101.18	f	\N
0022000336	1627759	1610612738	2021-02-03	2020-21	3	0	3	4	3	1	1	5	6	7	18	2	6	5	3	0.5	0.4444444444444444	-4	0	1	2	33:49	70	71	21	t	112.5	118.1	102.2	f	\N
0022000336	1628464	1610612738	2021-02-03	2020-21	4	0	4	4	3	0	0	3	4	3	5	2	4	1	1	0.7857142857142857	0.8	-3	0	1	1	27:24	55	57	11	t	115.3	124.6	101.61	f	\N
0022000336	201952	1610612738	2021-02-03	2020-21	1	1	0	1	0	1	1	4	4	1	6	1	3	1	0	0.4375	0.25	5	1	0	2	23:08	48	47	7	t	126.5	118.8	100.66	f	\N
0022000336	202684	1610612738	2021-02-03	2020-21	10	3	7	0	0	1	0	3	4	7	9	0	0	7	6	0.85	0.7777777777777778	5	0	0	2	22:20	47	45	17	t	116.7	108.5	102.1	f	\N
0022000336	1629682	1610612738	2021-02-03	2020-21	2	0	2	5	3	0	0	1	2	1	8	0	3	0	0	0.16666666666666666	0.125	-6	2	0	1	23:06	47	48	3	f	91.7	102.0	100.78	f	\N
0022000336	1629057	1610612738	2021-02-03	2020-21	8	3	5	2	1	3	2	1	2	4	4	0	0	4	4	0.9	1.0	0	2	1	2	18:57	40	41	9	f	100.0	100.0	103.85	f	\N
0022000336	1629684	1610612738	2021-02-03	2020-21	5	3	2	0	0	2	2	2	4	1	3	1	3	0	0	0.5	0.5	-10	0	0	4	14:59	33	32	5	f	88.6	128.1	107.22	f	\N
0022000336	1629750	1610612738	2021-02-03	2020-21	1	0	1	1	0	1	0	0	0	1	3	1	1	2	0	0.5	0.5	-15	1	0	2	14:56	31	32	3	f	71.9	115.2	104.5	f	\N
0022000336	1628400	1610612738	2021-02-03	2020-21	2	0	2	1	0	0	0	0	0	2	2	1	1	0	0	1.25	1.25	2	1	0	1	14:30	29	29	5	f	106.5	106.9	99.31	f	\N
0022000336	1629035	1610612738	2021-02-03	2020-21	0	0	0	0	0	0	0	0	0	1	2	1	2	0	0	0.75	0.75	-5	0	0	2	07:57	16	17	3	f	83.3	117.6	105.68	f	\N
0022000336	0	1610612738	2021-02-03	2020-21	5	2	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000336	1627741	1610612758	2021-02-03	2020-21	11	1	10	0	0	2	2	2	2	5	16	3	10	3	1	0.4411764705882353	0.40625	8	1	0	3	38:10	80	79	15	t	117.5	106.2	101.24	t	\N
0022000336	1628368	1610612758	2021-02-03	2020-21	1	0	1	11	1	3	3	6	6	9	17	2	5	5	3	0.65	0.5882352941176471	4	2	0	2	38:05	79	78	26	t	122.8	114.8	100.83	t	\N
0022000336	203084	1610612758	2021-02-03	2020-21	5	2	3	6	1	1	1	9	10	7	17	1	7	6	4	0.5454545454545454	0.4411764705882353	9	0	1	2	37:03	78	77	24	t	117.9	105.1	101.7	t	\N
0022000336	1626158	1610612758	2021-02-03	2020-21	6	1	5	0	0	1	0	1	1	3	8	0	1	2	1	0.4375	0.375	-4	0	1	5	30:15	61	61	7	t	118.0	120.6	98.43	t	\N
0022000336	1628963	1610612758	2021-02-03	2020-21	6	2	4	0	0	0	0	0	2	4	8	1	2	2	0	0.5	0.5625	-6	0	0	2	19:11	40	40	9	t	100.0	109.5	102.59	t	\N
0022000336	1630169	1610612758	2021-02-03	2020-21	3	2	1	4	2	1	1	0	0	8	15	5	9	2	2	0.7	0.7	13	2	0	1	30:23	63	61	21	f	128.6	106.3	100.29	t	\N
0022000336	202709	1610612758	2021-02-03	2020-21	3	0	3	1	0	1	1	0	0	1	1	0	0	0	0	1.0	1.0	-2	2	0	0	19:45	41	41	2	f	100.0	102.4	100.86	t	\N
0022000336	202355	1610612758	2021-02-03	2020-21	9	4	5	0	0	1	1	1	2	4	7	0	0	3	3	0.5625	0.5714285714285714	6	0	0	3	17:18	38	38	9	f	107.9	87.5	108.17	t	\N
0022000336	203922	1610612758	2021-02-03	2020-21	0	0	0	1	1	0	0	0	0	1	3	1	3	0	0	0.5	0.5	-3	0	0	1	09:50	20	20	3	f	110.0	119.0	100.07	t	\N
0022000336	1	1610612758	2021-02-03	2020-21	5	1	4	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000335	1628969	1610612756	2021-02-03	2020-21	4	3	1	3	2	1	1	0	0	4	12	0	7	2	2	0.3333333333333333	0.3333333333333333	-9	1	3	3	32:57	62	60	8	t	114.3	130.6	91.05	f	\N
0022000335	1626164	1610612756	2021-02-03	2020-21	4	0	4	2	1	3	1	7	8	9	20	0	4	3	2	0.5434782608695652	0.45	-14	0	0	1	31:50	59	59	25	t	111.7	132.8	91.23	f	\N
0022000335	1629028	1610612756	2021-02-03	2020-21	11	4	7	2	0	1	0	1	1	6	9	0	0	8	6	0.7222222222222222	0.6666666666666666	-14	0	1	3	29:06	55	56	13	t	112.5	135.1	93.2	f	\N
0022000335	1629661	1610612756	2021-02-03	2020-21	4	1	3	3	1	1	1	0	0	3	9	2	7	1	0	0.4444444444444444	0.4444444444444444	-25	0	0	3	26:14	50	52	8	t	94.2	139.6	96.09	f	\N
0022000335	101108	1610612756	2021-02-03	2020-21	0	0	0	4	2	1	1	1	1	4	7	1	2	1	1	0.6428571428571429	0.6428571428571429	-20	1	0	2	25:01	47	49	10	t	97.9	134.0	94.02	f	\N
0022000335	1626163	1610612756	2021-02-03	2020-21	7	2	5	1	1	0	0	0	0	3	6	0	2	3	2	0.5	0.5	-17	0	2	1	17:07	34	32	6	f	77.1	125.7	98.15	f	\N
0022000335	202734	1610612756	2021-02-03	2020-21	1	0	1	2	1	1	1	2	2	2	3	1	2	1	1	0.875	0.8333333333333334	-6	1	0	0	16:50	34	31	7	f	102.9	124.2	95.52	f	\N
0022000335	204038	1610612756	2021-02-03	2020-21	1	0	1	2	0	1	0	0	0	2	3	1	1	0	0	0.8333333333333334	0.8333333333333334	-8	0	0	1	16:10	34	33	5	f	100.0	123.5	100.95	f	\N
0022000335	1627846	1610612756	2021-02-03	2020-21	1	0	1	0	0	3	1	3	4	3	6	2	5	0	0	0.6875	0.6666666666666666	-9	0	0	2	13:27	28	28	11	f	100.0	127.6	101.71	f	\N
0022000335	203109	1610612756	2021-02-03	2020-21	2	0	2	1	0	1	0	0	0	1	4	1	4	0	0	0.375	0.375	0	0	0	1	12:51	26	24	3	f	96.3	104.0	97.07	f	\N
0022000335	1627745	1610612756	2021-02-03	2020-21	3	1	2	0	0	0	0	3	4	1	1	0	0	1	1	0.8333333333333334	1.0	4	0	0	1	06:09	12	12	5	f	158.3	125.0	93.66	f	\N
0022000335	1628975	1610612756	2021-02-03	2020-21	0	0	0	5	1	1	1	0	0	0	0	0	0	0	0	0.0	0.0	4	0	0	0	06:09	12	12	0	f	158.3	125.0	93.66	f	\N
0022000335	1630188	1610612756	2021-02-03	2020-21	1	0	1	1	0	0	0	0	0	0	2	0	1	0	0	0.0	0.0	4	0	0	0	06:09	12	12	0	f	158.3	125.0	93.66	f	\N
0022000335	0	1610612756	2021-02-03	2020-21	2	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000335	1627742	1610612740	2021-02-03	2020-21	4	0	4	6	2	0	0	7	7	7	17	2	5	5	3	0.55	0.47058823529411764	21	0	2	2	32:58	62	62	23	t	146.0	114.5	91.0	t	\N
0022000335	1629627	1610612740	2021-02-03	2020-21	7	3	4	6	1	0	0	3	4	12	14	1	1	12	10	0.875	0.8928571428571429	37	1	0	2	32:20	63	63	28	t	141.5	83.3	97.24	t	\N
0022000335	202339	1610612740	2021-02-03	2020-21	3	0	3	3	2	1	1	0	0	4	7	3	6	0	0	0.7857142857142857	0.7857142857142857	25	0	0	0	29:12	55	55	11	t	145.6	103.6	92.88	t	\N
0022000335	203500	1610612740	2021-02-03	2020-21	13	8	5	4	2	0	0	3	4	4	10	0	0	10	4	0.4583333333333333	0.4	21	1	0	2	28:35	53	54	11	t	141.8	103.6	92.36	t	\N
0022000335	1628366	1610612740	2021-02-03	2020-21	6	1	5	1	0	2	0	0	0	7	13	4	7	3	2	0.6923076923076923	0.6923076923076923	12	1	0	4	24:23	46	47	18	t	140.4	112.5	93.51	t	\N
0022000335	1628404	1610612740	2021-02-03	2020-21	3	0	3	2	1	0	0	0	0	4	7	2	3	4	2	0.7142857142857143	0.7142857142857143	2	0	0	0	22:30	41	45	10	f	120.9	111.1	93.87	t	\N
0022000335	1629638	1610612740	2021-02-03	2020-21	2	0	2	5	3	3	2	0	0	3	10	0	5	5	3	0.3	0.3	2	3	0	3	20:25	38	40	6	f	105.0	97.6	95.22	t	\N
0022000335	1626195	1610612740	2021-02-03	2020-21	5	0	5	2	0	0	0	2	4	1	3	0	0	2	1	0.4	0.3333333333333333	1	0	1	3	19:25	39	39	4	f	112.5	110.0	98.88	t	\N
0022000335	200755	1610612740	2021-02-03	2020-21	1	0	1	1	1	0	0	2	2	3	7	2	5	0	0	0.625	0.5714285714285714	15	0	0	0	17:56	35	35	10	f	132.4	94.4	97.7	t	\N
0022000335	1629740	1610612740	2021-02-03	2020-21	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	-12	1	0	3	05:39	12	11	0	f	50.0	163.6	97.7	t	\N
0022000335	1628414	1610612740	2021-02-03	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-4	0	0	1	02:33	6	5	0	f	66.7	160.0	103.53	t	\N
0022000335	1630184	1610612740	2021-02-03	2020-21	0	0	0	0	0	0	0	0	0	1	2	0	1	0	0	0.5	0.5	-4	0	0	0	02:33	6	5	2	f	66.7	160.0	103.53	t	\N
0022000335	1629117	1610612740	2021-02-03	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-6	0	0	0	01:31	4	4	0	f	50.0	200.0	126.59	t	\N
0022000335	1	1610612740	2021-02-03	2020-21	5	4	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000334	1629675	1610612750	2021-02-03	2020-21	11	2	9	3	1	1	1	0	0	3	7	2	3	4	1	0.5714285714285714	0.5714285714285714	-5	2	0	4	32:06	66	67	8	t	105.9	113.2	101.68	f	\N
0022000334	1627736	1610612750	2021-02-03	2020-21	6	1	5	1	0	0	0	1	1	12	18	4	8	5	4	0.8055555555555556	0.7777777777777778	-5	1	0	2	31:42	66	66	29	t	104.3	114.9	102.92	f	\N
0022000334	1630162	1610612750	2021-02-03	2020-21	6	0	6	2	0	0	0	1	2	6	14	1	3	6	2	0.4666666666666667	0.4642857142857143	-5	0	1	1	31:34	65	66	14	t	107.5	114.9	101.88	f	\N
0022000334	1626156	1610612750	2021-02-03	2020-21	2	0	2	5	2	0	0	3	4	8	20	1	7	4	2	0.45454545454545453	0.425	-4	0	3	1	31:19	62	62	20	t	104.7	112.7	97.33	f	\N
0022000334	1629006	1610612750	2021-02-03	2020-21	4	1	3	0	0	3	1	0	0	1	4	1	3	0	0	0.375	0.375	5	0	2	4	24:27	50	53	3	t	114.0	98.1	101.15	f	\N
0022000334	201937	1610612750	2021-02-03	2020-21	7	0	7	7	1	2	2	0	0	4	10	0	1	4	4	0.4	0.4	-6	1	0	2	27:41	59	57	8	f	101.7	110.0	103.17	f	\N
0022000334	1630183	1610612750	2021-02-03	2020-21	1	0	1	2	1	0	0	0	0	1	2	1	1	1	0	0.75	0.75	-3	0	1	3	18:00	38	37	3	f	105.0	115.4	105.34	f	\N
0022000334	1629669	1610612750	2021-02-03	2020-21	1	1	0	0	0	0	0	2	2	3	9	2	3	2	0	0.5	0.4444444444444444	2	1	0	0	16:26	34	33	10	f	102.9	100.0	100.77	f	\N
0022000334	1629020	1610612750	2021-02-03	2020-21	11	4	7	2	0	2	0	0	0	1	2	0	0	2	1	0.5	0.5	2	0	1	2	15:54	33	32	2	f	105.9	103.0	101.13	f	\N
0022000334	1627774	1610612750	2021-02-03	2020-21	0	0	0	0	0	2	1	2	2	4	8	1	4	4	3	0.6111111111111112	0.5625	4	1	1	2	10:51	22	22	11	f	113.0	95.7	101.75	f	\N
0022000334	0	1610612750	2021-02-03	2020-21	5	2	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000334	201942	1610612759	2021-02-03	2020-21	8	2	6	6	3	2	2	10	11	10	19	0	0	6	5	0.6304347826086957	0.5263157894736842	6	0	0	0	40:17	84	84	30	t	109.4	102.4	101.28	t	\N
0022000334	1627751	1610612759	2021-02-03	2020-21	8	3	5	1	0	1	1	1	3	9	10	0	0	7	6	0.8636363636363636	0.9	1	1	4	1	33:39	69	69	19	t	111.4	108.5	100.56	t	\N
0022000334	1627749	1610612759	2021-02-03	2020-21	11	1	10	6	3	1	1	0	0	6	16	3	6	3	0	0.46875	0.46875	-5	2	0	3	30:25	62	60	15	t	103.2	114.8	97.84	t	\N
0022000334	1629022	1610612759	2021-02-03	2020-21	1	0	1	1	1	0	0	0	0	1	10	0	3	2	1	0.1	0.1	-16	0	0	1	21:27	44	44	2	t	84.4	122.7	99.58	t	\N
0022000334	1629640	1610612759	2021-02-03	2020-21	2	0	2	2	0	2	1	2	3	2	9	0	2	1	0	0.3	0.2222222222222222	-16	1	0	2	21:20	44	45	6	t	84.4	120.0	101.25	t	\N
0022000334	201988	1610612759	2021-02-03	2020-21	4	0	4	1	0	0	0	1	1	3	8	1	6	2	2	0.5	0.4375	19	0	0	1	26:33	55	55	8	f	130.4	96.4	101.24	t	\N
0022000334	1628401	1610612759	2021-02-03	2020-21	2	0	2	8	3	0	0	0	0	4	11	2	6	2	1	0.45454545454545453	0.45454545454545453	18	0	1	3	25:13	51	53	10	f	132.1	96.3	101.84	t	\N
0022000334	1630170	1610612759	2021-02-03	2020-21	4	1	3	1	0	1	1	1	1	3	6	0	1	1	0	0.5833333333333334	0.5	7	1	0	2	19:44	42	42	7	f	123.3	107.0	104.59	t	\N
0022000334	1626168	1610612759	2021-02-03	2020-21	2	0	2	2	1	0	0	2	4	3	4	1	2	2	2	0.75	0.875	9	0	0	0	13:29	28	25	9	f	110.7	84.6	96.13	t	\N
0022000334	1629234	1610612759	2021-02-03	2020-21	3	0	3	0	0	0	0	1	1	2	3	0	0	2	2	0.8333333333333334	0.6666666666666666	-8	0	1	0	07:53	16	18	5	f	100.0	133.3	103.51	t	\N
0022000334	1	1610612759	2021-02-03	2020-21	7	5	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000333	203506	1610612745	2021-02-03	2020-21	3	1	2	3	1	3	2	2	2	8	24	1	8	6	3	0.38	0.3541666666666667	-7	2	0	1	31:38	71	70	19	t	87.3	94.5	109.25	f	\N
0022000333	1630256	1610612745	2021-02-03	2020-21	4	0	4	0	0	3	2	0	0	3	8	0	3	1	1	0.375	0.375	-20	0	1	2	31:20	68	69	6	t	75.0	101.4	105.7	f	\N
0022000333	201569	1610612745	2021-02-03	2020-21	3	2	1	4	1	4	2	3	3	8	15	3	9	4	4	0.6875	0.6333333333333333	-9	2	0	0	27:41	62	62	22	t	81.0	93.8	110.1	f	\N
0022000333	200782	1610612745	2021-02-03	2020-21	5	0	5	1	0	0	0	0	0	0	2	0	1	0	0	0.0	0.0	-6	0	0	2	24:57	58	59	0	t	86.2	93.3	113.51	f	\N
0022000377	0	1610612745	2021-02-09	2020-21	4	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	0.0
0022000333	1626174	1610612745	2021-02-03	2020-21	6	1	5	3	1	3	3	0	0	3	7	2	4	0	0	0.5714285714285714	0.5714285714285714	-15	3	0	3	22:08	49	50	8	t	75.5	102.0	108.43	f	\N
0022000333	202326	1610612745	2021-02-03	2020-21	5	0	5	1	0	1	1	0	2	4	10	2	6	4	2	0.45454545454545453	0.5	-2	1	1	4	25:52	58	58	10	f	84.7	88.1	109.48	f	\N
0022000333	1627863	1610612745	2021-02-03	2020-21	4	0	4	3	2	2	1	0	0	1	7	0	5	1	1	0.14285714285714285	0.14285714285714285	-18	1	0	2	25:21	55	55	2	f	62.5	91.4	107.93	f	\N
0022000333	1628425	1610612745	2021-02-03	2020-21	6	1	5	3	2	2	1	0	0	4	8	3	6	2	1	0.6875	0.6875	-10	2	2	2	22:25	50	50	11	f	74.5	96.0	108.13	f	\N
0022000333	203463	1610612745	2021-02-03	2020-21	1	0	1	0	0	1	0	2	2	0	1	0	1	0	0	0.5	0.0	-4	0	0	0	11:53	25	27	2	f	80.8	92.6	107.04	f	\N
0022000333	1630222	1610612745	2021-02-03	2020-21	3	0	3	2	0	1	1	2	4	1	3	0	2	1	1	0.4	0.3333333333333333	0	0	0	1	11:05	26	26	4	f	88.5	88.5	112.6	f	\N
0022000333	1629066	1610612745	2021-02-03	2020-21	1	0	1	1	1	0	0	0	0	1	1	1	1	0	0	1.5	1.5	6	0	0	1	05:40	13	14	3	f	130.8	78.6	114.35	f	\N
0022000333	0	1610612745	2021-02-03	2020-21	5	1	4	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000333	1630177	1610612760	2021-02-03	2020-21	3	0	3	4	2	3	0	1	2	2	12	1	5	6	1	0.23076923076923078	0.20833333333333334	-1	6	1	2	35:48	80	81	6	t	87.8	89.0	109.94	t	\N
0022000333	1629647	1610612760	2021-02-03	2020-21	12	0	12	2	0	2	1	4	4	6	13	2	6	3	3	0.6	0.5384615384615384	-5	0	2	2	34:15	80	79	18	t	87.7	95.0	112.82	t	\N
0022000333	1628977	1610612760	2021-02-03	2020-21	9	2	7	1	0	6	5	6	6	5	9	0	1	6	4	0.6666666666666666	0.5555555555555556	0	3	0	2	32:49	77	76	16	t	89.7	92.1	112.63	t	\N
0022000333	201143	1610612760	2021-02-03	2020-21	6	0	6	3	2	7	5	3	3	6	10	2	4	0	0	0.7727272727272727	0.7	-2	2	0	3	29:01	67	65	17	t	88.2	93.9	110.83	t	\N
0022000333	1629652	1610612760	2021-02-03	2020-21	0	0	0	2	1	0	0	0	0	0	5	0	2	2	0	0.0	0.0	1	0	0	0	09:04	23	23	0	t	104.3	100.0	121.76	t	\N
0022000333	1628382	1610612760	2021-02-03	2020-21	5	1	4	2	1	1	0	0	0	2	9	0	5	1	1	0.2222222222222222	0.2222222222222222	11	0	0	3	29:47	67	65	4	f	89.7	75.8	107.98	t	\N
0022000333	1629026	1610612760	2021-02-03	2020-21	6	2	4	2	0	1	0	2	4	7	8	3	3	2	2	0.95	1.0625	24	0	0	0	23:08	50	50	19	f	105.9	57.7	106.86	t	\N
0022000333	1629676	1610612760	2021-02-03	2020-21	2	0	2	1	0	1	0	1	2	6	9	0	1	4	3	0.65	0.6666666666666666	19	0	1	2	18:59	41	42	13	f	102.3	58.1	108.73	t	\N
0022000333	203488	1610612760	2021-02-03	2020-21	5	0	5	2	2	0	0	2	2	2	7	2	5	0	0	0.42857142857142855	0.42857142857142855	19	1	0	0	16:56	35	35	8	f	100.0	47.2	102.05	t	\N
0022000333	203121	1610612760	2021-02-03	2020-21	3	0	3	0	0	0	0	3	3	0	1	0	1	0	0	0.75	0.0	19	1	1	0	10:13	20	19	3	f	133.3	42.9	98.66	t	\N
0022000333	1	1610612760	2021-02-03	2020-21	5	3	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000332	203944	1610612752	2021-02-03	2020-21	6	1	5	6	1	3	1	0	2	11	20	5	7	1	1	0.675	0.675	14	2	0	2	38:20	77	76	27	t	115.4	97.4	97.67	f	\N
0022000332	203901	1610612752	2021-02-03	2020-21	8	4	4	4	2	1	0	2	2	9	19	0	2	9	8	0.5	0.47368421052631576	7	0	1	2	34:43	67	67	20	t	108.7	101.5	94.05	f	\N
0022000332	1629628	1610612752	2021-02-03	2020-21	7	0	7	2	1	4	2	1	3	8	16	0	1	6	4	0.5	0.5	4	0	0	2	32:02	65	64	17	t	103.0	98.5	98.15	f	\N
0022000332	1629011	1610612752	2021-02-03	2020-21	11	3	8	0	0	1	1	2	2	3	5	0	0	5	3	0.6666666666666666	0.6	9	2	0	3	28:08	55	56	8	t	105.2	91.2	98.14	f	\N
0022000332	203493	1610612752	2021-02-03	2020-21	4	1	3	0	0	2	2	0	0	4	7	1	3	2	1	0.6428571428571429	0.6428571428571429	2	0	0	2	27:25	55	53	9	t	100.0	96.4	98.04	f	\N
0022000332	203457	1610612752	2021-02-03	2020-21	3	1	2	0	0	2	2	2	2	1	2	0	0	2	1	0.6666666666666666	0.5	-4	0	3	2	19:43	40	39	4	f	109.8	119.5	99.81	f	\N
0022000332	202692	1610612752	2021-02-03	2020-21	3	1	2	5	1	0	0	0	0	1	5	1	2	0	0	0.3	0.3	0	0	0	2	18:54	38	38	3	f	115.4	112.5	100.32	f	\N
0022000332	203085	1610612752	2021-02-03	2020-21	3	0	3	1	0	2	2	2	2	1	4	1	2	2	0	0.5	0.375	1	1	0	0	17:48	38	38	5	f	117.9	112.5	106.46	f	\N
0022000332	1630193	1610612752	2021-02-03	2020-21	1	0	1	1	0	2	1	1	2	3	7	2	3	0	0	0.5625	0.5714285714285714	-3	0	0	1	13:17	30	29	9	f	106.7	112.9	110.13	f	\N
0022000332	1630167	1610612752	2021-02-03	2020-21	1	0	1	0	0	0	0	0	0	2	4	1	2	0	0	0.625	0.625	-10	0	0	2	09:40	20	20	5	f	81.0	135.0	101.79	f	\N
0022000332	0	1610612752	2021-02-03	2020-21	8	4	4	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000332	203897	1610612741	2021-02-03	2020-21	5	2	3	7	2	2	1	4	4	10	21	0	7	9	6	0.5217391304347826	0.47619047619047616	-8	0	0	2	37:56	75	76	24	t	100.0	111.7	98.04	t	\N
0022000332	1628374	1610612741	2021-02-03	2020-21	4	0	4	0	0	0	0	3	4	3	8	0	4	3	3	0.45	0.375	-8	0	0	3	35:37	71	72	9	t	95.9	108.3	97.71	t	\N
0022000332	1629632	1610612741	2021-02-03	2020-21	3	0	3	6	4	2	1	3	4	4	13	2	8	2	2	0.43333333333333335	0.38461538461538464	-8	1	0	2	32:16	67	66	13	t	91.3	104.4	101.93	t	\N
0022000332	1630172	1610612741	2021-02-03	2020-21	7	0	7	1	1	2	0	0	1	6	12	0	3	5	3	0.5	0.5	5	1	0	1	32:10	63	64	12	t	107.9	94.0	96.99	t	\N
0022000332	1629655	1610612741	2021-02-03	2020-21	6	0	6	1	0	0	0	0	0	2	2	0	0	2	2	1.0	1.0	1	1	1	1	19:30	39	39	4	t	100.0	95.1	99.69	t	\N
0022000332	201152	1610612741	2021-02-03	2020-21	4	3	1	2	1	2	2	1	3	9	11	0	1	7	6	0.7916666666666666	0.8181818181818182	-9	5	1	3	25:52	51	53	19	f	103.8	118.5	99.28	t	\N
0022000332	202066	1610612741	2021-02-03	2020-21	3	1	2	2	2	0	0	0	0	1	7	1	5	1	0	0.21428571428571427	0.21428571428571427	-2	1	1	0	23:27	48	49	3	f	116.0	120.0	102.35	t	\N
0022000332	1627756	1610612741	2021-02-03	2020-21	6	0	6	3	3	0	0	0	0	5	10	3	7	0	0	0.65	0.65	5	2	0	2	19:30	39	39	13	f	117.5	105.0	98.46	t	\N
0022000332	203107	1610612741	2021-02-03	2020-21	0	0	0	3	0	1	1	0	0	3	4	0	1	2	2	0.75	0.75	4	0	0	0	13:42	27	27	6	f	128.6	114.3	98.1	t	\N
0022000328	201587	1610612746	2021-02-03	2020-21	1	0	1	2	1	1	0	0	0	3	5	1	3	1	1	0.7	0.7	26	0	0	1	23:45	44	44	7	t	155.6	97.8	90.95	f	\N
0022000328	202704	1610612746	2021-02-03	2020-21	5	0	5	3	2	0	0	0	0	0	3	0	1	2	0	0.0	0.0	19	0	0	0	23:25	44	43	0	t	152.3	111.6	89.17	f	\N
0022000328	201586	1610612746	2021-02-03	2020-21	4	1	3	3	0	0	0	0	0	6	8	2	3	2	2	0.875	0.875	18	0	2	4	20:16	37	37	14	t	150.0	105.4	88.82	f	\N
0022000328	1627826	1610612746	2021-02-03	2020-21	16	6	10	1	0	1	0	4	4	3	8	0	1	7	3	0.5	0.375	4	2	3	3	27:44	58	56	10	f	108.5	105.3	100.38	f	\N
0022000328	202694	1610612746	2021-02-03	2020-21	3	0	3	0	0	2	1	1	2	1	3	0	2	0	0	0.375	0.3333333333333333	-12	0	0	1	23:13	47	45	3	f	95.7	123.9	96.14	f	\N
0022000328	101150	1610612746	2021-02-03	2020-21	3	0	3	3	1	4	3	3	4	5	8	2	3	2	2	0.75	0.75	6	1	1	2	22:35	46	44	15	f	119.6	106.5	97.77	f	\N
0022000328	1628379	1610612746	2021-02-03	2020-21	3	1	2	0	0	1	1	0	0	3	6	3	4	0	0	0.75	0.75	-5	0	0	3	21:35	47	46	9	f	89.6	100.0	106.73	f	\N
0022000328	1629599	1610612746	2021-02-03	2020-21	0	0	0	1	0	0	0	0	0	0	1	0	0	1	0	0.0	0.0	0	0	0	1	03:56	9	9	0	f	66.7	60.0	115.93	f	\N
0022000328	1629611	1610612746	2021-02-03	2020-21	1	0	1	0	0	1	1	0	0	1	1	1	1	0	0	1.5	1.5	0	0	0	0	03:56	9	9	3	f	66.7	60.0	115.93	f	\N
0022000328	1629662	1610612746	2021-02-03	2020-21	0	0	0	0	0	0	0	0	0	0	2	0	1	1	0	0.0	0.0	0	0	0	1	03:56	9	9	0	f	66.7	60.0	115.93	f	\N
0022000328	0	1610612746	2021-02-03	2020-21	1	0	1	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000328	1629012	1610612739	2021-02-03	2020-21	1	0	1	5	2	1	0	4	4	11	21	1	1	4	4	0.5869565217391305	0.5476190476190477	-22	1	0	1	38:28	74	75	27	t	102.7	130.3	94.21	t	\N
0022000328	1629636	1610612739	2021-02-03	2020-21	4	2	2	2	2	2	2	0	0	11	18	1	1	3	1	0.6388888888888888	0.6388888888888888	-25	0	0	0	34:41	66	68	23	t	106.0	141.2	93.42	t	\N
0022000328	1627752	1610612739	2021-02-03	2020-21	2	1	1	4	3	0	0	0	0	3	8	1	3	3	1	0.4375	0.4375	-30	1	0	3	28:14	53	54	7	t	105.6	158.2	92.66	t	\N
0022000328	1630171	1610612739	2021-02-03	2020-21	2	0	2	0	0	0	0	0	0	1	5	0	1	3	1	0.2	0.2	-24	2	0	2	27:35	52	53	2	t	105.6	152.8	93.1	t	\N
0022000328	203083	1610612739	2021-02-03	2020-21	5	2	3	2	1	3	1	5	7	4	13	0	0	10	4	0.40625	0.3076923076923077	-33	0	0	3	22:15	42	43	13	t	95.3	168.2	93.84	t	\N
0022000328	1628386	1610612739	2021-02-03	2020-21	9	3	6	5	0	0	0	1	1	3	8	0	0	5	2	0.4375	0.375	11	1	2	2	25:45	51	52	7	f	109.4	90.4	97.86	t	\N
0022000328	1630205	1610612739	2021-02-03	2020-21	5	1	4	0	0	1	0	1	2	3	5	0	0	1	1	0.5833333333333334	0.6	-2	1	2	1	21:04	43	44	7	f	97.8	104.5	101.39	t	\N
0022000328	1629685	1610612739	2021-02-03	2020-21	5	0	5	2	1	1	1	2	3	1	3	0	2	1	1	0.5	0.3333333333333333	8	1	2	1	19:46	40	41	4	f	97.7	82.9	101.99	t	\N
0022000328	1626224	1610612739	2021-02-03	2020-21	4	2	2	1	1	0	0	0	0	4	9	1	2	3	2	0.5	0.5	7	1	0	1	18:16	35	36	9	f	113.5	97.2	95.91	t	\N
0022000328	1629731	1610612739	2021-02-03	2020-21	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0.0	0.0	0	0	0	0	03:56	9	9	0	f	60.0	66.7	115.93	t	\N
0022000328	1	1610612739	2021-02-03	2020-21	3	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000330	1629029	1610612742	2021-02-03	2020-21	8	1	7	14	5	4	3	10	10	8	20	1	5	6	4	0.54	0.425	3	2	1	1	37:50	79	79	27	t	113.9	107.4	101.53	f	\N
0022000330	1626196	1610612742	2021-02-03	2020-21	6	3	3	2	0	2	1	7	8	3	11	1	7	3	1	0.4666666666666667	0.3181818181818182	0	2	2	2	35:38	75	79	14	t	122.1	117.5	105.7	f	\N
0022000330	204001	1610612742	2021-02-03	2020-21	11	3	8	2	1	1	1	3	3	10	20	1	6	8	4	0.5476190476190477	0.525	9	1	0	2	34:29	71	72	24	t	124.3	112.2	102.99	f	\N
0022000330	1628467	1610612742	2021-02-03	2020-21	5	1	4	3	1	0	0	0	0	3	6	2	4	2	1	0.6666666666666666	0.6666666666666666	9	0	2	3	32:12	65	67	8	t	121.2	102.9	100.61	f	\N
0022000330	1627827	1610612742	2021-02-03	2020-21	5	3	2	0	0	1	0	0	0	5	10	3	7	3	2	0.65	0.65	6	1	0	3	28:50	63	62	13	t	112.7	101.6	105.71	f	\N
0022000330	203501	1610612742	2021-02-03	2020-21	4	0	4	0	0	1	1	1	2	8	15	5	10	4	2	0.6875	0.7	2	0	0	2	30:02	65	65	22	f	130.8	123.9	105.48	f	\N
0022000330	1628973	1610612742	2021-02-03	2020-21	4	1	3	4	1	1	0	2	2	5	8	0	0	4	3	0.6666666666666666	0.625	7	1	0	2	24:02	49	48	12	f	124.5	108.0	98.86	f	\N
0022000330	1626161	1610612742	2021-02-03	2020-21	2	1	1	1	1	0	0	0	0	1	1	0	0	1	1	1.0	1.0	-4	0	2	3	10:53	21	21	2	f	91.3	113.6	99.36	f	\N
0022000330	203504	1610612742	2021-02-03	2020-21	0	0	0	1	0	0	0	0	0	0	2	0	1	1	0	0.0	0.0	-4	1	0	0	05:18	10	10	0	f	110.0	136.4	95.09	f	\N
0022000330	201949	1610612742	2021-02-03	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	2	0	0	1	00:46	2	2	0	f	250.0	150.0	124.68	f	\N
0022000330	0	1610612742	2021-02-03	2020-21	3	2	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000330	1628381	1610612737	2021-02-03	2020-21	12	3	9	1	1	2	1	0	0	16	21	3	4	11	10	0.8333333333333334	0.8333333333333334	-2	0	0	1	39:30	84	83	35	t	111.8	115.5	102.68	t	\N
0022000330	1628989	1610612737	2021-02-03	2020-21	5	3	2	10	5	2	1	1	1	8	15	4	8	1	0	0.7	0.6666666666666666	-8	2	0	3	38:30	81	81	21	t	106.0	118.5	102.23	t	\N
0022000330	1629027	1610612737	2021-02-03	2020-21	4	0	4	9	5	4	3	2	3	8	18	3	8	6	4	0.5263157894736842	0.5277777777777778	4	1	0	3	35:40	75	74	21	t	117.1	111.8	102.28	t	\N
0022000330	203991	1610612737	2021-02-03	2020-21	13	3	10	2	0	3	0	0	2	5	8	0	0	8	5	0.5555555555555556	0.625	-15	2	3	4	29:55	61	63	10	t	100.0	122.2	100.33	t	\N
0022000330	1629629	1610612737	2021-02-03	2020-21	3	0	3	1	0	2	2	0	0	1	8	0	4	0	0	0.125	0.125	-10	0	0	3	22:57	45	46	2	t	87.5	110.6	99.35	t	\N
0022000330	203524	1610612737	2021-02-03	2020-21	3	2	1	1	0	0	0	0	2	0	2	0	2	0	0	0.0	0.0	11	1	0	0	26:13	56	54	0	f	136.8	124.1	101.61	t	\N
0022000330	201568	1610612737	2021-02-03	2020-21	2	1	1	2	1	0	0	9	9	4	11	2	8	1	1	0.6333333333333333	0.45454545454545453	-1	0	1	3	20:50	47	44	19	f	125.0	135.6	107.06	t	\N
0022000330	203503	1610612737	2021-02-03	2020-21	3	1	2	2	1	1	1	0	0	3	3	2	2	1	1	1.3333333333333333	1.3333333333333333	3	0	0	2	15:02	32	31	8	f	130.3	129.0	102.17	t	\N
0022000330	200765	1610612737	2021-02-03	2020-21	1	0	1	3	1	2	0	0	0	0	4	0	2	2	0	0.0	0.0	-9	0	0	1	11:17	24	23	0	f	95.8	139.1	99.97	t	\N
0022000330	1629164	1610612737	2021-02-03	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-3	0	0	0	00:06	0	1	0	f	0.0	300.0	472.13	t	\N
0022000330	1	1610612737	2021-02-03	2020-21	2	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000329	1627734	1610612754	2021-02-03	2020-21	12	2	10	6	4	2	1	2	2	14	25	3	5	6	5	0.6346153846153846	0.62	-25	0	0	2	31:00	68	67	33	t	87.0	126.9	105.32	f	\N
0022000329	1627763	1610612754	2021-02-03	2020-21	3	1	2	3	1	1	1	0	0	5	17	2	6	3	0	0.35294117647058826	0.35294117647058826	-25	2	0	2	28:50	64	62	12	t	85.9	125.0	106.54	f	\N
0022000329	203200	1610612754	2021-02-03	2020-21	8	1	7	1	1	0	0	2	2	5	8	3	5	3	2	0.8333333333333334	0.8125	-3	2	1	0	28:46	65	65	15	t	104.5	112.3	110.13	f	\N
0022000329	1626167	1610612754	2021-02-03	2020-21	2	0	2	1	0	1	1	0	0	1	3	1	3	0	0	0.5	0.5	-32	2	1	2	22:51	50	49	3	t	84.3	150.0	106.04	f	\N
0022000329	203087	1610612754	2021-02-03	2020-21	2	0	2	1	0	1	1	2	2	0	5	0	2	0	0	0.16666666666666666	0.0	-26	0	0	1	17:31	38	39	2	t	92.3	159.0	106.87	f	\N
0022000329	203926	1610612754	2021-02-03	2020-21	7	1	6	1	0	2	2	0	1	6	12	1	5	6	5	0.5416666666666666	0.5416666666666666	-5	0	0	1	29:03	66	64	13	f	109.0	118.2	109.88	f	\N
0022000329	204456	1610612754	2021-02-03	2020-21	2	1	1	12	4	3	3	0	0	3	5	0	0	1	1	0.6	0.6	-2	1	1	2	27:45	62	61	6	f	112.7	115.9	109.01	f	\N
0022000329	1628988	1610612754	2021-02-03	2020-21	0	0	0	2	0	3	3	4	4	3	12	1	7	2	1	0.39285714285714285	0.2916666666666667	-8	0	0	1	25:42	57	58	11	f	106.8	120.3	110.19	f	\N
0022000329	1629048	1610612754	2021-02-03	2020-21	5	2	3	0	0	0	0	0	0	3	3	0	0	2	2	1.0	1.0	14	0	2	1	12:35	29	29	6	f	131.0	80.0	112.44	f	\N
0022000329	1628410	1610612754	2021-02-03	2020-21	1	0	1	1	1	0	0	2	2	0	1	0	0	0	0	0.5	0.0	4	0	1	0	06:13	14	14	2	f	107.1	78.6	108.1	f	\N
0022000329	1629103	1610612754	2021-02-03	2020-21	1	0	1	0	0	0	0	0	0	2	2	0	0	1	1	1.0	1.0	4	0	0	0	04:52	11	11	4	f	118.2	81.8	108.49	f	\N
0022000329	203960	1610612754	2021-02-03	2020-21	3	0	3	0	0	1	1	1	2	1	2	0	1	1	1	0.5	0.5	4	0	0	1	04:52	11	11	3	f	118.2	81.8	108.49	f	\N
0022000329	0	1610612754	2021-02-03	2020-21	4	1	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000329	203507	1610612749	2021-02-03	2020-21	14	2	12	10	2	4	2	7	8	7	8	0	0	8	7	0.9545454545454546	0.875	30	2	1	0	30:38	66	67	21	t	138.8	92.6	105.8	t	\N
0022000329	201950	1610612749	2021-02-03	2020-21	7	2	5	3	2	3	2	0	0	5	9	1	3	4	4	0.6111111111111112	0.6111111111111112	11	3	1	0	26:50	58	59	11	t	113.8	91.7	105.58	t	\N
0022000329	203114	1610612749	2021-02-03	2020-21	5	0	5	4	2	3	1	3	3	4	9	1	3	6	3	0.55	0.5	19	0	0	1	26:00	57	58	12	t	124.1	91.4	107.08	t	\N
0022000329	201572	1610612749	2021-02-03	2020-21	6	1	5	1	0	0	0	0	0	4	8	3	5	1	1	0.6875	0.6875	17	0	1	2	23:20	51	52	11	t	131.4	96.2	105.99	t	\N
0022000329	1628978	1610612749	2021-02-03	2020-21	4	1	3	3	2	0	0	0	0	6	11	4	8	1	1	0.7272727272727273	0.7272727272727273	36	0	1	1	21:50	48	47	16	t	150.0	79.6	108.72	t	\N
0022000329	1627854	1610612749	2021-02-03	2020-21	3	0	3	1	0	0	0	0	0	8	15	4	7	4	2	0.6666666666666666	0.6666666666666666	-8	0	0	0	22:10	52	52	20	f	105.8	121.2	112.65	t	\N
0022000329	201571	1610612749	2021-02-03	2020-21	0	0	0	4	1	1	1	3	3	1	6	1	5	1	0	0.42857142857142855	0.25	17	0	0	0	19:00	39	41	6	f	145.0	97.6	103.58	t	\N
0022000329	1626171	1610612749	2021-02-03	2020-21	9	3	6	3	1	0	0	0	0	7	13	4	5	3	1	0.6923076923076923	0.6923076923076923	19	3	1	2	16:42	37	37	18	f	133.3	84.6	112.16	t	\N
0022000329	1628470	1610612749	2021-02-03	2020-21	3	2	1	0	0	0	0	0	0	3	6	2	3	2	1	0.6666666666666666	0.6666666666666666	-13	3	1	3	16:28	37	37	8	f	84.2	118.4	110.63	t	\N
0022000329	1626192	1610612749	2021-02-03	2020-21	1	0	1	0	0	0	0	0	0	1	5	1	4	1	0	0.3	0.3	17	0	0	0	10:24	22	22	3	f	156.5	82.6	106.05	t	\N
0022000329	1628391	1610612749	2021-02-03	2020-21	0	0	0	0	0	0	0	0	0	1	6	0	4	0	0	0.16666666666666666	0.16666666666666666	-15	0	1	1	09:42	23	23	2	f	69.6	134.8	113.81	t	\N
0022000329	1629121	1610612749	2021-02-03	2020-21	1	0	1	2	1	0	0	0	0	0	4	0	1	2	0	0.0	0.0	-15	0	0	1	08:28	20	20	0	f	70.0	145.0	113.39	t	\N
0022000329	203648	1610612749	2021-02-03	2020-21	0	0	0	2	0	1	1	0	0	1	2	0	0	2	1	0.5	0.5	-15	2	0	0	08:28	20	20	2	f	70.0	145.0	113.39	t	\N
0022000329	1	1610612749	2021-02-03	2020-21	2	2	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000359	1627736	1610612750	2021-02-06	2020-21	6	4	2	5	0	2	2	0	1	7	19	3	11	4	2	0.4473684210526316	0.4473684210526316	-3	1	0	0	33:52	71	73	17	t	113.9	114.9	103.46	f	\N
0022000359	1630162	1610612750	2021-02-06	2020-21	8	0	8	4	1	0	0	2	4	8	16	2	5	5	3	0.5882352941176471	0.5625	2	1	1	1	31:15	66	66	20	t	114.9	111.9	102.91	f	\N
0022000359	1629675	1610612750	2021-02-06	2020-21	6	4	2	0	0	3	3	4	6	12	21	1	4	6	5	0.6041666666666666	0.5952380952380952	-4	2	0	3	27:05	59	58	29	t	100.0	108.5	105.5	f	\N
0022000359	201937	1610612750	2021-02-06	2020-21	3	0	3	6	4	3	2	2	2	3	6	0	1	2	0	0.5714285714285714	0.5	-4	1	0	3	24:20	51	51	8	t	115.4	123.1	102.58	f	\N
0022000359	1629020	1610612750	2021-02-06	2020-21	4	0	4	2	0	0	0	0	0	1	1	0	0	1	1	1.0	1.0	6	0	1	3	17:55	39	39	2	t	122.0	107.3	109.84	f	\N
0022000359	1630183	1610612750	2021-02-06	2020-21	6	2	4	2	1	3	0	1	2	3	5	1	3	0	0	0.6666666666666666	0.7	6	1	0	2	23:50	49	50	8	f	120.0	105.9	101.71	f	\N
0022000359	1629162	1610612750	2021-02-06	2020-21	1	1	0	6	0	1	1	1	2	1	6	0	1	3	1	0.21428571428571427	0.16666666666666666	2	1	1	2	23:40	50	50	3	f	113.7	109.8	103.44	f	\N
0022000359	1627774	1610612750	2021-02-06	2020-21	2	1	1	1	0	0	0	2	3	6	9	2	5	3	3	0.8	0.7777777777777778	-8	5	0	0	23:28	48	47	16	f	110.4	124.5	99.2	f	\N
0022000359	1629669	1610612750	2021-02-06	2020-21	2	0	2	0	0	1	0	0	0	6	8	3	5	0	0	0.9375	0.9375	2	0	0	1	22:21	45	44	15	f	113.0	111.1	97.72	f	\N
0022000359	1629006	1610612750	2021-02-06	2020-21	1	1	0	0	0	0	0	0	2	0	2	0	1	1	0	0.0	0.0	-10	0	0	0	08:47	19	19	0	f	131.6	175.0	106.4	f	\N
0022000359	202334	1610612750	2021-02-06	2020-21	1	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	1	0	0	0	03:27	8	8	0	f	162.5	150.0	111.3	f	\N
0022000359	0	1610612750	2021-02-06	2020-21	5	2	3	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000359	1628983	1610612760	2021-02-06	2020-21	9	0	9	7	2	2	2	5	6	12	22	2	6	5	2	0.6458333333333334	0.5909090909090909	7	1	0	2	34:21	73	72	31	t	118.9	111.0	102.71	t	\N
0022000359	1629652	1610612760	2021-02-06	2020-21	6	2	4	3	2	2	2	1	2	4	10	1	4	2	2	0.45454545454545453	0.45	2	2	0	3	31:52	67	66	10	t	119.1	117.9	101.67	t	\N
0022000359	1630177	1610612760	2021-02-06	2020-21	3	1	2	6	2	3	2	0	0	4	8	2	4	3	2	0.625	0.625	-5	1	0	4	31:00	64	66	10	t	108.8	116.2	105.29	t	\N
0022000359	1629026	1610612760	2021-02-06	2020-21	9	3	6	0	0	1	1	0	0	5	10	0	3	4	4	0.5	0.5	-1	2	0	1	30:26	64	63	10	t	113.8	115.4	102.52	t	\N
0022000359	1629647	1610612760	2021-02-06	2020-21	4	0	4	1	0	2	2	2	4	5	10	1	3	3	2	0.5416666666666666	0.55	-11	1	0	1	25:59	57	57	13	t	95.0	119.3	108.07	t	\N
0022000359	1628977	1610612760	2021-02-06	2020-21	6	0	6	3	3	2	1	2	2	6	13	1	4	2	2	0.5357142857142857	0.5	3	1	1	4	31:18	63	64	15	f	118.5	115.6	98.91	t	\N
0022000359	203488	1610612760	2021-02-06	2020-21	4	2	2	1	0	1	1	6	6	7	12	2	5	4	4	0.7857142857142857	0.6666666666666666	6	0	0	2	23:32	51	50	22	f	115.4	108.0	104.02	t	\N
0022000359	1628382	1610612760	2021-02-06	2020-21	1	0	1	2	1	2	1	0	0	2	4	2	3	1	0	0.75	0.75	7	0	0	1	19:29	41	41	6	f	123.8	107.1	103.47	t	\N
0022000359	203121	1610612760	2021-02-06	2020-21	1	0	1	2	0	0	0	0	0	1	1	1	1	0	0	1.5	1.5	2	0	0	1	12:03	25	26	3	f	137.0	134.6	105.56	t	\N
0022000359	1	1610612760	2021-02-06	2020-21	7	4	3	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000354	1627789	1610612751	2021-02-06	2020-21	2	0	2	1	0	3	3	1	2	5	12	2	6	3	1	0.5	0.5	1	2	0	0	33:13	68	67	13	t	115.9	112.9	100.4	f	\N
0022000354	201145	1610612751	2021-02-06	2020-21	2	0	2	0	0	1	1	2	2	3	9	2	6	2	1	0.5	0.4444444444444444	-18	1	0	1	29:07	63	64	10	t	107.7	135.4	107.16	f	\N
0022000354	201935	1610612751	2021-02-06	2020-21	8	3	5	10	3	2	2	3	4	10	20	3	8	8	4	0.5952380952380952	0.575	-18	0	0	3	29:07	63	64	26	t	107.7	135.4	107.16	f	\N
0022000354	201599	1610612751	2021-02-06	2020-21	7	1	6	4	2	1	1	0	0	3	6	0	0	6	3	0.5	0.5	-16	2	0	2	26:36	56	58	6	t	110.5	136.2	103.8	f	\N
0022000354	203925	1610612751	2021-02-06	2020-21	1	0	1	0	0	1	1	0	0	6	9	2	3	3	2	0.7777777777777778	0.7777777777777778	-3	0	0	2	21:32	44	44	14	t	119.6	126.1	102.48	f	\N
0022000354	1629013	1610612751	2021-02-06	2020-21	3	0	3	3	1	2	2	3	3	7	17	5	13	0	0	0.6111111111111112	0.5588235294117647	-13	0	0	1	33:24	70	71	22	f	94.5	113.9	104.19	f	\N
0022000354	204020	1610612751	2021-02-06	2020-21	0	0	0	1	0	2	2	0	0	2	7	0	4	1	0	0.2857142857142857	0.2857142857142857	-14	1	0	0	24:08	50	51	4	f	88.2	113.5	102.43	f	\N
0022000354	1628971	1610612751	2021-02-06	2020-21	4	1	3	1	0	0	0	2	2	2	4	1	1	2	1	0.7	0.625	0	0	0	1	19:55	39	40	7	f	102.6	97.6	96.46	f	\N
0022000354	203658	1610612751	2021-02-06	2020-21	5	3	2	0	0	3	0	0	0	1	4	0	0	4	1	0.25	0.25	2	0	3	6	17:13	35	34	2	f	108.3	102.8	100.37	f	\N
0022000354	1629185	1610612751	2021-02-06	2020-21	2	0	2	1	0	2	0	4	4	0	0	0	0	0	0	1.0	0.0	-1	0	0	2	05:45	12	12	4	f	75.0	83.3	100.17	f	\N
0022000354	0	1610612751	2021-02-06	2020-21	6	3	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000354	1627732	1610612755	2021-02-06	2020-21	12	3	9	8	0	6	2	2	2	7	10	0	0	9	7	0.7272727272727273	0.7	14	3	0	4	34:38	74	75	16	t	129.3	107.8	105.33	t	\N
0022000354	202699	1610612755	2021-02-06	2020-21	12	4	8	6	3	2	1	1	1	10	16	0	1	5	5	0.65625	0.625	6	2	1	2	31:46	65	65	21	t	125.4	118.2	100.48	t	\N
0022000354	203954	1610612755	2021-02-06	2020-21	9	2	7	3	2	5	2	12	14	10	21	1	7	2	0	0.5740740740740741	0.5	17	3	0	2	31:04	68	67	33	t	132.4	105.8	105.88	t	\N
0022000354	203552	1610612755	2021-02-06	2020-21	2	1	1	4	1	0	0	1	1	4	11	2	3	4	1	0.5	0.45454545454545453	-6	1	1	0	26:41	54	54	11	t	113.0	117.5	99.84	t	\N
0022000354	201980	1610612755	2021-02-06	2020-21	3	0	3	0	0	1	0	0	0	4	8	3	7	0	0	0.6875	0.6875	14	0	0	0	26:10	56	55	11	t	135.1	112.5	103.64	t	\N
0022000354	1629003	1610612755	2021-02-06	2020-21	4	2	2	3	1	0	0	2	2	6	13	1	3	4	3	0.5357142857142857	0.5	2	0	0	0	26:57	56	55	15	f	101.8	98.2	101.52	t	\N
0022000354	1627788	1610612755	2021-02-06	2020-21	3	1	2	1	1	0	0	0	0	5	11	3	6	3	2	0.5909090909090909	0.5909090909090909	16	0	0	2	22:58	50	50	13	f	123.5	90.4	107.63	t	\N
0022000354	1629680	1610612755	2021-02-06	2020-21	3	0	3	2	0	0	0	0	2	1	2	0	0	2	1	0.3333333333333333	0.5	11	3	2	3	22:13	48	46	2	f	108.2	87.5	104.79	t	\N
0022000354	2730	1610612755	2021-02-06	2020-21	2	0	2	0	0	1	1	0	0	1	2	0	0	2	1	0.5	0.5	-3	0	0	1	13:29	25	26	2	f	96.3	107.4	96.04	t	\N
0022000354	1630178	1610612755	2021-02-06	2020-21	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	6	0	0	1	02:43	6	5	0	f	133.3	40.0	97.18	t	\N
0022000354	1630198	1610612755	2021-02-06	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	3	0	0	0	01:21	3	2	0	f	100.0	0.0	88.89	t	\N
0022000354	1	1610612755	2021-02-06	2020-21	4	4	0	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000352	203999	1610612743	2021-02-06	2020-21	8	1	7	12	6	1	0	7	7	20	33	3	6	8	7	0.6944444444444444	0.6515151515151515	2	1	3	2	41:24	83	83	50	t	118.8	117.9	97.99	f	\N
0022000352	203115	1610612743	2021-02-06	2020-21	4	0	4	5	0	3	3	2	2	4	12	1	5	4	2	0.4230769230769231	0.375	3	0	0	2	37:05	75	75	11	t	115.4	114.5	99.67	f	\N
0022000352	1628420	1610612743	2021-02-06	2020-21	5	0	5	9	2	2	1	0	0	5	11	1	3	4	2	0.5	0.5	1	0	0	2	34:40	68	70	11	t	126.1	122.9	96.21	f	\N
0022000352	1629008	1610612743	2021-02-06	2020-21	9	5	4	0	0	0	0	1	2	3	11	1	7	2	2	0.3333333333333333	0.3181818181818182	-20	0	3	3	33:42	65	67	8	t	110.3	139.7	96.88	f	\N
0022000352	200794	1610612743	2021-02-06	2020-21	5	2	3	1	0	1	0	1	3	5	8	3	4	1	1	0.7777777777777778	0.8125	-2	0	1	2	22:11	44	44	14	t	109.1	113.6	95.21	f	\N
0022000352	1630181	1610612743	2021-02-06	2020-21	10	4	6	2	1	1	1	0	0	3	6	1	1	4	2	0.5833333333333334	0.5833333333333334	-4	0	1	2	27:29	56	59	7	f	108.8	110.0	102.13	f	\N
0022000352	203210	1610612743	2021-02-06	2020-21	3	1	2	1	0	0	0	0	0	4	9	2	3	4	2	0.5555555555555556	0.5555555555555556	-3	1	0	4	25:45	52	53	10	f	120.0	130.2	100.69	f	\N
0022000352	1630210	1610612743	2021-02-06	2020-21	1	0	1	0	0	1	0	0	0	1	6	1	5	0	0	0.25	0.25	-1	0	0	1	12:18	26	27	3	f	100.0	107.4	107.23	f	\N
0022000352	1628427	1610612743	2021-02-06	2020-21	2	0	2	0	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	-1	1	1	0	05:26	11	12	0	f	108.3	116.7	106.01	f	\N
0022000352	0	1610612743	2021-02-06	2020-21	4	3	1	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000352	1627741	1610612758	2021-02-06	2020-21	4	0	4	7	2	0	0	3	4	1	11	0	9	0	0	0.19230769230769232	0.09090909090909091	1	0	0	0	39:05	80	78	5	t	124.7	123.5	99.46	t	\N
0022000352	1628368	1610612758	2021-02-06	2020-21	2	0	2	5	1	2	0	2	4	9	20	4	7	5	3	0.5454545454545454	0.55	3	0	0	0	38:09	77	74	24	t	120.8	118.4	96.23	t	\N
0022000352	203084	1610612758	2021-02-06	2020-21	7	1	6	4	0	0	0	3	5	10	16	5	7	6	4	0.7777777777777778	0.78125	9	1	0	0	38:01	77	74	28	t	126.0	115.8	96.59	t	\N
0022000352	1626158	1610612758	2021-02-06	2020-21	10	4	6	1	1	1	0	3	4	9	13	0	0	3	2	0.7	0.6923076923076923	6	0	2	3	30:15	61	58	21	t	129.5	119.7	96.79	t	\N
0022000352	1628963	1610612758	2021-02-06	2020-21	2	1	1	1	1	2	1	0	0	1	6	1	3	1	0	0.25	0.25	-12	1	0	1	17:43	34	35	3	t	102.9	133.3	96.18	t	\N
0022000352	1630169	1610612758	2021-02-06	2020-21	4	0	4	6	1	0	0	3	3	8	12	4	7	3	3	0.8461538461538461	0.8333333333333334	12	2	1	1	35:05	75	71	23	f	124.0	111.0	101.24	t	\N
0022000352	202355	1610612758	2021-02-06	2020-21	11	3	8	1	0	0	0	3	4	4	7	0	0	3	1	0.6111111111111112	0.5714285714285714	-1	0	4	3	17:41	36	38	11	f	108.1	105.1	103.2	t	\N
0022000352	202709	1610612758	2021-02-06	2020-21	2	0	2	5	2	2	2	0	0	1	5	0	2	1	1	0.2	0.2	1	1	0	2	17:16	36	37	2	f	108.3	100.0	102.91	t	\N
0022000352	203922	1610612758	2021-02-06	2020-21	3	1	2	0	0	0	0	0	0	1	1	0	0	1	1	1.0	1.0	6	0	0	1	06:45	14	15	2	f	113.3	73.3	106.67	t	\N
0022000352	1	1610612758	2021-02-06	2020-21	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000351	203081	1610612757	2021-02-06	2020-21	4	1	3	9	3	4	2	3	5	10	20	6	12	4	3	0.6590909090909091	0.65	-6	4	0	0	38:01	74	72	29	t	105.4	112.0	94.06	f	\N
0022000351	203496	1610612757	2021-02-06	2020-21	10	2	8	1	0	1	0	2	2	4	10	3	9	1	1	0.5909090909090909	0.55	-10	2	1	1	36:25	72	71	13	t	98.6	113.7	96.88	f	\N
0022000351	1629018	1610612757	2021-02-06	2020-21	6	3	3	0	0	0	0	0	2	8	20	3	11	3	1	0.4523809523809524	0.475	-11	0	0	1	34:55	68	69	19	t	94.4	109.9	97.6	f	\N
0022000351	202683	1610612757	2021-02-06	2020-21	11	3	8	0	0	1	1	1	2	6	10	0	0	10	6	0.5909090909090909	0.6	-8	0	4	3	34:00	65	65	13	t	97.0	107.5	93.9	f	\N
0022000351	203918	1610612757	2021-02-06	2020-21	1	0	1	0	0	1	1	0	2	3	10	1	6	0	0	0.3181818181818182	0.35	-7	0	0	4	33:54	70	67	7	t	100.0	114.5	99.79	f	\N
0022000351	1629014	1610612757	2021-02-06	2020-21	1	0	1	3	0	1	1	1	1	4	8	3	6	1	1	0.75	0.6875	-8	1	0	2	18:20	38	36	12	f	102.6	126.3	100.76	f	\N
0022000351	1627884	1610612757	2021-02-06	2020-21	0	0	0	1	0	1	0	0	0	1	3	1	2	1	0	0.5	0.5	-4	0	0	1	18:02	36	35	3	f	102.7	116.7	97.15	f	\N
0022000351	2546	1610612757	2021-02-06	2020-21	3	0	3	0	0	1	0	0	0	1	8	0	1	1	0	0.125	0.125	-5	0	2	3	16:39	33	31	2	f	112.1	131.3	93.69	f	\N
0022000351	1628385	1610612757	2021-02-06	2020-21	5	2	3	1	0	1	0	1	2	0	0	0	0	0	0	0.5	0.0	4	0	0	0	09:44	19	19	1	f	130.0	110.0	98.73	f	\N
0022000351	0	1610612757	2021-02-06	2020-21	4	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000351	203944	1610612752	2021-02-06	2020-21	11	2	9	4	1	1	1	6	8	7	16	2	4	4	2	0.55	0.5	11	0	0	5	38:43	74	76	22	t	115.6	102.6	94.84	t	\N
0022000351	203901	1610612752	2021-02-06	2020-21	7	2	5	4	2	2	1	1	3	10	19	1	4	10	7	0.55	0.5526315789473685	6	0	1	2	35:18	67	69	22	t	109.9	102.9	95.83	t	\N
0022000351	1629628	1610612752	2021-02-06	2020-21	7	1	6	3	2	3	3	0	0	8	14	2	2	4	3	0.6428571428571429	0.6428571428571429	4	0	0	1	34:51	66	69	18	t	110.1	104.3	95.04	t	\N
0022000351	1629011	1610612752	2021-02-06	2020-21	10	0	10	1	0	4	0	0	0	3	4	0	0	4	3	0.75	0.75	6	2	2	3	33:46	65	65	6	t	109.0	100.0	95.26	t	\N
0022000351	203493	1610612752	2021-02-06	2020-21	1	0	1	1	0	0	0	0	0	4	6	2	4	2	2	0.8333333333333334	0.8333333333333334	14	0	2	1	26:04	48	49	10	t	133.3	105.9	93.89	t	\N
0022000351	202692	1610612752	2021-02-06	2020-21	8	2	6	1	1	2	1	0	0	6	16	4	9	2	0	0.5	0.5	5	2	0	1	27:28	57	58	16	f	103.4	94.9	103.11	t	\N
0022000351	201959	1610612752	2021-02-06	2020-21	0	0	0	2	0	0	0	0	0	1	1	0	0	1	1	1.0	1.0	1	0	0	2	13:48	26	28	2	f	122.2	114.3	95.65	t	\N
0022000351	1630193	1610612752	2021-02-06	2020-21	2	1	1	3	2	2	1	2	2	4	8	2	5	1	1	0.6875	0.625	5	1	0	2	12:42	26	26	12	f	118.5	100.0	102.15	t	\N
0022000351	1630167	1610612752	2021-02-06	2020-21	3	0	3	0	0	0	0	0	0	1	2	0	1	1	1	0.5	0.5	0	0	0	1	09:17	19	19	2	f	110.5	110.5	98.24	t	\N
0022000351	203085	1610612752	2021-02-06	2020-21	2	0	2	1	0	0	0	0	0	0	2	0	1	0	0	0.0	0.0	3	0	0	1	08:03	17	16	0	f	111.8	94.1	101.37	t	\N
0022000351	1	1610612752	2021-02-06	2020-21	6	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000361	203924	1610612765	2021-02-06	2020-21	4	0	4	6	2	1	1	7	7	11	27	3	11	6	6	0.5344827586206896	0.46296296296296297	-4	2	1	4	47:46	94	94	32	t	111.6	115.8	95.46	f	\N
0022000361	203486	1610612765	2021-02-06	2020-21	8	3	5	6	2	5	4	3	5	6	7	0	0	5	5	0.8333333333333334	0.8571428571428571	-4	2	2	4	47:28	93	93	15	t	121.5	124.5	94.55	f	\N
0022000361	1626153	1610612765	2021-02-06	2020-21	2	2	0	10	5	3	1	2	4	8	10	4	4	6	4	0.9166666666666666	1.0	-1	1	0	4	45:31	90	89	22	t	111.0	113.3	95.44	f	\N
0022000361	1630180	1610612765	2021-02-06	2020-21	2	0	2	0	0	2	1	4	4	1	7	1	3	0	0	0.3888888888888889	0.21428571428571427	-14	2	0	0	25:43	54	52	7	t	94.5	122.2	101.68	f	\N
0022000361	1629635	1610612765	2021-02-06	2020-21	3	1	2	1	1	0	0	2	2	1	7	0	5	1	1	0.25	0.14285714285714285	-12	1	0	3	24:23	48	50	4	t	93.9	113.7	98.42	f	\N
0022000361	1629004	1610612765	2021-02-06	2020-21	6	1	5	3	2	3	1	0	0	4	9	3	8	0	0	0.6111111111111112	0.6111111111111112	-1	2	0	3	38:43	77	75	11	f	117.9	124.0	94.85	f	\N
0022000361	1628367	1610612765	2021-02-06	2020-21	8	2	6	3	1	4	3	1	2	11	20	5	10	7	5	0.6666666666666666	0.675	13	2	1	6	37:25	72	71	28	f	123.0	108.3	93.67	f	\N
0022000361	1630191	1610612765	2021-02-06	2020-21	2	0	2	0	0	2	1	0	0	2	3	0	0	2	2	0.6666666666666666	0.6666666666666666	-2	0	0	5	10:32	22	21	4	f	69.6	81.8	102.53	f	\N
0022000361	203585	1610612765	2021-02-06	2020-21	1	1	0	1	0	0	0	2	2	0	2	0	1	0	0	0.3333333333333333	0.0	-12	0	0	0	06:37	15	15	2	f	68.8	153.3	112.44	f	\N
0022000361	1630240	1610612765	2021-02-06	2020-21	0	0	0	1	0	0	0	2	2	1	2	0	0	2	1	0.6666666666666666	0.5	7	0	0	2	05:52	10	10	4	f	170.0	90.9	85.91	f	\N
0022000361	0	1610612765	2021-02-06	2020-21	5	4	1	0	0	3	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000361	2544	1610612747	2021-02-06	2020-21	5	0	5	11	7	7	7	4	6	13	26	3	7	12	9	0.5892857142857143	0.5576923076923077	8	4	0	3	46:29	92	94	33	t	108.5	97.9	98.1	t	\N
0022000361	203076	1610612747	2021-02-06	2020-21	5	2	3	3	2	3	0	3	4	13	22	1	3	7	6	0.625	0.6136363636363636	9	1	2	2	44:31	83	82	30	t	117.6	108.3	91.13	t	\N
0022000361	203484	1610612747	2021-02-06	2020-21	5	1	4	3	0	1	0	0	0	2	6	0	1	2	1	0.3333333333333333	0.3333333333333333	15	1	1	2	41:37	79	79	4	t	125.0	107.6	91.7	t	\N
0022000361	203471	1610612747	2021-02-06	2020-21	4	1	3	8	4	3	2	8	8	7	9	0	0	4	3	0.8461538461538461	0.7777777777777778	11	0	0	4	40:32	78	78	22	t	122.5	110.1	94.14	t	\N
0022000361	201188	1610612747	2021-02-06	2020-21	2	0	2	1	1	0	0	2	2	1	2	1	1	1	0	0.8333333333333334	0.75	6	0	1	2	20:18	40	41	5	t	111.9	97.6	99.31	t	\N
0022000361	1627936	1610612747	2021-02-06	2020-21	3	0	3	0	0	3	1	3	3	3	5	1	1	2	1	0.8333333333333334	0.7	-8	2	0	1	26:09	53	56	10	f	107.5	114.0	100.96	t	\N
0022000361	1628398	1610612747	2021-02-06	2020-21	6	4	2	1	1	1	0	1	2	5	10	3	5	3	2	0.6363636363636364	0.65	-3	1	0	3	24:51	52	51	14	f	117.3	120.8	101.4	t	\N
0022000361	1626149	1610612747	2021-02-06	2020-21	8	1	7	1	0	1	1	3	3	2	3	0	0	3	2	0.875	0.6666666666666666	-1	2	1	3	24:16	51	51	7	f	123.5	120.8	102.81	t	\N
0022000361	1629659	1610612747	2021-02-06	2020-21	2	0	2	4	3	3	1	0	0	5	8	0	1	6	5	0.625	0.625	-7	1	0	4	21:17	42	43	10	f	111.9	120.0	98.1	t	\N
0022000361	1	1610612747	2021-02-06	2020-21	4	3	1	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000355	1629630	1610612763	2021-02-06	2020-21	3	0	3	9	1	1	0	5	6	5	14	1	5	5	3	0.47058823529411764	0.39285714285714285	-25	0	0	0	31:04	59	58	16	t	106.7	150.8	91.94	f	\N
0022000355	203937	1610612763	2021-02-06	2020-21	4	0	4	4	2	0	0	2	2	8	13	3	7	6	5	0.75	0.7307692307692307	-6	1	2	0	30:10	59	60	21	t	98.4	106.5	97.86	f	\N
0022000355	1630214	1610612763	2021-02-06	2020-21	8	3	5	1	0	1	0	0	0	2	5	1	3	1	0	0.5	0.5	-4	0	1	6	28:27	53	53	5	t	120.4	121.1	93.63	f	\N
0022000355	1628415	1610612763	2021-02-06	2020-21	4	2	2	2	2	1	0	1	2	4	17	0	6	7	3	0.25	0.23529411764705882	-10	1	0	2	28:25	53	55	9	t	98.1	112.5	92.9	f	\N
0022000355	203476	1610612763	2021-02-06	2020-21	5	3	2	2	1	1	1	3	4	2	2	1	1	0	0	1.0	1.25	-13	1	0	4	21:03	41	42	8	t	95.2	126.2	95.77	f	\N
0022000355	202685	1610612763	2021-02-06	2020-21	7	1	6	2	2	3	1	3	3	9	11	2	2	2	2	0.9583333333333334	0.9090909090909091	0	0	1	1	24:20	50	49	23	f	117.0	124.0	101.59	f	\N
0022000355	1628960	1610612763	2021-02-06	2020-21	2	1	1	1	1	0	0	0	0	3	9	2	5	1	0	0.4444444444444444	0.4444444444444444	8	1	0	2	21:43	45	47	8	f	114.9	95.8	104.99	f	\N
0022000355	1626145	1610612763	2021-02-06	2020-21	7	0	7	1	0	1	1	2	2	3	7	0	3	1	1	0.5	0.42857142857142855	8	0	0	0	20:52	42	44	8	f	108.9	89.1	104.66	f	\N
0022000355	1630217	1610612763	2021-02-06	2020-21	2	0	2	2	0	0	0	0	0	2	8	1	5	3	1	0.3125	0.3125	1	1	1	2	19:40	42	42	5	f	130.2	125.0	106.17	f	\N
0022000355	1629001	1610612763	2021-02-06	2020-21	3	1	2	3	0	1	0	0	0	2	4	2	2	0	0	0.75	0.75	-4	0	0	0	14:16	31	30	6	f	135.5	153.3	102.63	f	\N
0022000355	0	1610612763	2021-02-06	2020-21	3	2	1	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000355	1627742	1610612740	2021-02-06	2020-21	12	1	11	3	0	0	0	0	0	11	20	5	8	4	2	0.675	0.675	20	0	4	1	34:59	67	65	27	t	132.4	104.5	92.62	t	\N
0022000355	1629627	1610612740	2021-02-06	2020-21	4	0	4	5	0	2	1	9	11	10	14	0	0	14	10	0.7631578947368421	0.7142857142857143	14	0	2	4	33:19	67	67	29	t	127.1	105.6	101.57	t	\N
0022000355	202339	1610612740	2021-02-06	2020-21	4	0	4	5	3	0	0	3	4	7	15	4	9	4	2	0.65625	0.6	22	0	0	1	31:23	59	58	21	t	137.7	105.1	91.77	t	\N
0022000355	1628366	1610612740	2021-02-06	2020-21	7	2	5	7	3	0	0	0	0	6	11	4	6	5	2	0.7272727272727273	0.7272727272727273	21	1	1	2	30:27	57	57	16	t	139.0	105.2	92.22	t	\N
0022000355	203500	1610612740	2021-02-06	2020-21	2	2	0	1	1	0	0	0	4	2	3	0	0	1	0	0.4	0.6666666666666666	23	0	1	2	29:20	55	55	4	t	146.4	105.4	91.64	t	\N
0022000355	1628404	1610612740	2021-02-06	2020-21	8	1	7	1	1	0	0	1	2	0	5	0	5	0	0	0.08333333333333333	0.0	-16	0	0	2	27:42	58	58	1	f	96.6	121.7	103.1	t	\N
0022000355	1630184	1610612740	2021-02-06	2020-21	1	0	1	4	2	2	1	0	0	3	6	0	2	4	3	0.5	0.5	-16	1	0	2	18:51	42	41	6	f	83.7	123.8	108.22	t	\N
0022000355	1626195	1610612740	2021-02-06	2020-21	3	2	1	1	1	2	2	0	0	3	5	0	1	4	3	0.6	0.6	-14	1	1	1	18:40	41	40	6	f	85.7	122.0	106.71	t	\N
0022000355	200755	1610612740	2021-02-06	2020-21	1	0	1	0	0	1	1	0	0	3	8	2	2	1	1	0.5	0.5	-9	0	0	0	15:19	34	34	8	f	94.4	122.9	111.25	t	\N
0022000360	201939	1610612744	2021-02-06	2020-21	2	0	2	5	1	3	0	8	8	19	31	11	19	7	7	0.8636363636363636	0.7903225806451613	7	2	0	3	37:04	83	83	57	t	133.7	128.6	110.07	f	\N
0022000360	203110	1610612744	2021-02-06	2020-21	6	1	5	15	9	7	3	2	2	0	2	0	1	0	0	0.3333333333333333	0.0	7	6	4	5	37:04	83	83	2	t	133.7	128.6	110.07	f	\N
0022000360	1629308	1610612744	2021-02-06	2020-21	10	0	10	2	0	1	1	0	0	1	1	0	0	1	1	1.0	1.0	-1	2	0	2	33:38	70	71	2	t	120.8	123.9	102.07	f	\N
0022000360	1626162	1610612744	2021-02-06	2020-21	5	2	3	1	0	1	1	2	3	5	16	2	6	5	2	0.4117647058823529	0.375	-7	0	0	3	32:44	68	69	14	t	118.6	130.4	101.91	f	\N
0022000360	203952	1610612744	2021-02-06	2020-21	5	0	5	1	0	1	0	1	2	9	12	3	5	2	2	0.8461538461538461	0.875	-6	0	0	4	28:56	60	60	22	t	119.7	127.4	102.03	f	\N
0022000360	203145	1610612744	2021-02-06	2020-21	3	1	2	1	0	1	0	4	4	7	11	2	5	4	4	0.7692307692307693	0.7272727272727273	10	1	0	3	23:02	51	53	20	f	129.1	115.1	112.58	f	\N
0022000360	1627814	1610612744	2021-02-06	2020-21	6	2	4	1	0	0	0	0	0	1	5	0	4	1	1	0.2	0.2	-9	0	0	1	20:34	45	45	2	f	100.0	128.3	111.98	f	\N
0022000360	202954	1610612744	2021-02-06	2020-21	3	0	3	1	0	2	0	3	4	1	3	0	1	2	1	0.5	0.3333333333333333	-6	0	0	1	16:33	33	35	5	f	105.7	122.9	101.5	f	\N
0022000360	1628539	1610612744	2021-02-06	2020-21	0	0	0	0	0	0	0	0	0	3	5	2	4	1	1	0.8	0.8	-5	0	0	2	10:25	27	26	8	f	103.6	125.9	126.62	f	\N
0022000360	0	1610612744	2021-02-06	2020-21	4	0	4	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000360	1629029	1610612742	2021-02-06	2020-21	7	1	6	11	5	7	6	11	14	12	23	7	12	5	3	0.7321428571428571	0.6739130434782609	18	1	0	3	38:11	86	82	42	t	137.9	115.9	110.0	t	\N
0022000360	1627827	1610612742	2021-02-06	2020-21	6	3	3	2	1	1	1	0	0	4	9	2	5	4	2	0.5555555555555556	0.5555555555555556	3	0	0	3	35:08	74	73	10	t	132.0	128.0	102.47	t	\N
0022000360	1628467	1610612742	2021-02-06	2020-21	8	3	5	4	0	0	0	2	2	5	11	4	9	1	1	0.6666666666666666	0.6363636363636364	3	0	0	3	32:20	71	71	16	t	131.5	127.4	108.37	t	\N
0022000360	204001	1610612742	2021-02-06	2020-21	10	5	5	3	0	1	0	4	5	7	18	0	3	8	5	0.45	0.3888888888888889	3	0	0	1	31:09	67	65	18	t	138.8	132.4	104.04	t	\N
0022000360	1626196	1610612742	2021-02-06	2020-21	2	0	2	1	0	3	3	3	4	5	8	4	6	1	0	0.85	0.875	6	1	0	2	30:57	70	70	17	t	126.4	114.9	113.19	t	\N
0022000360	203501	1610612742	2021-02-06	2020-21	1	0	1	3	1	1	1	3	3	3	15	2	9	2	0	0.34375	0.26666666666666666	-20	2	0	1	27:26	59	61	11	f	103.2	133.3	109.36	t	\N
0022000360	1628973	1610612742	2021-02-06	2020-21	8	0	8	2	0	0	0	0	0	3	6	1	2	1	1	0.5833333333333334	0.5833333333333334	-14	0	0	2	22:49	51	51	7	f	102.0	124.5	109.39	t	\N
0022000360	203939	1610612742	2021-02-06	2020-21	5	3	2	0	0	1	0	2	2	3	3	0	0	3	3	1.0	1.0	7	0	0	3	16:31	37	36	8	f	110.8	87.2	110.43	t	\N
0022000360	203504	1610612742	2021-02-06	2020-21	0	0	0	1	0	0	0	0	0	2	3	1	1	1	1	0.8333333333333334	0.8333333333333334	4	1	0	1	05:29	10	11	5	f	127.3	90.9	96.29	t	\N
0022000360	1	1610612742	2021-02-06	2020-21	5	2	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000353	1627756	1610612741	2021-02-06	2020-21	3	2	1	4	2	0	0	0	0	8	17	4	10	2	1	0.5882352941176471	0.5882352941176471	24	1	0	1	36:36	72	71	20	t	131.5	100.0	95.08	f	\N
0022000353	1630172	1610612741	2021-02-06	2020-21	10	1	9	1	0	2	0	1	1	7	13	1	2	5	4	0.6153846153846154	0.5769230769230769	22	0	1	1	33:27	65	66	16	t	130.3	95.5	95.43	f	\N
0022000353	203897	1610612741	2021-02-06	2020-21	7	2	5	4	0	2	1	2	5	16	25	5	6	5	4	0.7222222222222222	0.74	26	0	0	2	33:11	66	67	39	t	142.4	100.0	96.92	f	\N
0022000353	1629632	1610612741	2021-02-06	2020-21	7	0	7	3	0	1	1	1	1	5	12	2	6	2	1	0.5416666666666666	0.5	19	1	0	2	27:22	54	53	13	t	123.6	87.5	97.34	f	\N
0022000353	1629655	1610612741	2021-02-06	2020-21	5	1	4	1	0	1	1	0	0	1	3	0	0	2	1	0.3333333333333333	0.3333333333333333	12	0	3	3	12:48	27	27	2	t	137.0	92.6	101.25	f	\N
0022000353	203107	1610612741	2021-02-06	2020-21	5	2	3	6	4	0	0	1	1	3	5	2	2	0	0	0.9	0.8	13	1	2	1	27:01	54	51	9	f	114.8	92.5	95.05	f	\N
0022000353	201152	1610612741	2021-02-06	2020-21	3	2	1	4	1	2	2	1	1	5	10	0	0	7	5	0.55	0.5	10	1	2	0	25:44	50	50	11	f	126.0	101.9	95.13	f	\N
0022000353	202066	1610612741	2021-02-06	2020-21	3	0	3	1	0	1	0	3	4	1	5	1	4	0	0	0.42857142857142855	0.3	-6	1	2	1	20:11	39	39	6	f	92.3	105.0	93.94	f	\N
0022000353	1627853	1610612741	2021-02-06	2020-21	3	0	3	2	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	6	1	0	0	12:43	27	26	0	f	103.7	84.6	100.03	f	\N
0022000353	1626245	1610612741	2021-02-06	2020-21	1	1	0	2	1	1	0	0	0	1	1	0	0	1	1	1.0	1.0	4	0	0	1	09:28	18	17	2	f	100.0	77.8	91.27	f	\N
0022000353	1628436	1610612741	2021-02-06	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	01:29	3	3	0	f	66.7	66.7	97.08	f	\N
0022000353	0	1610612741	2021-02-06	2020-21	3	2	1	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000353	1628407	1610612753	2021-02-06	2020-21	3	1	2	0	0	0	0	2	2	6	14	2	3	5	3	0.5333333333333333	0.5	-13	1	0	1	30:33	60	59	16	t	109.8	133.3	95.06	t	\N
0022000353	1629109	1610612753	2021-02-06	2020-21	3	0	3	0	0	0	0	0	0	1	5	1	5	0	0	0.3	0.3	-21	0	0	1	30:08	58	59	3	t	108.6	140.0	93.98	t	\N
0022000353	1630175	1610612753	2021-02-06	2020-21	3	2	1	5	3	2	2	0	0	5	16	1	3	3	2	0.34375	0.34375	-34	2	2	1	29:19	58	59	11	t	91.7	150.8	97.42	t	\N
0022000353	203516	1610612753	2021-02-06	2020-21	7	3	4	1	0	1	0	4	4	1	6	0	2	3	1	0.375	0.16666666666666666	-15	0	0	3	29:19	58	60	6	t	88.3	113.3	98.24	t	\N
0022000353	202696	1610612753	2021-02-06	2020-21	8	2	6	1	0	3	2	2	2	7	17	1	5	4	2	0.4722222222222222	0.4411764705882353	-41	1	2	1	24:20	48	51	17	t	66.7	147.1	100.6	t	\N
0022000353	1628412	1610612753	2021-02-06	2020-21	4	1	3	4	2	0	0	2	2	4	10	0	1	7	4	0.45454545454545453	0.4	-2	0	0	1	26:13	51	50	10	f	94.2	102.0	93.38	t	\N
0022000353	1629643	1610612753	2021-02-06	2020-21	5	1	4	3	2	1	0	0	0	1	5	0	2	1	1	0.2	0.2	5	1	2	0	22:03	43	42	2	f	102.3	95.2	93.61	t	\N
0022000353	203082	1610612753	2021-02-06	2020-21	2	0	2	1	0	3	2	2	2	5	13	1	5	0	0	0.4642857142857143	0.4230769230769231	-12	0	0	1	20:07	39	41	13	f	81.0	112.2	99.02	t	\N
0022000353	203920	1610612753	2021-02-06	2020-21	5	2	3	1	0	1	0	0	0	0	1	0	0	0	0	0.0	0.0	-2	0	1	1	15:58	33	33	0	f	91.4	103.0	102.21	t	\N
0022000353	1628964	1610612753	2021-02-06	2020-21	7	3	4	1	1	0	0	0	0	7	8	0	1	4	4	0.875	0.875	5	0	3	0	12:00	22	21	14	f	127.3	109.5	86.0	t	\N
0022000353	1	1610612753	2021-02-06	2020-21	3	3	0	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000358	201942	1610612759	2021-02-06	2020-21	8	0	8	7	2	1	1	11	12	9	16	1	3	1	0	0.675	0.59375	8	0	0	0	37:25	82	81	30	t	108.5	100.0	104.55	f	\N
0022000358	1627749	1610612759	2021-02-06	2020-21	3	0	3	3	2	1	0	3	3	4	13	0	1	2	0	0.39285714285714285	0.3076923076923077	12	2	0	1	32:42	67	66	11	t	110.3	94.0	99.08	f	\N
0022000358	1628401	1610612759	2021-02-06	2020-21	2	1	1	5	2	2	2	0	0	6	14	2	7	3	2	0.5	0.5	11	0	2	2	29:07	57	58	14	t	111.9	94.8	96.44	f	\N
0022000358	1627751	1610612759	2021-02-06	2020-21	11	2	9	1	0	1	1	2	4	0	6	0	0	4	0	0.125	0.0	6	0	1	2	29:06	62	62	2	t	100.0	91.9	103.09	f	\N
0022000358	1629640	1610612759	2021-02-06	2020-21	6	2	4	1	0	2	1	4	7	3	7	0	2	2	1	0.5	0.42857142857142855	3	0	0	2	25:48	55	56	10	t	96.4	89.5	105.12	f	\N
0022000358	201988	1610612759	2021-02-06	2020-21	3	1	2	2	1	0	0	2	2	3	10	1	6	3	2	0.4090909090909091	0.35	-4	1	0	3	29:02	62	62	9	f	109.5	115.9	104.16	f	\N
0022000358	200752	1610612759	2021-02-06	2020-21	6	0	6	1	0	0	0	3	4	4	8	3	3	0	0	0.7	0.6875	3	0	0	3	25:10	52	52	14	f	126.4	123.1	100.13	f	\N
0022000358	1629234	1610612759	2021-02-06	2020-21	3	0	3	1	0	1	0	4	4	4	6	0	0	2	2	0.75	0.6666666666666666	-4	0	3	1	16:12	33	32	12	f	118.2	126.5	99.26	f	\N
0022000358	1630170	1610612759	2021-02-06	2020-21	2	1	1	1	0	2	0	0	0	4	7	1	3	2	2	0.6428571428571429	0.6428571428571429	-10	3	1	4	15:28	35	36	9	f	94.3	119.4	110.17	f	\N
0022000358	0	1610612759	2021-02-06	2020-21	6	4	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000358	202322	1610612745	2021-02-06	2020-21	2	1	1	7	3	2	1	6	9	10	19	1	5	8	5	0.5869565217391305	0.5526315789473685	-10	0	1	3	32:01	66	66	27	t	101.5	113.2	100.45	t	\N
0022000358	203506	1610612745	2021-02-06	2020-21	6	1	5	5	1	4	2	1	2	4	14	0	3	2	1	0.3	0.2857142857142857	-6	1	1	5	32:00	69	69	9	t	90.0	98.6	105.0	t	\N
0022000358	202326	1610612745	2021-02-06	2020-21	11	0	11	2	0	3	2	0	0	5	12	2	7	2	2	0.5	0.5	-1	1	2	3	30:08	64	63	12	t	93.8	93.8	102.74	t	\N
0022000358	200782	1610612745	2021-02-06	2020-21	5	0	5	2	0	0	0	2	2	0	3	0	2	0	0	0.25	0.0	-6	0	0	3	29:59	64	66	2	t	93.8	101.5	104.86	t	\N
0022000358	1630256	1610612745	2021-02-06	2020-21	5	1	4	1	0	0	0	2	2	1	6	0	2	2	1	0.2857142857142857	0.16666666666666666	-4	1	0	4	24:15	49	50	4	t	103.9	111.8	100.95	t	\N
0022000358	201569	1610612745	2021-02-06	2020-21	7	0	7	2	2	2	1	6	7	8	13	4	7	4	3	0.8125	0.7692307692307693	4	0	1	1	36:09	77	76	26	f	107.8	102.6	102.24	t	\N
0022000358	1627863	1610612745	2021-02-06	2020-21	5	1	4	0	0	1	0	1	2	4	11	3	8	1	1	0.5	0.5	-3	1	0	4	25:17	53	52	12	f	122.6	128.3	100.62	t	\N
0022000358	1628021	1610612745	2021-02-06	2020-21	5	2	3	1	0	0	0	0	1	6	7	2	2	5	4	1.0	1.0	0	0	1	2	22:16	47	46	14	f	125.5	125.5	101.32	t	\N
0022000358	1628425	1610612745	2021-02-06	2020-21	0	0	0	1	1	0	0	0	0	0	3	0	2	0	0	0.0	0.0	1	1	0	0	07:55	16	17	0	f	118.8	100.0	103.07	t	\N
0022000358	1	1610612745	2021-02-06	2020-21	5	4	1	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000357	203507	1610612749	2021-02-06	2020-21	11	0	11	5	2	3	1	7	11	8	15	1	4	10	7	0.6	0.5666666666666667	6	0	0	4	31:49	65	63	24	t	121.2	112.1	99.52	f	\N
0022000357	203114	1610612749	2021-02-06	2020-21	1	0	1	4	0	2	1	0	0	8	13	4	5	1	0	0.7692307692307693	0.7692307692307693	18	1	0	2	29:23	59	58	20	t	138.3	110.2	97.2	f	\N
0022000357	1628978	1610612749	2021-02-06	2020-21	5	1	4	1	0	1	0	0	0	3	5	1	2	2	2	0.7	0.7	4	1	0	1	28:55	59	58	7	t	118.3	113.6	98.72	f	\N
0022000357	201572	1610612749	2021-02-06	2020-21	5	2	3	0	0	0	0	0	0	3	10	1	6	2	1	0.35	0.35	13	2	1	2	27:52	55	54	7	t	133.9	112.7	95.6	f	\N
0022000357	201950	1610612749	2021-02-06	2020-21	3	1	2	8	3	1	1	2	4	8	14	2	4	4	2	0.625	0.6428571428571429	22	2	1	0	25:22	51	52	20	t	130.8	85.2	100.29	f	\N
0022000357	1626171	1610612749	2021-02-06	2020-21	8	1	7	1	0	0	0	1	2	1	5	0	1	2	1	0.25	0.2	28	0	0	4	20:07	42	42	3	f	145.2	76.7	101.55	f	\N
0022000357	1627854	1610612749	2021-02-06	2020-21	0	0	0	1	1	0	0	0	0	6	7	6	6	0	0	1.2857142857142858	1.2857142857142858	14	1	0	1	17:38	34	34	18	f	145.7	108.8	93.98	f	\N
0022000357	201571	1610612749	2021-02-06	2020-21	1	0	1	3	3	1	1	2	2	3	5	1	3	1	1	0.75	0.7	9	2	0	1	17:29	39	37	9	f	120.5	100.0	105.7	f	\N
0022000357	1626192	1610612749	2021-02-06	2020-21	3	1	2	2	2	0	0	0	0	3	4	0	1	3	3	0.75	0.75	10	0	0	1	14:34	31	31	6	f	115.6	81.8	107.09	f	\N
0022000357	1628470	1610612749	2021-02-06	2020-21	2	0	2	0	0	0	0	0	0	3	4	0	1	2	2	0.75	0.75	7	1	0	2	14:13	32	31	6	f	100.0	78.1	107.94	f	\N
0022000357	1629121	1610612749	2021-02-06	2020-21	2	0	2	0	0	0	0	0	0	1	3	0	0	1	0	0.3333333333333333	0.3333333333333333	0	0	0	0	04:32	10	9	2	f	70.0	77.8	100.59	f	\N
0022000357	1628391	1610612749	2021-02-06	2020-21	2	0	2	0	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	-3	0	0	1	04:03	9	8	0	f	44.4	87.5	100.74	f	\N
0022000357	203648	1610612749	2021-02-06	2020-21	0	0	0	0	0	0	0	2	4	0	0	0	0	0	0	0.5	0.0	-3	0	0	1	04:03	9	8	2	f	44.4	87.5	100.74	f	\N
0022000357	0	1610612749	2021-02-06	2020-21	4	2	2	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000357	1629636	1610612739	2021-02-06	2020-21	1	0	1	9	3	3	1	2	2	7	12	1	5	2	2	0.6538461538461539	0.625	-20	1	0	2	34:24	70	68	17	t	101.4	129.6	99.04	t	\N
0022000357	1629012	1610612739	2021-02-06	2020-21	3	1	2	3	2	3	2	3	6	6	18	2	6	5	2	0.4166666666666667	0.3888888888888889	-24	1	0	2	34:19	68	71	17	t	97.2	127.4	100.74	t	\N
0022000357	203083	1610612739	2021-02-06	2020-21	11	3	8	2	0	4	4	4	5	12	17	0	0	9	7	0.7368421052631579	0.7058823529411765	-4	2	0	4	30:11	59	59	28	t	118.0	126.7	96.21	t	\N
0022000357	1630171	1610612739	2021-02-06	2020-21	5	0	5	1	0	2	2	2	2	0	5	0	3	1	0	0.16666666666666666	0.0	-20	0	0	2	29:12	58	61	2	t	90.0	121.3	99.41	t	\N
0022000357	1626204	1610612739	2021-02-06	2020-21	5	0	5	1	1	0	0	0	0	2	3	0	1	1	1	0.6666666666666666	0.6666666666666666	1	0	0	3	23:22	46	47	4	t	121.3	116.7	97.51	t	\N
0022000357	1628386	1610612739	2021-02-06	2020-21	7	2	5	0	0	0	0	0	0	1	4	0	1	2	1	0.25	0.25	-26	0	1	2	24:42	51	53	2	f	79.2	128.3	103.0	t	\N
0022000357	1629685	1610612739	2021-02-06	2020-21	2	1	1	2	0	1	1	3	4	3	4	0	1	2	2	0.75	0.75	-9	0	0	1	19:50	40	42	9	f	100.0	119.0	100.56	t	\N
0022000357	1627752	1610612739	2021-02-06	2020-21	3	0	3	1	1	0	0	0	0	5	9	2	3	2	0	0.6666666666666666	0.6666666666666666	-7	0	0	1	19:08	40	41	12	f	109.8	126.8	102.79	t	\N
0022000357	1626224	1610612739	2021-02-06	2020-21	0	0	0	2	0	0	0	0	0	3	10	1	5	1	1	0.35	0.35	-13	0	0	0	15:13	33	32	7	f	82.9	131.3	105.78	t	\N
0022000357	1629731	1610612739	2021-02-06	2020-21	1	0	1	0	0	0	0	0	0	0	2	0	2	0	0	0.0	0.0	-3	0	0	1	05:07	11	11	0	f	63.6	90.9	103.19	t	\N
0022000357	1630205	1610612739	2021-02-06	2020-21	2	1	1	0	0	0	0	1	2	0	2	0	1	0	0	0.16666666666666666	0.0	0	0	0	1	04:32	9	10	1	f	77.8	70.0	100.59	t	\N
0022000357	1	1610612739	2021-02-06	2020-21	3	2	1	0	0	2	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000356	1627832	1610612761	2021-02-06	2020-21	6	2	4	10	4	2	0	10	11	6	18	3	7	6	2	0.5227272727272727	0.4166666666666667	-1	2	0	4	38:50	82	80	25	t	124.1	123.8	103.21	f	\N
0022000356	200768	1610612761	2021-02-06	2020-21	3	0	3	5	3	1	0	0	0	4	16	1	7	4	1	0.28125	0.28125	-12	0	0	3	36:53	77	76	9	t	107.7	124.7	100.83	f	\N
0022000356	1627783	1610612761	2021-02-06	2020-21	6	1	5	3	1	0	0	2	2	6	15	1	3	8	3	0.46875	0.43333333333333335	-7	3	2	4	32:55	70	71	15	t	115.5	123.6	104.26	f	\N
0022000356	1626181	1610612761	2021-02-06	2020-21	4	2	2	2	0	0	0	5	6	7	15	1	5	6	4	0.5882352941176471	0.5	-12	2	0	2	32:12	69	68	20	t	108.7	124.3	103.6	f	\N
0022000356	203382	1610612761	2021-02-06	2020-21	0	0	0	1	0	2	0	0	0	1	5	0	1	4	1	0.2	0.2	-10	1	1	3	15:20	34	33	2	t	88.2	117.6	106.43	f	\N
0022000356	1628449	1610612761	2021-02-06	2020-21	10	7	3	1	0	1	1	7	13	10	13	2	4	8	7	0.7631578947368421	0.8461538461538461	-1	0	2	4	32:40	65	66	29	f	137.9	131.4	99.92	f	\N
0022000356	1627761	1610612761	2021-02-06	2020-21	3	0	3	1	1	0	0	0	0	2	4	2	3	0	0	0.75	0.75	-4	1	0	2	16:46	33	34	6	f	147.1	145.9	101.69	f	\N
0022000356	1629056	1610612761	2021-02-06	2020-21	3	1	2	1	0	0	0	2	2	2	6	1	5	1	1	0.5	0.4166666666666667	1	0	0	3	16:32	32	33	7	f	138.2	131.4	100.16	f	\N
0022000356	1626169	1610612761	2021-02-06	2020-21	1	1	0	0	0	0	0	0	0	3	4	2	2	2	1	1.0	1.0	-6	0	0	0	10:32	17	20	8	f	138.9	147.6	88.86	f	\N
0022000356	1629139	1610612761	2021-02-06	2020-21	2	0	2	0	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	-3	0	0	2	07:20	16	14	0	f	112.5	131.3	104.73	f	\N
0022000356	0	1610612761	2021-02-06	2020-21	5	3	2	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	\N
0022000356	1628989	1610612737	2021-02-06	2020-21	3	0	3	4	2	2	1	2	2	6	9	5	8	0	0	0.95	0.9444444444444444	6	0	0	3	36:42	77	77	19	t	124.4	118.2	101.36	t	\N
0022000356	1629027	1610612737	2021-02-06	2020-21	2	0	2	13	6	7	5	14	14	6	15	2	4	2	1	0.6136363636363636	0.4666666666666667	9	0	2	3	36:08	78	76	28	t	128.8	120.5	104.94	t	\N
0022000356	1628381	1610612737	2021-02-06	2020-21	7	1	6	4	2	4	1	4	4	6	11	3	6	2	1	0.7307692307692307	0.6818181818181818	10	0	3	3	34:21	72	72	19	t	123.3	111.1	101.34	t	\N
0022000356	1629629	1610612737	2021-02-06	2020-21	5	0	5	1	0	1	0	2	2	3	6	2	4	1	1	0.7142857142857143	0.6666666666666666	8	0	0	3	30:14	66	67	10	t	121.7	113.4	107.96	t	\N
0022000356	203991	1610612737	2021-02-06	2020-21	16	3	13	0	0	1	1	3	5	10	13	0	0	11	9	0.7666666666666667	0.7692307692307693	9	0	4	2	28:38	59	61	23	t	125.4	112.9	104.75	t	\N
0022000356	201568	1610612737	2021-02-06	2020-21	5	0	5	4	1	2	1	3	3	4	6	3	5	0	0	0.9285714285714286	0.9166666666666666	9	0	0	4	24:35	50	47	14	f	124.5	116.3	99.61	t	\N
0022000356	203503	1610612737	2021-02-06	2020-21	2	0	2	2	1	0	0	0	0	2	4	2	4	0	0	0.75	0.75	0	0	1	1	17:51	33	33	6	f	129.7	141.2	95.46	t	\N
0022000356	200765	1610612737	2021-02-06	2020-21	0	0	0	2	0	1	0	0	0	1	3	0	1	1	1	0.3333333333333333	0.3333333333333333	2	1	0	1	11:52	21	23	2	f	120.8	117.4	95.06	t	\N
0022000356	203524	1610612737	2021-02-06	2020-21	1	0	1	1	0	0	0	0	0	3	5	2	4	0	0	0.8	0.8	5	0	0	1	11:43	23	23	8	f	137.0	133.3	104.38	t	\N
0022000356	1630168	1610612737	2021-02-06	2020-21	2	0	2	0	0	0	0	1	3	1	2	0	0	1	1	0.5	0.5	-3	0	0	4	07:56	16	16	3	f	158.8	176.5	102.86	t	\N
0022000356	1	1610612737	2021-02-06	2020-21	6	4	2	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	\N
0022000380	202696	1610612753	2021-02-09	2020-21	15	2	13	4	0	1	1	5	9	10	21	2	7	4	4	0.54	0.5238095238095238	-5	2	2	2	41:06	82	82	27	t	102.4	108.4	96.93	f	28.57142857142857
0022000380	203516	1610612753	2021-02-09	2020-21	6	1	5	2	2	1	0	3	5	5	9	3	5	3	1	0.7272727272727273	0.7222222222222222	-6	1	1	2	34:51	68	71	16	t	110.1	113.9	97.1	f	16.438356164383563
0022000380	1628407	1610612753	2021-02-09	2020-21	4	1	3	2	0	0	0	0	1	4	12	3	6	5	0	0.4583333333333333	0.4583333333333333	-20	0	0	1	30:41	64	63	11	t	84.4	113.8	100.9	f	17.142857142857142
0022000380	1629109	1610612753	2021-02-09	2020-21	2	0	2	3	0	0	0	0	0	0	3	0	2	0	0	0.0	0.0	-4	0	0	1	15:54	31	30	0	t	100.0	116.1	95.09	f	9.67741935483871
0022000380	1630175	1610612753	2021-02-09	2020-21	4	0	4	0	0	2	2	0	0	2	7	0	2	2	1	0.2857142857142857	0.2857142857142857	-9	0	0	0	14:10	29	29	4	t	70.0	100.0	101.65	f	30.0
0022000380	1628412	1610612753	2021-02-09	2020-21	7	2	5	4	1	3	1	2	3	4	10	1	3	6	3	0.5	0.45	0	0	0	1	33:14	66	68	11	f	109.1	104.3	97.49	f	18.18181818181818
0022000380	203082	1610612753	2021-02-09	2020-21	4	0	4	1	0	1	1	2	2	9	18	2	7	5	3	0.5789473684210527	0.5555555555555556	8	1	0	1	31:04	64	63	22	f	106.3	93.8	98.88	f	27.027027027027028
0022000380	1629643	1610612753	2021-02-09	2020-21	7	3	4	5	1	1	1	0	0	1	5	0	3	2	1	0.2	0.2	2	3	0	3	27:14	55	57	2	f	110.9	103.5	98.7	f	9.09090909090909
0022000380	203920	1610612753	2021-02-09	2020-21	3	1	2	0	0	0	0	0	0	2	3	0	0	2	2	0.6666666666666666	0.6666666666666666	-4	0	0	0	06:54	15	16	4	f	75.0	100.0	111.3	f	17.64705882352941
0022000380	202329	1610612753	2021-02-09	2020-21	1	0	1	1	1	1	0	0	2	0	0	0	0	0	0	0.0	0.0	-7	0	0	0	04:52	11	11	0	f	36.4	91.7	113.42	f	18.181818181818183
0022000380	0	1610612753	2021-02-09	2020-21	3	1	2	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	0.0
0022000380	203496	1610612757	2021-02-09	2020-21	11	0	11	4	1	2	1	0	0	2	6	1	5	0	0	0.4166666666666667	0.4166666666666667	11	1	2	2	35:06	69	69	5	t	117.1	101.4	95.73	t	10.38961038961039
0022000380	203081	1610612757	2021-02-09	2020-21	5	1	4	2	0	2	2	13	13	9	22	5	10	7	3	0.6481481481481481	0.5227272727272727	10	1	0	0	33:37	67	67	36	t	116.2	101.5	97.09	t	38.666666666666664
0022000380	1629018	1610612757	2021-02-09	2020-21	4	0	4	6	0	0	0	0	0	6	18	3	9	3	0	0.4166666666666667	0.4166666666666667	6	1	0	0	33:03	70	67	15	t	100.0	94.2	101.66	t	23.376623376623375
0022000380	1627884	1610612757	2021-02-09	2020-21	10	6	4	0	0	0	0	1	1	3	6	1	3	3	2	0.6666666666666666	0.5833333333333334	2	0	0	3	29:06	58	58	8	t	103.4	101.7	96.49	t	9.09090909090909
0022000380	202683	1610612757	2021-02-09	2020-21	10	1	9	2	1	0	0	0	0	3	6	0	0	4	2	0.5	0.5	9	1	0	4	27:05	54	54	6	t	112.7	94.6	98.36	t	10.526315789473685
0022000380	2546	1610612757	2021-02-09	2020-21	3	0	3	0	0	1	1	4	5	7	16	5	9	0	0	0.6388888888888888	0.59375	6	0	3	1	26:56	54	54	23	f	107.3	96.4	98.02	t	31.666666666666668
0022000380	1629014	1610612757	2021-02-09	2020-21	5	0	5	2	0	1	1	0	0	4	11	3	8	1	0	0.5	0.5	3	0	0	3	21:40	45	45	11	f	106.7	100.0	99.69	t	25.0
0022000380	203918	1610612757	2021-02-09	2020-21	1	0	1	1	0	0	0	0	0	0	2	0	0	1	0	0.0	0.0	8	1	0	1	16:59	36	34	0	f	113.9	94.3	100.33	t	5.405405405405405
0022000380	1629604	1610612757	2021-02-09	2020-21	0	0	0	0	0	0	0	0	0	1	3	0	2	1	1	0.3333333333333333	0.3333333333333333	-6	1	0	2	09:11	20	20	2	f	66.7	100.0	107.15	t	15.0
0022000380	1628385	1610612757	2021-02-09	2020-21	5	1	4	1	0	2	2	0	0	0	0	0	0	0	0	0.0	0.0	-4	0	1	1	07:17	17	17	0	f	72.2	94.4	118.65	t	11.11111111111111
0022000380	1	1610612757	2021-02-09	2020-21	2	0	2	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	0.0
0022000376	203944	1610612752	2021-02-09	2020-21	8	0	8	3	1	3	0	3	4	4	18	1	7	0	0	0.3	0.25	-4	2	0	3	36:40	72	72	12	t	101.4	108.2	96.22	f	26.436781609195403
0022000376	1629011	1610612752	2021-02-09	2020-21	7	2	5	2	0	1	0	0	0	1	2	0	0	2	1	0.5	0.5	-14	3	1	5	28:55	55	56	2	t	94.7	121.4	93.8	f	4.615384615384615
0022000376	1629628	1610612752	2021-02-09	2020-21	6	0	6	2	1	2	2	2	4	5	14	1	4	8	4	0.40625	0.39285714285714285	-9	0	0	3	26:42	53	53	13	t	103.7	118.2	97.97	f	28.125
0022000376	203901	1610612752	2021-02-09	2020-21	5	3	2	4	0	3	1	1	1	8	16	1	2	6	4	0.5625	0.53125	-9	0	0	1	26:36	52	53	18	t	105.7	122.6	95.64	f	30.158730158730158
0022000376	203493	1610612752	2021-02-09	2020-21	3	0	3	3	1	0	0	2	2	3	4	1	2	0	0	0.9	0.875	-10	0	0	4	23:10	45	45	9	t	97.8	119.6	95.31	f	9.25925925925926
0022000376	202692	1610612752	2021-02-09	2020-21	6	1	5	2	2	1	0	0	0	4	8	3	6	0	0	0.6875	0.6875	9	0	0	1	25:54	49	48	11	f	101.9	88.0	94.52	f	15.789473684210527
0022000376	1630193	1610612752	2021-02-09	2020-21	2	1	1	3	0	0	0	2	2	2	9	1	4	0	0	0.35	0.2777777777777778	7	1	0	3	21:24	39	38	7	f	97.6	82.5	90.84	f	22.22222222222222
0022000376	201565	1610612752	2021-02-09	2020-21	1	0	1	3	1	2	1	2	2	5	9	2	3	0	0	0.7	0.6666666666666666	6	1	1	0	20:20	36	36	14	f	100.0	86.5	88.52	f	28.571428571428573
0022000376	203457	1610612752	2021-02-09	2020-21	7	3	4	0	0	2	1	0	0	3	4	0	0	3	3	0.75	0.75	12	1	3	4	18:59	35	35	6	f	113.5	83.3	92.29	f	14.285714285714286
0022000376	1630167	1610612752	2021-02-09	2020-21	1	1	0	0	0	0	0	0	1	2	3	0	0	3	2	0.6666666666666666	0.6666666666666666	2	0	0	1	11:20	19	19	4	f	110.5	95.0	82.59	f	14.285714285714286
0022000376	0	1610612752	2021-02-09	2020-21	7	6	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	0.0
0022000376	202710	1610612748	2021-02-09	2020-21	8	0	8	10	1	2	1	13	15	6	15	1	2	2	1	0.5909090909090909	0.43333333333333335	25	1	1	1	36:20	70	69	26	t	125.4	91.4	93.14	t	31.57894736842105
0022000376	1628389	1610612748	2021-02-09	2020-21	6	4	2	2	0	3	2	13	16	3	9	0	0	3	2	0.5588235294117647	0.3333333333333333	-5	2	2	0	35:27	66	67	19	t	92.6	98.6	92.75	t	27.397260273972602
0022000376	1629134	1610612748	2021-02-09	2020-21	2	0	2	3	0	2	2	2	2	3	8	3	6	0	0	0.6111111111111112	0.5625	8	1	0	1	32:56	62	62	11	t	117.7	103.2	91.09	t	16.176470588235293
0022000376	1629130	1610612748	2021-02-09	2020-21	5	0	5	1	1	1	1	4	4	0	7	0	5	1	0	0.2222222222222222	0.0	-12	0	0	3	32:50	62	62	4	t	85.9	104.7	93.55	t	14.925373134328357
0022000376	203482	1610612748	2021-02-09	2020-21	3	0	3	0	0	1	1	0	2	7	10	6	8	1	1	0.9090909090909091	1.0	19	0	1	4	30:39	60	58	20	t	130.0	98.3	93.97	t	18.46153846153846
0022000376	1629639	1610612748	2021-02-09	2020-21	7	0	7	4	0	1	1	0	0	6	15	3	8	1	0	0.5	0.5	2	0	0	1	35:55	68	69	15	f	105.8	100.0	93.55	t	21.62162162162162
0022000376	2738	1610612748	2021-02-09	2020-21	4	0	4	0	0	0	0	0	0	0	2	0	2	0	0	0.0	0.0	-16	1	1	1	21:26	39	41	0	f	65.9	100.0	94.06	t	4.761904761904762
0022000376	1630173	1610612748	2021-02-09	2020-21	2	1	1	1	0	0	0	0	0	0	2	0	0	1	0	0.0	0.0	5	0	1	1	09:26	19	18	0	f	152.6	126.3	96.68	t	10.0
0022000376	1629216	1610612748	2021-02-09	2020-21	1	1	0	0	0	0	0	0	0	1	2	1	2	0	0	0.75	0.75	-16	0	0	2	05:01	9	9	3	f	30.0	190.0	95.68	t	20.0
0022000376	1	1610612748	2021-02-09	2020-21	4	2	2	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	0.0
0022000381	202699	1610612755	2021-02-09	2020-21	10	0	10	1	0	1	0	4	4	8	15	2	5	4	3	0.6470588235294118	0.6	4	0	0	4	40:49	90	89	22	t	103.3	100.0	106.43	f	18.367346938775512
0022000381	203954	1610612755	2021-02-09	2020-21	17	4	13	6	3	4	2	13	14	6	15	0	2	5	2	0.5681818181818182	0.4	9	2	2	3	34:58	76	76	25	t	109.1	97.4	105.7	f	30.952380952380953
0022000381	1627732	1610612755	2021-02-09	2020-21	7	3	4	9	1	2	1	2	6	6	13	0	0	9	5	0.4666666666666667	0.46153846153846156	9	1	0	1	34:23	76	77	14	t	117.9	107.8	108.19	f	19.54022988505747
0022000381	203552	1610612755	2021-02-09	2020-21	3	0	3	1	1	3	1	4	4	7	13	4	6	1	1	0.7333333333333333	0.6923076923076923	-2	1	0	2	29:16	62	63	22	t	98.4	100.0	105.81	f	26.086956521739133
0022000381	201980	1610612755	2021-02-09	2020-21	5	1	4	0	0	3	1	2	2	1	6	0	3	1	1	0.2857142857142857	0.16666666666666666	1	0	0	1	27:52	64	64	4	t	109.1	109.2	112.84	f	14.084507042253522
0022000381	1629680	1610612755	2021-02-09	2020-21	2	0	2	1	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	6	0	1	2	21:58	47	46	0	f	106.3	93.8	104.84	f	0.0
0022000381	1629003	1610612755	2021-02-09	2020-21	3	1	2	2	2	3	1	0	1	5	11	1	1	1	0	0.5	0.5	8	0	0	3	20:39	44	44	11	f	124.4	104.3	105.76	f	28.0
0022000381	1627788	1610612755	2021-02-09	2020-21	3	0	3	0	0	0	0	1	2	5	7	2	3	3	3	0.8125	0.8571428571428571	6	0	0	2	17:03	37	37	13	f	126.3	110.5	106.98	f	18.181818181818183
0022000381	2730	1610612755	2021-02-09	2020-21	9	3	6	4	1	1	0	2	2	3	5	0	0	4	3	0.6666666666666666	0.6	-1	0	2	4	13:02	29	29	8	f	116.7	116.1	112.33	f	20.588235294117645
0022000381	0	1610612755	2021-02-09	2020-21	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	0.0
0022000381	1628368	1610612758	2021-02-09	2020-21	6	0	6	10	4	3	1	5	8	13	30	3	10	11	7	0.5	0.48333333333333334	-10	1	0	4	38:56	86	86	34	t	107.0	115.9	107.26	t	38.144329896907216
0022000381	1627741	1610612758	2021-02-09	2020-21	8	0	8	4	3	3	0	1	1	7	20	6	16	2	1	0.5	0.5	-8	0	1	5	37:51	81	82	21	t	100.0	107.2	103.99	t	24.731182795698924
0022000381	203084	1610612758	2021-02-09	2020-21	7	2	5	4	0	1	1	2	2	3	9	0	2	7	3	0.4	0.3333333333333333	-7	2	0	4	37:20	83	82	8	t	104.8	113.1	108.0	t	11.956521739130434
0022000381	1628963	1610612758	2021-02-09	2020-21	6	1	5	1	1	1	0	3	5	6	11	2	5	3	3	0.6538461538461539	0.6363636363636364	-1	1	0	3	28:35	62	62	17	t	96.9	100.0	106.64	t	20.28985507246377
0022000381	1626158	1610612758	2021-02-09	2020-21	5	2	3	1	0	1	0	0	1	5	9	0	0	2	2	0.5555555555555556	0.5555555555555556	-10	0	1	5	22:03	47	49	10	t	85.1	100.0	105.58	t	18.51851851851852
0022000381	1630169	1610612758	2021-02-09	2020-21	2	2	0	3	2	1	1	0	0	6	9	3	4	0	0	0.8333333333333334	0.8333333333333334	2	2	2	3	33:48	76	75	15	f	114.3	111.7	109.35	t	11.904761904761905
0022000381	203922	1610612758	2021-02-09	2020-21	1	0	1	0	0	0	0	0	0	2	6	0	3	2	1	0.3333333333333333	0.3333333333333333	2	0	2	2	16:59	36	37	4	f	97.3	91.9	104.57	t	14.634146341463415
0022000381	202709	1610612758	2021-02-09	2020-21	3	0	3	1	0	1	1	0	0	1	4	0	2	1	1	0.25	0.25	-1	0	0	1	12:54	29	28	2	f	116.1	127.6	111.63	t	16.129032258064516
0022000381	202355	1610612758	2021-02-09	2020-21	1	1	0	0	0	0	0	0	2	0	1	0	0	1	0	0.0	0.0	-5	0	2	1	07:23	17	16	0	f	144.4	182.4	113.77	t	10.526315789473685
0022000381	1629657	1610612758	2021-02-09	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-2	0	0	0	04:11	8	8	0	f	75.0	100.0	91.79	t	0.0
0022000381	1	1610612758	2021-02-09	2020-21	8	5	3	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	0.0
0022000379	1628369	1610612738	2021-02-09	2020-21	4	1	3	4	1	0	0	8	8	7	20	1	4	6	4	0.4791666666666667	0.375	-21	0	0	1	37:54	72	73	23	t	113.9	141.1	91.82	f	28.235294117647058
0022000379	1627759	1610612738	2021-02-09	2020-21	8	4	4	0	0	3	2	6	8	12	20	3	6	5	5	0.717391304347826	0.675	-8	0	0	2	37:24	71	72	33	t	126.8	136.1	91.76	f	32.5
0022000379	202689	1610612738	2021-02-09	2020-21	4	1	3	7	1	0	0	2	2	2	12	1	4	1	1	0.2692307692307692	0.20833333333333334	-16	0	0	2	29:47	59	58	7	t	116.9	144.1	95.09	f	20.0
0022000379	1628464	1610612738	2021-02-09	2020-21	4	0	4	0	0	2	1	0	0	5	8	5	6	0	0	0.9375	0.9375	-3	0	1	6	28:03	52	54	15	t	132.1	135.2	91.55	f	16.949152542372882
0022000379	202684	1610612738	2021-02-09	2020-21	5	2	3	3	1	0	0	1	2	3	7	0	0	1	1	0.4375	0.42857142857142855	-11	0	0	2	25:41	47	48	7	t	120.8	140.8	90.64	f	14.814814814814813
0022000379	1629684	1610612738	2021-02-09	2020-21	4	0	4	1	0	2	1	0	1	4	8	1	3	2	2	0.5625	0.5625	-8	2	1	5	27:35	54	54	9	f	110.9	127.8	94.84	f	15.873015873015873
0022000379	1628400	1610612738	2021-02-09	2020-21	2	1	1	2	0	1	0	0	0	2	4	1	2	0	0	0.625	0.625	-1	0	0	2	22:41	43	41	5	f	113.6	124.4	89.93	f	9.803921568627452
0022000379	1630202	1610612738	2021-02-09	2020-21	0	0	0	1	0	0	0	0	0	1	4	1	4	0	0	0.375	0.375	0	0	0	3	15:24	28	28	3	f	107.1	103.4	88.83	f	11.76470588235294
0022000379	1629057	1610612738	2021-02-09	2020-21	4	2	2	0	0	0	0	2	2	2	3	0	0	2	2	0.75	0.6666666666666666	-3	0	0	2	12:34	24	22	6	f	95.8	113.0	89.76	f	13.793103448275863
0022000379	201952	1610612738	2021-02-09	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	1	0	0	0	02:57	5	5	0	f	140.0	100.0	89.49	f	0.0
0022000379	0	1610612738	2021-02-09	2020-21	5	3	2	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	0.0
0022000379	1626220	1610612762	2021-02-09	2020-21	4	0	4	1	0	1	0	0	0	3	6	3	4	1	0	0.75	0.75	6	0	2	4	37:04	70	70	9	t	138.0	129.6	91.94	t	8.641975308641975
0022000379	203497	1610612762	2021-02-09	2020-21	12	3	9	3	0	4	0	2	3	8	9	0	0	9	8	0.9	0.8888888888888888	23	0	3	3	36:29	70	69	18	t	136.6	105.7	92.75	t	16.867469879518072
0022000379	204060	1610612762	2021-02-09	2020-21	3	0	3	6	4	1	1	9	10	5	12	5	11	0	0	0.7058823529411765	0.625	21	0	0	3	35:59	68	67	24	t	140.6	111.8	91.38	t	22.22222222222222
0022000379	1628378	1610612762	2021-02-09	2020-21	4	1	3	9	3	2	1	6	7	12	23	6	13	4	3	0.6923076923076923	0.6521739130434783	13	1	2	3	35:49	69	69	36	t	140.6	120.0	93.14	t	34.146341463414636
0022000379	202711	1610612762	2021-02-09	2020-21	8	0	8	4	0	0	0	2	2	6	12	2	7	2	2	0.6153846153846154	0.5833333333333334	14	2	0	0	31:52	63	63	16	t	138.1	115.9	94.9	t	17.56756756756757
0022000379	203903	1610612762	2021-02-09	2020-21	2	1	1	5	3	1	0	3	3	4	15	2	10	2	0	0.40625	0.3333333333333333	-4	0	0	2	27:31	52	52	13	f	115.4	120.8	91.58	t	26.984126984126984
0022000379	1627777	1610612762	2021-02-09	2020-21	2	2	0	0	0	0	0	0	0	1	3	0	2	1	1	0.3333333333333333	0.3333333333333333	2	0	0	4	14:43	26	26	2	f	122.2	114.8	88.06	t	9.375
0022000375	1	1610612765	2021-02-09	2020-21	4	3	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	0.0
0022000379	202324	1610612762	2021-02-09	2020-21	2	2	0	0	0	0	0	2	2	1	3	0	0	3	1	0.5	0.3333333333333333	-9	0	0	3	11:31	21	22	4	f	119.0	147.8	91.69	t	16.0
0022000379	1629671	1610612762	2021-02-09	2020-21	4	1	3	0	0	1	0	0	0	0	1	0	1	0	0	0.0	0.0	4	1	0	0	09:02	16	17	0	f	88.9	70.6	92.99	t	10.526315789473685
0022000379	1	1610612762	2021-02-09	2020-21	11	7	4	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	0.0
0022000378	203952	1610612744	2021-02-09	2020-21	3	0	3	1	0	1	0	3	3	5	14	1	5	2	1	0.4666666666666667	0.39285714285714285	19	3	0	2	35:08	73	71	14	t	106.7	83.6	101.1	f	20.253164556962023
0022000378	1626162	1610612744	2021-02-09	2020-21	10	2	8	1	1	1	1	2	2	4	14	2	5	1	1	0.4	0.35714285714285715	14	1	0	2	34:08	68	68	12	t	110.1	89.9	97.03	f	21.62162162162162
0022000378	201939	1610612744	2021-02-09	2020-21	4	0	4	2	2	1	0	6	8	11	20	4	10	8	7	0.6956521739130435	0.65	15	0	0	1	31:56	67	64	32	t	114.7	94.0	101.46	f	32.87671232876713
0022000378	203110	1610612744	2021-02-09	2020-21	7	0	7	11	5	3	0	0	0	3	4	0	0	4	3	0.75	0.75	15	1	0	4	31:56	67	64	6	t	114.7	94.0	101.46	f	9.589041095890412
0022000378	1629308	1610612744	2021-02-09	2020-21	8	5	3	3	1	1	0	0	2	5	14	1	2	12	4	0.36666666666666664	0.39285714285714285	14	1	1	2	26:30	54	54	11	t	116.1	92.7	100.53	f	26.666666666666668
0022000378	1627814	1610612744	2021-02-09	2020-21	4	0	4	2	0	0	0	0	0	4	7	3	6	0	0	0.7857142857142857	0.7857142857142857	4	0	1	1	22:27	46	46	11	f	102.1	93.8	102.63	f	14.0
0022000378	202954	1610612744	2021-02-09	2020-21	3	0	3	4	1	2	1	0	0	1	3	1	2	1	0	0.5	0.5	8	2	0	0	16:04	32	34	3	f	105.9	82.4	101.58	f	13.88888888888889
0022000378	1629672	1610612744	2021-02-09	2020-21	6	2	4	2	0	0	0	0	2	6	7	3	3	3	2	0.9375	1.0714285714285714	8	0	0	4	15:59	32	33	15	f	109.1	82.4	100.6	f	22.22222222222222
0022000378	203145	1610612744	2021-02-09	2020-21	4	1	3	0	0	0	0	2	2	3	6	2	5	1	1	0.7142857142857143	0.6666666666666666	9	0	1	2	15:03	33	32	10	f	120.6	94.1	108.44	f	18.91891891891892
0022000378	1628539	1610612744	2021-02-09	2020-21	1	0	1	0	0	1	0	0	0	0	2	0	2	0	0	0.0	0.0	9	0	1	1	10:49	23	24	0	f	119.2	88.0	113.16	f	11.11111111111111
0022000378	0	1610612744	2021-02-09	2020-21	2	0	2	0	0	1	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	0.0
0022000378	1629640	1610612759	2021-02-09	2020-21	6	1	5	6	3	3	2	3	3	5	16	0	2	7	3	0.38235294117647056	0.3125	-16	0	1	1	33:00	69	67	13	t	84.3	107.1	101.82	t	26.31578947368421
0022000378	201942	1610612759	2021-02-09	2020-21	3	1	2	6	1	1	1	4	4	4	11	0	2	0	0	0.46153846153846156	0.36363636363636365	-18	0	0	1	28:02	57	59	12	t	91.4	118.3	101.02	t	21.875
0022000378	1627749	1610612759	2021-02-09	2020-21	4	0	4	2	1	3	1	0	0	4	10	0	0	2	1	0.4	0.4	-20	0	0	3	26:01	54	54	8	t	79.6	114.5	100.55	t	22.033898305084747
0022000378	1630170	1610612759	2021-02-09	2020-21	6	1	5	0	0	1	1	1	2	2	7	1	3	1	1	0.375	0.35714285714285715	-14	0	1	1	24:17	49	48	6	t	78.0	108.2	97.84	t	16.07142857142857
0022000378	1627751	1610612759	2021-02-09	2020-21	5	1	4	0	0	1	0	0	0	2	4	0	0	2	2	0.5	0.5	-13	0	2	3	19:42	42	41	4	t	69.8	102.4	103.55	t	10.869565217391305
0022000378	1626168	1610612759	2021-02-09	2020-21	6	1	5	0	0	0	0	4	4	5	8	1	3	3	2	0.75	0.6875	-1	0	0	2	25:59	53	54	15	f	101.8	105.5	102.53	t	16.39344262295082
0022000378	200752	1610612759	2021-02-09	2020-21	6	1	5	1	0	2	2	4	4	5	11	3	6	0	0	0.6538461538461539	0.5909090909090909	-7	0	0	2	24:02	47	50	17	f	114.3	121.2	100.86	t	28.30188679245283
0022000378	201988	1610612759	2021-02-09	2020-21	0	0	0	2	1	1	1	2	2	4	9	3	5	3	1	0.65	0.6111111111111112	-9	1	0	1	23:11	47	49	13	f	106.0	124.0	103.52	t	21.56862745098039
0022000378	1629022	1610612759	2021-02-09	2020-21	3	0	3	2	0	1	0	0	0	0	5	0	3	1	0	0.0	0.0	-9	0	0	2	17:42	36	38	0	f	97.4	117.9	104.41	t	15.0
0022000378	1629234	1610612759	2021-02-09	2020-21	5	1	4	1	1	0	0	1	2	1	2	0	0	1	0	0.5	0.5	-2	0	1	0	09:48	18	19	3	f	85.7	105.3	97.96	t	13.636363636363637
0022000378	1628966	1610612759	2021-02-09	2020-21	1	1	0	0	0	0	0	0	0	0	2	0	0	1	0	0.0	0.0	-3	1	0	0	04:08	9	8	0	f	55.6	100.0	98.71	t	18.181818181818183
0022000378	1629683	1610612759	2021-02-09	2020-21	0	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0.0	0.0	-3	0	0	0	04:08	9	8	0	f	55.6	100.0	98.71	t	18.181818181818183
0022000378	1	1610612759	2021-02-09	2020-21	6	4	2	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	0.0
0022000377	202322	1610612745	2021-02-09	2020-21	4	0	4	6	1	3	2	1	6	11	23	2	8	11	6	0.5	0.5217391304347826	-15	0	0	2	34:25	68	67	25	t	110.3	130.4	95.54	f	35.44303797468354
0022000377	201569	1610612745	2021-02-09	2020-21	1	0	1	3	3	4	3	3	5	8	19	4	10	7	3	0.55	0.5263157894736842	-40	0	1	3	33:44	65	65	23	t	101.5	158.8	96.04	f	32.0
0022000377	1630256	1610612745	2021-02-09	2020-21	7	3	4	2	1	1	1	0	0	6	9	1	3	6	5	0.7222222222222222	0.7222222222222222	-22	0	0	4	28:39	58	58	13	t	106.9	137.7	99.69	f	14.492753623188406
0022000377	200782	1610612745	2021-02-09	2020-21	4	4	0	3	2	0	0	0	0	3	7	1	2	4	2	0.5	0.5	-24	0	0	5	28:26	53	52	7	t	111.1	155.6	91.16	f	11.290322580645162
0022000377	202326	1610612745	2021-02-09	2020-21	7	1	6	2	1	1	1	4	6	1	8	1	6	2	0	0.3181818181818182	0.1875	-13	0	1	2	22:20	45	45	7	t	102.2	133.3	97.79	f	24.0
0022000377	1627863	1610612745	2021-02-09	2020-21	8	3	5	5	2	1	0	4	4	4	13	1	7	6	3	0.43333333333333335	0.34615384615384615	-21	3	0	3	34:17	70	70	13	f	98.6	126.4	100.11	f	20.0
0022000377	1628425	1610612745	2021-02-09	2020-21	6	1	5	3	1	0	0	0	0	4	6	3	4	2	1	0.9166666666666666	0.9166666666666666	-2	2	0	2	25:36	54	55	11	f	101.8	103.5	105.94	f	10.0
0022000377	1628021	1610612745	2021-02-09	2020-21	0	0	0	0	0	0	0	0	0	1	3	0	1	2	1	0.3333333333333333	0.3333333333333333	9	0	2	0	25:02	52	53	2	f	115.1	96.3	102.59	f	5.084745762711865
0022000377	203463	1610612745	2021-02-09	2020-21	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	-5	0	0	1	03:59	10	10	0	f	45.5	90.9	132.55	f	9.090909090909092
0022000377	1629066	1610612745	2021-02-09	2020-21	0	0	0	0	0	2	0	0	0	0	1	0	1	0	0	0.0	0.0	-6	0	0	0	01:46	5	5	0	f	0.0	100.0	149.43	f	60.0
0022000377	1630222	1610612745	2021-02-09	2020-21	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0.0	0.0	-6	0	0	1	01:46	5	5	0	f	0.0	100.0	149.43	f	20.0
0022000377	1628366	1610612740	2021-02-09	2020-21	6	2	4	3	2	0	0	2	2	5	12	3	6	4	2	0.5769230769230769	0.5416666666666666	14	0	0	1	29:33	57	57	15	t	137.9	115.8	93.4	t	18.84057971014493
0022000377	1627742	1610612740	2021-02-09	2020-21	5	0	5	3	2	2	0	1	1	9	13	3	5	0	0	0.8076923076923077	0.8076923076923077	11	0	1	5	28:09	53	56	22	t	132.7	108.8	95.49	t	24.193548387096776
0022000377	202339	1610612740	2021-02-09	2020-21	2	0	2	4	3	0	0	2	3	3	10	2	6	3	1	0.45454545454545453	0.4	3	1	0	0	23:10	45	45	10	t	124.4	115.2	94.27	t	19.642857142857142
0022000377	203500	1610612740	2021-02-09	2020-21	4	3	1	2	2	1	0	0	0	3	6	0	0	5	3	0.5	0.5	13	2	1	3	21:30	43	42	6	t	134.9	104.7	96.0	t	13.461538461538462
0022000377	1629627	1610612740	2021-02-09	2020-21	5	3	2	7	1	1	1	8	10	6	10	0	0	8	5	0.6666666666666666	0.6	29	1	0	4	20:39	44	42	20	t	147.8	88.6	104.6	t	32.6530612244898
0022000377	1628404	1610612740	2021-02-09	2020-21	17	3	14	3	0	2	1	1	2	8	16	3	9	4	4	0.625	0.59375	19	1	2	2	40:13	79	79	20	f	129.6	108.9	95.48	t	18.75
0022000377	1626195	1610612740	2021-02-09	2020-21	10	4	6	4	1	0	0	4	4	5	8	0	0	6	4	0.7	0.625	10	1	1	1	24:44	49	50	14	f	129.4	109.8	98.98	t	17.54385964912281
0022000377	1630184	1610612740	2021-02-09	2020-21	2	0	2	1	1	2	2	4	4	3	6	0	0	5	3	0.625	0.5	12	0	0	3	19:51	43	44	10	f	113.0	88.9	110.03	t	20.833333333333336
0022000377	1629638	1610612740	2021-02-09	2020-21	2	0	2	4	3	1	1	2	2	2	4	1	3	1	1	0.7	0.625	9	1	1	1	19:50	42	41	7	f	118.2	102.4	104.07	t	12.5
0022000377	200755	1610612740	2021-02-09	2020-21	1	0	1	0	0	0	0	0	0	2	5	0	1	0	0	0.4	0.4	7	0	0	0	07:03	15	14	4	f	146.7	100.0	102.13	t	27.77777777777778
0022000377	1628414	1610612740	2021-02-09	2020-21	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0.0	0.0	6	0	0	0	01:46	5	5	0	f	100.0	0.0	149.43	t	20.0
0022000377	1629117	1610612740	2021-02-09	2020-21	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	6	0	0	0	01:46	5	5	0	f	100.0	0.0	149.43	t	0.0
0022000377	1629637	1610612740	2021-02-09	2020-21	0	0	0	0	0	0	0	0	0	1	1	0	0	1	1	1.0	1.0	6	0	0	0	01:46	5	5	2	f	100.0	0.0	149.43	t	20.0
0022000377	1	1610612740	2021-02-09	2020-21	5	2	3	0	0	3	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	t	0.0
0022000375	201935	1610612751	2021-02-09	2020-21	6	1	5	12	6	7	3	7	7	8	14	1	4	7	5	0.7058823529411765	0.6071428571428571	-11	2	5	3	39:24	79	78	24	t	107.6	120.0	96.85	f	28.571428571428573
0022000375	202681	1610612751	2021-02-09	2020-21	2	0	2	7	5	1	1	1	1	12	28	2	9	6	5	0.48214285714285715	0.4642857142857143	-13	2	0	5	35:22	71	72	27	t	109.9	124.7	97.72	f	35.80246913580247
0022000375	203925	1610612751	2021-02-09	2020-21	1	0	1	2	0	0	0	0	2	2	6	2	6	0	0	0.42857142857142855	0.5	-4	0	0	1	33:40	68	65	6	t	116.2	122.1	96.87	f	9.45945945945946
0022000375	201145	1610612751	2021-02-09	2020-21	2	0	2	0	0	1	1	1	1	4	9	1	3	5	3	0.5555555555555556	0.5	-10	0	0	2	28:39	56	57	10	t	110.7	122.0	96.34	f	15.15151515151515
0022000375	201599	1610612751	2021-02-09	2020-21	8	1	7	2	2	5	4	1	1	4	5	0	0	5	4	0.9	0.8	-7	0	1	2	23:25	49	49	9	t	105.9	122.0	103.58	f	19.23076923076923
0022000375	1628971	1610612751	2021-02-09	2020-21	9	4	5	1	0	0	0	2	2	3	8	0	2	6	3	0.4444444444444444	0.375	-4	4	0	2	25:52	49	51	8	f	120.4	118.9	94.63	f	15.789473684210527
0022000375	1627789	1610612751	2021-02-09	2020-21	4	2	2	1	1	0	0	0	0	1	3	1	3	0	0	0.5	0.5	-4	0	0	0	19:30	38	38	3	f	110.5	112.2	97.23	f	6.382978723404256
0022000375	1629013	1610612751	2021-02-09	2020-21	1	0	1	1	1	1	1	2	2	3	7	2	2	2	0	0.625	0.5714285714285714	-7	0	0	4	17:56	33	33	10	f	112.1	125.7	91.0	f	21.42857142857143
0022000375	203658	1610612751	2021-02-09	2020-21	1	0	1	0	0	0	0	0	0	2	2	0	0	2	2	1.0	1.0	-4	0	0	2	08:39	17	17	4	f	127.8	142.1	102.84	f	11.76470588235294
0022000375	1629185	1610612751	2021-02-09	2020-21	0	0	0	4	2	0	0	0	0	1	1	0	0	1	1	1.0	1.0	3	0	0	0	02:31	5	5	2	f	240.0	150.0	104.9	f	20.0
0022000375	203943	1610612751	2021-02-09	2020-21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	3	0	0	1	02:31	5	5	0	f	240.0	150.0	104.9	f	0.0
0022000375	204020	1610612751	2021-02-09	2020-21	0	0	0	0	0	0	0	0	0	3	3	2	2	1	1	1.3333333333333333	1.3333333333333333	3	0	0	0	02:31	5	5	8	f	240.0	150.0	104.9	f	60.0
0022000375	0	1610612751	2021-02-09	2020-21	5	4	1	0	0	0	0	0	0	0	0	0	0	0	0	0.0	0.0	0	0	0	0	00:00	0	0	0	f	0.0	0.0	0.0	f	0.0
0022000375	203486	1610612765	2021-02-09	2020-21	12	3	9	7	2	2	1	0	0	7	10	0	0	7	5	0.7	0.7	9	2	3	3	38:03	76	76	14	t	120.5	110.4	97.8	t	14.285714285714286
0022000375	203924	1610612765	2021-02-09	2020-21	5	0	5	4	2	2	2	6	7	11	19	4	8	5	4	0.6904761904761905	0.6842105263157895	10	0	1	3	37:41	77	76	32	t	128.2	118.4	98.08	t	27.380952380952383
0022000375	1626153	1610612765	2021-02-09	2020-21	4	2	2	9	3	2	1	8	12	7	16	0	3	10	7	0.5	0.4375	15	2	0	1	37:06	75	74	22	t	131.6	114.9	97.04	t	29.26829268292683
0022000375	201933	1610612765	2021-02-09	2020-21	5	0	5	2	1	1	0	0	1	4	11	1	5	2	1	0.4090909090909091	0.4090909090909091	3	3	0	3	31:11	64	65	9	t	110.6	107.7	100.82	t	16.901408450704228
0022000375	201961	1610612765	2021-02-09	2020-21	2	0	2	0	0	0	0	0	0	3	6	2	5	0	0	0.6666666666666666	0.6666666666666666	0	0	0	2	19:55	42	41	8	t	121.4	121.4	101.22	t	12.5
0022000375	1628367	1610612765	2021-02-09	2020-21	4	0	4	2	1	5	3	1	1	5	10	2	4	3	3	0.65	0.6	9	2	1	1	28:32	54	55	13	f	126.8	112.7	93.32	t	25.862068965517242
0022000375	1630180	1610612765	2021-02-09	2020-21	3	1	2	2	1	0	0	0	0	6	6	3	3	2	2	1.25	1.25	10	0	0	2	21:16	38	38	15	f	140.0	121.1	88.03	t	14.285714285714286
0022000375	1630191	1610612765	2021-02-09	2020-21	0	0	0	0	0	1	1	0	0	2	3	1	1	2	1	0.8333333333333334	0.8333333333333334	4	1	1	1	09:30	18	18	5	f	147.4	133.3	93.47	t	20.0
0022000375	203585	1610612765	2021-02-09	2020-21	2	1	1	1	0	0	0	0	0	1	2	0	0	1	1	0.5	0.5	-3	0	0	0	06:13	12	12	2	f	125.0	150.0	92.65	t	14.285714285714285
0022000375	1629635	1610612765	2021-02-09	2020-21	0	0	0	0	0	0	0	0	0	1	1	0	0	1	1	1.0	1.0	-1	0	0	0	05:52	11	11	2	f	136.4	145.5	90.0	t	7.692307692307692
0022000375	1630240	1610612765	2021-02-09	2020-21	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0.0	0.0	-1	0	0	0	04:41	8	9	0	f	87.5	88.9	87.12	t	0.0
\.


--
-- TOC entry 3161 (class 0 OID 16395)
-- Dependencies: 200
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.players (player_id, first_name, last_name, team_id) FROM stdin;
1630173	Precious	Achiuwa	1610612748
1629121	Jaylen	Adams	1610612749
203500	Steven	Adams	1610612740
1628389	Bam	Adebayo	1610612748
200746	LaMarcus	Aldridge	1610612759
1630234	Ty-Shon	Alexander	1610612756
1629638	Nickeil	Alexander-Walker	1610612740
1628960	Grayson	Allen	1610612763
1628386	Jarrett	Allen	1610612739
202329	Al-Farouq	Aminu	1610612753
203937	Kyle	Anderson	1610612763
203507	Giannis	Antetokounmpo	1610612749
1628961	Kostas	Antetokounmpo	1610612747
203648	Thanasis	Antetokounmpo	1610612749
2546	Carmelo	Anthony	1610612757
1630175	Cole	Anthony	1610612753
1628384	OG	Anunoby	1610612761
1627853	Ryan	Arcidiacono	1610612741
2772	Trevor	Ariza	1610612760
201571	D.J.	Augustin	1610612749
1630166	Deni	Avdija	1610612764
1629028	Deandre	Ayton	1610612756
1628962	Udoka	Azubuike	1610612762
1628407	Dwayne	Bacon	1610612753
1628963	Marvin	Bagley III	1610612758
1630163	LaMelo	Ball	1610612766
1628366	Lonzo	Ball	1610612740
1628964	Mo	Bamba	1610612753
1630217	Desmond	Bane	1610612763
203084	Harrison	Barnes	1610612758
1629628	RJ	Barrett	1610612752
203115	Will	Barton	1610612743
1628966	Keita	Bates-Diop	1610612759
201587	Nicolas	Batum	1610612746
203382	Aron	Baynes	1610612761
203145	Kent	Bazemore	1610612744
1629647	Darius	Bazley	1610612760
203078	Bradley	Beal	1610612764
1627736	Malik	Beasley	1610612750
1628395	Jordan	Bell	1610612764
1627761	DeAndre'	Bembry	1610612761
202722	Davis	Bertans	1610612764
201976	Patrick	Beverley	1610612746
1630180	Saddiq	Bey	1610612765
1630189	Tyler	Bey	1610612742
203920	Khem	Birch	1610612753
1629048	Goga	Bitadze	1610612754
202687	Bismack	Biyombo	1610612766
202357	Nemanja	Bjelica	1610612758
202339	Eric	Bledsoe	1610612740
1629833	Keljin	Blevins	1610612757
203992	Bogdan	Bogdanovic	1610612737
202711	Bojan	Bogdanovic	1610612762
1629626	Bol	Bol	1610612743
1629716	Marques	Bolden	1610612739
1629648	Jordan	Bone	1610612753
1629067	Isaac	Bonga	1610612764
1626164	Devin	Booker	1610612756
1628449	Chris	Boucher	1610612761
1628968	Brian	Bowen II	1610612754
202340	Avery	Bradley	1610612748
1628396	Tony	Bradley	1610612755
1629714	Jarrell	Brantley	1610612762
1629649	Ignas	Brazdeikis	1610612752
1628969	Mikal	Bridges	1610612756
1628970	Miles	Bridges	1610612766
1627763	Malcolm	Brogdon	1610612754
1628415	Dillon	Brooks	1610612763
1628971	Bruce	Brown	1610612751
1627759	Jaylen	Brown	1610612738
1629650	Moses	Brown	1610612760
1628425	Sterling	Brown	1610612745
1628972	Troy	Brown Jr.	1610612764
1628973	Jalen	Brunson	1610612742
1628418	Thomas	Bryant	1610612764
203493	Reggie	Bullock	1610612752
203504	Trey	Burke	1610612742
202692	Alec	Burks	1610612752
202710	Jimmy	Butler	1610612748
1629719	Devontae	Cacok	1610612747
203484	Kentavious	Caldwell-Pope	1610612747
1630267	Facundo	Campazzo	1610612743
1628427	Vlatko	Cancar	1610612743
203991	Clint	Capela	1610612737
1630176	Vernon	Carey Jr.	1610612766
1628975	Jevon	Carter	1610612756
1628976	Wendell	Carter Jr.	1610612741
203487	Michael	Carter-Williams	1610612753
1627936	Alex	Caruso	1610612747
1626161	Willie	Cauley-Stein	1610612742
1629185	Chris	Chiozza	1610612751
1627737	Marquese	Chriss	1610612744
1629109	Gary	Clark	1610612753
1629634	Brandon	Clarke	1610612763
203903	Jordan	Clarkson	1610612762
1629651	Nicolas	Claxton	1610612751
1629599	Amir	Coffey	1610612746
1628381	John	Collins	1610612737
1628380	Zach	Collins	1610612757
201144	Mike	Conley	1610612762
1626192	Pat	Connaughton	1610612749
1626188	Quinn	Cook	1610612747
202326	DeMarcus	Cousins	1610612745
203496	Robert	Covington	1610612757
1628470	Torrey	Craig	1610612749
203109	Jae	Crowder	1610612756
1629633	Jarrett	Culver	1610612750
203552	Seth	Curry	1610612755
201939	Stephen	Curry	1610612744
1630268	Nate	Darling	1610612766
203076	Anthony	Davis	1610612747
202334	Ed	Davis	1610612750
1629056	Terence	Davis	1610612761
201942	DeMar	DeRozan	1610612759
203521	Matthew	Dellavedova	1610612739
1628978	Donte	DiVincenzo	1610612749
1629603	Mamadi	Diakite	1610612749
1628977	Hamidou	Diallo	1610612760
203476	Gorgui	Dieng	1610612763
203915	Spencer	Dinwiddie	1610612751
1629029	Luka	Doncic	1610612742
1629652	Luguentz	Dort	1610612760
1628422	Damyean	Dotson	1610612739
1629653	Devon	Dotson	1610612741
1629635	Sekou	Doumbouya	1610612765
1628408	PJ	Dozier	1610612743
201609	Goran	Dragic	1610612748
203083	Andre	Drummond	1610612739
201162	Jared	Dudley	1610612747
1627739	Kris	Dunn	1610612737
201142	Kevin	Durant	1610612751
1630162	Anthony	Edwards	1610612750
1629035	Carsen	Edwards	1610612738
1629604	CJ	Elleby	1610612757
201961	Wayne	Ellington	1610612765
203954	Joel	Embiid	1610612755
203516	James	Ennis III	1610612753
1629234	Drew	Eubanks	1610612759
203957	Dante	Exum	1610612745
1629605	Tacko	Fall	1610612738
202324	Derrick	Favors	1610612762
1626245	Cristiano	Felicio	1610612741
1628390	Terrance	Ferguson	1610612755
1628981	Bruno	Fernando	1610612737
1627827	Dorian	Finney-Smith	1610612742
1630201	Malachi	Flynn	1610612761
1627854	Bryn	Forbes	1610612749
1630235	Trent	Forrest	1610612762
203095	Evan	Fournier	1610612753
1628368	De'Aaron	Fox	1610612758
1628365	Markelle	Fultz	1610612753
1629117	Wenyen	Gabriel	1610612740
1629655	Daniel	Gafford	1610612741
201568	Danilo	Gallinari	1610612737
204038	Langston	Galloway	1610612756
1629636	Darius	Garland	1610612739
201188	Marc	Gasol	1610612747
200752	Rudy	Gay	1610612759
202331	Paul	George	1610612746
201959	Taj	Gibson	1610612752
1628385	Harry	Giles III	1610612757
1628983	Shai	Gilgeous-Alexander	1610612760
1630264	Anthony	Gill	1610612764
203497	Rudy	Gobert	1610612762
1629164	Brandon	Goodwin	1610612737
203932	Aaron	Gordon	1610612753
201569	Eric	Gordon	1610612745
1628984	Devonte'	Graham	1610612766
203924	Jerami	Grant	1610612765
201980	Danny	Green	1610612755
203110	Draymond	Green	1610612744
203210	JaMychal	Green	1610612743
1629750	Javonte	Green	1610612738
201145	Jeff	Green	1610612751
1630182	Josh	Green	1610612742
201933	Blake	Griffin	1610612765
1629657	Kyle	Guy	1610612758
1629060	Rui	Hachimura	1610612764
1630204	Ashton	Hagans	1610612750
1630169	Tyrese	Haliburton	1610612758
1630221	Josh	Hall	1610612760
1630181	R.J.	Hampton	1610612743
203501	Tim	Hardaway Jr.	1610612742
201935	James	Harden	1610612751
203090	Maurice	Harkless	1610612748
1629607	Jared	Harper	1610612752
1626149	Montrezl	Harrell	1610612747
203914	Gary	Harris	1610612743
1630223	Jalen	Harris	1610612761
203925	Joe	Harris	1610612751
202699	Tobias	Harris	1610612755
1627885	Shaquille	Harrison	1610612762
1628404	Josh	Hart	1610612740
1628392	Isaiah	Hartenstein	1610612743
2617	Udonis	Haslem	1610612748
1629637	Jaxson	Hayes	1610612740
1630165	Killian	Hayes	1610612765
202330	Gordon	Hayward	1610612766
1627823	Juancho	Hernangomez	1610612750
1626195	Willy	Hernangomez	1610612740
1629639	Tyler	Herro	1610612748
1627741	Buddy	Hield	1610612758
201588	George	Hill	1610612760
203524	Solomon	Hill	1610612737
1630207	Nate	Hinton	1610612742
1628988	Aaron	Holiday	1610612754
201950	Jrue	Holiday	1610612749
203200	Justin	Holiday	1610612754
1626158	Richaun	Holmes	1610612758
203918	Rodney	Hood	1610612757
201143	Al	Horford	1610612760
1629659	Talen	Horton-Tucker	1610612747
1627863	Danuel	House Jr.	1610612745
2730	Dwight	Howard	1610612755
1630210	Markus	Howard	1610612743
1628989	Kevin	Huerter	1610612737
1630190	Elijah	Hughes	1610612762
1629631	De'Andre	Hunter	1610612737
1628990	Chandler	Hutchison	1610612741
201586	Serge	Ibaka	1610612746
2738	Andre	Iguodala	1610612748
204060	Joe	Ingles	1610612762
1627742	Brandon	Ingram	1610612740
202681	Kyrie	Irving	1610612751
1628371	Jonathan	Isaac	1610612753
1628411	Wes	Iwundu	1610612742
1628402	Frank	Jackson	1610612765
1628367	Josh	Jackson	1610612765
1628382	Justin	Jackson	1610612760
202704	Reggie	Jackson	1610612746
1628991	Jaren	Jackson Jr.	1610612763
1629713	Justin	James	1610612758
2544	LeBron	James	1610612747
1629610	DaQuan	Jeffries	1610612758
1629660	Ty	Jerome	1610612760
1630198	Isaiah	Joe	1610612755
1629661	Cameron	Johnson	1610612756
201949	James	Johnson	1610612742
1629640	Keldon	Johnson	1610612759
1626169	Stanley	Johnson	1610612761
204020	Tyler	Johnson	1610612751
203999	Nikola	Jokic	1610612743
1627745	Damian	Jones	1610612756
1630222	Mason	Jones	1610612745
1630200	Tre	Jones	1610612759
1626145	Tyus	Jones	1610612763
1627884	Derrick	Jones Jr.	1610612757
201599	DeAndre	Jordan	1610612751
202709	Cory	Joseph	1610612758
1629662	Mfiondu	Kabengele	1610612746
1626163	Frank	Kaminsky	1610612756
202683	Enes	Kanter	1610612757
1628379	Luke	Kennard	1610612746
1628467	Maxi	Kleber	1610612742
1630233	Nathan	Knight	1610612737
1628995	Kevin	Knox II	1610612752
1629723	John	Konchar	1610612763
1627788	Furkan	Korkmaz	1610612755
1628436	Luke	Kornet	1610612741
1629066	Rodions	Kurucs	1610612745
1628398	Kyle	Kuzma	1610612747
203897	Zach	LaVine	1610612741
203087	Jeremy	Lamb	1610612754
1629641	Romeo	Langford	1610612738
1627774	Jake	Layman	1610612750
1627747	Caris	LeVert	1610612754
1629665	Jalen	Lecque	1610612754
1627814	Damion	Lee	1610612744
1630240	Saben	Lee	1610612765
203458	Alex	Len	1610612764
202695	Kawhi	Leonard	1610612746
203086	Meyers	Leonard	1610612748
1630184	Kira	Lewis Jr.	1610612740
203081	Damian	Lillard	1610612757
1629642	Nassir	Little	1610612757
1626172	Kevon	Looney	1610612744
201572	Brook	Lopez	1610612749
201577	Robin	Lopez	1610612764
201567	Kevin	Love	1610612739
200768	Kyle	Lowry	1610612761
1627789	Timothe	Luwawu-Cabarrot	1610612751
1626168	Trey	Lyles	1610612759
1630266	Will	Magnay	1610612740
1630177	Theo	Maledon	1610612760
1630211	Karim	Mane	1610612753
1629611	Terance	Mann	1610612746
1630185	Nico	Mannion	1610612744
1626246	Boban	Marjanovic	1610612742
1628374	Lauri	Markkanen	1610612741
1630230	Naji	Marshall	1610612740
1628997	Caleb	Martin	1610612766
1628998	Cody	Martin	1610612766
1629103	Kelan	Martin	1610612754
1630231	Kenyon	Martin Jr.	1610612745
1629726	Garrison	Mathews	1610612764
202083	Wesley	Matthews	1610612747
1630178	Tyrese	Maxey	1610612755
1630219	Skylar	Mays	1610612737
1627775	Patrick	McCaw	1610612761
203468	CJ	McCollum	1610612757
204456	T.J.	McConnell	1610612754
1630183	Jaden	McDaniels	1610612750
1629667	Jalen	McDaniels	1610612766
203926	Doug	McDermott	1610612754
1630253	Sean	McDermott	1610612763
201580	JaVale	McGee	1610612739
203585	Rodney	McGruder	1610612765
1628035	Alfonzo	McKinnie	1610612747
1629162	Jordan	McLaughlin	1610612750
203463	Ben	McLemore	1610612745
1629740	Nicolo	Melli	1610612740
1629001	De'Anthony	Melton	1610612763
1630241	Sam	Merrill	1610612749
1629002	Chimezie	Metu	1610612758
203114	Khris	Middleton	1610612749
203121	Darius	Miller	1610612760
201988	Patty	Mills	1610612759
200794	Paul	Millsap	1610612743
1629003	Shake	Milton	1610612755
1628378	Donovan	Mitchell	1610612762
1629690	Adam	Mokoka	1610612741
1628370	Malik	Monk	1610612766
202734	E'Twaun	Moore	1610612756
1629630	Ja	Morant	1610612763
1629752	Juwan	Morgan	1610612762
202693	Markieff	Morris	1610612747
1628420	Monte	Morris	1610612743
202694	Marcus	Morris Sr.	1610612746
1628539	Mychal	Mulder	1610612744
1627749	Dejounte	Murray	1610612759
1627750	Jamal	Murray	1610612743
203488	Mike	Muscala	1610612760
1629004	Svi	Mykhailiuk	1610612765
1627846	Abdel	Nader	1610612756
1626204	Larry	Nance Jr.	1610612739
1630174	Aaron	Nesmith	1610612738
203526	Raul	Neto	1610612764
1627777	Georges	Niang	1610612762
1630192	Zeke	Nnaji	1610612743
203457	Nerlens	Noel	1610612752
1629669	Jaylen	Nowell	1610612750
1628373	Frank	Ntilikina	1610612752
1629134	Kendrick	Nunn	1610612748
203994	Jusuf	Nurkic	1610612757
1628021	David	Nwaba	1610612745
1629670	Jordan	Nwora	1610612749
1626220	Royce	O'Neale	1610612762
1628400	Semi	Ojeleye	1610612738
1626143	Jahlil	Okafor	1610612765
1629643	Chuma	Okeke	1610612753
1629006	Josh	Okogie	1610612750
1630168	Onyeka	Okongwu	1610612737
1630171	Isaac	Okoro	1610612739
1629644	KZ	Okpala	1610612748
203506	Victor	Oladipo	1610612745
203482	Kelly	Olynyk	1610612748
1629671	Miye	Oni	1610612762
1626224	Cedi	Osman	1610612739
1630187	Daniel	Oturu	1610612746
1626162	Kelly	Oubre Jr.	1610612744
203953	Jabari	Parker	1610612758
1629672	Eric	Paschall	1610612744
202335	Patrick	Patterson	1610612746
101108	Chris	Paul	1610612756
1626166	Cameron	Payne	1610612756
203901	Elfrid	Payton	1610612752
1629617	Reggie	Perry	1610612751
1629033	Theo	Pinson	1610612752
203486	Mason	Plumlee	1610612765
1627751	Jakob	Poeltl	1610612759
1629738	Vincent	Poirier	1610612755
1630197	Aleksej	Pokusevski	1610612760
1629673	Jordan	Poole	1610612744
1629007	Jontay	Porter	1610612763
1629645	Kevin	Porter Jr.	1610612745
1629008	Michael	Porter Jr.	1610612743
203490	Otto	Porter Jr.	1610612741
1626171	Bobby	Portis	1610612749
204001	Kristaps	Porzingis	1610612742
203939	Dwight	Powell	1610612742
1626181	Norman	Powell	1610612761
1627752	Taurean	Prince	1610612739
1630202	Payton	Pritchard	1610612738
1630193	Immanuel	Quickley	1610612752
1630186	Jahmi'us	Ramsey	1610612758
203944	Julius	Randle	1610612752
1629629	Cam	Reddish	1610612737
200755	JJ	Redick	1610612740
1630194	Paul	Reed	1610612755
1629675	Naz	Reid	1610612750
1630208	Nick	Richards	1610612766
1626196	Josh	Richardson	1610612742
1630203	Grant	Riller	1610612766
203085	Austin	Rivers	1610612752
1629130	Duncan	Robinson	1610612748
1629010	Jerome	Robinson	1610612764
1629011	Mitchell	Robinson	1610612752
203922	Glenn	Robinson III	1610612758
1629676	Isaiah	Roby	1610612760
200765	Rajon	Rondo	1610612737
201565	Derrick	Rose	1610612765
203082	Terrence	Ross	1610612753
1626179	Terry	Rozier	1610612766
201937	Ricky	Rubio	1610612750
1626156	D'Angelo	Russell	1610612750
1627734	Domantas	Sabonis	1610612754
1629677	Luka	Samanic	1610612759
203960	JaKarr	Sampson	1610612754
203967	Dario	Saric	1610612756
203107	Tomas	Satoransky	1610612741
203471	Dennis	Schroder	1610612747
203118	Mike	Scott	1610612755
1630206	Jay	Scrubb	1610612746
1629012	Collin	Sexton	1610612739
1629013	Landry	Shamet	1610612751
1627783	Pascal	Siakam	1610612761
1629735	Chris	Silva	1610612748
1627732	Ben	Simmons	1610612755
1629014	Anfernee	Simons	1610612757
1629686	Deividas	Sirvydis	1610612765
1629346	Alen	Smailagic	1610612744
203935	Marcus	Smart	1610612738
202397	Ish	Smith	1610612764
1630188	Jalen	Smith	1610612756
1628372	Dennis	Smith Jr.	1610612752
203503	Tony	Snell	1610612737
1630199	Cassius	Stanley	1610612754
1630205	Lamar	Stevens	1610612739
1630191	Isaiah	Stewart	1610612765
1629622	Max	Strus	1610612748
1628410	Edmond	Sumner	1610612754
1630256	Jae'Sean	Tate	1610612745
1628369	Jayson	Tatum	1610612738
201952	Jeff	Teague	1610612738
202066	Garrett	Temple	1610612741
1630179	Tyrell	Terry	1610612742
1628464	Daniel	Theis	1610612738
1630271	Brodric	Thomas	1610612745
1629744	Matt	Thomas	1610612761
202691	Klay	Thompson	1610612744
202684	Tristan	Thompson	1610612738
1628414	Sindarius	Thornwell	1610612740
1629680	Matisse	Thybulle	1610612755
1629681	Killian	Tillie	1610612763
1630214	Xavier	Tillman	1610612763
1630167	Obi	Toppin	1610612752
1629308	Juan	Toscano-Anderson	1610612744
1626157	Karl-Anthony	Towns	1610612750
1629018	Gary	Trent Jr.	1610612757
200782	P.J.	Tucker	1610612745
1629730	Rayjon	Tucker	1610612755
1626167	Myles	Turner	1610612754
202685	Jonas	Valanciunas	1610612763
1627756	Denzel	Valentine	1610612741
1627832	Fred	VanVleet	1610612761
1629020	Jarred	Vanderbilt	1610612750
1630170	Devin	Vassell	1610612759
1629216	Gabe	Vincent	1610612748
202696	Nikola	Vucevic	1610612753
1629731	Dean	Wade	1610612739
1629021	Moritz	Wagner	1610612764
202689	Kemba	Walker	1610612738
1629022	Lonnie	Walker IV	1610612759
202322	John	Wall	1610612745
202954	Brad	Wanamaker	1610612744
203933	T.J.	Warren	1610612754
1629023	P.J.	Washington	1610612766
1629139	Yuta	Watanabe	1610612761
1629682	Tremont	Waters	1610612738
1628778	Paul	Watson	1610612761
1629683	Quinndary	Weatherspoon	1610612759
201566	Russell	Westbrook	1610612764
1629632	Coby	White	1610612741
1628401	Derrick	White	1610612759
202355	Hassan	Whiteside	1610612758
204222	Greg	Whittington	1610612743
203952	Andrew	Wiggins	1610612744
1629684	Grant	Williams	1610612738
1629026	Kenrich	Williams	1610612760
101150	Lou	Williams	1610612746
1630172	Patrick	Williams	1610612741
1629057	Robert	Williams III	1610612738
1629627	Zion	Williamson	1610612740
1628391	D.J.	Wilson	1610612749
1629685	Dylan	Windler	1610612739
1626159	Justise	Winslow	1610612763
1630216	Cassius	Winston	1610612764
1630164	James	Wiseman	1610612744
1626174	Christian	Wood	1610612745
1630218	Robert	Woodard II	1610612758
1626153	Delon	Wright	1610612765
201152	Thaddeus	Young	1610612741
1629027	Trae	Young	1610612737
203469	Cody	Zeller	1610612766
1627826	Ivica	Zubac	1610612746
203658	Norvel	Pelle	1610612751
0	Away	Team	\N
1	Home	Team	\N
202697	Iman	Shumpert	1610612751
1628412	Frank	Mason	1610612753
203943	Noah	Vonleh	1610612751
\.


--
-- TOC entry 3168 (class 0 OID 16449)
-- Dependencies: 207
-- Data for Name: playertotals; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.playertotals (player_id, season, team_id, game_date, score, rebounds, offensive_rebounds, defensive_rebounds, assists, rim_assists, turnovers, live_turnovers, free_throws_made, free_throws_attempted, field_goals_made, field_goals_attempted, threes_made, threes_attempted, rim_attempted, rim_made, possessions, true_shooting_pct, effective_field_goal_pct, rebound_pct) FROM stdin;
\.


--
-- TOC entry 3166 (class 0 OID 16433)
-- Dependencies: 205
-- Data for Name: standings; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.standings (team_id, wins, losses, seed, season) FROM stdin;
\.


--
-- TOC entry 3163 (class 0 OID 16411)
-- Dependencies: 202
-- Data for Name: teamgameresults; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.teamgameresults (game_id, team_id, season, game_date, score, rebounds, offensive_rebounds, defensive_rebounds, assists, rim_assists, turnovers, live_turnovers, free_throws_made, free_throws_attempted, field_goals_made, field_goals_attempted, threes_made, threes_attempted, rim_attempted, rim_made, true_shooting_pct, effective_field_goal_pct, rotation_chart_location, shot_chart_location, steals, blocks, fouls, defensive_possessions, defensive_rating, is_home, num_overtimes, offensive_possessions, offensive_rating, pace) FROM stdin;
0022000290	1610612737	2020-21	2021-01-29	116	53	13	40	16	4	13	6	26	34	39	87	12	37	15	12	0.565	0.5172413793103449	gamerecaps/2021-01-29/ATLrotation.png	gamerecaps/2021-01-29/ATLshots.png	5	4	30	100	98.0	f	0	100	116.0	101.0
0022000290	1610612764	2020-21	2021-01-29	100	53	16	37	13	2	13	5	31	38	31	85	7	28	12	10	0.4900990099009901	0.40588235294117647	gamerecaps/2021-01-29/WASrotation.png	gamerecaps/2021-01-29/WASshots.png	6	4	27	100	116.0	t	0	100	98.0	101.0
0022000297	1610612742	2020-21	2021-01-29	101	45	12	33	20	6	11	8	18	27	37	86	9	33	18	12	0.5153061224489796	0.48255813953488375	gamerecaps/2021-01-29/DALrotation.png	gamerecaps/2021-01-29/DALshots.png	6	4	27	97	122.4	f	0	97	104.1	97.5
0022000297	1610612762	2020-21	2021-01-29	120	58	17	41	21	9	15	6	24	26	38	87	20	48	22	14	0.6122448979591837	0.5517241379310345	gamerecaps/2021-01-29/UTArotation.png	gamerecaps/2021-01-29/UTAshots.png	8	5	25	97	104.1	t	0	97	122.4	97.5
0022000296	1610612743	2020-21	2021-01-29	109	37	7	30	25	7	16	8	13	20	41	78	14	31	21	11	0.6193181818181818	0.6153846153846154	gamerecaps/2021-01-29/DENrotation.png	gamerecaps/2021-01-29/DENshots.png	8	5	15	97	121.4	f	0	97	112.4	97.5
0022000296	1610612759	2020-21	2021-01-29	119	42	10	32	29	14	13	8	21	26	44	81	10	23	26	21	0.6413043478260869	0.6049382716049383	gamerecaps/2021-01-29/SASrotation.png	gamerecaps/2021-01-29/SASshots.png	8	1	18	97	112.4	t	0	97	121.4	97.5
0022000295	1610612751	2020-21	2021-01-29	147	51	10	41	33	13	11	4	14	16	57	100	19	45	41	28	0.7067307692307693	0.665	gamerecaps/2021-01-29/BKNrotation.png	gamerecaps/2021-01-29/BKNshots.png	7	4	25	105	117.9	f	0	105	138.7	106.0
0022000295	1610612760	2020-21	2021-01-29	125	42	9	33	23	5	12	7	29	34	40	86	16	38	29	17	0.6188118811881188	0.5581395348837209	gamerecaps/2021-01-29/OKCrotation.png	gamerecaps/2021-01-29/OKCshots.png	4	4	12	105	138.7	t	0	105	117.9	106.0
0022000294	1610612755	2020-21	2021-01-29	118	57	14	43	20	6	9	3	32	38	39	87	8	16	26	12	0.5625	0.4942528735632184	gamerecaps/2021-01-29/PHIrotation.png	gamerecaps/2021-01-29/PHIshots.png	11	6	17	102	92.2	f	0	100	115.7	102.0
0022000294	1610612750	2020-21	2021-01-29	94	43	6	37	20	7	18	11	14	18	35	82	10	33	18	12	0.5280898876404494	0.4878048780487805	gamerecaps/2021-01-29/MINrotation.png	gamerecaps/2021-01-29/MINshots.png	3	4	29	100	115.7	t	0	102	92.2	102.0
0022000289	1610612746	2020-21	2021-01-29	116	51	10	41	25	10	11	6	11	11	46	94	13	37	26	19	0.5876288659793815	0.5585106382978723	gamerecaps/2021-01-29/LACrotation.png	gamerecaps/2021-01-29/LACshots.png	8	5	15	97	91.8	f	0	99	117.2	98.5
0022000289	1610612753	2020-21	2021-01-29	90	54	16	38	20	3	17	8	16	18	32	89	10	33	21	10	0.4635416666666667	0.4157303370786517	gamerecaps/2021-01-29/ORLrotation.png	gamerecaps/2021-01-29/ORLshots.png	6	2	12	99	117.2	t	0	97	91.8	98.5
0022000293	1610612749	2020-21	2021-01-29	126	53	14	39	29	13	12	7	17	22	48	96	13	35	36	25	0.6	0.5677083333333334	gamerecaps/2021-01-29/MILrotation.png	gamerecaps/2021-01-29/MILshots.png	5	5	19	103	126.0	f	0	102	122.3	103.5
0022000293	1610612740	2020-21	2021-01-29	131	50	15	35	32	8	9	5	20	28	45	96	21	48	24	13	0.6009174311926605	0.578125	gamerecaps/2021-01-29/NOProtation.png	gamerecaps/2021-01-29/NOPshots.png	7	3	16	102	122.3	t	0	103	126.0	103.5
0022000292	1610612758	2020-21	2021-01-29	126	43	13	30	31	10	22	14	24	31	43	78	16	36	25	18	0.6833333333333333	0.6538461538461539	gamerecaps/2021-01-29/SACrotation.png	gamerecaps/2021-01-29/SACshots.png	7	5	25	100	124.0	f	0	100	124.8	100.5
0022000292	1610612761	2020-21	2021-01-29	124	42	16	26	20	7	15	7	27	33	42	86	13	32	36	19	0.6089108910891089	0.563953488372093	gamerecaps/2021-01-29/TORrotation.png	gamerecaps/2021-01-29/TORshots.png	14	2	27	100	124.8	t	0	100	124.0	100.5
0022000291	1610612739	2020-21	2021-01-29	81	49	17	32	15	7	14	8	15	18	29	84	8	26	34	14	0.43548387096774194	0.39285714285714285	gamerecaps/2021-01-29/CLErotation.png	gamerecaps/2021-01-29/CLEshots.png	8	5	20	90	112.1	f	0	90	89.0	91.0
0022000291	1610612752	2020-21	2021-01-29	102	48	10	38	20	9	14	8	14	16	39	80	10	27	30	19	0.5930232558139535	0.55	gamerecaps/2021-01-29/NYKrotation.png	gamerecaps/2021-01-29/NYKshots.png	8	6	24	90	89.0	t	0	90	112.1	91.0
0022000288	1610612754	2020-21	2021-01-29	105	44	10	34	30	16	16	7	10	13	42	87	11	35	38	25	0.5645161290322581	0.5459770114942529	gamerecaps/2021-01-29/INDrotation.png	gamerecaps/2021-01-29/INDshots.png	7	4	13	97	110.2	f	0	98	106.1	98.5
0022000288	1610612766	2020-21	2021-01-29	108	44	9	35	35	16	17	7	6	9	43	85	16	37	29	19	0.6067415730337079	0.6	gamerecaps/2021-01-29/CHArotation.png	gamerecaps/2021-01-29/CHAshots.png	7	5	13	98	106.1	t	0	97	110.2	98.5
0022000284	1610612747	2020-21	2021-01-28	92	47	13	34	25	13	11	4	8	12	36	88	12	28	40	20	0.5	0.4772727272727273	gamerecaps/2021-01-28/LALrotation.png	gamerecaps/2021-01-28/LALshots.png	2	3	16	89	117.6	f	0	89	101.1	91.0
0022000284	1610612765	2020-21	2021-01-28	107	50	11	39	27	13	9	2	13	13	40	87	14	36	29	18	0.5752688172043011	0.5402298850574713	gamerecaps/2021-01-28/DETrotation.png	gamerecaps/2021-01-28/DETshots.png	4	2	18	89	101.1	t	0	89	117.6	91.0
0022000287	1610612757	2020-21	2021-01-28	101	54	13	41	16	6	15	8	6	8	39	93	17	41	24	12	0.520618556701031	0.510752688172043	gamerecaps/2021-01-28/PORrotation.png	gamerecaps/2021-01-28/PORshots.png	6	7	16	99	105.1	f	0	98	101.0	99.5
0022000287	1610612745	2020-21	2021-01-28	104	52	12	40	19	5	14	6	15	18	38	90	13	47	22	19	0.5360824742268041	0.49444444444444446	gamerecaps/2021-01-28/HOUrotation.png	gamerecaps/2021-01-28/HOUshots.png	8	7	12	98	101.0	t	0	99	105.1	99.5
0022000285	1610612746	2020-21	2021-01-28	109	55	13	42	22	2	13	5	20	22	36	87	17	42	16	10	0.5567010309278351	0.5114942528735632	gamerecaps/2021-01-28/LACrotation.png	gamerecaps/2021-01-28/LACshots.png	11	4	20	97	106.1	f	0	97	110.1	99.0
0022000285	1610612748	2020-21	2021-01-28	105	47	9	38	24	10	14	11	12	15	40	90	13	33	27	17	0.553763440860215	0.5166666666666667	gamerecaps/2021-01-28/MIArotation.png	gamerecaps/2021-01-28/MIAshots.png	5	1	18	97	110.1	t	0	97	106.1	99.0
0022000286	1610612744	2020-21	2021-01-28	93	52	13	39	21	10	13	7	6	8	38	99	11	38	30	15	0.45145631067961167	0.4393939393939394	gamerecaps/2021-01-28/GSWrotation.png	gamerecaps/2021-01-28/GSWshots.png	8	1	19	102	108.6	f	0	103	90.3	104.0
0022000286	1610612756	2020-21	2021-01-28	114	59	10	49	34	15	14	8	21	23	41	88	11	32	26	18	0.5824742268041238	0.5284090909090909	gamerecaps/2021-01-28/PHXrotation.png	gamerecaps/2021-01-28/PHXshots.png	7	1	14	103	90.3	t	0	102	108.6	104.0
0022000305	1610612765	2020-21	2021-01-30	91	44	10	34	17	2	16	6	24	32	29	77	9	36	7	5	0.4945652173913043	0.43506493506493504	gamerecaps/2021-01-30/DETrotation.png	gamerecaps/2021-01-30/DETshots.png	6	4	14	99	119.2	f	0	98	91.9	99.0
0022000305	1610612744	2020-21	2021-01-30	118	50	9	41	34	12	13	6	7	10	47	90	17	36	21	16	0.6276595744680851	0.6166666666666667	gamerecaps/2021-01-30/GSWrotation.png	gamerecaps/2021-01-30/GSWshots.png	6	5	23	98	91.9	t	0	99	119.2	99.0
0022000303	1610612756	2020-21	2021-01-30	111	46	12	34	22	7	13	5	27	31	37	81	10	22	20	12	0.5789473684210527	0.5185185185185185	gamerecaps/2021-01-30/PHXrotation.png	gamerecaps/2021-01-30/PHXshots.png	9	0	19	97	107.1	f	0	96	114.4	97.5
0022000303	1610612742	2020-21	2021-01-30	105	42	9	33	22	11	16	9	8	14	44	83	9	29	20	15	0.5842696629213483	0.5843373493975904	gamerecaps/2021-01-30/DALrotation.png	gamerecaps/2021-01-30/DALshots.png	5	4	26	96	114.4	t	0	97	107.1	97.5
0022000304	1610612763	2020-21	2021-01-30	129	47	12	35	34	8	15	7	10	15	51	91	17	35	20	13	0.6666666666666666	0.6538461538461539	gamerecaps/2021-01-30/MEMrotation.png	gamerecaps/2021-01-30/MEMshots.png	7	7	23	99	112.0	f	0	99	129.0	100.0
0022000304	1610612759	2020-21	2021-01-30	112	40	10	30	25	10	14	7	21	26	39	83	13	29	28	18	0.5894736842105263	0.5481927710843374	gamerecaps/2021-01-30/SASrotation.png	gamerecaps/2021-01-30/SASshots.png	7	5	16	99	129.0	t	0	99	112.0	100.0
0022000302	1610612747	2020-21	2021-01-30	96	45	13	32	20	3	14	10	13	19	37	84	9	31	15	10	0.5217391304347826	0.49404761904761907	gamerecaps/2021-01-30/LALrotation.png	gamerecaps/2021-01-30/LALshots.png	8	4	15	94	101.1	f	0	93	103.2	93.5
0022000302	1610612738	2020-21	2021-01-30	95	47	12	35	24	13	15	8	9	14	40	82	6	21	25	19	0.5337078651685393	0.524390243902439	gamerecaps/2021-01-30/BOSrotation.png	gamerecaps/2021-01-30/BOSshots.png	10	6	16	93	103.2	t	0	94	101.1	93.5
0022000301	1610612758	2020-21	2021-01-30	104	42	13	29	22	5	17	5	5	11	41	85	17	45	13	11	0.5722222222222222	0.5823529411764706	gamerecaps/2021-01-30/SACrotation.png	gamerecaps/2021-01-30/SACshots.png	12	3	21	93	112.9	f	0	94	110.6	93.5
0022000301	1610612748	2020-21	2021-01-30	105	43	11	32	25	12	16	12	22	26	36	77	11	32	19	14	0.5842696629213483	0.538961038961039	gamerecaps/2021-01-30/MIArotation.png	gamerecaps/2021-01-30/MIAshots.png	5	4	14	94	110.6	t	0	93	112.9	93.5
0022000300	1610612745	2020-21	2021-01-30	126	49	8	41	32	11	16	11	16	20	45	92	20	46	30	18	0.62	0.5978260869565217	gamerecaps/2021-01-30/HOUrotation.png	gamerecaps/2021-01-30/HOUshots.png	8	5	24	105	103.7	f	0	106	118.9	107.0
0022000300	1610612740	2020-21	2021-01-30	112	51	12	39	27	11	15	8	18	29	41	91	12	41	30	17	0.5384615384615384	0.5164835164835165	gamerecaps/2021-01-30/NOProtation.png	gamerecaps/2021-01-30/NOPshots.png	11	7	14	106	118.9	t	0	105	103.7	107.0
0022000299	1610612749	2020-21	2021-01-30	114	48	10	38	22	7	16	8	16	24	40	82	18	45	31	22	0.6129032258064516	0.5975609756097561	gamerecaps/2021-01-30/MILrotation.png	gamerecaps/2021-01-30/MILshots.png	6	6	17	98	126.0	f	0	99	115.2	99.5
0022000299	1610612766	2020-21	2021-01-30	126	45	10	35	32	10	9	6	17	20	44	92	21	44	30	16	0.62	0.592391304347826	gamerecaps/2021-01-30/CHArotation.png	gamerecaps/2021-01-30/CHAshots.png	8	5	20	99	115.2	t	0	98	126.0	99.5
0022000298	1610612757	2020-21	2021-01-30	123	40	10	30	20	7	8	5	16	19	45	88	17	42	25	16	0.640625	0.6079545454545454	gamerecaps/2021-01-30/PORrotation.png	gamerecaps/2021-01-30/PORshots.png	11	1	17	93	128.4	f	0	94	129.5	95.0
0022000298	1610612741	2020-21	2021-01-30	122	46	12	34	31	10	15	11	15	15	43	85	21	45	21	15	0.6777777777777778	0.6294117647058823	gamerecaps/2021-01-30/CHIrotation.png	gamerecaps/2021-01-30/CHIshots.png	5	2	14	94	129.5	t	0	93	128.4	95.0
0022000319	1610612756	2020-21	2021-02-01	109	51	15	36	19	6	16	9	10	12	43	92	13	35	24	11	0.5618556701030928	0.5380434782608695	gamerecaps/2021-02-01/PHXrotation.png	gamerecaps/2021-02-01/PHXshots.png	7	3	24	98	109.1	f	0	97	109.0	99.5
0022000319	1610612742	2020-21	2021-02-01	108	47	12	35	16	5	14	7	24	25	37	86	10	32	31	20	0.5510204081632653	0.4883720930232558	gamerecaps/2021-02-01/DALrotation.png	gamerecaps/2021-02-01/DALshots.png	9	7	17	97	109.0	t	0	98	109.1	99.5
0022000316	1610612757	2020-21	2021-02-01	106	53	17	36	19	4	11	10	13	13	39	104	15	42	30	15	0.481651376146789	0.44711538461538464	gamerecaps/2021-02-01/PORrotation.png	gamerecaps/2021-02-01/PORshots.png	8	6	10	104	128.8	f	0	104	100.0	105.0
0022000316	1610612749	2020-21	2021-02-01	134	57	10	47	38	13	13	8	7	12	53	96	21	42	31	23	0.6633663366336634	0.6614583333333334	gamerecaps/2021-02-01/MILrotation.png	gamerecaps/2021-02-01/MILshots.png	10	7	13	104	100.0	t	0	104	128.8	105.0
0022000314	1610612766	2020-21	2021-02-01	129	49	13	36	31	10	12	8	22	26	43	95	21	41	31	15	0.602803738317757	0.5631578947368421	gamerecaps/2021-02-01/CHArotation.png	gamerecaps/2021-02-01/CHAshots.png	6	4	22	107	113.1	f	1	106	120.6	96.91
0022000314	1610612748	2020-21	2021-02-01	121	51	12	39	28	8	17	6	16	25	43	91	19	46	23	17	0.587378640776699	0.5769230769230769	gamerecaps/2021-02-01/MIArotation.png	gamerecaps/2021-02-01/MIAshots.png	8	7	26	106	120.6	t	1	107	113.1	96.91
0022000312	1610612750	2020-21	2021-02-01	98	52	20	32	20	8	8	4	7	11	40	102	11	38	44	21	0.45794392523364486	0.44607843137254904	gamerecaps/2021-02-01/MINrotation.png	gamerecaps/2021-02-01/MINshots.png	4	1	21	95	103.1	f	0	95	102.1	96.5
0022000312	1610612739	2020-21	2021-02-01	100	59	17	42	26	13	15	4	23	31	35	84	7	22	28	16	0.5	0.4583333333333333	gamerecaps/2021-02-01/CLErotation.png	gamerecaps/2021-02-01/CLEshots.png	4	12	12	95	102.1	t	0	95	103.1	96.5
0022000315	1610612752	2020-21	2021-02-01	102	49	13	36	21	11	12	3	22	26	37	87	6	29	28	17	0.5204081632653061	0.45977011494252873	gamerecaps/2021-02-01/NYKrotation.png	gamerecaps/2021-02-01/NYKshots.png	6	6	19	98	112.2	f	0	98	104.1	98.0
0022000315	1610612741	2020-21	2021-02-01	110	48	11	37	30	16	12	6	15	20	42	88	11	34	33	23	0.5670103092783505	0.5397727272727273	gamerecaps/2021-02-01/CHIrotation.png	gamerecaps/2021-02-01/CHIshots.png	3	1	19	98	104.1	t	0	98	112.2	98.0
0022000313	1610612747	2020-21	2021-02-01	107	35	6	29	24	14	13	8	20	24	40	77	7	23	27	19	0.6091954022988506	0.564935064935065	gamerecaps/2021-02-01/LALrotation.png	gamerecaps/2021-02-01/LALshots.png	10	7	20	93	104.2	f	0	93	112.6	95.0
0022000313	1610612737	2020-21	2021-02-01	99	42	11	31	27	15	19	10	14	17	37	78	11	29	30	21	0.5755813953488372	0.5448717948717948	gamerecaps/2021-02-01/ATLrotation.png	gamerecaps/2021-02-01/ATLshots.png	8	3	21	93	112.6	t	0	93	104.2	95.0
0022000318	1610612745	2020-21	2021-02-01	136	53	13	40	30	6	13	8	10	11	49	102	28	52	28	17	0.6476190476190476	0.6176470588235294	gamerecaps/2021-02-01/HOUrotation.png	gamerecaps/2021-02-01/HOUshots.png	8	6	20	105	101.0	f	0	104	128.3	105.5
0022000318	1610612760	2020-21	2021-02-01	106	49	10	39	21	5	17	8	15	19	39	89	13	34	33	16	0.5408163265306123	0.5112359550561798	gamerecaps/2021-02-01/OKCrotation.png	gamerecaps/2021-02-01/OKCshots.png	8	8	13	104	128.3	t	0	105	101.0	105.5
0022000320	1610612763	2020-21	2021-02-01	133	54	11	43	37	15	11	8	14	18	52	93	15	30	32	23	0.665	0.6397849462365591	gamerecaps/2021-02-01/MEMrotation.png	gamerecaps/2021-02-01/MEMshots.png	11	11	16	101	101.0	f	0	99	130.4	101.5
0022000320	1610612759	2020-21	2021-02-01	102	45	13	32	28	10	15	11	15	22	37	89	13	37	26	12	0.5204081632653061	0.4887640449438202	gamerecaps/2021-02-01/SASrotation.png	gamerecaps/2021-02-01/SASshots.png	8	7	13	99	130.4	t	0	101	101.0	101.5
0022000317	1610612758	2020-21	2021-02-01	118	59	18	41	31	13	20	11	20	26	42	88	14	43	27	20	0.5969387755102041	0.5568181818181818	gamerecaps/2021-02-01/SACrotation.png	gamerecaps/2021-02-01/SACshots.png	3	8	18	102	106.9	f	0	100	115.7	102.0
0022000317	1610612740	2020-21	2021-02-01	109	50	19	31	22	11	10	3	20	24	40	101	9	30	52	26	0.47767857142857145	0.4405940594059406	gamerecaps/2021-02-01/NOProtation.png	gamerecaps/2021-02-01/NOPshots.png	11	5	22	100	115.7	t	0	102	106.9	102.0
0022000311	1610612739	2020-21	2021-01-31	104	59	14	45	20	15	19	10	18	23	41	84	4	16	37	25	0.5531914893617021	0.5119047619047619	gamerecaps/2021-01-31/CLErotation.png	gamerecaps/2021-01-31/CLEshots.png	3	3	14	100	109.0	f	0	99	103.0	100.5
0022000311	1610612750	2020-21	2021-01-31	109	37	7	30	24	9	10	3	11	15	41	91	16	40	31	17	0.5618556701030928	0.5384615384615384	gamerecaps/2021-01-31/MINrotation.png	gamerecaps/2021-01-31/MINshots.png	10	11	25	99	103.0	t	0	100	109.0	100.5
0022000310	1610612751	2020-21	2021-01-31	146	51	9	42	33	3	17	10	27	33	50	88	19	36	8	5	0.7038834951456311	0.6761363636363636	gamerecaps/2021-01-31/BKNrotation.png	gamerecaps/2021-01-31/BKNshots.png	6	5	24	112	131.9	f	0	111	128.1	113.5
0022000310	1610612764	2020-21	2021-01-31	149	46	15	31	24	7	7	6	25	32	56	108	12	39	23	17	0.6157024793388429	0.5740740740740741	gamerecaps/2021-01-31/WASrotation.png	gamerecaps/2021-01-31/WASshots.png	10	2	22	111	128.1	t	0	112	131.9	113.5
0022000309	1610612753	2020-21	2021-01-31	102	44	8	36	22	5	10	8	23	28	33	82	13	36	17	10	0.531578947368421	0.4817073170731707	gamerecaps/2021-01-31/ORLrotation.png	gamerecaps/2021-01-31/ORLshots.png	8	5	18	98	117.3	f	0	96	105.2	97.5
0022000309	1610612761	2020-21	2021-01-31	115	54	13	41	27	13	11	8	21	22	41	90	12	39	30	21	0.575	0.5222222222222223	gamerecaps/2021-01-31/TORrotation.png	gamerecaps/2021-01-31/TORshots.png	8	5	22	96	105.2	t	0	98	117.3	97.5
0022000307	1610612755	2020-21	2021-01-31	119	50	18	32	20	8	12	6	21	31	45	92	8	26	38	21	0.5613207547169812	0.532608695652174	gamerecaps/2021-01-31/PHIrotation.png	gamerecaps/2021-01-31/PHIshots.png	9	8	21	100	108.9	f	0	99	120.2	100.0
0022000307	1610612754	2020-21	2021-01-31	110	44	11	33	21	9	18	9	18	22	41	84	10	28	29	18	0.5913978494623656	0.5476190476190477	gamerecaps/2021-01-31/INDrotation.png	gamerecaps/2021-01-31/INDshots.png	6	7	25	99	120.2	t	0	100	108.9	100.0
0022000306	1610612762	2020-21	2021-01-31	117	44	11	33	28	4	15	8	33	39	32	75	20	47	10	5	0.6223404255319149	0.56	gamerecaps/2021-01-31/UTArotation.png	gamerecaps/2021-01-31/UTAshots.png	3	4	21	97	129.3	f	0	97	120.6	98.0
0022000306	1610612743	2020-21	2021-01-31	128	40	7	33	28	4	8	3	16	19	47	87	18	28	13	9	0.6614583333333334	0.6436781609195402	gamerecaps/2021-01-31/DENrotation.png	gamerecaps/2021-01-31/DENshots.png	8	2	27	97	120.6	t	0	97	129.3	98.0
0022000308	1610612746	2020-21	2021-01-31	129	44	9	35	26	5	7	5	24	28	44	81	17	38	22	14	0.6808510638297872	0.6481481481481481	gamerecaps/2021-01-31/LACrotation.png	gamerecaps/2021-01-31/LACshots.png	2	4	14	92	125.0	f	0	93	137.2	93.0
0022000308	1610612752	2020-21	2021-01-31	115	40	13	27	21	6	8	2	23	28	41	85	10	27	25	14	0.5824742268041238	0.5411764705882353	gamerecaps/2021-01-31/NYKrotation.png	gamerecaps/2021-01-31/NYKshots.png	5	5	20	93	137.2	t	0	92	125.0	93.0
0022000559	1610612757	2020-21	2021-02-02	132	50	17	33	19	3	9	2	23	23	44	95	21	46	14	11	0.6179245283018868	0.5736842105263158	gamerecaps/2021-02-02/PORrotation.png	gamerecaps/2021-02-02/PORshots.png	6	1	19	97	122.2	f	0	98	134.7	98.5
0022000559	1610612764	2020-21	2021-02-02	121	41	7	34	32	10	14	6	13	17	46	83	16	40	26	23	0.6797752808988764	0.6506024096385542	gamerecaps/2021-02-02/WASrotation.png	gamerecaps/2021-02-02/WASshots.png	2	5	21	98	134.7	t	0	97	122.2	98.5
0022000326	1610612738	2020-21	2021-02-02	111	58	16	42	16	2	16	9	20	27	39	84	13	34	9	7	0.5721649484536082	0.5416666666666666	gamerecaps/2021-02-02/BOSrotation.png	gamerecaps/2021-02-02/BOSshots.png	3	4	20	97	108.1	f	0	96	114.4	98.0
0022000326	1610612744	2020-21	2021-02-02	107	39	7	32	30	6	11	3	16	23	38	83	15	37	17	10	0.5815217391304348	0.5481927710843374	gamerecaps/2021-02-02/GSWrotation.png	gamerecaps/2021-02-02/GSWshots.png	9	4	23	96	114.4	t	0	97	108.1	98.0
0022000325	1610612765	2020-21	2021-02-02	105	51	16	35	18	8	15	9	18	20	39	93	9	27	26	16	0.5148514851485149	0.46774193548387094	gamerecaps/2021-02-02/DETrotation.png	gamerecaps/2021-02-02/DETshots.png	7	5	21	100	115.8	f	0	99	105.0	100.5
0022000325	1610612762	2020-21	2021-02-02	117	46	9	37	23	9	13	7	25	29	38	82	16	42	21	14	0.6157894736842106	0.5609756097560976	gamerecaps/2021-02-02/UTArotation.png	gamerecaps/2021-02-02/UTAshots.png	9	6	17	99	105.0	t	0	100	115.8	100.5
0022000322	1610612763	2020-21	2021-02-02	116	42	15	27	27	13	16	8	23	24	42	93	9	25	35	19	0.558252427184466	0.5	gamerecaps/2021-02-02/MEMrotation.png	gamerecaps/2021-02-02/MEMshots.png	11	7	22	103	127.6	f	0	104	111.5	104.5
0022000322	1610612754	2020-21	2021-02-02	134	48	12	36	30	16	18	11	20	29	49	82	16	29	35	26	0.6927083333333334	0.6951219512195121	gamerecaps/2021-02-02/INDrotation.png	gamerecaps/2021-02-02/INDshots.png	8	8	19	104	111.5	t	0	103	127.6	104.5
0022000324	1610612746	2020-21	2021-02-02	120	43	15	28	21	5	8	6	15	17	45	99	15	36	23	13	0.5714285714285714	0.5303030303030303	gamerecaps/2021-02-02/LACrotation.png	gamerecaps/2021-02-02/LACshots.png	12	5	18	98	125.3	f	0	98	120.0	99.5
0022000324	1610612751	2020-21	2021-02-02	124	47	8	39	25	12	17	12	21	26	45	79	13	31	21	17	0.6966292134831461	0.6518987341772152	gamerecaps/2021-02-02/BKNrotation.png	gamerecaps/2021-02-02/BKNshots.png	6	4	17	98	120.0	t	0	98	125.3	99.5
0022000323	1610612761	2020-21	2021-02-02	123	44	7	37	32	14	11	4	23	25	40	83	20	45	28	18	0.6542553191489362	0.6024096385542169	gamerecaps/2021-02-02/TORrotation.png	gamerecaps/2021-02-02/TORshots.png	14	4	18	100	108.0	f	0	99	124.2	99.5
0022000323	1610612753	2020-21	2021-02-02	108	46	9	37	24	6	17	14	12	14	41	89	14	38	19	12	0.5706521739130435	0.5393258426966292	gamerecaps/2021-02-02/ORLrotation.png	gamerecaps/2021-02-02/ORLshots.png	4	4	22	99	124.2	t	0	100	108.0	99.5
0022000331	1610612764	2020-21	2021-02-03	103	51	15	36	20	4	17	11	18	25	35	84	15	37	20	12	0.5364583333333334	0.5059523809523809	gamerecaps/2021-02-03/WASrotation.png	gamerecaps/2021-02-03/WASshots.png	6	5	17	97	102.0	f	0	98	105.1	98.0
0022000331	1610612748	2020-21	2021-02-03	100	45	10	35	24	7	16	6	16	22	36	83	12	35	14	10	0.5376344086021505	0.5060240963855421	gamerecaps/2021-02-03/MIArotation.png	gamerecaps/2021-02-03/MIAshots.png	11	2	21	98	105.1	t	0	97	102.0	98.0
0022000327	1610612755	2020-21	2021-02-03	118	47	10	37	23	7	18	4	26	32	41	80	10	25	28	15	0.6223404255319149	0.575	gamerecaps/2021-02-03/PHIrotation.png	gamerecaps/2021-02-03/PHIshots.png	9	6	21	102	108.8	f	0	102	114.6	102.5
0022000327	1610612766	2020-21	2021-02-03	111	43	13	30	28	10	19	9	19	23	39	87	14	37	30	16	0.5721649484536082	0.5287356321839081	gamerecaps/2021-02-03/CHArotation.png	gamerecaps/2021-02-03/CHAshots.png	4	4	22	102	114.6	t	0	102	108.8	102.5
0022000336	1610612738	2020-21	2021-02-03	111	50	13	37	28	12	13	7	22	29	39	86	11	33	25	18	0.5606060606060606	0.5174418604651163	gamerecaps/2021-02-03/BOSrotation.png	gamerecaps/2021-02-03/BOSshots.png	9	3	21	100	116.0	f	0	99	109.9	100.5
0022000336	1610612758	2020-21	2021-02-03	116	49	13	36	23	5	11	9	19	23	42	92	13	37	23	14	0.5631067961165048	0.5271739130434783	gamerecaps/2021-02-03/SACrotation.png	gamerecaps/2021-02-03/SACshots.png	7	2	19	99	109.9	t	0	100	116.0	100.5
0022000335	1610612756	2020-21	2021-02-03	101	41	12	29	26	9	15	7	17	20	38	82	8	35	20	15	0.5555555555555556	0.5121951219512195	gamerecaps/2021-02-03/PHXrotation.png	gamerecaps/2021-02-03/PHXshots.png	3	6	18	92	130.9	f	0	93	108.6	93.5
0022000335	1610612740	2020-21	2021-02-03	123	49	16	33	30	12	7	3	17	21	46	90	14	33	41	25	0.61	0.5888888888888889	gamerecaps/2021-02-03/NOProtation.png	gamerecaps/2021-02-03/NOPshots.png	7	3	20	93	108.6	t	0	92	130.9	93.5
0022000334	1610612750	2020-21	2021-02-03	108	54	11	43	22	5	10	5	9	11	43	94	13	33	32	17	0.5454545454545454	0.526595744680851	gamerecaps/2021-02-03/MINrotation.png	gamerecaps/2021-02-03/MINshots.png	6	9	21	99	111.0	f	0	99	108.0	100.0
0022000334	1610612759	2020-21	2021-02-03	111	52	12	40	28	11	7	6	18	24	43	96	7	26	28	19	0.5288461538461539	0.484375	gamerecaps/2021-02-03/SASrotation.png	gamerecaps/2021-02-03/SASshots.png	5	6	13	99	108.0	t	0	99	111.0	100.0
0022000333	1610612745	2020-21	2021-02-03	87	46	6	40	21	8	21	13	9	13	33	86	12	46	19	13	0.47282608695652173	0.45348837209302323	gamerecaps/2021-02-03/HOUrotation.png	gamerecaps/2021-02-03/HOUshots.png	11	4	18	108	95.4	f	0	107	80.6	108.5
0022000333	1610612760	2020-21	2021-02-03	104	56	8	48	19	8	21	11	22	26	36	83	10	33	24	14	0.5425531914893617	0.4939759036144578	gamerecaps/2021-02-03/OKCrotation.png	gamerecaps/2021-02-03/OKCshots.png	13	5	14	107	80.6	t	0	108	95.4	108.5
0022000332	1610612752	2020-21	2021-02-03	107	55	15	40	19	5	17	11	10	15	43	89	11	22	27	18	0.5631578947368421	0.5449438202247191	gamerecaps/2021-02-03/NYKrotation.png	gamerecaps/2021-02-03/NYKshots.png	5	4	18	96	105.1	f	0	97	109.2	98.0
0022000332	1610612741	2020-21	2021-02-03	103	41	7	34	25	13	9	5	11	16	43	88	6	36	31	24	0.5421052631578948	0.5227272727272727	gamerecaps/2021-02-03/CHIrotation.png	gamerecaps/2021-02-03/CHIshots.png	11	3	14	97	109.2	t	0	96	105.1	98.0
0022000328	1610612746	2020-21	2021-02-03	121	47	8	39	22	6	16	8	13	17	44	79	20	34	26	14	0.6896551724137931	0.6835443037974683	gamerecaps/2021-02-03/LACrotation.png	gamerecaps/2021-02-03/LACshots.png	4	6	20	93	105.3	f	0	95	127.4	94.5
0022000328	1610612739	2020-21	2021-02-03	99	40	14	26	21	10	8	4	13	17	41	92	4	10	33	17	0.5	0.4673913043478261	gamerecaps/2021-02-03/CLErotation.png	gamerecaps/2021-02-03/CLEshots.png	8	6	14	95	127.4	t	0	93	105.3	94.5
0022000330	1610612742	2020-21	2021-02-03	122	48	15	33	27	9	10	6	23	25	43	93	13	40	32	18	0.5761904761904761	0.532258064516129	gamerecaps/2021-02-03/DALrotation.png	gamerecaps/2021-02-03/DALshots.png	8	7	19	101	113.7	f	0	100	122.0	101.0
0022000330	1610612737	2020-21	2021-02-03	116	48	13	35	31	14	16	8	12	17	45	90	14	38	30	21	0.5927835051546392	0.5777777777777777	gamerecaps/2021-02-03/ATLrotation.png	gamerecaps/2021-02-03/ATLshots.png	6	4	20	100	122.0	t	0	101	113.7	101.0
0022000329	1610612754	2020-21	2021-02-03	110	50	9	41	28	11	14	13	13	15	43	95	11	34	25	18	0.5392156862745098	0.5105263157894737	gamerecaps/2021-02-03/INDrotation.png	gamerecaps/2021-02-03/INDshots.png	7	6	13	106	121.5	f	0	107	101.9	107.5
0022000329	1610612749	2020-21	2021-02-03	130	55	13	42	33	11	13	7	13	14	48	102	21	48	35	21	0.602803738317757	0.5735294117647058	gamerecaps/2021-02-03/MILrotation.png	gamerecaps/2021-02-03/MILshots.png	13	7	11	107	101.9	t	0	106	121.5	107.5
0022000359	1610612750	2020-21	2021-02-06	118	45	15	30	27	6	14	8	12	22	47	93	12	36	25	15	0.5784313725490197	0.5698924731182796	gamerecaps/2021-02-06/MINrotation.png	gamerecaps/2021-02-06/MINshots.png	12	3	15	101	116.5	f	0	101	116.8	102.0
0022000359	1610612760	2020-21	2021-02-06	120	50	12	38	25	10	16	12	16	20	46	90	12	33	24	18	0.6122448979591837	0.5777777777777777	gamerecaps/2021-02-06/OKCrotation.png	gamerecaps/2021-02-06/OKCshots.png	8	1	19	101	116.8	t	0	101	116.5	102.0
0022000354	1610612751	2020-21	2021-02-06	108	40	11	29	21	6	17	12	15	17	39	88	15	41	29	13	0.5631578947368421	0.5284090909090909	gamerecaps/2021-02-06/BKNrotation.png	gamerecaps/2021-02-06/BKNshots.png	6	3	18	101	121.6	f	0	100	105.9	102.0
0022000354	1610612755	2020-21	2021-02-06	124	55	17	38	27	8	16	6	18	22	48	94	10	27	31	20	0.5922330097087378	0.5638297872340425	gamerecaps/2021-02-06/PHIrotation.png	gamerecaps/2021-02-06/PHIshots.png	12	4	15	100	105.9	t	0	101	121.6	102.0
0022000352	1610612743	2020-21	2021-02-06	114	51	16	35	30	9	10	5	11	14	45	97	13	35	27	18	0.5533980582524272	0.5309278350515464	gamerecaps/2021-02-06/DENrotation.png	gamerecaps/2021-02-06/DENshots.png	3	9	18	98	121.4	f	0	96	116.3	98.0
0022000352	1610612758	2020-21	2021-02-06	119	47	11	36	30	8	7	3	17	24	44	91	14	35	23	15	0.5784313725490197	0.5604395604395604	gamerecaps/2021-02-06/SACrotation.png	gamerecaps/2021-02-06/SACshots.png	5	7	11	96	116.3	t	0	98	121.4	98.0
0022000351	1610612757	2020-21	2021-02-06	99	45	13	32	15	3	11	5	8	16	37	89	17	47	21	12	0.515625	0.5112359550561798	gamerecaps/2021-02-06/PORrotation.png	gamerecaps/2021-02-06/PORshots.png	7	7	15	93	114.6	f	0	95	104.2	95.5
0022000351	1610612752	2020-21	2021-02-06	110	57	14	43	20	8	14	7	9	13	44	88	13	30	29	20	0.5860215053763441	0.5738636363636364	gamerecaps/2021-02-06/NYKrotation.png	gamerecaps/2021-02-06/NYKshots.png	5	5	19	95	104.2	t	0	93	114.6	95.5
0022000361	1610612765	2020-21	2021-02-06	129	41	14	27	31	13	23	12	23	28	45	94	16	42	29	24	0.6037735849056604	0.5638297872340425	gamerecaps/2021-02-06/DETrotation.png	gamerecaps/2021-02-06/DETshots.png	12	4	31	114	117.4	f	2	115	111.2	95.59
0022000361	1610612747	2020-21	2021-02-06	135	44	12	32	32	18	23	12	24	28	51	91	9	19	40	29	0.6553398058252428	0.6098901098901099	gamerecaps/2021-02-06/LALrotation.png	gamerecaps/2021-02-06/LALshots.png	12	5	24	115	111.2	t	2	114	117.4	95.59
0022000355	1610612763	2020-21	2021-02-06	109	48	13	35	27	9	10	3	16	19	40	90	13	39	26	15	0.5505050505050505	0.5166666666666667	gamerecaps/2021-02-06/MEMrotation.png	gamerecaps/2021-02-06/MEMshots.png	5	5	17	96	121.6	f	0	95	112.4	97.0
0022000355	1610612740	2020-21	2021-02-06	118	46	10	36	27	11	10	5	13	21	45	87	15	33	37	23	0.6145833333333334	0.603448275862069	gamerecaps/2021-02-06/NOProtation.png	gamerecaps/2021-02-06/NOPshots.png	3	9	15	95	112.4	t	0	96	121.6	97.0
0022000360	1610612744	2020-21	2021-02-06	132	44	6	38	27	10	16	5	20	23	46	86	20	45	23	19	0.6947368421052632	0.6511627906976745	gamerecaps/2021-02-06/GSWrotation.png	gamerecaps/2021-02-06/GSWshots.png	11	4	24	105	126.4	f	0	104	123.4	106.5
0022000360	1610612742	2020-21	2021-02-06	134	52	17	35	27	7	14	11	25	30	44	96	21	47	26	16	0.6157407407407407	0.5677083333333334	gamerecaps/2021-02-06/DALrotation.png	gamerecaps/2021-02-06/DALshots.png	5	0	19	104	123.4	t	0	105	126.4	106.5
0022000353	1610612741	2020-21	2021-02-06	118	50	13	37	28	8	12	5	9	13	47	91	15	30	24	17	0.6210526315789474	0.5989010989010989	gamerecaps/2021-02-06/CHIrotation.png	gamerecaps/2021-02-06/CHIshots.png	6	10	12	94	95.8	f	0	95	124.2	95.5
0022000353	1610612753	2020-21	2021-02-06	92	50	18	32	17	8	13	6	12	12	37	95	6	27	27	17	0.45544554455445546	0.42105263157894735	gamerecaps/2021-02-06/ORLrotation.png	gamerecaps/2021-02-06/ORLshots.png	5	10	10	95	124.2	t	0	94	95.8	95.5
0022000358	1610612759	2020-21	2021-02-06	111	50	11	39	22	7	10	5	29	36	37	87	8	25	19	9	0.5294117647058824	0.47126436781609193	gamerecaps/2021-02-06/SASrotation.png	gamerecaps/2021-02-06/SASshots.png	6	7	18	101	105.0	f	0	101	109.9	101.0
0022000358	1610612745	2020-21	2021-02-06	106	51	10	41	21	7	14	6	18	25	38	88	12	38	24	17	0.5353535353535354	0.5	gamerecaps/2021-02-06/HOUrotation.png	gamerecaps/2021-02-06/HOUshots.png	5	6	25	101	109.9	t	0	101	105.0	101.0
0022000357	1610612749	2020-21	2021-02-06	124	47	8	39	25	11	9	4	14	23	47	86	16	34	28	19	0.6391752577319587	0.6395348837209303	gamerecaps/2021-02-06/MILrotation.png	gamerecaps/2021-02-06/MILshots.png	10	2	20	97	101.0	f	0	99	125.3	98.5
0022000357	1610612739	2020-21	2021-02-06	99	43	10	33	21	7	15	10	15	21	39	86	6	28	25	16	0.521505376344086	0.4883720930232558	gamerecaps/2021-02-06/CLErotation.png	gamerecaps/2021-02-06/CLEshots.png	4	1	19	99	125.3	t	0	97	101.0	98.5
0022000356	1610612761	2020-21	2021-02-06	121	43	17	26	24	9	7	1	26	34	41	97	13	38	39	20	0.536036036036036	0.4896907216494845	gamerecaps/2021-02-06/TORrotation.png	gamerecaps/2021-02-06/TORshots.png	9	5	27	99	129.4	f	0	99	121.0	101.0
0022000356	1610612737	2020-21	2021-02-06	132	49	8	41	31	12	19	9	29	33	42	74	19	36	18	14	0.7303370786516854	0.6959459459459459	gamerecaps/2021-02-06/ATLrotation.png	gamerecaps/2021-02-06/ATLshots.png	1	10	25	99	121.0	t	0	99	129.4	101.0
0022000380	1610612753	2020-21	2021-02-09	97	56	11	45	22	5	11	6	12	22	37	88	11	35	29	15	0.5	0.48295454545454547	gamerecaps/2021-02-09/ORLrotation.png	gamerecaps/2021-02-09/ORLshots.png	7	3	11	98	107.1	f	0	97	100.0	98.0
0022000380	1610612757	2020-21	2021-02-09	106	56	9	47	18	2	9	7	18	19	35	90	18	46	20	8	0.5412371134020618	0.4888888888888889	gamerecaps/2021-02-09/PORrotation.png	gamerecaps/2021-02-09/PORshots.png	6	6	17	97	100.0	t	0	98	107.1	98.0
0022000376	1610612752	2020-21	2021-02-09	96	53	17	36	22	6	14	5	12	16	37	87	10	28	22	14	0.5106382978723404	0.4827586206896552	gamerecaps/2021-02-09/NYKrotation.png	gamerecaps/2021-02-09/NYKshots.png	8	5	25	91	106.5	f	0	91	103.2	92.5
0022000376	1610612748	2020-21	2021-02-09	98	42	8	34	21	2	11	8	32	39	26	70	14	33	9	4	0.550561797752809	0.4714285714285714	gamerecaps/2021-02-09/MIArotation.png	gamerecaps/2021-02-09/MIAshots.png	5	6	14	91	103.2	t	0	91	106.5	92.5
0022000381	1610612755	2020-21	2021-02-09	119	61	13	48	24	8	17	6	28	35	41	85	9	20	28	18	0.5891089108910891	0.5352941176470588	gamerecaps/2021-02-09/PHIrotation.png	gamerecaps/2021-02-09/PHIshots.png	4	5	22	105	104.7	f	0	105	111.2	106.5
0022000381	1610612758	2020-21	2021-02-09	111	47	13	34	24	10	11	4	11	19	43	99	14	42	29	18	0.514018691588785	0.5050505050505051	gamerecaps/2021-02-09/SACrotation.png	gamerecaps/2021-02-09/SACshots.png	6	8	28	105	111.2	t	0	105	104.7	106.5
0022000379	1610612738	2020-21	2021-02-09	108	40	14	26	18	3	9	4	19	23	38	86	13	29	17	15	0.5625	0.5174418604651163	gamerecaps/2021-02-09/BOSrotation.png	gamerecaps/2021-02-09/BOSshots.png	2	2	25	91	134.1	f	0	91	118.7	91.0
0022000379	1610612762	2020-21	2021-02-09	122	52	17	35	28	10	11	2	24	27	40	84	18	48	22	15	0.6354166666666666	0.5833333333333334	gamerecaps/2021-02-09/UTArotation.png	gamerecaps/2021-02-09/UTAshots.png	4	7	22	91	118.7	t	0	91	134.1	91.0
0022000378	1610612744	2020-21	2021-02-09	114	52	10	42	26	10	11	2	13	19	42	91	17	40	32	19	0.5757575757575758	0.554945054945055	gamerecaps/2021-02-09/GSWrotation.png	gamerecaps/2021-02-09/GSWshots.png	8	4	19	98	91.0	f	0	99	114.0	100.0
0022000378	1610612759	2020-21	2021-02-09	91	51	12	39	20	7	14	8	19	21	32	86	8	24	21	10	0.4739583333333333	0.4186046511627907	gamerecaps/2021-02-09/SASrotation.png	gamerecaps/2021-02-09/SASshots.png	2	5	16	99	114.0	t	0	98	91.0	100.0
0022000377	1610612745	2020-21	2021-02-09	101	41	14	27	24	11	12	7	12	21	38	91	13	43	41	21	0.5050505050505051	0.489010989010989	gamerecaps/2021-02-09/HOUrotation.png	gamerecaps/2021-02-09/HOUshots.png	5	4	23	97	131.3	f	0	97	104.1	98.0
0022000377	1610612740	2020-21	2021-02-09	130	60	17	43	31	15	12	5	24	28	47	92	12	31	37	24	0.6201923076923077	0.5760869565217391	gamerecaps/2021-02-09/NOProtation.png	gamerecaps/2021-02-09/NOPshots.png	7	6	20	97	104.1	t	0	97	131.3	98.0
0022000375	1610612751	2020-21	2021-02-09	111	39	12	27	30	17	15	10	14	16	43	86	11	31	35	24	0.6032608695652174	0.563953488372093	gamerecaps/2021-02-09/BKNrotation.png	gamerecaps/2021-02-09/BKNshots.png	8	6	22	95	127.1	f	0	95	116.8	95.5
0022000375	1610612765	2020-21	2021-02-09	122	41	10	31	28	11	13	8	15	21	47	84	13	29	33	25	0.6467391304347826	0.6369047619047619	gamerecaps/2021-02-09/DETrotation.png	gamerecaps/2021-02-09/DETshots.png	10	6	16	95	116.8	t	0	95	127.1	95.5
\.


--
-- TOC entry 3162 (class 0 OID 16403)
-- Dependencies: 201
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.teams (team_id, team_name, abbr_name, city) FROM stdin;
1610612737	Hawks	ATL	Atlanta
1610612738	Celtics	BOS	Boston
1610612739	Cavaliers	CLE	Cleveland
1610612740	Pelicans	NOP	New Orleans
1610612741	Bulls	CHI	Chicago
1610612742	Mavericks	DAL	Dallas
1610612743	Nuggets	DEN	Denver
1610612744	Warriors	GSW	Golden State
1610612745	Rockets	HOU	Houston
1610612746	Clippers	LAC	Los Angeles
1610612747	Lakers	LAL	Los Angeles
1610612748	Heat	MIA	Miami
1610612749	Bucks	MIL	Milwaukee
1610612750	Timberwolves	MIN	Minnesota
1610612751	Nets	BKN	Brooklyn
1610612752	Knicks	NYK	New York
1610612753	Magic	ORL	Orlando
1610612754	Pacers	IND	Indiana
1610612755	76ers	PHI	Philadelphia
1610612756	Suns	PHX	Phoenix
1610612757	Trail Blazers	POR	Portland
1610612758	Kings	SAC	Sacramento
1610612759	Spurs	SAS	San Antonio
1610612760	Thunder	OKC	Oklahoma City
1610612761	Raptors	TOR	Toronto
1610612762	Jazz	UTA	Utah
1610612763	Grizzlies	MEM	Memphis
1610612764	Wizards	WAS	Washington
1610612765	Pistons	DET	Detroit
1610612766	Hornets	CHA	Charlotte
\.


--
-- TOC entry 3167 (class 0 OID 16441)
-- Dependencies: 206
-- Data for Name: teamtotals; Type: TABLE DATA; Schema: public; Owner: leyqblfdrlswgj
--

COPY public.teamtotals (team_id, season, points, rebounds, offensive_rebounds, defensive_rebounds, assists, rim_assists, turnovers, live_turnovers, free_throws_made, free_throws_attempted, field_goals_made, field_goals_attempted, threes_made, threes_attempted, rim_attempted, rim_made, possessions, true_shooting_pct, effective_field_goal_pct, rebound_pct) FROM stdin;
\.


--
-- TOC entry 3202 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leyqblfdrlswgj
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3203 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leyqblfdrlswgj
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3204 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leyqblfdrlswgj
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);


--
-- TOC entry 3205 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leyqblfdrlswgj
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3206 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leyqblfdrlswgj
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leyqblfdrlswgj
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3208 (class 0 OID 0)
-- Dependencies: 224
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leyqblfdrlswgj
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3209 (class 0 OID 0)
-- Dependencies: 210
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leyqblfdrlswgj
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);


--
-- TOC entry 3210 (class 0 OID 0)
-- Dependencies: 208
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leyqblfdrlswgj
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- TOC entry 2983 (class 2606 OID 16640)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2988 (class 2606 OID 16567)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2991 (class 2606 OID 16530)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2985 (class 2606 OID 16520)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2978 (class 2606 OID 16558)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2980 (class 2606 OID 16512)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2999 (class 2606 OID 16548)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3002 (class 2606 OID 16582)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2993 (class 2606 OID 16538)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3005 (class 2606 OID 16556)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3008 (class 2606 OID 16596)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2996 (class 2606 OID 16634)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3011 (class 2606 OID 16620)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2973 (class 2606 OID 16504)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2975 (class 2606 OID 16502)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2971 (class 2606 OID 16494)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3015 (class 2606 OID 16650)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2963 (class 2606 OID 16467)
-- Name: playergameresults playergameresults_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.playergameresults
    ADD CONSTRAINT playergameresults_pkey PRIMARY KEY (game_id, player_id);


--
-- TOC entry 2957 (class 2606 OID 16402)
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- TOC entry 2969 (class 2606 OID 16456)
-- Name: playertotals playertotals_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.playertotals
    ADD CONSTRAINT playertotals_pkey PRIMARY KEY (player_id);


--
-- TOC entry 2965 (class 2606 OID 16440)
-- Name: standings standings_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.standings
    ADD CONSTRAINT standings_pkey PRIMARY KEY (team_id);


--
-- TOC entry 2961 (class 2606 OID 16476)
-- Name: teamgameresults teamgameresults_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.teamgameresults
    ADD CONSTRAINT teamgameresults_pkey PRIMARY KEY (game_id, team_id);


--
-- TOC entry 2959 (class 2606 OID 16410)
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- TOC entry 2967 (class 2606 OID 16448)
-- Name: teamtotals teamtotals_pkey; Type: CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.teamtotals
    ADD CONSTRAINT teamtotals_pkey PRIMARY KEY (team_id);


--
-- TOC entry 2981 (class 1259 OID 16641)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2986 (class 1259 OID 16578)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2989 (class 1259 OID 16579)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2976 (class 1259 OID 16564)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2997 (class 1259 OID 16594)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3000 (class 1259 OID 16593)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3003 (class 1259 OID 16608)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3006 (class 1259 OID 16607)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2994 (class 1259 OID 16635)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3009 (class 1259 OID 16631)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3012 (class 1259 OID 16632)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3013 (class 1259 OID 16652)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3016 (class 1259 OID 16651)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: leyqblfdrlswgj
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3024 (class 2606 OID 16573)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3023 (class 2606 OID 16568)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3022 (class 2606 OID 16559)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3026 (class 2606 OID 16588)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3025 (class 2606 OID 16583)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3028 (class 2606 OID 16602)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3027 (class 2606 OID 16597)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3029 (class 2606 OID 16621)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3030 (class 2606 OID 16626)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3019 (class 2606 OID 16663)
-- Name: playergameresults fk_player_id; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.playergameresults
    ADD CONSTRAINT fk_player_id FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- TOC entry 3021 (class 2606 OID 16668)
-- Name: playertotals fk_player_id; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.playertotals
    ADD CONSTRAINT fk_player_id FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- TOC entry 3018 (class 2606 OID 16653)
-- Name: teamgameresults fk_team_id; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.teamgameresults
    ADD CONSTRAINT fk_team_id FOREIGN KEY (team_id) REFERENCES public.teams(team_id);


--
-- TOC entry 3020 (class 2606 OID 16673)
-- Name: teamtotals fk_team_id; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.teamtotals
    ADD CONSTRAINT fk_team_id FOREIGN KEY (team_id) REFERENCES public.teams(team_id);


--
-- TOC entry 3017 (class 2606 OID 16678)
-- Name: players fk_team_id; Type: FK CONSTRAINT; Schema: public; Owner: leyqblfdrlswgj
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT fk_team_id FOREIGN KEY (team_id) REFERENCES public.teams(team_id);


-- Completed on 2021-02-10 23:11:26

--
-- leyqblfdrlswgjQL database dump complete
--

