--
-- leyqblfdrlswgjQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2021-02-11 22:47:53

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
-- TOC entry 3166 (class 0 OID 0)
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
-- TOC entry 3167 (class 0 OID 0)
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
-- TOC entry 3168 (class 0 OID 0)
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
-- TOC entry 3169 (class 0 OID 0)
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
-- TOC entry 3170 (class 0 OID 0)
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
-- TOC entry 3171 (class 0 OID 0)
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
-- TOC entry 3172 (class 0 OID 0)
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
-- TOC entry 3173 (class 0 OID 0)
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
-- TOC entry 3174 (class 0 OID 0)
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


-- Completed on 2021-02-11 22:47:53

--
-- leyqblfdrlswgjQL database dump complete
--

