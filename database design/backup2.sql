PGDMP         
        
        y            BetterBoxScores    13.1    13.1     v           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            w           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            x           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            y           1262    16394    BetterBoxScores    DATABASE     u   CREATE DATABASE "BetterBoxScores" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
 !   DROP DATABASE "BetterBoxScores";
                postgres    false            �            1259    16515 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16513    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    215            z           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    214            �            1259    16525    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16523    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    217            {           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    216            �            1259    16507    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16505    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    213            |           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    212            �            1259    16533 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16543    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16541    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    221            }           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    220            �            1259    16531    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    219            ~           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    218            �            1259    16551    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16549 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    223                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    222            �            1259    16611    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16609    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    225            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    224            �            1259    16497    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16495    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    211            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    210            �            1259    16486    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16484    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    209            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    208            �            1259    16643    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16427    leagueaveragetotals    TABLE     v  CREATE TABLE public.leagueaveragetotals (
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
 '   DROP TABLE public.leagueaveragetotals;
       public         heap    postgres    false            �            1259    16419    playergameresults    TABLE     �  CREATE TABLE public.playergameresults (
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
 %   DROP TABLE public.playergameresults;
       public         heap    postgres    false            �            1259    16395    players    TABLE     �   CREATE TABLE public.players (
    player_id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    team_id integer
);
    DROP TABLE public.players;
       public         heap    postgres    false            �            1259    16449    playertotals    TABLE     �  CREATE TABLE public.playertotals (
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
     DROP TABLE public.playertotals;
       public         heap    postgres    false            �            1259    16433 	   standings    TABLE     �   CREATE TABLE public.standings (
    team_id integer NOT NULL,
    wins integer,
    losses integer,
    seed integer,
    season character varying
);
    DROP TABLE public.standings;
       public         heap    postgres    false            �            1259    16411    teamgameresults    TABLE     �  CREATE TABLE public.teamgameresults (
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
 #   DROP TABLE public.teamgameresults;
       public         heap    postgres    false            �            1259    16403    teams    TABLE     �   CREATE TABLE public.teams (
    team_id integer NOT NULL,
    team_name character varying,
    abbr_name character varying,
    city character varying
);
    DROP TABLE public.teams;
       public         heap    postgres    false            �            1259    16441 
   teamtotals    TABLE     �  CREATE TABLE public.teamtotals (
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
    DROP TABLE public.teamtotals;
       public         heap    postgres    false            �           2604    16518    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16528    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16510    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    16536    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16546    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16554    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16614    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16500    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �           2604    16489    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            h          0    16515 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    215   |�       j          0    16525    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    217   ��       f          0    16507    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    213   ��       l          0    16533 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    219   v�       n          0    16543    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    221   ��       p          0    16551    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    223   ��       r          0    16611    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    225   ͼ       d          0    16497    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    211   �       b          0    16486    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    209   ޽       s          0    16643    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    226   Կ       ]          0    16427    leagueaveragetotals 
   TABLE DATA           q  COPY public.leagueaveragetotals (season, points, rebounds, offensive_rebounds, defensive_rebounds, assists, rim_assists, turnovers, live_turnovers, free_throws_made, free_throws_attempted, field_goals_made, field_goals_attempted, threes_made, threes_attempted, rim_attempted, rim_made, possessions, true_shooting_pct, effective_field_goal_pct, rebound_pct) FROM stdin;
    public          postgres    false    204   �       \          0    16419    playergameresults 
   TABLE DATA           !  COPY public.playergameresults (game_id, player_id, team_id, game_date, season, rebounds, offensive_rebounds, defensive_rebounds, assists, rim_assists, turnovers, live_turnovers, free_throws_made, free_throws_attempted, field_goals_made, field_goals_attempted, threes_made, threes_attempted, rim_attempted, rim_made, true_shooting_pct, effective_field_goal_pct, plus_minus, steals, blocks, fouls, minutes, offensive_possessions, defensive_possessions, points, is_starter, offensive_rating, defensive_rating, pace, is_home, usage_pct) FROM stdin;
    public          postgres    false    203   �       Y          0    16395    players 
   TABLE DATA           L   COPY public.players (player_id, first_name, last_name, team_id) FROM stdin;
    public          postgres    false    200   ��      `          0    16449    playertotals 
   TABLE DATA           �  COPY public.playertotals (player_id, season, team_id, game_date, score, rebounds, offensive_rebounds, defensive_rebounds, assists, rim_assists, turnovers, live_turnovers, free_throws_made, free_throws_attempted, field_goals_made, field_goals_attempted, threes_made, threes_attempted, rim_attempted, rim_made, possessions, true_shooting_pct, effective_field_goal_pct, rebound_pct) FROM stdin;
    public          postgres    false    207   ��      ^          0    16433 	   standings 
   TABLE DATA           H   COPY public.standings (team_id, wins, losses, seed, season) FROM stdin;
    public          postgres    false    205   ӿ      [          0    16411    teamgameresults 
   TABLE DATA           $  COPY public.teamgameresults (game_id, team_id, season, game_date, score, rebounds, offensive_rebounds, defensive_rebounds, assists, rim_assists, turnovers, live_turnovers, free_throws_made, free_throws_attempted, field_goals_made, field_goals_attempted, threes_made, threes_attempted, rim_attempted, rim_made, true_shooting_pct, effective_field_goal_pct, rotation_chart_location, shot_chart_location, steals, blocks, fouls, defensive_possessions, defensive_rating, is_home, num_overtimes, offensive_possessions, offensive_rating, pace) FROM stdin;
    public          postgres    false    202   �      Z          0    16403    teams 
   TABLE DATA           D   COPY public.teams (team_id, team_name, abbr_name, city) FROM stdin;
    public          postgres    false    201   ��      _          0    16441 
   teamtotals 
   TABLE DATA           q  COPY public.teamtotals (team_id, season, points, rebounds, offensive_rebounds, defensive_rebounds, assists, rim_assists, turnovers, live_turnovers, free_throws_made, free_throws_attempted, field_goals_made, field_goals_attempted, threes_made, threes_attempted, rim_attempted, rim_made, possessions, true_shooting_pct, effective_field_goal_pct, rebound_pct) FROM stdin;
    public          postgres    false    206   �      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);
          public          postgres    false    212            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    220            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    218            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    222            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    224            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);
          public          postgres    false    210            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          postgres    false    208            �           2606    16640    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    215            �           2606    16567 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    217    217            �           2606    16530 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    217            �           2606    16520    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    215            �           2606    16558 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    213    213            �           2606    16512 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    213            �           2606    16548 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    221            �           2606    16582 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    221    221            �           2606    16538    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    219            �           2606    16556 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    223            �           2606    16596 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    223    223            �           2606    16634     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    219            �           2606    16620 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    225            �           2606    16504 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    211    211            �           2606    16502 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    211            �           2606    16494 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    209            �           2606    16650 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    226            �           2606    16467 (   playergameresults playergameresults_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.playergameresults
    ADD CONSTRAINT playergameresults_pkey PRIMARY KEY (game_id, player_id);
 R   ALTER TABLE ONLY public.playergameresults DROP CONSTRAINT playergameresults_pkey;
       public            postgres    false    203    203            �           2606    16402    players players_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);
 >   ALTER TABLE ONLY public.players DROP CONSTRAINT players_pkey;
       public            postgres    false    200            �           2606    16456    playertotals playertotals_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.playertotals
    ADD CONSTRAINT playertotals_pkey PRIMARY KEY (player_id);
 H   ALTER TABLE ONLY public.playertotals DROP CONSTRAINT playertotals_pkey;
       public            postgres    false    207            �           2606    16440    standings standings_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.standings
    ADD CONSTRAINT standings_pkey PRIMARY KEY (team_id);
 B   ALTER TABLE ONLY public.standings DROP CONSTRAINT standings_pkey;
       public            postgres    false    205            �           2606    16476 $   teamgameresults teamgameresults_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.teamgameresults
    ADD CONSTRAINT teamgameresults_pkey PRIMARY KEY (game_id, team_id);
 N   ALTER TABLE ONLY public.teamgameresults DROP CONSTRAINT teamgameresults_pkey;
       public            postgres    false    202    202            �           2606    16410    teams teams_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);
 :   ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_pkey;
       public            postgres    false    201            �           2606    16448    teamtotals teamtotals_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.teamtotals
    ADD CONSTRAINT teamtotals_pkey PRIMARY KEY (team_id);
 D   ALTER TABLE ONLY public.teamtotals DROP CONSTRAINT teamtotals_pkey;
       public            postgres    false    206            �           1259    16641    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    215            �           1259    16578 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    217            �           1259    16579 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    217            �           1259    16564 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    213            �           1259    16594 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    221            �           1259    16593 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    221            �           1259    16608 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    223            �           1259    16607 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    223            �           1259    16635     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    219            �           1259    16631 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    225            �           1259    16632 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    225            �           1259    16652 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    226            �           1259    16651 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    226            �           2606    16573 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    213    217    2980            �           2606    16568 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2985    217    215            �           2606    16559 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2975    213    211            �           2606    16588 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2985    215    221            �           2606    16583 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    221    2993    219            �           2606    16602 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2980    223    213            �           2606    16597 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    219    2993    223            �           2606    16621 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2975    211    225            �           2606    16626 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    225    219    2993            �           2606    16663    playergameresults fk_player_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.playergameresults
    ADD CONSTRAINT fk_player_id FOREIGN KEY (player_id) REFERENCES public.players(player_id);
 H   ALTER TABLE ONLY public.playergameresults DROP CONSTRAINT fk_player_id;
       public          postgres    false    203    2957    200            �           2606    16668    playertotals fk_player_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.playertotals
    ADD CONSTRAINT fk_player_id FOREIGN KEY (player_id) REFERENCES public.players(player_id);
 C   ALTER TABLE ONLY public.playertotals DROP CONSTRAINT fk_player_id;
       public          postgres    false    200    207    2957            �           2606    16653    teamgameresults fk_team_id    FK CONSTRAINT     ~   ALTER TABLE ONLY public.teamgameresults
    ADD CONSTRAINT fk_team_id FOREIGN KEY (team_id) REFERENCES public.teams(team_id);
 D   ALTER TABLE ONLY public.teamgameresults DROP CONSTRAINT fk_team_id;
       public          postgres    false    2959    202    201            �           2606    16673    teamtotals fk_team_id    FK CONSTRAINT     y   ALTER TABLE ONLY public.teamtotals
    ADD CONSTRAINT fk_team_id FOREIGN KEY (team_id) REFERENCES public.teams(team_id);
 ?   ALTER TABLE ONLY public.teamtotals DROP CONSTRAINT fk_team_id;
       public          postgres    false    201    2959    206            �           2606    16678    players fk_team_id    FK CONSTRAINT     v   ALTER TABLE ONLY public.players
    ADD CONSTRAINT fk_team_id FOREIGN KEY (team_id) REFERENCES public.teams(team_id);
 <   ALTER TABLE ONLY public.players DROP CONSTRAINT fk_team_id;
       public          postgres    false    201    2959    200            h      x������ � �      j      x������ � �      f   �  x�u�]��0���)r�6��{��Vhb1Y%$2��~�v�=3
�+S����������t�/'�۫��9�c���P����E��X��@�%����E��=��.:{��v���}����DO���v����	;&�@Z�����e�?Uc��B��\8�}yDRO�v<��� X�t<w�U�5��)dK�����;��W�����tm�^ڝ�?��aV�t���?�r�F�?Q_���(��d���.�2�޵[���GBA�'���T{¼���ZO�u�T�W=/O=�m^�q?��^��3BA񗵡GKr臲<tnINZ�,v�\���y\�ޖ��7�?��^�����h��J�����$@.%�W�� ���<�|����c���^�5>[&��e>W&#}��l�L2�5��l6��^~}�1_���2Ŕ�PR��xE[�I<Y�@K��p�7��=[��ɝZL���,E���*	T����őPR�xM$��C�G,���2�n�D���j��Ğa$wfb�0
�X"Z1�Sg�Ǽ�/�b�ԋ��v0�㉅6l�%������e~_��-ݣ�=��4
��'��G�Fܓ�@�:%�,8%�<&]���9ѫr >s4�\|��hKq�����'���w�YpԐ�T6dYQFBR���(梒	��79�,�n���#�*3�%���� F�kr�n��bM`ԍ��-�%"�:躢w�c��/!*�4C!��G�QՐ��G�q����a����]�ǩ�]�S�|O�q"�1�4i�9�5�������?+��n��Q1�.S���u���t>1בݤ�����KD)�~��}!�B<P��\!A=f9��D����.�6� �5���.DE�RYȉRHI�*�B���0|����qS[�F,��B*"�HQ�gy���	��_B��]�CD      l      x������ � �      n      x������ � �      p      x������ � �      r      x������ � �      d   �   x�m�ˎ� E��cF������X�/aR)?4LT&d�α�)pr�4��P����3�&x*�)��z����#�\����\����\�FG�YXB=�(��2Z�[[-.�*��f�{�3�k�<��c��U�j?n+����e��O����-SC��C�ɴ�^�%M��k��~����t$ߧ�����^�����R�l����;��:{�����/ �M�ޡ      b   �  x���[n�0E��(:�D>~�X�dY�K\��f��6Ġ�4� �����Cqv�h�q��f(B�lgG��#GG��0�(��8a!%G����x}� D
��З�v�#�29G���qu(�ߔ7��2*�\��	I"���2BN��h]��]����s0�� x���҅��,/T|�:ݚ}���YD��+݌ƫ���C,)�U��Uc�:|��*�4�dF�5�dZm���)��2S�O�׏�zb��(3ؖ��a��m����7�pH��~N�g�ɻ��@G�S��O���{ѣ�C���y՚a����3�M��d�ܵ�D3#ˤh&�����s�P���j��5�̾yƀ���Ȩ޻��fE>��I�f?y9�����W�%#�!Yf���BT����'(�:��Y��HUl�c�d�Aw��l2_mT����5ަ��/R`ȷ���/���Z�TU���LB����tL��      s      x������ � �      ]      x������ � �      \      x���Yv������p��^A?{���	@2I��U]��,��l'�c `�s�W�e�����Wk�u���g���r�~k����e/wE�j�?{��o�����e��;W����T���e��py����u�������7ͷ�j����s����c�_�A�r��%���_��Ē޿u�����KHV�V~D���xy��ʕ}�!��J��WM��n媥���=����x��"�8���ԟXI��kdA·����W�$�,�3������[�e��#�C�)��}�\���WO����[fZcOKZ�-����ߏ'1m�.W�����o�wV�?	�D:�>�E����;�vϲ����{I3}�[�{+Õ���S�]��N��Y,�b��t�2o*�/�t��C�|/�ճ�o!�w�[�[�������ƮZ�}�my���TH�_�[�����g���������
W�u�����2�B�(q�PglL�c)<���X�+�*�����u�j�[~nus����o�5�5F��|��z5�_3]��A3�sz;}�������s??�n�Ow�O�ciw�֦��[������ r��ح]�|��G�������H�tJ��}�Q�W�����}3i</��俾��K��I?&��g����	�Ɣ����������tz��*����XY�?���pk��*�u�I}&B�0?1�؈��,�͋ ���ԕ�g�6���j�? &�3y�«
VS�.���N]!mE
w2�u�`^���������؟�I�%O��?|q��U��D�6�%$Ml��O%��rN�����<>���r}U��.�����MV)ym�L�./b�e�GrZQ������~܏�l���tb0\��Ua(�9�Yo�x��b���X5�뎯S����Ɲm�*��[����nA����o��:Ϛ�~�U.��b�'����z�?�ϯ,����7�6c����>\`Y,Ka�M�_��;H�4����U�dbW��I����so��O�R�m��|���>ew:�nX
��ފ#¢�ݿ���{A�#�N�0��D�s��6Kr{g9�����{������^ݞ�#�?������-��.u'D�'mU�>�%�X#��F�K,�F�ɊCb3��uq%�x]n�Qy�L|�N�s�e[&�ꙶ񇄸Å����V^�;y�������O�"G�Ƒ�.̉��U5Gh�j؍�~��<ߪ7�ݧ٤Y�/"�O�@���X�(ۊ0�{/���D0�p�~r���I�7��Kp�(�*g�^.��IMe*v��G��[]��M,�8�\�[v�,�y$����G�N�)�=�9���=�AL�*� �(�YTÒ3�s�-}:69���h��V1��J���NTC?��*��0�d���~Y����ޓ��&y�d�,�6�͊s\���L/�� �_�.�BL�A�g�N�ٗ���d�o-s{����Iѩ�q�d������]�__�Jo��Ѱ���V�0[��)庉�2|��;�Z���B���x��GvJ���vt��[@Ǐ�>�����4c��N�5�5U#�XH��};'�n� ���,�"d�X��������o��u��v��\^%h��"��k(|��/���{%AB�IR�i�b��-�B�ʌ6(D�,��J�*��q��8gDK����.�o���?����-k�#�+#�sk�UAp
���t�x��&18��Lϒײ>
�o���U������6#���I�R�ޅ!��K5���2��-O�+��-DlѴ[��,N*݋���K�=�PyҒ�SU��Xڪ"��N���uӗ:QFMe��@#q���>;�t��my�%Y�uQ�'"��%���0�!����~3�xն�����o���>�M��&#�������s�ɚ߆p
!C�d����i5؍�Ԑ}*�����������x��Tn�$�?�q	�p� �q��p��R��Ւrٜ(��1�e�A�Y�����I<Hϲ��H+R�~w�0�ӾY8�!��Q����Qs�2%�)�����aA>��1s��+�|:{ g�+���Řwbq�����j���L�V�J�:
�()���߽X�:J=������x)ٮ�6J��r�R��e��E����m��A�|��z �P7@
�]�9|��ƙ�{��\�NL��,ǜ^�_��i�R���8|���c��K}&{k�z�����$����}�zT>]��B���R��W���->y٬L+Mֳ���f�T��Ӟu{��B��<G�`;:�6�;t#w��=8��B� �QTlg#��T�\J�HGע�AK�� Ɇĵg�xny�jLNⳝ8���{��:8~��"Qn�C��X�HF�;eor�N��B�R/|�]ɷʗ���+:á�9$��h�A�����,^C
|b n1���s~��[�+�5�������!��Ϊ�p8p�U�[0���F"5�\p��Ci�@'.p�jו�e�6���Y�1ො^�-���d'(��.ܗ�"�H
��Y���zZ�xYU�l�	o���r���b)�n�*Q�\D��z0Q���aa���N'L�eé��U����/�*����|�����hkh��x˜=IF�>=�ċn�Z����-�!��G I|�e��nBBҔ�(=)�� ϧ۩��nK"��p�����[���>c��s��$)�?ޭ�ZC��V]1�5�bQj��8H�=�7�L�}t��{� ��pdy�䎄(��`-zDϜ��$<�d�V'�����A.���-�O����E�OE؅��c�;��
��*��/�
�����h_�Xɡ)4f�6�
A�����/SB\Ћ��=�G�ǙR�ȄHWe���%� 'ʒ#�����Z#�Q�O�Gj\�ڒ9�"��Rf).�s��8CC�y/%|
/7$�0D�?��痲Pt�ۖ�$�(yCRbd­x<#(�;� G��;�z�?/��^�T'�;�g�Mu����hD�D �L��D��<��p6��^8e������nI�w�z�F <�ċ�ȱ۠�G�n@)1����i�ʨ:���{|�ܠ���L�(�W���
Kb�fȆz�� dz}#E�!y�ԇt��8�A��$B�s`9ʜF]�O��AC���"����X^� Q���6ܜ`:;�t�QE�BK'�R��gֽ��}��x��r�%O�Z�	�o�Uw�~:ߟ���U��A�ò�U٪��?��7���e���9����u8�M"�?X��{#��i�`�VW�rL�.��D6���p�	T���x�\9Pf��T�ɬ~:�3 3rP��A8�P��*�+ϸv��{B��r��H3PPu�-���=U��C��p?�9�~�G1y︸��s@``��w�W; �Q�mG�H�Q;�0D�v���[dC����VҪ������-)�?>葝\ �1q�۩[B9�3 ,+�%�Ci/e�`�GE��l�)�(v���U3üўU��<9�%gxnD���XJ/ƍa>�
z"yBbm+�WJ���5w`��D�;�7��֜�i��?�A=��=�6���%����x�Pg@�yB}m����e����5-�im��-v�h1�Cz ���s+�&
@��\n�C�5�T �/\q��'h���v�V����3��b�{9�,�f�~t|瘦�?~�������e�cI✔�\K2Y�
�IE;Z�31N����f׍ �q����<~_Q�V�[F����� C�������[ySn�T%�Gn��U�n��V�ű�\j	��"ר8��P���r,b����X�K�ш���&��}�G��H.��(�3��Bk�s�$QT�ƚQ���թ�W9����M,��Y��
�� �O��#�E�"�{Ő>������y���oN*�~����8	�$��G;����@�VK<�<�r�����s����	�h� ����ЃV�|�A{?.��?r����Љ�����G�1�8	���$�Z�B�� M���ݳ/��WwLu�`�����$�]�첆!V;t����U{j���M�؂;�yn�X����B�eN��sTӒ���6���'����^�Nb�
��6��P2��^f��9
4~��������	�?��v��k��6͡3����    �&��1S�������]H1�l~���͍���Ks���Gu���g�b�����rP��Q�մ͒M�lV^P�#"��ш�i�|�v�۾e'�KnAe�x��0����1���촊*I�r5��$��D�t�Ӫ�KdWb�<jnv�j�h��û�pŻ���EZ���h�Ԏ�Ԯ�C[��ܙI4T��%�� ������$�3����4m���4/G���cD��6D�����5��
�&�>�~K��c'�x^�u��*���ۘz~�NV�����ڤ�%}PH�Ȥ $ż������k�
}T���B�rٝ��H��{32��;��f��?4;����0v�q+fk��?�M�����3�.i���h6��BZe^А��87��(R�L͟�[XZ�e�����Nܸ�ڒ:4FoO�B�!��������{+��^G���Q}�AO��FZ�WW�D��y Rf4k��,M=-���Jj���`M���2\���(�MȰ/Q��Ti�=�l�ҳ��rQ���P�t@J����CKO��Ҁ��ˉ@�\��Y�E��=�[�x���$uy;&Z����sΐ��F0�l<- �"ȱ�lx�$����s�W�]!S�D�"��_���oQ��w����O���L��7��쎍3A�h_5�K|���f�n~Z������u܇����w+O���	��q�#	�|�����i[1I��`�K���>FXInt�c4��"6�p���Ȋ���_�B���k�3H9��F*�%XD�pp�'�,�_v \�dJ�~��pvfY�����YL�-$��kC��7SqQ��m!�.�.��+o�������^�KB� t"K��J[}>�t9Z��@���@�+�Z�OdR���(�E,A@q)Ϻv��-ҋYn�ШA\�8�pw��(�TD�7�ng�L��F�$I����T��%� 3�� Isմ�8��澿
]nRU	<�X/�g|8����<-3�����O�P��3�B�Eu��`6���r�%���P���ˌ*�d���E�J���履�E{���@��n%�Zi��d��i���D��u]�t�D+%<՗�V�q/N�r=Գ�r"�dH8y��n�R=���ܖ*E��~B�ԣ`0PZ�K��U5�C��  �m�[I�^R������0Ed���$AB�Iy'F.�1�G�;!Q�� ���0?>L(w��p*A�G��Ύ[)N1�DArfr�ó��}���'t�}�t,�_E���-&KU�=)�p5F�a�Tp]���rܪ�<P�V�����'�X���{1v�a�Y����S�ߖك�������q��� �hac��>��ғ���͚�`"|�
��}鿶��o=��_{�hxI����V��Ӫ��05	9hB���^�ٲ�|ӱ/m!P_F�)����'����g��9h�f�d�٧$g�d�M��8� �.[W�,�k��+ݖ��iZ���	�����Ǯ5E��z�z��s������	J�M�J���-Ҿ`V��9q�ހj'���ўS�`�q�[aG�7F��BE��{��(�o)�g7�x���d����߫��-3%�~'��V$�����rE����ގt@~(�J2t�S 8[GO9���GV�X��<dq�cVN�Ǭc!���`q�z��GS�r~U]8O��@L�+�k,�v�K0�xi�wi��
 쵯i�ՊQ�>L��F�D)ip�f�Rց�m-gF� uX��>��4��~ /�\�`�v���U� XS2��[����3)�c��w����=����=,�Mh� VR0;̍�)F�]���o��oau�g�{�ƷJ-�?���G�����X�,=gJF�����_<�VxF������i��Jb7<�Ɋ���Rxp/�c�2Z#V1�[��b"�Z�A�(j[�]� ����*&q�Q9�k� N�}¬�f�� f/9"i���UD���j�2� ���˫X@�r��<��7/Ȩr�K=�^Z��@Lem�hPf�0�K|�N$�9�,G���~q�mHG}3�JOP�l�!c��<'��e�kz��i�p|��I*Ѣ,�T�ZwHz��ի1��G�?.�0�� OB\� �2�{�2�r'851xf&e�����'(��잤���S�AF�Ka[۱a�2ΐ1�˧���y����I!��ʇ�P1�W#L �X������r�������/D\j7����֦�A���Z�a���|�ƽ�X�����2�"ϘO\�<���E�!��
5^I������� x�|'>�Н��k���Z.o����l/(�I.2�����J���xi�rKs*j�a�����0W_�J�C�����*ʘV/蚠�hӣZ��Ŵ����,B��IT�`e^�>�ZMcs�VN�I�W�l��eЯL�Lo��^V�淤�����F�a���s��
aL:�R���2x��^��w�I� �U����^�~Y_�$}?��nO^M�${�C}m.�G��K?�����ژ��p��8�'5�� HG�qi�t��Ъ��������8�A�(*�݈r�'�W��N�����B��0_�e�߰���<j�J��}��7�K�q�#y�9��p�9p���Z��\E��Q�
��j��3�w��
� ��[��yq,`��l��h��H$�`+����fn?4�D�=Z��"��F{'��ԗgnN�yk���Q�3)��:�9<���UJ��W�A��c-�R���9	��Q,�.��"��⅚.ȂQS[��{:%���T�/sA�@z�A0�ɳWj
B���	����)��fng�>Ij�\Ͼ��$��^����(�_Hs��_XM�Htb�Y#�3��a��&@��xE`�8`6��&N&�*��<��3N��T��V�j�J���s�v^�/��HZB��I��TǯR�����v�E���P�ƺ �]�s��)�&�6<3��D���2�ͻ�b���2��W���F�6�ֿ� b�t�H.�\P�����g_ڈDJ޲�s�D��r[���,C�d/h���t�/��D'�6���WV���DA�^s�J���'�����Go�[#�"x}�����ͭ����u���w@퉂��K��������{9��x��kUg����!
��31`��IsY���G��y�KM�.�Rx}/��CB�[� �E��"A�Pt:�1f2TQ��U$6z�o�i9�I�*�Z���M9l�{)�}�(�O�:�Fڞ1�`~�B%���9-~A��X���N%�\>��&Eڑ�D�}���N"��Ѧ���ٔ��x�jE#KY'��8����5K�&�'��|5(������%ᛀ]�آ�N�d-�����B�خ��K�����Ƅ�+U��5�
P�	��6z��[`6Ji ���b����D\u����íd֔ӎ<zӲ�]e�R���2��J�>�	�~A�·�U�fH�W��U��(.�`��O���si�b)�2{)Q�x�l�R`��d̒�t��0�?����%<�H��F���v-��]�x��<j��QhJ�^�����W�uz��*��/(���L�D���ז.j� �T5W�Α�����]���A��kex���$?du�GPfߏ3�K��\������̃?�Y@h�����2l���
\2V��I�D0r��6�!V+���rESX����e����3y_Y���Xٟ��h����ҩAj�ĭ֦�������S��,�9𷺇�g�ٕ_�h����X1�s��8�i�a�E'Dh�z_�'Y�ږb�L����f�I����쥤�_��u"�䮅qqC/�I]+��j�����X��t���Ήkv%�P^���h>=���?� ���M��D|KM,��c�u�q�E�%���8�63�>k�ɓ����{Q���?�tڨt���'j[Cv��KY�Hg&Λz2�V���u1��OQ�޲��{�"P��O�ɢ(Ropds,)�e|��a��B~�7q���E��*̚���pw���	�YH%�r���w�?B�1��	��7s3�v~��>q���cg�r�ʇG��*    $r����!����Q�z�ν���'@n�0�ڮQ*\�ZO�5�	Z�R���0Z�{�<m�RȢM�5փ��H1�`������ar]�<�u����[A�cR�7�o�l���II�`�oA*��EC5g����,҈Nڰ�f�^�t�w#��/�>{�p��5�ܱ�Q{��`��0.g��ˢ���_F���@$椸Yq���s�@D�
�%��ې���/]#E�I� KA�FU��`d��?�9;OR�A��d��
'�ϑ �Δ����� WlC�v^S���<��c(�������q;�P!�-ӿ�;NZ'�:�J�<��f�,d���5�vkS�I�����F��i�5�\uPu�Xa�������^;�R�����e�oBBжf�����ļ�.i�p,�1��o(��X�B�Yg�&�9'�(�A��.��09�z�Nz(^������aq~��H�vu�{ (H\��n���*1˽#8��DLb2j,��ع�@6���d����N�|�^���T�����O�T"�fm� ��N�����(��;hy�YP�(�.�g��V���R�B�jݠq'I2�%�x�4t!Ő@��i�^e)ul�A�u���y�9PH'!��82]B`W`�6�y~�$�H�-QY�9�Z�` �+I��x霧��|�h�J|�6�J QZI���J&qfGQ�^>�O��ZR�D6E��N�%��&rF�tJ���(�:�=��g*l��{��ZH��H�[ݺ ��/��������D*2�k�Ml�T����s����y޿5�y�S>�`B�.��n5�-x�v'���G�|pc=>�#�"�%8҆3�Hx�gR��$*ɚ���2sWÞ]`;~I��w:�L���v1���~6��p��z\�;��"ϸ������1-ٽ��>�~�`�5S��!�VN�����!����ܜ�!F�`i��c�"�����K[N�N���|�[�Ly#�#����/S��fW�����m^� ���C��JBy4#�����-2he#F�CM�m�Z�aڳ�/��U|���v��G��՜�Jv%�r��՜��۬� f/�P��?i� �J �t3!���ӆ���&r�U	2�sU��Q�q4��ȸv�����L~,��yZ�В�v��v��s� @�9��<�5�.���)��W߭��z�Bډs\�����o�2]t��S�Ex5m�e��"�lO�e}�Ve���Dp��`>�-����X�:T�Rܿ��}R�ᣢ؞i��(N�3�"��,�D�-c��fL����R��pN�E�M�d����E��)D��]U��t�lx��O!�Bڊ�q��0s|�+�^7��#�JD��_q��/(3�"�BQ}Z@�ؔL�']��J$���a�YI�s�t�K�ÿ�R�I:�sjt!��W ���`d12"V��[���5���Q]��ςm�4��M�޲�Q�r�����f{�F��n�]L�X�ob�H��(�n�Б¶v��e����'�H�2��c>�r������M�\uq�7�Mk�/�i7�-��U��?[��[�ғ�c؋rP��ԅ�bt<iX� �1'����VH�r�s	�&��f�]���0ٔ`�A��,�`ab���sZ/�q��������7��g)}�����	�$��ʠ�1\�(�'�c� doM@^�)�t҄�9��^�q\�/������ū%�RT�3iS!I�)*��-���O"P��@z���M��_`�����;ޡnl�GRY�
�QY,j\���#��4�?��-Z�ֽ�.�e�W�~�H(�q�)N3	���J�b�C>O���e/)�Ί�7��w�\(�o�f1��Q��K���c6�܇�$R�����:�m���QI9_Eb�I
R"c�zٜy�\��c]q����hS�l	�}��ek%M=��c��Q�(�!�jFQ�F��R���{d�Ԇ{/)lZ�b���ac�1w�;��g�����߱+����V��0ā%9l���D\+ڇk-�7�DuhDq�SԐ�/�UrI�3��:��\sݥ��΍2ؤd�ݽ�\��9.\JZ��+M�¥d��6��ltn�k��j!g��*-��CC�^̕q�Z�u�P�0{oy�$�1)�ς��L���ǻ�hO�Z��kÓ��)�-���p1%0�]�.l����E�6�x:m�hõ���0Mm��^��D}#h��<�T�,_��2�zRAQ������r�T�Eyt�t�E��ȋ�� �g&����L'�Tѧ�6���ͦ�F\$>32y�p�sȶy(��|�QKT&C�9n`3�EgKJ�R�,G�vF��BgO��z��5�,�G��j5����-�uq|ȧ�.g6����� :��x���o�=Kl�`,�Ћ<��9VG��Կ��8�g�)]��IYWܰ�7NV&������4`W|�Q�P���Q{��S�G��n��X�Ι���/�d֌�h���{a/�c�c��,2�9A��uV��<���g�*N�J5�����s"V��(��,���e�U��h�xT�Ӗ\j�屳�-۴'U~D&  w7;(�(�g,�VGZ:nh �LڔC$i�\�a��h��+e��I/)m4��v����Jʈ�<#C	���8'c� �_8�g�4�8���S���`˙H6ufZ�*��Vg�G��A����&&�qg�JA�%kB�I�:�H�IiE1�U)�N��\�7B��Қ�.:)ߍ��K�#��Dƞ��2Ez��T��{>�O�m|���o��\6����{��$�F.�>'��F�4���XO����<H��W��4�<������{�i���\���|!G���ӰH�$�3[v����!�}��#
�j�8��Lv����C����m�;I{�}�N�Fxٌ��9�K?nK�[^0�J�B-�8�_q��`OF����ʚk[�0D������!��ʈ+�O1N2�d�bn `�M� ('vF4�2}�ru	osD{��I��w��!S8݂�����gi.�0{j��<�x5�^k :�G&�(�q��R�%]A��
��(��� Sp��`،��ө��x�F��he�Y�qT�����r�� ���L�.�@ԽOʌ��O'������^ʀ��Q��]47*'K�!���0Z1�`�?�l��{ِ�Ф���V��om�s���������KQ�G~r�='1���B47 w}���S3�l+0Df�g�����Y�9����m}R*Z�%���J}��K�Ϙc
�32��J���^�3���>��5*�X�C���W��i��}����}ꡃL����c>%ij�~�zF��}4��f��C7L�7Z�2]KN?�#���y�*�pZ
e�����b�r���c�`}�����X<��ɵc���p��]�զr����M���
����3�P��f[E�*�c�~��!��6g�2z������es��Q��Y����߯V;9�R�5`�i�P��sAG���כ�[��ه�/L�rC��z&%�F����^��Zh/�}������ι��!��x�7b5�:��#M����	^����o0q+��-O2����͒%��'��0a{�t�d?���ƪ�e���M1)h�X��AfgoWŜV�zm�a�z�=-�^B�;��cu�����$��&N�r�D����Es���RB&ȭ���W��ZV�K�{c�I�O���*�+J'�藙�V�GL(��trr��I�c��%���(;�	;.hi���l�_|/:�5ai��h��C^/�E�(����C�)ۨ��2p�$�!f�b�w	.���6� h��$
�]�N���bt
��V���1!��?��g�1}�J�yxrk\!+lEr���&��l����.�z��t�e�MKL"*�'�uY���h���J�q�}�g>a^��Z�ZgJ�I�����i�덻�{k��Ϊ�:Ҫ�^�J>���b���\ڗ� [��!�[�� ��C�R��oC��:��8��G�1}���,B    ��J3H�Qkw�h+'����4���PA��桝2�s
HD���A
4c�G"��T��G�JΞ�Jx�(f>{��tM���֪2�.�=Ձ���!�ó��^d�d�2�P9�kw��u��9���Tڇ<J��&@]V��|��r?xu�줠+P/�P��o^�/:�9t�.�}�\� �X4���,�p')V�,�cC	�kt���'kV�!���Y�C<*�r?_���wrI�7��V�"Ehu/��n.��	��u=�]�J�vs�Brc;O#��&B/�TNk��w<�jv�*��3e��}5�}!�I(	�J��� }�b�AR*��sk�4QM�'��_j'�6q�B��y���V3�X���k�4b�uH�
�B��`�@����(������6{9Vx����(�Џ�?�=��a������i�v�hM\OE�#��]f�de���ǓL����0z������/�7��.FD�G�(��T'�6����N	��!��pgr�q6��z�Z���.�wepV�L����kֲі�js�-i,�.4.h��`�����=��t���r�\�q� t4���T�!Q
s��9Q/�H�b��u��/�uNGK�1�e�z��+�`��'Ŵ9Po=6���-�̫r��]x��=R]����u:�<��ղ��"|�=���m�YT��t������kW��:�"����Q2�F�W�^�����rR�l~�.њ����|@�C�����_7����q��=N��<�NtA`~�~�g%TH� #}�+���������Lcï��7��t��uB'O_�vQ��3���l�k�K����_�F^���돴g`�I��z�_��G���1P.i|�6*Ž��N�c¼4�����/M_)Vn����4Մ ���]�E:�����X�'[�uO����vݚͣV�a��um�-��s4����$<��ވ�mG�O��f{�����H.�J�d�[�O�M����!Eɀд�{�)m�R;���r�"f��՝�xu;h/�&��&���
=j�������[u�a��Z�(�R��\�1��k��U"%G3\;���"9[;G[p9���%rW�c!V�0m7���f��+:.��@Ez�	F�3pPK�+E/�7��������V�hm��"��Q�
�v�Ĺ��z���Ce�\T�=j5
�y6�Y�v��T�v��z��=d��rB��̉��&MX?�#@uj }i�v��6������g�>}�]d�t�������A
n�`��U�ך�#��
<���
)���oAW�vKlԵ�b���1�m������--�3�i��&�D$ǈ�]�����{�Y,��k�����X ��m`=
������[�~��ϏM��` �Z/����	�);�QՇ��-��{�ou�1�� V����;˯Ak��G|e�XI"ǹ�ƒ2���R�Fu���b��z��SS�WL\B��ʌ�U*���G�h[�h��V��ޝ��+�F���QU�'t�ܴŰ���.7����B�6�Д ���,��O��&����IK��eD�n]��Z�Ў�"%�p
���ᅣ��V�,9��z��K�۪���Ke<ZISJ-I�	�Nd-Y
��a>lw��b�H>�7�
�8y{��0���3�����؊�x�
�,ύ�X��2�&ؕ�{�bmp�?�}�^��{�ŵY����6����[ʦ�������u~����mk�q�v��h���Ȍ��������Fz\�+Э��hQp�1,�om@_W�-�lDMI�m�p��8�~�p��J8���(RE�`6�$��k�]Guo��(a�$��{8�X{M�R��N(��J�9��F��@cbn3afv����y�]zd��u)�M��B&��U��4|��u:^U����+M��o�reCx&g�C��a<
�z�=_��1���r-Ջ�}̄&�A�U%'��`�L�����0����N��r���f;D���z��"WX���1
p��q��$H_�����+<��7A݀T�&!3 ���Ȓ����ܭ��N�b��bF?�Q�pe�Hr�?j�1ؑ��M��B;���y��e�ĝ?J�W#����s��/��2���������5+�.��|���"��SA1�}���惓�&;+Չ�Y5a}帒e�4W,��3�z70�*�F<Uh�=�:���ə�YQ�3��v.D���ٓ��,u��6(
0v��;��df�s�����c�����V�^Z����6��$q0z��7���䌻Z�<���沖2�٣\J���R5�CB����#����(=6�x;N�Z��Y���AJ0�hĂ<3��0pkŸj�)u�[>`�A6-�|K��^�5{��ʰ~�ZQp�w\5������'�P#y�_wB�%8���R��8ب�q���C<���b2ul�nn���ǡ/[i}ݳ�3�3���ߡ�3H,Y���+��3#;훊��/��Y.M���0�n��� zx�t�v��� �����q�����E,��-�7��Px+&�{}����1�!�<0��i*�H�$ؿq�3K�9�}5���%Í�	d-0��}����4Vs��%�۱��T�^�i�~��Ϥk�@3�2�'��-����@o��lu,ƍ�{��c��&+�/IbT[<XC�Mt����"\�L�?{�8m�Z��Fq;����iK>���c[>�0D 3i�v�JGQn�R�_������`�Y1����U��t\� ��0b����a����n1�g���|5�Q�P;8�Ё9�
`})&�����Kx�WU[Ʌ�񃫪��m��rҽ��4�N�׳��cS4K�����&s5R��D���A-��8�֚�FJ�K��TԴ����U �^�W	nL6���v�1��]k8�\������9i${~2>;!ƥ!ڮ�h
��������P��b}��ne����v��}&����ӑ��Up��A����H���wܦ��2�g��e���g�e�=���3|�Hk�F�!2��+P� ��=�]� �S��-H$��,sӺ�!)���8���ފ��y��8@�#��H���l/S{%�\/�h�d+��U��4�j����Vy)�1xq��3L޺&���Z�����Hq��7�R�y�0�7X�@�O�����:�U��@)��T,����m�;��I��$�heLSh%l��VĦMN#�����U�\���[�H##���gw���N��K�Z�-V�#IJ.Ժ3�V+њ=��=����k� 1��M�aDlXU�"u/N�n)~�R^:L�9��eܪ�p�C�N��/��xK��h�˸���K43f�`�Ƴ`���V'[���ܧDOA�[mKȣ���X��:�R��a�/���)����
Nf��`d�1�[����A�,��kyGʘ\,��s�I������h/Ma�����&���%��J���4-*��Ϗ#�=����d܊���ƹ�/�c'm��fŏB�({f��J��W��[C#y�;/U6�[i���P��E��2h��U�ʠ�p�$x�z�]�n�h�,��}:ɲ�u���ְN��!�DJ��Y�ΆXTޞ�p\�+�r��[z�M��%�#��1���˶��v;9��7EJ�Б�
mz^���GʍC���1m�V���K�ܞd���@�1����;4z�c����=��,:�"K�qq��olx��&�k=�&�0�Ntn�EY$�1(�D�^��t�n23V�6���[�� �&�Ц�}��~?�w�+z!U|���0��^�}�p�G6�ϓ|�v�������^/��'�u���
��q�S�I���u�Ʃ����D��	�U���1.\9�z��cǌԜ_�5�bE^((]�^�6� C~�Xd��0=����m-�\�����~���iy��\��}X����B�o��H<--���IW�Џ�.d&�zZ���H=�rڳ?���u�}��X~6\� �mS����
O�ʑm*�k��(���wR�M��`���$zV���J��������xAEI�;%Ŀ��2�AH���$Kwp�p����ٗ���    ��1�hAy�����ڙ�Q�j�
�2�3X,���������*3׸�8�a&w��ˑ��e����:jb?���[A��J�T�H�G���w��M�X�����+Ծܡ@4��!qLtb8�b�+02Nb��Z���Xn����m�pUש��#�3�Z@�I` �C&ȸ�з�!�B �N33���Q#I������#8�܆�%#��iE��@ǒ:V\�z��Inꕑ�ƚp�R%5�F�,U5�$E�}���˧�D�ۉ#e������w[�0��&`,�v[�x������ 7��GtDK�u�e��#9�Q�j���0�4a*����u&�ĢQԡ��l�Absvn��*)8D���X�4�PF��|�:F	*=j��q�S<�rבo�͝y'$x��ġ(*S2���8/=da�p�ǀ~+*��36Z%>o�X6��2��j��8�v~���z������f:J77X&v�\
���ArZd�*��,��К�|��b�����M��zJ�Ө����ۉ�s(/�pN_.���Ua�Fx1o3����~�;��b�
�����m3�E��B~9y}�ꯁ�K��V����J�'����N�ܴ��e]��e}2ȇ+6��d�7�Y�D�B}3YX��ޛ<�9��Գ%�k]�����?vm���xq�p�͖Ӯ���T��v���.v�@�UeitU"��m$�$T7v�{umiz�g-����c��oi����R�j��ଜq�R��m;!�GB_����b|쒵�:;�@���(�ڹ-0]odks��Mr�)1\��p+�vW쀒��Q!歧�AL�γ���17't)�U/%��Y���9=<�M쎖��8|�х����\_ i�;Y�x�����d��(��לΪ��:@���Jv�qH��'z~�AȎs�G�T���6I������f��uwǵҹ1z�˫��Èv��� ԭ�X�ׄ���6PY��);��R�G�^���_N4:�r^i�Q���>����/��!�i�$���i�S���x�i�Zb׵
�����OyUF�e`�oƈ	���N�f�i���,�(�|Ra#r�� 'l����ֺg������$�6m��7Z��) �-pJ{�p�ɺ BT�[���k�����o�%+h�#��wVῼ����_`���w��_�~��e��:�-�l�<�~�&C�e�Ur{��up�X�t����g�?��{Q�=+m"zΘ�_) �d����F�E�IH:��G=��W^Y6~��ԃX6"[��d%{淩�/�G�yX�� �13>V���W^(��G-8����;r��IҞ���q��(�h�Gub�І����#�,���f��h8J�Q;�6b�ZQ�~5� a��5�j?�+)gK�-� c��i�*-Hu����s��=�vͦ�!�����(?��Dl�#�I�n+�?
�)xd�.v��t�!@��D<�1�#t@��-���Ⱦ-Z����@N-3���XV.�pE5zq�E���(��ɪ�?�CE�[��he��'B�]3'	��]3?N��n](�1u�� �W�-��{���~���]a	�=��O�bK���`9{��"~�^9+,Q��C�lo�=����d�Hw��v���;������l9�Y矆`f�p�l;1��ܱS�tL[=�!I�@�g��m"#�	�s���~�Z��ٰ�DŶhՇ�u���X�>+`�njtě��5Q��l{Y�)��}/�q�F|K7n���8N��#�S�.���):pS��iue��񜯣��1np~r8v��7�:WA-���O�[8�.����q6�j��>D�8"
�=R\��I�<��j�8��u-�����4��!zx�9�Q�	ronrc���b?0���1��|��"qj��e49�H,S!���ߩs�2���R��o���ߓ�J��"�4%-^˒<�	��� sA��8�:�=�r�M�}s��$���V����05�u�q���xG(�yv\��8;O�G�;����b�"4�m������A�ɨd��8n��n+'��Nr���>���{*�x��h.�2��B��;i��;H7LYw��x-^:�{���5^�6i�PB�<���l���=:P���I}Pͤ	� �Ə
1#-D����0�N�@)��S��.�琫���O�Fx�BX
��;��]�io�C��v�cP�P�l;�/c4�Š/a�M���YJ���ޚӵWHN����˚o�E�2��A/�O����lp��c�?���
�fê�J	P� ɐ�ۂ�aK�\8]��a����j,P`����2En<����HL�k;"L�T�����1�i�zǯ����=��J��i� &j+�߮�*����!'��;���F�1_S���+�He~�'��"�'�GB�U@L97Y���(M�͓���څ�r_�؀]�P��ΐ�Z��y��z)9mo{�@��o
 n�P\X����¶��� � �e���\����"jS�Q����&�8f�EA��@I(�Kܞ�tg�9�YO���C���zY��D:m'iRG��a�z2�͸�b���b�M�l�˷�~��Y��Ln�E1O���mU�d�W`O=:��A��9��m\狏d[-��A�(L��q�#�˹���yY7�j�l{�&~�ʬ��{w�h��uT� ^;�@���{�J���Im�j*��~�E5��3��K�j����)<=����ߘ�=3�F��hOtf�߂�g^5l&�;|�QP�E��X;��z�w4�)�o�P�.�R[� 3��C�6ù6�j+	0�QRbJ&jkG��<�|Ѝ(G� �u�`,\�;Ⳛ�^\vϙ�����鴭�l��?�B-�9��e��Rѣ0��x��5�)��X����g��O����U[m(��L´(z�q�&I�C2nS䩜[WlG캑���06���m�v4AE�
�"2sfG�;eh��}�S߾�����_P�M����I��FrБIxxk��۞j����.�'�-~�3Ҧ5@n5�ѳ2��<`�z� �8n��{Ù���Rq�v5N|���s������UJ7�i���ra~2R�OcqI��@�y������Ĕ����fg7��=g�+�ZL����w��zj�R� 45�V���鸰 ��)/<�Ԩ`�@�j���ᇛDA�*�Լ��3�b������BnK5!��A�
L�Bͮyg�����S�SQ�s�Ⱦ�'�U�}�䩕P1���F��6����(�"]���-�!p%�c�%�gsS#�T�2�]M�f�8L������2��B{xN�-2u���gz�lc+Ɔ��V�^d;#�R��W;*�#��d�� b���I��U�1� n6z��1�$ER$�$WBDԽ�*��r��D>=���:-�׊�0�/NR�kTY�qr����=M�0�U7�R��̱c٭����gE��OW��J�vj'��H�Mhҳ�7K��t�!�/�R�����+�fW���c��"�q�ҍ�RK���7��&fOW��_E{.-Oe�j�s�'��cv���
duA@_��m�؛��J����t�4�F��jsʹF�n�9��I^���֛��t����%���ܷ�R��fB*�]�:�V�m��N�Ü� ��9���e����y� Z�bw2�Ҁ�:�k���ny�8���ّ���T�# nJ�.N���k3����a9V�I��~�x�����a�۬P��8m
��fb�ݣV)���(�����:̈́���i-�C0�T�������ή->�S�0�,�@����-�����o��X,���膚�m�:��c��&RJ/C����V�=�|Z�6��D��][<�R��gi��u�"T{{c|������]�B�J�#t�Ѧ$����v���>D�{H}�3��31n?��{1\ˏ�k��j�#��̾U㿱!)�4�r��;>��)��<�`J��L�L�:�5q}��%1�r�[��^����o�wE�۫�����$Kf�H�2X�+�:�d@I��Fa��97�W`�f��d/�2VZ�E��@ �pf8�\��`
�|�    ��!۟�X��M�?
�*P�}�t)���o-��t*Ȼ����|�no��Yʶ��IP�(n+����T6c��8,д�.n�/���!����5T�z"-���3pq::%0"D�9��W���Nh�.���x&�&Pg��rj���#���c�A;�FK���ቜ��d��J�	��&ָ���AR2�\jf^��Vz�jp��P�&�D��&CS����`yr;G������E��b��LRd�?^6M���7��=2;V�	h��M�ь����N���I;��O��` ]���(#�/g�×�N�o	7bj����������W�Pn���q�,p�,h5��8����Dg�[��MF�\ڄ#ذ'*+D�K�*�-�!�?R�f��!ɖ�%L�I.�V{�$���8?�ᛗ�&Ѯ��g�(��E	�L��>�HW��4�A�l(qzVDz���*�lqS�����bY�Bq�V�0Qm��M�����j�{y�F2��$ki�b�8Uw�.����K#���d�nA���;(�������Ds΃Xg(c�_�\�K9J�������&��4����W�=��Yf��iuO륣�2uS�b��Bn��3��g��,�V�Z�� ۋ4=Xdz����C��<y|���f�å3�����I���H����+����E��eke���:�E�A�NS�����t���pm���z�RH����=ɕ洼C�"�P�=���,��'���XF*c<cRFb�~l�� ��1g�f\7�]�C�(r��}�q�D7e*�ςp�r����;��k���R���g����Nz�$Y���<OO�X��
��P{�N$v DT�L�brm��c|��cǉ�o��]����v�%]�{=+
�h��P��&!�29@�ڹ'å�.+�����o��R���8�v��� _�q��D�D3@!��N<��ot��8e
��3���i���D���	KJiv|�UѮb��yLoY5�UF5�xT�3kQD�����c�(�_�?��T']�c��ћf�gƦs���K����oSf�2������>��0�k@+t)p7��W���a����.6�MP���HQN��I��8�G�m�pv�Q�m�3Sg���bORR�R8����B��n�v��0P�W�\Q��9��>�6^d�Cs�mɵ�U�s0ޭ��	L���ǹ��x:p)���e62Y��+ՠi=������x�[�nź��p+�!�=V��ʈ�?B�h�23+-h�`p2� ��-t&��}�������/B��[���KT���O��	_B6ױ��Tݙ�zlH�k��D�t
|^�,��Ƌ�����`���089װ �Y˒�G,�U@�Z!=UN[�oYd���b�G�<����$�C�II�bO�RO��Љ�p}�T�=f�d�)����]�������;<��U�<��� ʲ��G	��Ae��t!���{R溺{��Hp��Z�����WHI�R�J��P�)�,s(��<��L����T��+⏦��W�X{��HB������.��M��T=���N: &3� �@
ΜD���Q�W"T`J��D���C�R�ȉ9��%¶w�?1a���[�Ao�$�I���p�8�	pV���mwͥE�r=�z����O�����b��d�0���O1��sŌ�Os�7`���=UhPC��Eq�)gL�IY�+��̠W֎C�ьp�_���������`��n����P �o��F>���YK��z�7h���޲g��I+sA���ۭi�z����kj�V���69��H�dɐ��6�l:��'�!�C��#<E�,�kOB��X@钵BB�c�v(�9�I�U�HU����7��$7���ޒPl���>���z��hAA�iE��a�2y�����R�^Y�ڱ�>l�7-�$��F����3��8ix�s���0�
>�3�������%j�@ޔ$ǃ~3��R�����8x��H3@�6oO�0Yczcj��ʗC�������[���[���^�9�d3�e|ؘ��/�ހ��M&s��3�@�����ݚgt�e���%r/k�� �Q�³�j\��eϷ$"����C,Ֆ�%>�3_r���*� ��y�m��x��p ���bL��Ȯ���NJ�k6\�%�q�6�bc:���*����FoJJq��ޮOx\��j����/c�7�*��?�8�6z�����ܑI�*�:�{�3:V�2����roN��0=<�:	r^CSm3��č�<\��D��q�^�4ss˵�ɽI�i�CZ�Ƶ������� ȃ[�J+���@�r�E#��"�b<�.Ǿyd[�w{"�}T�Xfhk6k���PR����ۘV�۷%F2�@=w�p�/��9�T���ޣ�7�����L��!��m}{���b�bU�y��J]FGC�\���[�84!��6'A�G��W#�%�E(�dn$OI\
�^�����
�X����Iu:*aQ�.�[fA��:m(ǹ�Ӿ�����.��i��8J��b�� cm��E^@����/oW�5�^�����f8nV8�Q-�Q}S�f-2�q�ļ�(�G�Y��y��Dq��^�{#�u�m rT�z�l�E��:t����q|�>դ� �g����e$���'��$h�/��k�ZORZt��A��&��Rn,��H�7)Yct�e3����6�ө�PpXLDD����0�B1l�� 4�:�Ǭ�yh,�ՑCg�k����8���h[Ad{C��ZUa���W6m1����]�*���}���ʥm�¤V��ĞD�9� )n3R�}���f����~�m1Jb�RD{n��lX{`T'����_},�m{қO�g�V�I����FHCs��s���n��`�-���צ����#]3n���n���-X�c|�Gk)��/�
<�#��&�ViB��$Fv�J�>z(��y��g7~ȡ�]	����C��_��Ǉ7���w��[��n�;��4�=�Sf7�"�\q��.����Z�ZB
g�ˉٳ��T3_Wm?�x��Ǆ4�Ѩ%ۨǬ�3ɗ����}L��P�/"06n���BQ��O�$�K̒e��g3_�c{$�y��U��ٷ�8H��F7 Z�!�@t��E*�H�����җ{���$�u:S��?\e�+�:�y��A4��m��a�-�c��rVEp.v��uN�k_�+tgD�bŎA�h� �&�p��n/T�v��F%h*
G�\�!��#��R���e��Q$cVYAx^���!��x��9��ݕ0u�*��l���x���k�����l�ފ���6F���!��G�VV��h��䇷���H��~�-l��z�K+��i�id�-��gށ��-I�y;B�R��I`���	�`.n��x��d��l��-�� 큕U��ڧ=g{����.�V�>��*�n3A%�D#)�:/<[�j[��u�ك[t8-R���UnT/E�WK5z[�ƄAZ�ȑ�h�
&��R]��ʮ��>�Ro�
�}i�ӓfx�o �YBB����e/Y���V�z렞��%0DX�� 4�s\��F���z:c�%��B��^�?2ė@����3� I挾ܽ�iv-I�G/N&>�+��nĺ�Lh����
y6ډ�;�>�нhq�רx�j�0߂�o+�j�R��f�2=�M�����tj �|�,����=�F��@���^��:�Ή8]�e�A�f��
����P	��v��I��z$vG�9��r���Q�j �۰���S���s�A���讛�ct=��
a��P92���"�Q���x��N���i��M��g�sdSf썱�M������B�/�(�
�g���@Y�X�n*|ç��r�����0<��J��Fbn?O�KIӜ�AJ��E�*I[>�V+ݦ��[��@g�!,:�l�'�Y�?�&<���n6�'���;�����O���UZb�]�[.s�ˋO�Q�vJ���VeQ"ԣ�CBQ�    O_������J6��U@�� �*�������S]Gm�I�Sh�
^��hb��YG^⽜(>+y?��4(�ے�Df�y�Z���秲D���)� ��e>�uD���p���̏��8uN��J�K�3#�*%���Qㄉঠ�ދb��5^���(6��i�z8�^�i"�nl�>��t��g�,6��(��)1�!V!I��NG.�@=7�18�w����_OUi��qÇs�d(��O��$j���@Q�,� TA`�\&��
o�]���:R���0��t
��J��[��4A-R�*�1��vE�\�.�0,h�Կ�b��z�Fx��r-������X��Z�L�p�r�^&�|���nE��v����Ιq�WD��A�Ȝ!5�Y�;<m�� �Nw�:������	3`�\�^�����˰r���g/d�q��EP�!���2���iK)�Ƿ�d-��'����˦�GHb�R�(6�j�M���ǡg����x��$��>�D���V�M9V��R�#�9���jS��<��VW�� �$���C�+����L�C���$�W�4�i���L{��1EA���8U,��Q��܈�*ؾ[��(�nW:���7��H���߿4d_ uj����~��1�餒Z <�0�:%�߉�>���G�egF�BS��7QU���V�A�+�k�6�o�ă�31����O��3����7l0n�L�>�
x��/�a�������${��P�e�fd�ƻ�B(�w���P'��!�����IG��PZi�W�������Q�
�5�H������hv����m��f�v��1ѳh�.^HA�D�Q��s�'C��*2�\�uxn�J����-E��P���f@5!60ؚu�X������+�1pQ�ٌ��L��ʭ��gM�0���l�\Uϰ'#��~m��{���N����maǔ��>�4�	����}�r����n���&K��Ϡ?j�'5����m�x�78��\�f1�9�֠�U�;u8G�W	QH�t�,Cn�g~�Cɒ�Iv:t4z��<�1\��H�JS��j���������y)��=/��ժ����7|8�#�߯�Xya'��k�	�H�����(,�U	����ڄ��>W��rj?.NF'���z�$��=z�͌E��|2w=8�Ɔc#�6mD��`�h	GP��
c<��Z��ļ��R+��
;��Ƿ�Y:�z��׶���@������=|�'E:��(��e��(YX:�D0,<�L� ���3���W��$c4q܃���f"�� �,d8HeQl��G����s����v`I���Ex��Q,���K�j<If�"�;�¯lU�/�|M��K��b#��4�E�د�v��r��?�����g\נE1?�k�<%Mr��V��ǎ{)�O�&�Z��S���n����ڡWX���q�`�C�v�_Q���Z�ݳk���*Mgq��4ů��@�Y��oyg��OU��PĿQ�8���Z�z�z�&.z�kI�z[�f<��ʠC��_*���-�2��4�^+��0ds�,��缚GG�	� ���r����rkZ0�����>5��5��.����Ĕ�d�61{��ze���/��K b��U�TFm����,7X�[Y�th��;:��N6�R���˥���T,F�K5�	�(�Y��kP��67�]�=��C�^���`b�\9�����%
�-�'�rQ��V�=	�C,���J��8ħ~Z)؝Ts��H����N݀s�협bu�8��=�vE	[�@�@&_F�32O�;�
76,ġ"�6��4ve�O��n}	�8Q��o�m81<=���'J��MG��_����?�1�ze��.��Н�f5c��6=D��`g���P�"?Rf	��$�mǰ;�%�"��Ti'}8�^}����� �
'��~ ��MM�c,�h�N1�@J����Cl���G_�7�]N륥�)M�W(5�N���t�Fe�v�v
v�8M����a��]�A��H�̅v��l���T
kw�� �DP�1�����"�9̒����>����pd�f��>��<�{s2�"Jk��K��WcϾ�9KE�0�U	pru�6�HS��FWdbIC�uA��5�Q�Xڮµ\f�I%VK�����/^�뗰N.َ�v�鎇D�ő���_\�|�J^]ౝE+��	<%���xcc�\���I�̥3�yA+�,�L�NM�Hō>�h���;F�_��!��]�(kPs�	S�$��$��kS*}��hm$-�{I�sIގ���d@a�Q��On=�̩��Li	!�Hג�{FI2�Q�X�X���O�V9}�+d=��G<��o<H?�28�U	�Mz/��������B� C�ے	+�0����d��Q#���)�`'Z�MV�2��f'c�A{߿���b���kA�G���C%�:Rؔ�F4����RO�KB�@E��z�4/r��,�e)��V�eM��rhH%���AA�X����W/1a�k�����zȼTFsVA�8v�|�iY�'+�r�V�9�MX?�B>����+�b��q����/�ɬ���^��{�D�?0�盢��ͽ1@�b'8i��a������Z�#�&�APA��6累rF@t���4�7�VUf�G��������P3X�l��dJ�1Eg�x��B�Oȳj�V���A������8���ԱԂGOǛE@ �/�gI�߮w��b1)D�˭d5A���lPR-i������d��kĆ��#�$mǉ�%6hm �"�L� �u\��Ʉqa����M[���1��߿%RZY�V��ck$$�Q����JO��:�����z�	ΐhoA�GŢ�S?퍿����^�y�9{`�E�����Bbȯ�V��G7�{����|ew^�QU9��Vg0AO�|��K�$.� �ΕH�5+6��x��N�ʃK�N�d%��@d��n�\�i4&����fhd��R���9vd���>ɈA�N�B�K�:�L�"h$���G ��a��9���'�;�1��v��i�H���g��#`W�z%��N��j��i�84�@���7Z���k#����Q�����^�	�T�����r����[���(��n�Sč���+z��u��0ȝ�3���U<ȉ#�i�&�Va��Q��H>
�נ2�+ 	��F!���sك���z�K�i�AA�i����{� ��Y
N���M�Iۢ�=���<�.��	�o���r5P�����~�$��~����3Ƀʄ�cg!W�����C��!����Y�$C�\3��?���/*.�)��rZ,�9��<	7J�2����[��I�w�	�Ʉ��
";8z�[�R��*Լ���d˻Fr�0H��^j�<_`nM�{��m[)z��gd��l�A}��L�tUum`��N����u���D�G��tr��#��Z�!�����a�3|$Ȩ�5(�}=�ݣ�D�֍ʔv���Ɉ�ˇ��Ϊ�c	o�im�p��$���v��V�[����K���(�0 K�ܻ�k+��C#����QFd���U�M=-�������C��[�vS6�<ڎ45��\PmjCO�@�I��}�� ������x�%S؁k&$��e5ru��ߨ��U��N��%��m�� DدQ�T젛���w5Y��\�
5za���Q����J.�J�{�V���֍��yu0���r��~�����5�W�m�*�`�K{�'����<I��Wh��%��ղ"�e���-������[X����g�
=�Eu(�t�!e'I	�$����$��rͦ�5����C"kk#|���I҈��mwFI�52Sm\�9D-Þ���������\J�����;Ǫ�J�(��B;�l[�Bq7�`e�C�0���}�y`c�˱�6�K�$�x_�n�K��6��7SbgN7h|��Ѥ�j�R��8Z�0i��fF��|�A���1/	юG�C\+�6$(�|��C�=Ut��f���X3�dĬ� 	:���k�Ђx@\���9̥�d�T�;�y��?�4*:`���xZ�~V���)�D��1qc�d$�[6V�Mhe�[��    77��X����bi�+b�(����Ql��G���B��DH�u�����(��k;�h�.ӝ����YQ�x���D�vZ���CH�����{z�	Ց/����P��*��9>�%�I;��vƖ,#���UIs����Y
�J���y~����Q}+��&t���g?��#s����Y9:�I��K��L������7=[n�7b�Ř��_z�y�rS����aX��8g&�O륅����vv1ԆB���/��Y���.�ף��Es���=0c��K2ڈ�������L�mK=9����R�w�����aVxʻ1��.$�V�|F�I��(y�M��:V������`���Cv� �p����ۏ�銌�j�.��_Q���բ�	��rW�3�B� 0#M��(�f5�@��AC�n�#lms�h&R�� 
1�n��)��I�IّW�R<�k�I3װ+�g��C���y0�x��!��ڗ���ll�A������jZ����A/��W���@�[��z����A�ۿ�56����z�aS�4q��} ���'1h$$NH�9��}�B7g�<8[^J��T��P�i��'�{_���X`y(И?#�0���c�= ��N6�u��Ä,x@ȿ*���\�9�%����^��H���L��ab��d������]����hj�uy�˛��W3�1LN�X���Vƪ��2��,���!��<I8�ii\g�7M�,9�]��e�h��΢*���yH7�ٌ��!`�<�~�E���w8���ڞ�/�JM���ۓ������ip�&��Χ��k��P�ً����� �b�S߽x`�CB�23�1} ���Z"Ft�V�"�S}O�s#?�$!7����}i�������R:��^���x��% �$���j٪.ٷ�]'L�������� ֍���>[���fy���\�P{P>ZӻK��F/�N��PW��m� x��@����F�ձZg����Khф��rb��ʧ0g��xw��ҩ��cMO	����%���)�Q$}5�E��5K�?����lD{h��+�G�
,���ʀ����9��q�be���Vv_�wutV�y}lIV�x�Ԟ�;�dcCM����^ݹ�j�f�6��m��t��ƥi�����#u��6�N�Om8�ܶ7=�EH�yn�@2>�ғ��/a�f���1*MiPa�pe��-@4s	���ս]uJ xfݰ\���D��
��]�V��J3�ۇ��<ҋ�+'�+~1ü�`)��8\�e����3����l�yפ���W���;9�JHu����5��g��Q�d����]�'�V����A�����@}Γ�%<˜�"��e�J�o^'v1mǲ�"�BG4���G�	�c-�=������So>���3�3Ȅc�g`.���zf9�����e+��ϖ)ғ /F�Մ�ډ؏�>�6�7M>o",A�� y��!����o��L�t�����N®�{h��~u���6]�ˆH��#�f�-��mg��<�fW;�S�պBs+���Ӷ�'��Z_۰Y�?��4O�q?V;^������㸿c���uگ/Km�!�H��QGp-�Tf}�0�rT٪W;0�
Z�bD4�5{G�s2�7o���>z�C�\'��.�)�9U<�iC���5y��̆0%��T[S�m��W�~Vz�%S��E��!h^��/�g�Ϊf �70�����Dq`�u�闙���)�������䥂(B�$��H����6ϒ�K��6Q��˷���V�rQ���	c8�sr�O;�Z8Qjӊ�'�>ʮ�u tZR'm�
��iԈ�;m[����!l��p��!Y�8k���&2v
��#~�K;��(J��q��u�CH�'pFD
H5�	2uA��j&r=��<R�^J����Zh�D/�GY��T3Hl�Ψ�s��("j���2I��lJ����3��P�^����Ҍ��{+fW9�af�a�,>��|��4΢�;��'��\��	��?���ס��	��2�$fM*�܄��E���j��DЋ�6Q$^r�̍=;tu�`Z�pb���.۴a�����ڙ{��c��ł�#��4��ޛ�'��gm�%�n<�T)��rD���cж��n�~Bj���._ZqS;�t���RV��H1@��*N2�n��9n�$��:�|�N��.��v�:�	e���8)$��|�V5�x��F�OK�	����ok�C�w*4	�bv�RرԴ��i �2l|8��PJ��6 z�}��m��B@)�a��`�)�}F�j�[��4x���ud55��SA�@apKhէ�2C�{oF�h�K�c+"M�$�f&�����Z)�#�d�ug0����nf�㙆m��������+BX�y�ү�y��tvܿ�
v���X��,��[����m�0R�W�K��&���)������Y��=a|�}L+Ӡ����F\�t	t��"i� �0���&��S����n��<1��b��,��~���D��x��!��Z�����)n�Qf��4��"��j08n�`p��_|�(w�|�@��������<�Y�=��>�#�vk(8���	P2L�$�f>qʬN1|-�<h�'s���"[��r<]=�IZx�0f3���d��Hς�h1�b��J�v����9ɴ{B� �Ҷ���Ĩ��6�_$H��s�,���i�2�Ӧ���˂�I4��zC"M	`i�(q@Ű�ߊCt@���rk�W����E��<�*YO���Ku:�2c���lcw�?:��- W�m��Ʒ��?ˢ���V�L��Ă�e=U�*ş��w�Tg��X'�T �.=g4jB2���	�j�P'-����?u=��ӟ���;��s�#�ٜ�p�Y��Mvh+�������]W0�8�߃�k�/�#*h�gG��7�ZLh����o]�Y&I�0D�%`�%wM�$�[D����P�|�yI-�Ue����e�zS=�8lA~,r:̛��=N�.�fg���ܡ�.Z�)�=`w�LP��.�J�;!�T"t�v�D�[.�8h��}w�x':l�S-D��M#�x��?/f����7y���� 6�L'�r�]^�Ȁ9Nnκ{�љ�:�w]�Ϭ��m�����R �-`�.p����W2fi�R�B���_?Q�d�B(i�֌���(?����hR��4�נ�SYwF�y�
z;�j	�`R�M�3�L1�,�;��]4�.0��3Q?�4n���l�y��}��<nN��Mq��=�S�r_'�}���DU���P�/��N���$H��R*����C���S�k1J��CM���zي:�)�n�Rf�AYW�.�3Y("�R��hH��0������M�eľ\�%�!o�˪�̢��YŬB�����bz��
�QҮ�6s�wやK��<I�<	���eѫ��9Y1�e[i�j���|���/l.9���j�����s��wRϦ<y���v�^�X��q�S��
�������\�QH�9���s;��fb�;�zf�v��5eە]����Q(�]���y���F�C��4�[�['=DL����R"�6�-�s�VtGCt[�N���L�_f�����s�F�kv��gS�۪�4���Oy�vZ�� �a���᠄ыr��_ְ~���jX����+�t��� ��x�yf�Q{o�	�H�򩄱��*V�Q��ؽ������N�F��*��^#���������f)�1���!�W'{�G�9�ϲ�<�TU��H�X�+��uE10y��4��0��z���&+�n1GRs�y� q�֐|2�/�78�6�K��/��Xi���FHՏ���'����X����?E�n��fE@�GOb��Q)��5�����JHi�uW����W�b�;Q���V/�,�.c#��Pt��Ǻ��lq.D�7�G�r%I��z�:{q:9�F�Z��Kٺ�(�<)�����DS�u�O������Ǩf��kS�D�S��i    �|��8ߡ��E$^5_͍ٸ�������8�?�
���l���h�?�fϟٛ��Uq��ќ�R榜Q&��]�3��el=p�S�Wܾ����u��D�~��D	���k��L{��2:�~�c�$D$a��Hn��į5@��9�p�'#;W�o�H�`+�Y|��'��E��J� �դw�$�[��yp����N��N��1�m��]AxӤ�2����i�K撌��Ϝ>a9G���#����-��6B �Yy�
G��%+1��	g&w�9�ŏ�������W��mH҃4��
�E�\����d�^�}�4�3e�1�`,�ՌW�芌��� �Z���� �	�`F՝f�I�8N*���[k��%Ӗ�kԓx?�C
��xβ�2~�T$;y2C#�1�� ������Ee ����m�L��[6�4}��<�L��K��Vi��欐�k��h5k��Zsr �b�u\�0�ʅ��i�DB!-��V�v�>8�?�c���?7mJ*�n���W₩�h/U�+s�A(�H��V�w~��=̟%Ж@엩R����>&��9���ޒ<�;ć����s��G6K�CE�0ߺ��9R����38�_�=_��u+�W@Q�o������"����"I��E��q�!n9!�`�^�.<`>.^��}��L�1Hy���1�B�� �M����	I/���aP���ʸ &xx��#�XUa�Ύ�"�^�ƪ=�&�N��h������_��.P�H���뉰D���\����ᥠ���`�t�7=�_4,Y�$�P�q�/W?7�K�����8�2u��ڊW�H��e �)��x�Qf�<{>����C�V���z�n"�ja0�5��֬���L�A�ew}u��7]yEEbk���,\����^.L���"�CԌ��7D��{���a�oY�q�yb[�E0@�g7�?Z�\�Z�cU����kv1#`w2�n-��0|ei�?���Z��'ha`q�ۥ�L&�*e�Au:ns)�I��d�ҁj��]Q{��׹q���p�����u6�R�9w�.�{��R��X��z�v��!%4�z��e�kT��!�W�d6�	�Z��x�����#- P��vR��$��e�wS+��_�?�a�-pw�.��f@n��6P�g���F��=��Z��7�A��I#5.T�>n�Ϡ㖕!]Ս�^��,Kc��Ӷ�qt��(��NW��A1����v�l�?��8Q1��c�9,�l��m��9�:��u�N�!^���:X�=a��fJ���=��d��s��bj�=	]�������g�p=Q;��m��_Nʛ*�h�s~��m�K��:ؘG���Y�ZZq�28�����M����޾T��䕶3�m6򾮷���T ��j��e�w����#����(��M��Y��P����/�XChkf�=�m^�-�ꦬ��vw��(Bb���L�V���V��ҥ������W�ڵg8�$�Yg(/ PzD-�Yw�UBT��<�^P���
B��zm�F_ʀZ����r)6Z��G��Ш�g. �X� ��5'�4�T�/��?�ݡ��Z��2�tu��P�صK#tG-��U��]���,�ӹEyV�E��O���WctS�
����N�?�Y �?�2x`���ٳ���^�ዔ���6θ��FZ���!b��a�_q�����������ƫl�]�>נ�T c���O1��`~�+�ѐ��*��D1h��#+m轕sD�!��0:~�)N£�\ 4��h�.��,�Is*���6�8�^���>,���.(w�a�������SZ�kG����;�|	j��0'6s�ײi|�#X��]�rO��4�
D(Fz�����H�
�M��~�T�jX-l�
����ۉ�^E�Fhߪ�x��l1���8-׬�h1kׇڊ�
�xB���E�t��aK)���LO4BG7�R�]�%ϻ|Z)�	����Ph�y#��p�ҷLQ���k%��o7��ҿ��L�(E�ē~4.=W��JCrh"�p��W��JY1%T�i���6\�<���S�E�C����o��,�.Ҫ~�KF�zZ�!�R����������2�kpÀ�7��A �&�{l֒�Q���Lv 	3�C���&�9��瓷v���m�Y�j%~�y��2�jH�	R�}C�𵯠+���(6 �>�mХj�+����X����#��h�e~ͅh�J��i��n�Xzy�R����v�(��L�D��k�l����XF����;z@����@{�R7�B#@����_�O�>1L�	�r�b�+��^l��$��[�m[��\#��U(����4�6��9���h!~�b�|���R�Y��e�'H�B@��!�����Ч�5߯^�ǒ�5���*Jy��J�c�繗����O$�f�"���_Խ$�,�E�����]n��i�y�>�C�+aH��27�k�z[�<�E�a`��Ҫ�^N�O���ė>QK�>b9vN���>��z�^�v�,-8�Ub �T�Z�qj�io2h�KSW�.�e��2���9J!��Z�[����3W��׽�6)��f�_x°�i�}�ۡ3*���Y�\��X��X��a��i����R�O�G�=c;��m>:f{�T��h�|��sH�V���PuΈIB����^P7��J�/�(	���6P�Ա\�h�A\�@�_���ae�����5���r�K�F�ߡ@ZO����1��jJKc2e%��{C&6��j��a_�����B���ػ�`��H~+�DD��ò��}�tꋱu���(F)��+�9�jW�&6e+{,qm(}W�w6�H�n��z0�_��~�@������GEa(���9�X���_�R��.y; v)�''O�_U��z��̯�I/ƃ����hi�~���7_@���Q�/HἈ8ޒ
��4�dZ�b%.N�7��6A׮Π�R9��=�-Y3�ke������z0�Ȧ�k�~GWQ��X���̝������D{:c��,���TgC�����m��;�ä�7iEobۆ�go�S��S��e�.�7��L�z�4b|Y�+4��*���U,� �J�x��+�,%=Tct:�!<���,3�(�/�L��@(x;d��(ϗE�:�&VZ�b�J���(;�:>�i8�:`��{3� ����N�<$�9�(s������ڶ,O�L:f�P�#��*����.u� x3�%|8����ʤb�������˥�h�BA�:"�%5���/ nd.כ���C~���Vb%XK���~���Ź��������P}�Z��gR��g���2XN�T��RO�'F-���u4�H��5L��^�8�~�F�LQ�^0}�/Ci��J�N���]�o�V�����cfX�Vؐ��ΆW�%?y���R�M��+�R��3u.8�k֧��ϭ+��7F����0�ؠ<- ｚ&D8�D��)mq�R	���B��cŝ�K����e�����5u'*:��0/��������eMvi T�jo��h�
�'���l&X� ͑�n�'�&��@I#�]P�|��#8��,��ͭ;=^��;L#�Aٟp/��+�̄�Nx�LH^��o�;�L�'8Z��0EΓ��{�'�� ����3enfD��S�����r��է�
yg[M�d��!R��%���S�ӈ��!HܣV0�h�n�����:��[��7[�
e�*3�AG�[õP�Ҭ�-����Es5$�o׌�2�<�Ln�}�H��C�,i:gsp0ɜw�J,�.N��nN;q�<[�A9�0?���W;�훳2��a�ټ'���'���X��"��L+#� ^���T6k�|8���}�*�qt�i@@�,�YY���;���s�qs��6�f<q~@�<XLt��2L��ȰCȞ�3�T�;����֑�?�"��B(����yzNWi����U<�2�Ph�����xK*��,RZѦ9�m���x���d�06�Gr�'+�vG3���:w��yh@8�����6i��N	�v�] �a��L�`
+����    3�N��)5��Cq���x��Ʌ�Rv!�*{�YT��Yj�0��bisq֑sP��=a��Q����:�sh�����s���i��R�/�(c,��H\C���c3�����V�ѫ�T���_Nf]E��=�VlK�k�l��p��^�e�v�R��e#:ZZ�:pk�Z�趷&�;!��q.�*5��s�E8NX��)�|6��e\�|D�7SUT�Wy2����޵��p�(����S^�#_!h�u��:��;��R̎g��j������LmXw���Oh�?�5�cR������8&Y�ł]�9�.��)K��]�6_���qeP�eƱ['�,i�5��-E��s� �L����<�s�v�ZV�8L�p�Ke�*�7ۏs�/� (�)�ӶO�9�w���GS ����GcV(��etw��0�Iz���I����gi��>R�w����/������A�K���J��/v�aDD�UN�6#�	�E�����9���i$�t��`OO�ٟ
ux���̨R�"�l�̨�9�3�ggU�籖�b���#���j�#ٳ|�Ӑ��2X�w�L�\�Ɍ���{�[�ʲxQV�"�$v��2�~�j-#v��������4Xx��'r,�	9�u!����v��b��?�R�z�G�5L�d����*�΁I�odd��b�B�C�P�-��\��6�`C�H/P%�����\���*�1h��a���Ge7v�2@�	o�1��f���;��m�	�̊��$W���@3<��)�4�J�l�k	C=��޺�k�,�&�ƒWr�G���sRRŝ�8ҽL����9ςSϙg�E��R���u���V6^�y���.�/��q-4�dV��dA���3i���{<{ݥ0S�&�w�H��UD�y\�J=���8@��������?EN�ն�eĴ;��s��1�U�R`�i�ϴ���tDS��sLv$n��+[�2tҥ���J��}�Yc��-�j(��(�U�& )L�*�~l�0ȱ�c�
��lIP��G>=K��czZ�x��{�/����{�V��G��LN���8��#=�@����i.l	3v��q�1��C��<��� ��f���Z�{Pi����sRo�;<S/�;��p���aג�O\�b� �x�6$0�B��95���˂,`U��'w�w�
��C6���X�)o��3�&:a�/Cz:��e0A����᏶<eO��͍OOr�8��TW����b�:�?wB���`��dr
��Td����9�K�X�"YU�Sr���j	�"���d��^�&�Ԑ��S�C&������+sυ�`Zďf�k� '�%�-�%�4�9�-���IǷ��}�z|��f�uEvN��
T�Nu���;Q���7��x͵=��
Bϟ����%��rA��p@!�K��ū<��Ɍ�4�*���������A)��ހ���X���|��Vc�ւ�٨�w��b�+�B��5��tT"��@ ��D{�����
z+�hSxU��Y���E����ksL&ĵ�����r��.�&ۥfNUO�҂:�ds��W�`��~��"kNK�qiǻ����x��Z����ye�+��}a����<����(���O0�c�e���h��4�9�`ɘώ`��덠Gݟ.��}�-�i]��i�a2�J� ��h#I�q]�����pi��jݣ���bc�jI��Pȹ�҂�d�c?X)nE*  .��T^���\C��JE�^bZ�"�<������%�1u
W�O�P��-V�tI�7k�6*�o�زDy�����ZQW��Z���Dmc�r�"��cH.�0��_����(��7O���
�Ľ����u�ϭ0�3ҷ��%sz0��y�ĩ�2r��,q�#Lt��r�:����}��T�a�����0Υv�њ��u.��W�NN��a��΁� ވp��)&8tGL�ִ'�4�\�:�Ȧ�|�����m�W.@�(R}��`f8��r��H�����s��"�絧�.׺�LK�1��p���Ae���NA�/R�`�Q��w��;͹S����e0�a�!�Ч��a�����c�	���l�����H�i��Q���2����`d�����ū�닿��i��F�l�,�p���j��Z�����IR2�%��噦Hӿ: ,}F����79�l�g]����}zj�+�\��1�A-�Q��mX�k�_�O���oO2
���ܲқ%������- `���S�\�Om�}.����x��y7�یp_᪵'7��J4d;S�� ��$VLkm�MZb�9a?����?�i��w��g�o��]�{6n>��߹.�a��U�q'm.t	�O3��� �
󏙄�6���9�UZbSj�A�(�?�s��F莆�J�4ch^���N8O�h�� �N��%���������͂r;����5zh ��Y|����2z�f�F}F�l����ZB��1'Ӻ�P��.aȘ��
  $'��"e�%#��|0��|u���Or�E�Q2p
,�u�RV_(;�nr�B��Kz���p�ڍ}r�C-�J`��7'��ѕ�\�����b��}C������R�P�Y-���r� #���Q�Μ_1-ٍW��]L�W.BmR'��S��=��v�K���r�� 5bI���!�fL��y=ɧ���4
q�Fb������ ���m�l��F�v�Ti�٩���V�u3!��Cke�_ne�=Z��T+^US%AH�E�^:�=�h��=P\
@�,x,�k��ۥ��4��%�IH�)n�w�Ş�OQ
�h���d�c�k����ϰZ�1�k\6��#lv������-�!Ă��k��[V�G�����̮ꍗ��-C���֖A-AU+�*�s����XK�Z�{=R��V��K����A/�(�E��njmI��v����t��2e���-.��v.~��*�#bxE���򧪐��@�����j�ce����mC�/-��<��/LQA"�P��K��N��K�� !��fo��Sս��BH%�(B��f8$���	���[;�J�V����m~-scQ<Q�X���M�$\�c������/%�����ޫ�����yg��""E�@����	F+-z(=XB%��<��+=�'��C)��Z�� �Pl N�����A����R0�BC���B:8]lЂ��}Z#��DP�J���E��9s_�sqf�u�ڵ2�}��"�sjC��(]7�ud��i�>�������C�ҟ�E���!��p��#����d'_� ૴�F-�X6�3�I��`�e�`;�;��GZ�(ֽ'��U�+	N�V�1
e�y���ɫ�o�O���3�5�)�R,X�A���x`�,94. )��8�?�q7�����Q�!��m��� Y�q��Kn�/e8�Y�@j���5	-��ߋ�-C�	2]�@�͜?ʻ�N�^+���4��&��L�<��Ae�a��`��Bw^x��o����U�VcY�Q�k|@�73���1���?D,��;��|hq�k-� ��@�����ɟ>��3S��"I�C�	��� x���W����`��~�D���2�����rf���i�a�������Yr��q�:�dw銂ϔ����\��+��G0?9g�A��g��>G�؁�lo"J��������<�;1���<��K��c�_
\/�P(�l�0�7K]�x�u���n�{є�K���a�Ư��`�}��<!�F�H�%K���) �kue��L�fr�PH�s�+O�H���
��̲HÏ���/�V;}�1I"^��W̢��`>e��ɖ'��$|�����[�,Ө��5ɸ��72"&(���!�~�F#�|��G�o��
r�^2�����ɋB�d3�J��W���v/onw�")e�Gk(�v�	�E����%m��L�#���5j �:��F��	(�8΀��,\�ſ�<��f�*6�;R�zN�`�X�ڢ|}��C��YR�Y�UՍ�v<_��͏"5Z�^`�N0/�`zg.3�ݡ    �����ps� 
J�����[,"�0��<V!��ao�V�����2
?>y�6�cL.5��e���M#�@�1�jB _�I�������-}F@���Sc{;�N�b�]�]0�5T�<�2i=Ks��1'�l��}eԘj[��������ã����iV��Ҙ�V�v�ui����WE��G���g!!��P��}���x��lV�i���އڼ �6�se�j�G�E�,�Nψ���F�0�8�߿â��<���^+G�F��⋇��{��))�|���v4�afv;j�����Vӿ'�����^�	)�;��j�r5x��7[Cg�� �e�d$��^QWYҧ��U�p�y����8����^��-x�<�(�L�4����h)�"��\�UI�Ѝ�s|&�;��ck#���,�E����Dv�js�|`	^��U}Y��5Cպ�K֟l��
��${Ӏi�M��F��V#(!���P�b��`�D��+u#,��ޏj3K�m<H(����%
��.�r�Z����|u>p7U����ͬ�W)�X��� sH��s{�S��W�k�w׌$J��=6)�̝FDN��3/kN���K��C�(w�"H{F��VE�YR_�]�s���KǵuFѵ�,�۹7��c���̑�n���	Y���3���Ґ�k��F>[����D)�ѥ���~H�,j�\Z�{��c3�hU ����J�:�l�'��a[�.��Csʐ�C�4�v	\<W.yAD)|����  <mNOB;�� '���d]?3�f:Pax��`l��{Z�w�Roŉ�l�[z}T� ՑQ�A�m����.u=5�*wQ|���j�F�t�'$Y�ɘ���r�sp83��!u������c"�P��&��֫!t��%ޗ�	i�?�&�Z��ͼf��ڄQ�i��\7�߭��P�?��j�gѰ�э�Q> m��BdܜRB�Y��8(���#&��:����3J-�0��7hz��� 
MC;mZ�9��UbbN}W]�壟6C��L�(2-��s��Ԋ����X�+��6f� �9�=�3h8��`��3�}9��SEbb{�f>Wp��h\l��Eka�>iB�Zs�<��Ý����f�)�#SB���
"��]߯1qz+&�7�W���c\N'��U��u�(�MCR�67)���X A�ù�-��L<��بS���6�`J	�/�e��A��FU�M+���ꕳU*<�Ռ/T9��������(\]��qN�`Sr.|��-���fρꬵ��1��V�����Q���r�������7�oa�~c1��ßa���g"b�_4/5NՂ�#[�Ȃh����VQ��ۣ�3�B;�=��0̹�L:��.�Ms���_֬��:���k��(�K:U%?� �nnPm,��!�7R*�z�<�͡P!tسg�rT���L �*<(69�8�չg $*�{��E�'�RW^>Bo��<,:2���_��d8g#5�S3[�[�y�2�^5�8i#�@�X��=퇏ǭ��9}���*� or+�x�}��T\���f����?��\���o�[#�ux�cnK�W#k.�9���s\.e:-R�����K!�'ȱ���t���-eA�C�u��ם
#�㼼��?O�0ϙ�U��M\YJ�
[����PV��m�g"��}�l�c�zN���K��_�����°��w#<Z����Cd�w$�@��k4����(�IJ\�5�.*7{[�Y��H�90yw�~ 4̌s��IE	H�VX屜5������Tq�Й���w�����<��1f	����wkI��[�ǽV�v�
��F����&I�	I�sFм�uT�]BU��&w��g�G�������i�	:&�
\r uan��\Rƫ4��/�<�W7�կ��������`,��A�����g){3��RVl[�f�S�@ɽ�JҼ�k�>3�P�P@�s�[q\.md�z��l��׏Z=2��#�P�fa<��K�p���uN�t�/ͪ{
�QSG�#9�R����Tn�W�}�jO�������teeC����x����:Nb���_��g��PE�ec�K����*�D��h|�%���C���w�d��G�6�Ը�lk\#�#A��3vM(���g?N{L��m�e�v/nU��"9e���.{C%�k5I��]s���� �6�^WQ}����o�X��/���u`��;�E��8���'�j<<�[�%-��)����qx�w��ĕ�1"ַ<��R*/L�bV��
lV�?{��}1B�S�Y�l��|����	ar=�G��(�2���7Df�Ofʛ��p��ȕzUˢ"0d
=_I�j��iu�ꕃ!��zA5�O����u��=���QI�]� z78i��~�|������u��{�P�XZ�Z������.Fp�a=��s9=�)�>ޡ�;��A?吅x)x
01�@3&۵����L���k�p3���bz���ނ ��
��MK����M���S�D�N�h��ʈ���*�������A�w�ع:��;����SzT�!b���g��8a�_��Bs �b�`��^k�����FX>�9�\����WȰ�3�X>;�"}(��VF�R��a{Qz�n߻'ϊ�����c��:/V�R[;�t7V������f�L(
#m,��$w@���|y����5����c�D�"�ݎy{�q	"�����3+�KW�i�z���8��6ߔI�cnh1.�$e��h���q�~o��L�ϡ�<��vR��6����C�AB#p�	���a"�dW�S�P8���p���K�DW�4��.@�^=;w�����;�V˼ȉ}_�A!��J�����}@@a���b��^=�V�� ]�=5$A��B�@,�	�e7�������4#]CMe�Z�g?V��n�d
�e��z�E�x��I��Nvv�����x��D	� �3����S�4�_�����pz�z��S��E�0�g3�Wf���-�Ղ?�ѣ��{�4��p�a�Ӗ�n�|?Gb��}C��؊b^e�05�mi��,k��rA�V�݀)���v��`k�YV� ��0�q
�ݘ�N�7���i��D��בm5:_L�N-��4�L�bE��L���;?p����,S��.I�q;�m�x&\C�aE��D�!�X��g^���Y�
0>XkW
���DT�P'�`Á�G���pm�Dm�*jUA����g3�������1�ng�_�ۚ�8�S���8
�e[�k��^_�{�2`B��"��]��⽓�����8X�R�Zj���ژ�7���h�i{�}/_��F��ޅ ���ƝHĿ5��#^�b�e|�2Vfo��ἓ��7�=m�'
�[QDՀĤ���n�#��N�źwo��>#��(�[&ɐz��n�l����ɿ�u�-(u��i��ɾ�ds����r�/KÃD?��<h�tRn?��u�K�8����<���eL~~����s5��K��=kt�@<]����7��SG�.D��45d�K\�y5�6A��cX��j�:+"5ǱK�S�ׇ
>�p�f�D�x\>m}L�I>����BU1�0��:N���)���۵ιV	ј���y�>v��U1%����x����Z�+�{G���ȊR*��b��5��z���K�q,�3ŝ��m����h��?�PFp<��,FfX$f�xo<�[�hN;�&�m*@U6�Ӽ���{��@X��u?P�v<#�%	"�U]5
��@�;f>H1o楌c��7 7���LQ�s��D���'q�d3��r4]!ϣ*�
�,b�f���hG1�f��#|�W�V��
��7Y��̽x�	e��.)q^&hs�kP�6,���qP?�ʸq�eoz`#ي��R]�'Z���31��0�E���N�W3|u�5ZgZ�p�}^b�]��Z<�����)$�$���QhV�?��3�X�%*6�&<%��t�}\P�e����cX:`��ᑲm��Gh�����Y��|    /�ؖ��AS�Ɇ��՜�� �����f��`�X�?���%!�.��$��X�p��(���b�ב��N��N�)$2��k�����R���˖��/+��<�o["�ex��G�+�x@���b�όV�������_��04���s].#�����&ٮ��7cc�y�
-W�t� ����h4��B]���D� �W'�GH�@Ah�9�v兲��ס����f��R��/��r�3|���αBv�ف��4S��ִO{��\�%t\���F?I^�۹Y��F��g�[	�l-�`��~6�fE�4�غkl]��SW�buH�;�w.����[�[s�x������|�n�!�|���E�<�$Iør\��:�k�gu�L{�mQ?�	ٙ�`;b�.��Ƒ�K_nf�gB���g�j���t:��S}�@�,�	��d�3�����V�$ ���<T���Oxa(�?����ڽߍ4�1[��	��A�Ү�D>'^�Ä�d�?�<D/W�>����`����8�+�����.���>ƷH�Qp&�
�A��G���k���K�۷ñO_�H�H��V�t6�D$^�&��g��S�<���Kh85)��o�=aX���Q[�A�<�}<Q_L�Ef�i6bb{��w��r�������@���L�gu��e�}853��0�e���C4-�@�F�G����R��j Ne�i�-q��E��}dHH/�s���&�=XfU�r�'	x7�qmch��P����!8Gw���8{:m���s$�#׉��#��lv]��%o$�K�e��棙cR���h����x�Q9�1)�oO�N��E~�]�|�dS�MOMd�#r�mj�H�l���G
����Ok�g���ϟ)@n�����:�(���;Q>�t�����WzF���:l@�e��Bv$��Gy����&��9�jX.-�)�F�[��/$�K��A�e��V�6�l�3fi�I~����`kW��K�_�4��y���B�͊"X�d�i���ғ+��Ơ�U�S�R��0f�2�J����/�Ob+�8��ZBn�K�x�[�>S@GJ^�����a�h���I���~W��1:�K��9 Bhխ��#5� �"��5�)�J��$r/��>��� 	�@�6��U����e}�h�@��`C��*��,�2��b�HY��vɆ�Ԕ؊�(5��[�;�VG���ϙ+������m�Bw��4�������*�uzN�Y��
�-^����y��2�G��'���|z�yF�G�0y��
T�|	\0̆8W"ٲ0p2�-c���#�����Y�}�:|���ex�M	�:�oZ�{��esiЁ��7����l`0�EF���iH�49�
�ʊ�f�d.�����=9����r�i�f)�y���o�^�e	�"��7;Y��5�30�Y��Pi�d�ޫ�(=��,�F�tH�5Sȶ}_���j�K�O$q��'J>j��f���p՝�/���nc��ɘ%����Shز~���0^JR�%�������}8]��2h� 6�Q�1�� ��V�C�:���O��[ifǃ)sR7��ô�b�5���嚫�s��v����w��?��݅y���c�a����X�l4'�B�HRK�p��,��'�Z1,y!��U'�yR/�cZ�Ź��d�����=U�7�-�Q4.��F{i<�*�5��ٺ�&z���&�+����[����R�pb�R��kC�_#i�4Q}�$Y/s5Z_7gC�M��⟀t�aH��r��UGi�(S.�"�G��R��|��"��n�y���m�rD�Ln& ��61��P+t�޶s@h�A����B��I.�/ �&��y���;�*M�u���m����������w�*�*%�c^��w��/�:��|X%r<�N �Q�Sgf��1��Z�c�5�]�+,�M��BNR���ρ��N�YA\5POx�ʏ�R���,�mQٲbٯ�C(�e$gҝUS�	b�������@����}!:��$-"�A C����7 �$��=���//͔z�H#1G�� Ȁ��|f#Q��+e|���h h�*��p��6e�)�����uԯ!g�l�V/l���9�O�l�eECDb�'%)�������2+(3M�G 5c2�$�w�q��|�G�F���M�P�q4���G�D �0x�!{��.cNפ+j�4pv+C�_�
�kT����4>�HCQ���?<�owDဍi�n��|m�Du�*�����()�P��p���� ��Q�wg�2��������|Q�q��,Q3_#��XN����u�du���i���J84}������P!�\]NW��p�N�����)�L�������G��យY�b�ɚؠ'[ӟe0��ȡ#���I�2�/BL@�zݯX��]��{J�r���>����gֺ�!�)2�Nܛ���T�I2Mg�\���4��X�T���4�3
Z�+h$����S�~�4�z�t,�(qt���¤�A�W(�$��LG�?��LRNP�ճ�M|�jX}�?�DJŗ:'��-l��C�r0R���G��]$�{�JBE���#P�s�ܶ:��T:u=�V%M���R~@d^�y����$�5��*���Þ��"(m%nJ�[��?��A|�צk�oKv����RF�!���J孻����a�]�I�ܐWj�[F�5�'ô��[��Z&S�}�(K�蘵M8�5)��#߾d��w:��\(J8����P��(J딳�u����Eh���ab�V�]�S�<9{����"{jA1:^���0}<���?�+t6+0����q�H��p�K)SƧ^�p̳�˃v���{i�c�==�W3��)��]:�g$b�$�/h��|r�k��La�BO8̊�QthuK� �ˤ�Y]�������Bw}}�_w��ւ�4��y&j��V��	��f�Ԩ(U��.���^�Z>��t�v��d��K��u��$?]��$�+�e�gi���|���-+=�f'L> �IV�]�����fx̱�Y|a�D/�2���P�x��H���[��n��up-��e�"�$\h|�o�����͉�rp�2r%���7�^�u��݈.�� �����a�#�1n�*������k�V �t�i�B>�O�2͏�4@��C�"~ik��?�J3JA�܈��0/������I�!��{�'s���x-�sG�V�垹��Hx��$?U��/M� ��g#�@d�t8�"ml��s�H< ���R�Day�U�t0ͣ<죰r���7�\N/�Cg:���Wa�`��n/ҙ��J$�'=��R��]t�u�U~�Y��ӫ�dx$��-S�G�����FOT���nMy��8��Af:�P�	2�h�l̢���,��} Z$���$[�<�7������͞��*���G�0z�%��pV[���!�7�@��c�p��19�̘��bmA�.���Hמ@i�_ }8'<n���t�����K�_(���O��\����)}��V�w.�B��D�g\{��gi���hh���b��#�wk���Ea��� ����wV���G���,m�>i�֎ߏ.��|����*R�Œ4���-Q��']��c��)�D�W�}�BpEAF%'��RH䭫�l��,����&&�j!����%���ۗ�����`�!��[�A2ҙ��Xggx�U�^F���#\�jA��0Ц�掉�gd�|9��Ud�9�U�1��������EŠ��h]���80��\]�@������Z��O#.I�և'~1m�)�Z�/N��'l2q�tqxhC٥�LN٦c��"����w�t/��#s�ަ�^�_
y�	z�ÚSLkn��f�Ȑ+樦d�l�q<j��z	�7��MIT�Nº��%�F����8��3����� ИSV����0��ȉzS��++m|��~�tc�g3�Q�G<�VcO���P��h����^�#�2y�XW�H ��]ӷQ&X�#�p���{�3#���H���    �QI�����2��zw|~��p)�$�ph�ںY�W����U ��F�@@y�Xt�>�zu�
��T�
a'غ�X jw���ƃ��u��+]�;�݌�$�<�F�|�Zm�T�"��.�#F�Z��>S�9�-�i�%2L� x
�;��͍-��p0�4z�E�����|��G�	Z�G�7�E�~)��t:f+M��9�g"�O�sB3K�E 3�s���9]��4�0��R����	������1(�\=\�ׇ�v�b�j
�P{��̌}��N�a5 �DF�̥+
��})V*lU��EG�PpP�������s�o�P��=.���~�W�y�tLN��9o�P���5 n%��m�,��(G�O�����1kLd_h_l�YmFA��o[�N_ǈ��_x���4w��֜6T�N��E��^��j>@���ϰ"� �'�쌸c����=�-ˏ:a܎"��hC ����x0�g,
���.������8>]7%�ٓ�{mhqzAV&���Dd���͆g���OV��난1f]@o�'ga`���.����i�Z}���Y��&�Q	ch��4��G7��=PڠWO��'��|����,��6_�Rs�s��"��?�pQ�Fw����20�,�I��1���Y�~�U|��͸���+g�y���q)pg��
�{�<6��P��Q�ܒy�T�h<��	�^/vP��S#Z/2�Zpu�
����D�ϋ�<^�h���,�G/��6�k���N�/�|0�
<�������يTOv�<��:�y���Y"��3(��W��Zd(��h�P�xs�J��`&J(#� HM��o/�]�T���Q!5��13�;f���v)����:^�䙈������6�:A�
9-SNk3��Jd�]�\Ha�.�+
�d�e�H���,@]��֕;���#C�"K���m�!�
a�_P��R�p�Z������GgA��	�}��{�|-PWN���t=�ґ�ۤ/�sϟ[��1t~c�_xh@Iq�,j�Q4~#��+. X�B�X�4���:&��"jE׃AJq�+!|Vk��	E$d��Px@G��m����'���/�q��L�D� �x\U6���&��T��� ���X_�+�������N�s�%�* C��9�
H��Lp�z�0�H�`H/�#\ς3qC�{���=RCM]!�5!�	-���t��r/�I��m���A}?+K��g4�
�������.��ցu[pE�����*�ק)Oɫ�u�U�S�͍|�����Μ}�H�����ۓ:~�]���
!b;��^��W1�T�E|1l�ca$QG��S�L���s?, �<��[��$�;?�U��@#| �̗���6$U���St݊�����L\m7V�o0�o�Rac,�?����?G)�	�1Hlb%X������m���GA�&I�W���;��o�Չ�� �u����-ad%"�0:U��Y �`�@9�":��WSj�����
�׈�鬔Ь����2GӸj.�d!kv��[�&3	��;���ݼ�-�O\wG�Ɓho%�x�ٗ(J>��M�9�o�I�x\H��|E���5��,��j+�\��T�@�f*�GӁ�B�u����ђ>�{�,'I�h,��H��I�
�Fv�v��O}o����(3m���>k6QЙ/#>��`ү��:/���T�������n0<�`B��8p��y�r�܈��r��+�jL��|�"��M�tE��Qâ���wЍ�#�0�u�1�z����#����E��q=;�R�7£��	¹�Z �W.ɲ
2�����T��uE|�M;%X�l	����+���`gǛH��i���t�:3��K���i�{�6Ή�����v7���������
$P���iV�� ��ȄVF�����$���I�������֋Ʉ4b"��7L����8�K{꺍]>. s鰳�[>#�pfȯɢힽ����Nuh�u��m�E�iUs�}�8��"���f�n�y6d�;X;Gr����ف�X���?��'��Ovh�7}���4Vi��ܺd�2e��zl�d���+k�޷F�~_� �B/�׍�xA}문�%�P�7&��J�����Y��=:�.n���JV�j�D�w_�I&$��t����"8�$�#O�.\G0�e�i:��ѓgQ�W��_l�M?.t;iF�0�*���5ȕY󜌊�?� Bawi}�!�����(3��4�U�4�h�e�_���2x�%�.��,5{0�Cnۤ��}�중��mK<dy �\ ef�zo�n��@<���_���qu�G��')MG�>E�W*5��qkc��tK��x>Q���X�nE+D�� �^�ʇ)�߄ސg�C��W�+���`���c.L����J�ȡe)͞og���_QX�Q��f�~�8���B�����Kbf ���N�KO��*��ƹ*ex��Kя��_+��<�ϰwٟ�߳�{f���D�'��[��\��S�\d���O���c<�L�_��9@A�N5�h�#Xl:���,x�܄�z O�-�A��*��;rs��=��;�#��0�$��}�)��mJ~��O\L�����š��ƒD��Q�����T�^�B ��Y<P��C.A�����(!�X;�\��I�.a*��i�^��eQ�a��	k}=!h��օkL@f� ����&9�|]�x�i��e:`�G���� ����T�6�_��(2?,��8� \��I+�1!?��{;,P��X�� �"���@]�r~�G�F���r�t��X�����t���Ϩ
)^�a|YR�D<t���9�#��B!����7Kl{�4�J�'���A#B@;N�<p؞w�[�>�^���t��ŧ�v��Q3e��e�"vT^���@[3��'3��4�QM�Ah��V�/q�ae���OD��ʣp����?��4\�z5H��o3=��>�W����Π驪&h��J�s�&�v���%x�/ �T^j'M�!=��9�x����J�f�TW����T�����Ү�.+�ZH���
u��Lߗ`{�'w�%+�e��bE�v�����䢓Դ��-S���W�g)�Ǹ&��M��~	~���bZfl�h�ʂ�',?��&o���Bt�
1���~�Ke�=���6�ͧ���+y�x��\��¤�Law�Es���?��@�5!G]@g	��%r�Rl�� ]m�iJx�$3�d�o̢@#A`<��S�H���7�<�l�����7�Iha��J���
�g_,+��˶R�
���\]�ۋX��	���zz�A<u,qn�C��"V4�#�i9���{N��v ſ�F��[x&��Z�.D������xa�`�0H��<��!XRQ&�3�d6�Պ*����?{�OK_��uX&�4Z9+���ʔ�e��0�?J�-��OU�u��IĀ����r�M�ݏ6£w����W��:�	OR拸|�u5F����B�~��2;�䷓ٯh�:]�����8L$�� �������@�_���������>�z���k�������+-�ƇGF�ApS�ʄA�O-8RrX�������^���@�U�w���ձ7��� �G�7��z�/��yCCϫ��\�)��21�o&:�+L�Ӫ�#��|�p	ܿ���6�~�]��|�`��ZjK�OѠ�XYT]�����L�X-�1�{�S��9N����=L�pO����5Jto�"�j��zy(��ۜL�����.��
N����&n�D�@'$��������
���k������D�F�X�Q�q�*ZS�ֺ�"f\�RY���2Fw���V���н)eu�6(o��k�Z�!�C��׮iu͉E&	���K�Z�s_����������UͯΨ] 5S��j�S����!Ƅ  �A��OB�۝�8���d�� �pH� ��Y�8$����`��U�3V q�G���Yz��zXA�~�|�Pu '��T��c�� ����>�zSt�yİJ/�8h�EKS��يt��G�I�_��    �Pd&O�x;m��e�ĸ���S}#Ԣi�� �	��Gv�9�R$�Q"c����)��Jy��	�D(X���� ���V~g�&�_�6��Y�h+�����2u�<�0;�L�vu\�긆]o�]��u�7��yΝ�YL�i�y�K+i	o���<�è�9�u�����r5����1��^l +���%ĺ�$@U�h�ud�1��6�&-|��&Sm�O���J5G���C�mA.���0�$�@/�W�6_a�}��z�SK#�C�h������4�n����
\�?2�x�uY��Ȃ���v�H��g�KaD)K
ZzN[T0/2Ml��b&Ć�Q�,OI��%�	�~��{��_����%��acv��c�<e_xB+�5��l�g���|����V�*z���sK�]Ċ~k+Ɖ��C��h��6���dJ��.�5���$�NӱV�b���U�T>n�C"7�X�0����'������8�*JӶk��X�wQ��W��nE�b.����*��k�˸��|��^l���qu}�	rq`J���OQ ��w���0Ҳ�/�e��=�|���5z\>j%H��/�3��QQ�w�l�9.b��.�tT�WG��H�Y��Ux�ez-A���U7v
4zlR�e"0��I��P�c��)=���2�p�O��%%K����q�l�"%���H����/�C,��qÄ��kv�@���f�V�������M�Hs�kiu�L�<*C�Yh}-1�T�{0�.a���sё~H�Z�����.(����v҆�S�t"Gw���X|����{�c�ߟqlmk�3�A9�SG�vZ����^/ԁ�k�U�ЈL�q%�r)��z�(��ƟN*��Z�ˡ��Kv��}�<��l��.�%g����e_6�/7�6�� ��K½� 7�d�܁��6�j�~w˻=��܎��^ӯ�+Y�&[��HqA�c&�k\�7�'��N�ގ��^X|��X�6 )��ܓ�q�56�͆7�� ͟�K�݆�e�. ���
�T8����X4�dêNw7*$/Y��`(��JهT}ɷ%�=�#�틡��Ca?�̄�D�~A�q��:�"#$r W�k*�������elԀ_�[�X���� �F�UA��@�7%V��+xVP$���80�K�HaN����$ѹZJ41�<�o�'�;�ˋ�hVJ��+�Ň',�Q�L���<�+xQ��Q�b���ȸZm렣���O�vڅ��$_�k��t��-����)H��I���h�	�vjѹ��t����|
h�ҹ�Ĭy6�x;��y�a �ۖ���E����]),Ʊ����.��`���ٔ;�*_����\��_�v���W�f�W�ic��H��#t��)����q�5�!�Ab�ܤ�i�u�P�rI�{�t�<w�glm<��գ���X����/�:�<XCh_��R���-��*2�vbJk��mJ�:���2��d-5U�oW���`�"%���Bn�ȑ?jdEn�g���/NDTZ=ձ�\�&���(]�߶�>��،m��HR�M[�K�~hA�m�i��LIF$+.�������寑�#�0ow8޶�c�@)?��nLmf����7�٢f<|<u�$Xe�ћ^K�`��y���1�C:Ӏ��("�/�͕�$*�Z�R�Kzx�X�[D[���3��QVp�-j��|Ǫ���g1{�)�$63���R����{����3fo�:\��=O8�z����<S3�W�mB�$��+�оM�lN�<R��P��L��M먎�x*�ɣny�1�&/y�{�L�����m)�lIm�8e�#(�禋<{�Ib���x�Xf�n�z�5����D��
dRx@aI��	�C�𷲧\�����Mʝ���B�ÙA� �.�KS�O:�;r)��A^ ��[$X*�r��N����9Ǔ�Ej;�}\9an �8ϵ��4|?E�y���N��1�(�Q��ݯ8��-��VQ�2dJB���M�}dVz��!V��䑝�=IH�m�;܍o�v`���V�*HT+]y�	�O."2�7ڮ�(UH��KyLBA&�j������pYƓq*u���_m��K�yψ�c��GB=�7�� 90��A���?�c=��!r
}�*�2�i�����%��R�t��Y�;H|t��l\	�V�޸q�W۱�6H��us�n2ҿ�		R����_�|&��Q��e4&��iz�_4+s�L��s��Q����\�����"h��z�ü�f�o�9B4��1��_#�wD�A�:�G�W�����|V���!r�?�խ>���W�Α�	HX�4�*���r:Voj}����i�}Q�z:Rw^��ل�X�J/Ux��HXL��E�5�;��y�����*�Ba��3�:�� ����C/��D'	S_n��i-)�;�2[���if0�x^��#��&��tw���R����*��BD�H���<V�,!�@d���V�T9�0�P����(Ss������v�*�K��`��.�|�kc�&����nM�����;ɑ9�ȓ4w��I�_+E�JbE�!�o�#�����[�
��fe�����m�1igt8˒�7|}&�Y��v��Rt��*X����% ̧�����{t���<#Ĥ�J&�D|� ���#"4�!�O��UW��˱<%XÐ�7˃R�B	�����]��� syїHҭ�����^�fG_���?�� �ك;�a�A�l�ܮ�sҗ�u��
����b�&��@�>=ǅ�X��¦��"�l��/�t�g�Pj��l�"bc�(��흵�T���O���.��V�����1u.�M���q<DEl��� QQh� r��w�A]���8������<U���,������AzvYA�z�3 �a� 9b����/%��c�&1;7ڭ����')jQy0,��Uﷶ�`M��n��W�ٹљ��ONhy�� 8�OhЃ���Fr��p���=i�i�,.]���]�kf��N��Q�W;���SRls�*yq��H{n����|�ǉ�D�XI��(�%z� �y�����+�=���MO�t�1g>�?��NG�`�i�R�Jˑ!X(B�ǢZd�3�w�EAw�GԿaB^_�o&䁧qd�Q2&kdP9�uB�����zl�_�uz��Տ�`�^�r�,c�����R�} ���4�#��ޜ��4�=��Ors�E�Y��!]CWȗg��Jx�)�$kD�=`7��Ntou��8D�O��ٓ�H|̭e���Ot)�T+�����/���rSͱ�E:t+���	���1������}M�M�sh���@չ��\9��7	��]�R�7є0b2�gA�yǍ��K� �A�=K� �Q�� ̚�^�� �K��t?/�����a�3}g���D]�,J^*��&�*�!`��_���w��8v�M��m.��^��ǘ��>����B;����
/����9~��X{�F���Z� ]{�<WFI���T�6KHG��(�{�m1�����?��q����1��P����?
fr,�)�R/X�uR���k�5RS�8�)O�q��Gu�K=�j�m��L�z��K&@� �ǬT�,u��J���c$WoF��Rg�懀/,����O�(dL=����:�J�ځDV��OK�9�Pz�U��G�-��o��n�\凣��O���B�i��z���)�ͨE�U:�Y^�b��#�d���:v*��ߨ��(	�g�3�KGH�w��)���ޠ���
d��+^P4��V�O�$PJuOֺ�'h�NX��uQ��a������3��"~����#��J�٪/4&NK^O�2\,Sg�U���,*'5��8~r�~h�I�%}Uh�^�j�D�5���?.ȣv�E���`D��ɴ�F�A�F�O��[��y1U� �"��3譅cU!5�
uM�k��}f���&�Դ��Z(c��w)�9�~��db!��)��;��D�{wE ��Ȭ]:��A��R2����:����hm>�QB�;X��n��V8M!bV1�j�=��z�k�=v��_��4N�# ,  ���-�n��������(9�D͂�����u:��z���h@m<Ez� ��}K��U��sS~&p�2և���(�ɨ��`�'S����hC�>-�y?�G��4��O��Ɋ����Z��B�>m�t�*��o�,!�QJ��h�JV�A ��܏p��}3B磄R{He�Fc>JE|���΅Wf!��GV�Ք�"�H2/�]���� zbeo25���z��l���Z������v�V�&���a�@��~��>��� 3]�8@-�f��)�ع4�)�����F�k�>mTb�y<�˝M=�ۖ{I�e \P��Rw[��k�)��7�*E���(�##\��œl{+-s����0�N�.��E�dՌ����n�3v���>A֪�X�q�)�O6A�i%4�U��Xe[I#P��6a�d�D����.�oS�6�k
�^�b�Ж�j�a��o?O�,������ 5N�Q���\��قN�i'�WU�sR��¬XWe�D<��'H��Ic� ��+Ρg<���H�.�/��B��W���T���#�������9����έ�(�\�<�'�=��$�K���6bcC�'v��`ȍTz��}��W��ֿ/A��mJћ��v�ӥ^���-F��2ҹ g�0�Q�*�Y+�&;�2i�����s�Yi$�ڍ۝�k�P��J��ʷ����)����p�V�Aȩ��ܝ��!~H��H�%?��՝�[
v�K�8~���"�T�3J�Y|�2��z�����k�Jә[Z�ֶ] >H�%z�Lr4j�}� �H��-|� JmMV�q�vk%Ȁ��2���n(����rC�*�<��FqbW0���p=p6,xx:��j
���˥!��3-� ׃ ��P��q[L�9#X�����%"�.��S@�XT�%��!
��#͛�j,4^yHΡ�SVs���a��i��뿺#��7�X�É��+��d�IȨ�r�[f��L� @���.qG�>X�t�=�j2ڪ1|!�ԅP���[ft �-�ų�to�,���y� 9qd@܈(#�Z��x��i_}�Ý5�U3¼���Hq��^2M,�RP�|�.Sy�0M&���z��V���7k�à�G
28�a�$L��ꕌ��)�����o:�����#~1�Rf|UCi����i���� 4W�H]r�;�� �� �r�)¼X����>?�����`�B*�(2�C�)�:�S�9h��J��3ɼ}Q��S����d��B�#w�Z���.����n-���8�t��uB���V�'��l�(��a��yw��龢��7�R�()�; �h����tQjn���m��QF�d�YZ��h�@ﴤ���EiK=�o/U�3����n��DI������c�(��4d�o�qY─gGgo��~�|��2}G;�O�s:zߌ���#�{���[�hz�_!/��Cq�o�on�~S0�M1������ +��n>nw�z2k�;������)��,���Z���<��
�p:jOC�Y7*�����'cY������G�]��������A�      Y      x�}[Iw۸�]3��wY��aq<�m�����6�K�H�������- �(�[�s�U"1Tݺ50ʓ0*���+!�!��ڈiǂ(��<�����q�Qp��5k�y�)�,�Ǒ��C�y��Up�Z������8�4n�-�W����E�����#�0N�`���xG������R���'ep'V[.��/Ϭ�Z�fMU=�ꁴ�Y!O̢s���8z
	m:N�
���7����k+��c=	K��5-�J�Y�P�V�u������r+��}����F��F�?�
z^���b�:6��3��)�[�H��?^�ӎ�,8�j�|>�4�q����4�HZ�Y<�ε_�Z���D�⢈�E��d��any�}DYg^�|���0��=,/σ3މ��[-~Z?O��q	1.����u��Np�q�ZnY��}ZNb�any�4R\�َ�;�]�OH�� �����u��\^^~(�f�	6��	k��w�U$�ō��=��>���D풹o�3DXZ��P�gW!n�;,W�ɝ��・4x
��ኄʾҘ~EY�,�$���K���5#�|�×3!_mw�,rD��b�4����I�������`@��4���w���c���<��Y/&z�;N�5�$,��g5IN8k<)�$��5bK���}f �ʂ+�װ����xƿ��}�B�����"���7��	�G��#p@U��l�V�x㽽�4��SUY]��b� 3�
�� �la�.����z���D���g�U���k\�~����縻1���&��]J�r	�2�.oY�;���b�}�FR��\p��z��3�L�p�ܧ��"�@�UU�ȵ� ��|�� \�3�"�^E�1�<��Q\3������g��A\� �ͬ<X���l>Ǽ.�V$]�(�Gp�3�B��Q�*Ӵ
N7=���VKA�(���X���x��0ꦒ4r�l�n؆����ۗg�9�T�8���u��J����uG�ܳ�����.+6+��[�e�
ރ�ת���I{
�Q��F��:m�M�y�΀J�=N�z��%���~Zq����h�9�+O$fX��mq�!!�3�8}#����f����^K�����L	��W0u6!HM؉(��V�6"�h?n�V��|��ㄣ���Н�)EV�aꭨ�`!��T�E+%�_��J�-�tll�T[�Ȝe72������#E�!���<eM��a}����VU�󍭦��Pl_�����^O��ҭXo+(���S���+o�������;�2�"�s!�]�iS�2�(��3{��h�)i�7^��W�g�/=�M�5dSқ�AF������_`q·�**3��!�-�4�:���6�5-J�ChV�t�6��z��I �*�bTa2C��;�� G8 t~9<L��ʪ��s����@b��:�#*��1B�0���o� ��U��4%T�	����ހLҎM��t*�R��_��h����	5i�)L�^ A�k<�% 	���M��ƅ��gO{&�^jE�tEL�mƓ��өy�5ʲ8x�#�h�{' A����n�H�\Y	�)*�<b[
�" ��2�v�#��מHS�*��xϻ����4�ǋ�>�wf��9��޲q��4����Z�Y(`R'P�3�^"�^ֽ��2A
>-���V����S
0�V�r" ��8S�ą��=����������n'���!ʛ	I	ֻ��L:�S�zľC��%h�$����@>�.9$f
�}yk�2��6)'�io���$Fep���"G9a����=[�;(uZ��3C<�*yq2��'c氘ɥ3���*�&�;�����1�������:\��⃩��;������8��1SD�ӫ�i��ə�^	�U�xN`�z�Р���$��y��v}1�"*7���Tp�I��T9�a��Ӓuv���)+"S?�eg\�Y{,��%���$����U{��|c��-o�h#';�ُ�x�~!=��ɧq�p�o�`YfhR�h�zJ�Q��p�(�a��|�|)�bܸp
	 |k��I���x��|p��JJq%��7��a��L��$���!����}���Tg���Q&�M��l�3
�[��cj�ލFH��/�0����� pٌ.�$��!�eQF�� 邑�!/v}#�2�a�z �$%�c��Α$�sj���{'�!E;�;�*T��0�{��Y"D��������m���gp!����&�g����R��:Ea�)	7L�ƚ#9.*��h�0�B�i��օك���|n�DR�;�aPR%�e@��-��2I�'�Ӈ25����}�������C$���A�`	���s��TQ'$X�+�uR��� v��m|�1g��V�)(��ns�_^��.��r��ώ5I���m����E8ة���R/���gH�C\��� 
Z���wR���𾳵]��B���]�������)��T�|w�y�	@��Y�&�zE3��E�B�d�5���i�9�� Rr�O��S6�~h���`!��
@��j�����oq}=o�_ٵ-��UQ��]@tM��`�`=���U1�͸/T;@��C�K��#y���W�g��
��` �|��Ν��ˁ	�ż�
��s��������)&t��e-{�u3�X��Z%x���C ^8�8�D$���8!Jnd�]��l��k����:���Js�H�: �z�m�@�@B_վ#�ԶM�:m9��w����i�(��Nl�ɰc����#?.fTx�����t�ट��Xg>�*8$U������de�@���TZ�̭�
���\Z�7�|~ {'��s���,]|YL+��d�J��N�4�ul�Ck8�	�Pp�!�L1?T,��S���ee����;U���h8o�O2z$��'o��HE��O��3�<�t��,i��^���%G~@�r�d[�K��>K��/ד�Y�4�� �	.�us�D�i|��������,! �"��v�Ȱ2�=B玍؄)�zt-��������Փo�i߰�-|��32��
�;�KN�M�둆�A�2�;_�<��E�}x�[������{|���4��'�t�P�+��{T��q��pO�=��Q���_�����'�ȁN�Z�z�q*���{ie���,7�3P��	�(�Sт������n24�x�����V�D����Sc�Ĺ[�wX�_ͦ �c�S�� .��o�����~<��[D��<L)8�a��f��4���8[ ?�=���_7���տI>p͖�[�{��S�R{�5��{�"�	U���9pbXyR�Z��p�`�i~�T��%�k��6���t�N��u����2��ם��F�b�vx-f��9i5R�~Ko���e�1�)"��w�b�Z�Sm��9��~Zyv@\�Ԕ�zzo�퉰�Ɇ�]ް'a��tI9,r@��!o�^����l�;�J�蕘�_Pg���-$4^P��?ٹ���<34���'/J�D�I
^{��R�r�]�.���٪~cO\��#�)�!����7u(yp����LÝZ�����;�n#�Ͼ�q��Hġ;6���8Z���}�
M�s);�L��B��S��lM�ŋ�
¢�)��)�Q�ȷ���;,rcM7r��\��7P�vl7}9eK0h�U�ȵK�"��7>>Q�����-[w6'3��,60�[XG�8Mf�aX-�;�9���C�{��/S-%�s��P��]��@�~z_�X��I�T��y�.�K�;��4���f/*r i��'s��}*��+��Pu��2myf�t�����O5�唈��Q��"���
BC��T½xO�UΉ-��� �}!�n����~�0��nW�l��{)l��D�i����TiJ%~ʉI�uv�iN"*)��d�v��\GUٜh���c��,�S�zM
���G�%୬��F�K3%U6���\p���vi���ɩ-i������E��ܮ����zR)�#���zN�p�Y�h����x�/�,�������@�g�U���\�q
�&�G�xþ%�a�e� 	  Sg�&�p�Gk��ԥ$���?ފ	��9#�8������;�8U�*ɮƽ{�차R]1TB�1\d�Pa�J~�nPp
5&�ꞏ����@*����|�f�[��v*3g������58XE�^�(５�%j�dN��U���Fyֆě9��d�VP!��I|�ơ*��#y����-��<��!,K����n��6���8�D3�I�g�{���TT=�U�p��R�����Ӱ���|6�4x|
�&1m=�*@�����;n~�TֻQ��;
)�&fR�@� ���4T�2ɀdjw�b^5��:2���ՋM6s��p�m_MI�@.�ZZ�}�P��0�r'w8�ZV1s�ǳ�%j�V }gw�t˭�) W�^ ��L���P�雨�����Q΀u��V]���c��#���|�Y�1J0Aފ��O${n��Ά��M�c�@d= K E��-��`����l���Ε�2�����~.����C"�)@���&�p�C�zT�H2��I�F,�G�jaO�j�[S��ݏf�������F�ʏNx��M�S^�����V]sS�ǈ��8{;�yZ�^M*սB:�%���Ce�ּ�X7+�ٰr9��=K>�!�;�L��(,͜�Bs�{i�w.ܫƩ�a&"�y���8!v`�8PT���{�7�I�����zK�vr��߃�4n��э�1[��ὣ�~mT��#4D�4͌&x$����Be;�m�ZwmNq�����9�v��OsW{ȝ���(y:'�Z�;:��aH�wZ�� ��i�쁆��r��"��*�^piԢ��@�[�Jz<�ǔD�]�KM�iڝ�[u"�� �.@����t	���Dg���H% /I��I�˶��ۿ&��3#i0^}�i�g�����?�vR�F(9P�5���a�u-+��)r�+
k�oηf*���W9&�A���!��	L"�O!t�ܞeȍ�U:g�G�HL���#q&�Յ��ƭ��Ct
iTc�KRI��
Ӻ����4����Q��⎔23���/:�ǧ�������B�l�|�S�3����g��܃��F���5��?�����Rgt&�uѤ���B<-�����L��~M�<L�pL
b�g�L��<���p9��@�G���?,>�'H�Dϐ����ꜳ�������s=�V5���F�v���Jҧ\}�����v;**�0��q�drsm��qa?-?�b:��Tb3���xF�E�Ҟ���ő�@BJ��Q��݂��ϳ���y�?��%�*}{4��w8�~�@x�}�x�-�+*i�P���9��m_��HJI��H��ٝ���ds ��g�}*]��\M>'�ɸ]���M��p�$wK�f
9�s�N�hW�\���0��'��ge�{��hveh����Q�A�O~��L;��x��Ύ�sŀ�VU��<�L4{'Y8��Q���<����'�?Վ/��悷��S�ռT$�����U�q�f��8�����YxI��<P~THHU���W�8���H� Aj>�9s��ݱJ22�;�պ ��s���?%�ڠ ��f���渱D�?�r_�i�Q!+����l�l4"`׏��a���#2	W-y�����r��^:7��p6_��B���r�R�Q���.NX `�Sm�o+��A�|`{�F��>��vs�
����X�O���C��̥[��cGݦ"S�ѽÈ��Ս^#B��	�E�=�X��<چ�v�zY��̖��� sͷ0O�^��<b���ɵ`��ܱ{�V�.��L�P-n��3�=2Hk��"�w���i�΃�Ӈv޷�f�3��HU��
\>��3N�X����\I�Tj�Րu ��[lQh��B�3���^�h[yf��-5%gP�O#m .I�]S^�O.y#��l͸+b���{=U��D���d�Ϝ*���*��bJ���<�a\���!uyB��y�[G�lȖ�`;���a��&� �;W�<��E��Ja��|@��zba<�����Y%PN�:�A�BvX��X��;��,��L���QćL�X�8YV��*����"���&����y@�|[��������u�,�,��J��JO ��24��	�P��;��>�',N��3d����E�i������eW�=�H F����ji��>{�6����(�ܰ��X��dU��ǉ.z�=���L�J����~z���q�FG�=-�q��̳�r�7�ǹ�Oa�&t���?w���;%H�?��ѱ=n���i���i]��Re�	���D_�l����O�>�	<1�      `      x������ � �      ^      x������ � �      [      x��]ێdǍ|.��Zy�<ʶ�dI�%�6�/���݇���K��Sy�rZS�n�z:*3� �1�9c���a�5ɺ���g�t��m�4�KW֦G����>�1=\z����Q�ú��6��GL�_mv��\�5>����_���������j|���������_>�������v������cI��ӏḅ����|B?���~�/�3����dt	���K|x���_K|лR�5+Tc��m�K&��|t5XKM��ǯ>�J�T~�]��}>&���Cn�>��NC����-�W�����-��6z�v.�RsM����5�P����o�>�UZ��Q8�����	���w@�(��"?}��o>�tbm�K+�Mk���,���;������j -t�\�>(P�@��Q������:8>�t�N�a�0<���Z�$4e|�Kї�_��V}��Ɇ~���
Ng���pƺ7A�p=mxeT�0.����t�?u@J[g���dJ��%�/.[�������-�y���6������'�q �[�d="���yX]ڹ �d��T��|�y�Iٛ��ëg�������}�U]�I?���6T����/�������f䭄�qli��d�Sr&�_J�).���Y��~�jNș;�����>�J���ﴛ�}6� ~��^���-�1��jo	%�`�,��ґU��"Lpѕ�c�Ζ���o�;@G�::H��Tk��wnr��n�m7��&a�����G��:yWL����4D�I.f�ܝ��;9��j@�|f�N6Rq�HKV6��v'q���U�������nVB�JI�<�/6ʡ������dwg}~��ɡ�U;;[�G3[qbӄ����R�����a��-u�����*J>��/���F2F�g�	���B?���Ъ�8>H�Y`^`V?�s�M�Z�W�܋�����G��O�Ʉ뙳)�����?|w��V�|6�!��?Z'�����o��,�{��t" �Y6O�,�kT8H�>8��M��/�Ǻ��j.l��?��?��  ��=��$���� t㔖�����z�8~�8�C�)����	���_�����;'���}�y��Y�l�s|B���m�B��~B-"����C�����S��~������������ҪɣЛ�������+V;"���$��	P��/+�
&a'X{ �S|ɦ��.�WWb�������o�9 K�.�ݰ�d�g��c��.���o1�6�0�U���%���^�I���z�?��y���~�������1�\��2��Dӑ�8#�t.�e�qe��TĴ�"}O
Խs����ofc�P����ݏ�9 J�V*K?��QTx���ʁ4�I�)��KPĘ�*Q3
�Rneʓoė�ݷ'!%�ZM�jPZ �+�A��&�C΂�&!^X�� qdb
�����o_Ĝ���70�X�{׈U��Q��'lh�}:�Xڰq~g2�����*��l�vU�F�ۛ(� ���r2�o#M������7� �Us���o��>(P�@G�#nw��<�<�!b�q�uT��"��r�^%�1䈁�ު	�͏��w�U3�C���N4Z$�E_���˺���� �62��%�d[�0:1���98Bf��Hk�����o��RZ5[T$E;�O%倽"�/���O�j>	�&(X�HW�`�m+Mu��(;j�����';e>`�f�R�S1=@j�H7Į���lR��xD��<�>˦r �%9��ɇ`J�o#Y�4������{�U3KI3�X��)m���`�6�%�����"r`�tN��k�sM�"��u��G#�����8i�%�%�|��\&�� 	{�qxi#�ƀ��Bux�SAր�zI��|I�/�9���;S��Nҷ���d,��%�Vo�+��á��^J���8�	��'��,1a$*�Κj��7'�EV��u�U�!�R��;��]>���b���II���2<���1��9�U�[��%	������+�f���UC֌. �0��s�H�0�	lg�݌�Pn�ff��Es�!�T�#3�`�ȫ��� 88��j��<X��l.��%�<�Ԅ�$7{:���2�E0�yu��
�0��/Ք(n�Pz�QZOG��X�O�{�'��:����[�|��w�9��0	C�:e�--_Vd*�s�*Y�˯ÌA���Ҫ�e�ۊ�����C��M�'W(�њ�xѬ�.AxyOK����M��P,��Lv�7�nOJ%�������Q�ս
U<�|����teP_jQ+�,���0���6!'[����.�j��pw��ǦJ6�O� Ꟊ���J��i�\���Fu[�5:��PG�������W?��'�����i Æ6�+�)-��ɜ>�v:��,�Q���C�I��嗰��o��G�-ѕUPE���qX�
�@-G�w@7D�]߈J`�Ɓ1I��_m�\����Bt���9z�te�jw�-4p�zr{Ej^�i����_]h�E^�D9��H �H�bk��
I���3YuI����y��n��*����M�s�jl#�)X�����W��XR��,��4}��	ywY�gY�b������uu��ݸ�0�-]�����1�����B�zY>�٘L������.U�$�M�{�%
��;���^;�pRB�Lx����Z�}�p�C�����{��9���|j�0WdS~v�2��;�jB�,��R4��F����������B�j9� _la\i:� ~@�!�'t����s��Ki�F��6jb�A�0ڔ�_b�����v��V�e�lY]��@�,+p�P������=���A
?⅁�1�괆�z�)�g*�#d�f�����_�>Bi�֊W����B�^���)BQ�e���+�EzZTk�b�#�/
�M0�&Ch��/���@x��Us(�TT���&P�@���T�R�κ���2�����"\�!��'�RF�/�lgE���n���m�Z%�����u�Ah;r�f��əZ����|Q��7��A�Բ��y?��l�pǗ%y�x�Lڪ��"��>3��p�P,�hk�.qe^��V1KV����
�������v�2��x�_ڪ��ҡ@b��m��h�m��v����*V;q��K�ur���E�u{�D%{�V����U0]�&��;vu��|�8���}j~�:)��P�G	=�Z��#"�˙4�b�|����P��d�%v1l�'�����KJ"~��68B��q��0��� �+� ix=��&�A�y���.��J|[� -PC�٠�'h���ƽ�q5E'+���b��+��K��ˆo�o�s���
� �4�V]Xm�K�n�X�X��'r$H-4�	L��;��1�u-T�	��THi���u�W��n�V͒=ېYt��"���7��<ٶ0��F��	7�ؤ8_m�]Q{M��]L o�Bm�ų8M���]�8�:3���*^�I�Eme3(�3v�ŵFLP̫x��P�%ˤ�7 ��i�U���3&#� �+�r�GP�0��x�xGE��Z���5MsZ�^�N�I�o�
m�E@�"k�%_�<�B܁}�Hw"Dk��`T&��3�U�ޫ�]�\]z�}��n-��w��V#�V�XKgF@7r
Vi�����kb^7�C� ݞ�Y�Ba?+\�۴��Jv���MΧ�z��o��xT�T�
;�<�z|i�)?�K�R�%$uh����C��0C7�}� o�m�E��<�M�wsk'�ɞ��A>�T�w��������g��j��Ǖ�͊��,]*w0N�������o�[���)�7BpT�$�%�~��G��2��iC��L���&o$��]���ZNrbU��ܗ�L-R�H���ݔV�G����D�H��z�AƩ���m���U��j�h(�n-�uƺin𲵽�*H^��մn�+�J
�ɕ5ӻ�p���/�^���5t]uk�3��Bm�f,�@{�����W�����Wʅ�B6��C�*JAE�vҧ�    q��HV]*�yv�m������"j�"��z)O+����C�7&d�4l���(ҹ�z��Ħ���	l{��)��mubF<lk���5/�9�:�ts\�bG��zolq��n�y]��.e�}�q��!�.-+E�}&
��������3L.�7���:A L2�U��:q`8���>�kOD�꒮wOd�
n��E�c4�~���Z��Z=+���4�K�$ǐm�EȄ�iwV蠛LV͙�"�568�D�|����?��L���^��Ăʾ+C�[�� �/�����eժ[Usp��J�p�:���d@�TU	�J�u�,�8n%�.Nb~N���s����Ȳ��)g�]����[��m��=����h��7-����z����=�=���z�e�|']o.�%�yE9�����rU�ύd���X���G����������� 8P�ʪY./�{Ύ�F�8l΢9������](>8�������"� Gp�	�u�K-ޙ؃�ɊE��6h��z���&79v�&��y�2`�͒�O*EF��]�Ɩ��Q`ROٛ�;*���`�6����>|䥯c���}��2�N�D��͌�x��.i��+Ee�i
8���J�9ư�B�{��V��s�6�DXX�V�I,%@9�AZ��0�Ѣ�L�'\����&r#%H����U���V-�V]��VB˓ps6C�'!��4@�^9��<����/�N�G;�+vֿ�#���U37@m�Y�Y�Yk�BU�8!���y0aF�Y ��� 3��7j��ػV�U�^O�#��}���K 6Cݔ"�0	9�t����Q�jg�ԒEu,ik3l��[��V�[*��sʜ�+ҩ�u��s���p�����	4����Y�C�%��-!$�0�蓌�{��I�:�soy`�o?"�[pO\V=�ȤН�u�Ғ`��N�F!h'��� ���r�-�m�.	�:���Y�&���_1�2F�s�8�ÂV�V��8/��97u�f����U�h���|w��\u(Ч4�����fZ�AC<P�2mكI�i�)Zr������;�6S�V]Z<� �Eb{E��CjE
�
�w�|`�8a�*�l
�{x¹>'����M	߽�۪��<HW�I..J��S�D�K&7�x)/�\�;�\��0sێ�Dɶ}���i��jG���6ǝ����K�u�Ћ��*Z��Ζ������tТ�5�7�����:�]G�[ Dgsaҝ ����Md��	6��I��d�e��&B)s�Dwo}��ů
���\�F{�F/�C��Mc@�-C�$k"s���v3��c��	�U+Ip��Z�D́b �|9�1n��	����Y}����6y05Þ̏QJ��]�'�)�ʦB�M5xs�`�����M���Q�T}S��Pbx��/E��q Gc�ޓ���ů�K}�Atgy����bݕ	�п��������ٟk�������/��n�;�'EB�߂��n0�����$/ڟa���b]�Q�Y��B�K�;����K6u�7*]����J�;7m��۴�H����1���B�p��0���[��IE��{������ם?9�}��CnB�2D��B{1�L���B�� �Wt���R���{�'޳>���ٰ�0+Lyj��qn�
j��H�n�<fь�#�vEc2W�~H���LP�d'Vg'D�PuD�[�>ÛDa[gY\K�KDV�l.�A{��F��[Z��i�+��Ή�ȯ
"�Xp�j�.���9��&�;�hs"��[UT�ػ˘� 7����w����K���>��D~���Kщ�U��S��əx|�u>���M7/�A��m>:c�ո�퍘��7�5Q�]�Z��q5NHw�M!�-�+�y�8Ny�[��N��%���L���%9'��חɒ����(�^~/�+�I숳����ԁ�l�.�KM�^|�ӖzC��_r�N
~M(�U�����v��K�d��i�a���S�,�m<OE-G&h榨NK��-�=PT��l3��J�j"{0��SO��F�E�%Q;�v&�쁗��3��YZ��V�ֽi����I��_�u�v�I�,��C ��u��u��U[ڬH�܊�8�e4}еMJmcH�JFa�u�D�W�m�jÀ׵}V�?g���Lkz�����g������� � ژJb�l*�4�$~W�0N���:�M�Y���fs�S{��;�A�1tɋ��kK�6�:���N�~���s/�M]��'�K{���k�>[�����v��n�B�<BT���b�6�m�l�4u@�hY�Up�Tr�����a�;�㦋�C࢞�ԷV>+�\݃u8���B�:!�'=5Ő�#���<��֦#z���j;LT�#5���YkѴ�] ��v���BQM�S��Go0�I�:]��2 Z��z�Ed�W��vC�R�16��.NMETd.��Q�sd�M�Mh��hF���Ir,]�o;��x}g�v⃛�5*��0��٨v9��}i n�7z_�i�4I��!���ভ�S�^����3|�L@w٢\�y����Y���
����q�:^o�$�Қ,�b�;�^v�׊~�4�6��8�Q�M�跋
����!�Ҟ�!��G��H~�V�I�i�h�	z9��C����6�0	{�f����a�Tiiު7�%�%7/�M_&���&�Di�YN���<	Ғ5p���rc�@�lP3c!$�]9%���_%RK��):�1��<6B'���
`� �
P���t{qREv����:�qɼ_��V �A�L�Bf7`o�V���"�w�nj{�s/'�v��l�~���چ}E'������|��6]���S"ѫ�\�|<NT
:�1�U����&W
N��[1;��l�B����\#3�ezF��I��)����H[���M8�vӚ���E��Z���i
V7AM��/pP/�A��W�Pŵ9E�k��:+�IM�R�S	cNy�� @8�Q�UF%ew�V�R�
��ȕͭ��ud�d�k���B>��\��0�T�0��`��=A���e���3]�x���W�qJ�����"Ơ�X�j[�T����2��b�n��(_��|��p�jW�Ŧ`�{�;C�<Q��6QTu��'�mйO�1��7��V����(Ҫ`��j���z:	�7!y�R��A�;�&I�~�xR�X���y�N�$1���Q�"�����AW`����G�T�uW����3:�+5�F�!�:%Y��-�V��ji�MDi�pF�h|J���2���tT�<a���@�^fJ�Z"�p{[c��s��'���4��u��\P�\�������{��
�����Z�G1��ڊ�52�dlQ:����	��d]�bE�2���Y��։JCj�"�����`[*�-j�d� ��j�t���V,�Z�*3{u�h�i���$и��n�2���U��ʃX�eH��-R�����JTQg�?7Nr�i��ZU�tt�T
�+�b^��D�MBԂ�}���lieNl��\l�[������ڪ��T1��"��*�fd�M�bY��F��*����E��F �%�d�����(خ�^��p��S��(szlW�q}����£MO��tڣ�<�,y4[#�(��E��i��i���n�'��;k�&�;�f��g�����;��r����X��#��R��R��O"��	�RNk�>F�`,S�d�0����G�gv�8-�4bIs˘�<?�I�i+�;�<��D��H椕�Z��R��v;���Ϟ�Y�V����V�>�F�ƖT-��E���ǾDz�X��j��ҽhF*�L�W�yT!vr����A| �T��E��%���r}�z$���,��҇fd1��#/�����X**�#�lSz$'�! G]E��+�\֞+��ex���<�d�<WG�up�r����LT����N�)RA�Ε�b��m����� ����O=J��<�NԪ3���I<�__�q��~�?�%%����8���-+1�i�K��r����^���1R�>��-�`�x���J;���=|� �   �y�Y�{�6�t�m֠�a��IW]�@�Ѫ�<n�I�a��#��5�6"ߍ>�,ݴ���R;c���R��q7���F�Uk1�M�Zx�+�I��	Oĩx4o���z�rJ��V���\g&��OP�zP �<\��\ތ!���.	�	�� f7������/����NED�܈��DH>���'��z�<�'4tmh#p�~|�����      Z     x�mS�n�0�><O05@B{BU!A$���o�"V��V�~_ZmN�]F��>��!
&��+�5-�2E�iG��/��D('����´�h�>!�+))l�$}F��U�	���vBɊt�,�!�qn��o�	���#Vk$5�Oƃl�*��X�2N�$�h��Yw:	��s���L���V�R�b�Q�q��	O
�7U���_�2����}�˥7��	Rӎc}JT̑R��H��x�J��vc+�,=���{w�uʐ�Q��.|@)Ͽ��u=+c�֢5���e�M��5�Q��A8�F��m>*x3���#>�
�>������vT����k}��׆�G=���v�Tt�R�#B����	Fh��cs���/�?N����L(|�F�S���/��t�>��t���5G��IO�8���Ga�o䍢ڜi�H��I�tq�PJVQk��D|���e�WG��x��~�G��<o�g����Ł����p`Q���'�O��	;k��pē��o7Y��@�*�x�?��F�?G�?      _      x������ � �     