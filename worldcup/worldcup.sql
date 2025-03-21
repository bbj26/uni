PGDMP                         |            worldcup "   12.17 (Ubuntu 12.17-1.pgdg22.04+1) "   12.17 (Ubuntu 12.17-1.pgdg22.04+1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16414    worldcup    DATABASE     r   CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE worldcup;
                freecodecamp    false            �            1259    16427    games    TABLE       CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);
    DROP TABLE public.games;
       public         heap    freecodecamp    false            �            1259    16425    games_game_id_seq    SEQUENCE     �   CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.games_game_id_seq;
       public          freecodecamp    false    205            �           0    0    games_game_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;
          public          freecodecamp    false    204            �            1259    16417    teams    TABLE     e   CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.teams;
       public         heap    freecodecamp    false            �            1259    16415    teams_team_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.teams_team_id_seq;
       public          freecodecamp    false    203            �           0    0    teams_team_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;
          public          freecodecamp    false    202                       2604    16430    games game_id    DEFAULT     n   ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);
 <   ALTER TABLE public.games ALTER COLUMN game_id DROP DEFAULT;
       public          freecodecamp    false    204    205    205                       2604    16420    teams team_id    DEFAULT     n   ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);
 <   ALTER TABLE public.teams ALTER COLUMN team_id DROP DEFAULT;
       public          freecodecamp    false    203    202    203            �          0    16427    games 
   TABLE DATA           k   COPY public.games (game_id, year, round, winner_id, opponent_id, winner_goals, opponent_goals) FROM stdin;
    public          freecodecamp    false    205   �       �          0    16417    teams 
   TABLE DATA           .   COPY public.teams (team_id, name) FROM stdin;
    public          freecodecamp    false    203   )       �           0    0    games_game_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);
          public          freecodecamp    false    204            �           0    0    teams_team_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);
          public          freecodecamp    false    202                       2606    16432    games games_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);
 :   ALTER TABLE ONLY public.games DROP CONSTRAINT games_pkey;
       public            freecodecamp    false    205                       2606    16424    teams teams_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_name_key;
       public            freecodecamp    false    203                       2606    16422    teams teams_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);
 :   ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_pkey;
       public            freecodecamp    false    203                       2606    16438    games games_opponent_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);
 F   ALTER TABLE ONLY public.games DROP CONSTRAINT games_opponent_id_fkey;
       public          freecodecamp    false    203    2842    205                       2606    16433    games games_winner_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);
 D   ALTER TABLE ONLY public.games DROP CONSTRAINT games_winner_id_fkey;
       public          freecodecamp    false    2842    203    205            �     x�m�IN�@E׮SpP��R�`�%�"�a5��.���me��^\@<����3�Ĕ�[�������i��)*�!DC���zoRW!��qF#/��v��Cs�L�{���H���n6����r^���.bp`&����C���ZHcu�C�d��ɡ#��ѡ�4V�
�8Q�J�k,��^�嗛��H+��ˍe�j�p��0v5y����G�}9�\�h�*�����U9;��'�Ł�
�V�������j�G���ű�Gx�8�����!�����      �   �   x�-O�N�@]��|�������H;7��f�8���i��Aݝ��&�U*P� ���jp~��StAbG�q��͗vi����Z�d���J���0�Y�����kgƋ\$x�o��%v{�O�
�E|fx,MN�s��9n��Z/�J��A��/x$���IfG�
s�g���;�<�(�	����T�o+��O�͚$IGz ���P1     