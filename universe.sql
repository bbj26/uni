PGDMP     8                    |            universe "   12.17 (Ubuntu 12.17-1.pgdg22.04+1) "   12.17 (Ubuntu 12.17-1.pgdg22.04+1) D    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385    universe    DATABASE     r   CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE universe;
                freecodecamp    false            �            1259    16388    galaxy    TABLE     �   CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    is_expanding boolean,
    number_of_stars integer,
    distance_from_earth_in_solar_years integer,
    description text NOT NULL
);
    DROP TABLE public.galaxy;
       public         heap    freecodecamp    false            �            1259    16386    galaxy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.galaxy_id_seq;
       public          freecodecamp    false    203            �           0    0    galaxy_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;
          public          freecodecamp    false    202            �            1259    16481    galaxy_types    TABLE     �   CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(255),
    description text,
    mass numeric,
    radius numeric,
    status character varying(50) NOT NULL
);
     DROP TABLE public.galaxy_types;
       public         heap    freecodecamp    false            �            1259    16512    galaxy_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.galaxy_types_id_seq;
       public          freecodecamp    false    214            �           0    0    galaxy_types_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;
          public          freecodecamp    false    216            �            1259    16421    moon    TABLE     �   CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    description text,
    has_life boolean,
    planet_id integer NOT NULL
);
    DROP TABLE public.moon;
       public         heap    freecodecamp    false            �            1259    16419    moon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.moon_id_seq;
       public          freecodecamp    false    209            �           0    0    moon_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;
          public          freecodecamp    false    208            �            1259    16445    moon_planet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.moon_planet_id_seq;
       public          freecodecamp    false    209            �           0    0    moon_planet_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;
          public          freecodecamp    false    211            �            1259    16410    planet    TABLE     �   CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    description text,
    has_life boolean,
    star_id integer NOT NULL
);
    DROP TABLE public.planet;
       public         heap    freecodecamp    false            �            1259    16408    planet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.planet_id_seq;
       public          freecodecamp    false    207            �           0    0    planet_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;
          public          freecodecamp    false    206            �            1259    16463    planet_star_id_seq    SEQUENCE     �   CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.planet_star_id_seq;
       public          freecodecamp    false    207            �           0    0    planet_star_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;
          public          freecodecamp    false    212            �            1259    16478    planet_types    TABLE     �   CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(255),
    description text,
    mass numeric,
    radius numeric,
    status character varying(50) NOT NULL
);
     DROP TABLE public.planet_types;
       public         heap    freecodecamp    false            �            1259    16496    planet_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.planet_types_id_seq;
       public          freecodecamp    false    213            �           0    0    planet_types_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.planet_types_id_seq OWNED BY public.planet_types.planet_types_id;
          public          freecodecamp    false    215            �            1259    16399    star    TABLE     �   CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    description text,
    is_dying boolean,
    galaxy_id integer NOT NULL
);
    DROP TABLE public.star;
       public         heap    freecodecamp    false            �            1259    16430    star_galaxy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.star_galaxy_id_seq;
       public          freecodecamp    false    205            �           0    0    star_galaxy_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;
          public          freecodecamp    false    210            �            1259    16397    star_id_seq    SEQUENCE     �   CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.star_id_seq;
       public          freecodecamp    false    205            �           0    0    star_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;
          public          freecodecamp    false    204            9           2604    16391    galaxy galaxy_id    DEFAULT     m   ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);
 ?   ALTER TABLE public.galaxy ALTER COLUMN galaxy_id DROP DEFAULT;
       public          freecodecamp    false    203    202    203            A           2604    16514    galaxy_types galaxy_types_id    DEFAULT        ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_id_seq'::regclass);
 K   ALTER TABLE public.galaxy_types ALTER COLUMN galaxy_types_id DROP DEFAULT;
       public          freecodecamp    false    216    214            >           2604    16424    moon moon_id    DEFAULT     g   ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);
 ;   ALTER TABLE public.moon ALTER COLUMN moon_id DROP DEFAULT;
       public          freecodecamp    false    209    208    209            ?           2604    16447    moon planet_id    DEFAULT     p   ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);
 =   ALTER TABLE public.moon ALTER COLUMN planet_id DROP DEFAULT;
       public          freecodecamp    false    211    209            <           2604    16413    planet planet_id    DEFAULT     m   ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);
 ?   ALTER TABLE public.planet ALTER COLUMN planet_id DROP DEFAULT;
       public          freecodecamp    false    206    207    207            =           2604    16465    planet star_id    DEFAULT     p   ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);
 =   ALTER TABLE public.planet ALTER COLUMN star_id DROP DEFAULT;
       public          freecodecamp    false    212    207            @           2604    16498    planet_types planet_types_id    DEFAULT        ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_id_seq'::regclass);
 K   ALTER TABLE public.planet_types ALTER COLUMN planet_types_id DROP DEFAULT;
       public          freecodecamp    false    215    213            :           2604    16402    star star_id    DEFAULT     g   ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);
 ;   ALTER TABLE public.star ALTER COLUMN star_id DROP DEFAULT;
       public          freecodecamp    false    205    204    205            ;           2604    16432    star galaxy_id    DEFAULT     p   ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);
 =   ALTER TABLE public.star ALTER COLUMN galaxy_id DROP DEFAULT;
       public          freecodecamp    false    210    205            �          0    16388    galaxy 
   TABLE DATA           �   COPY public.galaxy (galaxy_id, name, is_expanding, number_of_stars, distance_from_earth_in_solar_years, description) FROM stdin;
    public          freecodecamp    false    203   dL       �          0    16481    galaxy_types 
   TABLE DATA           `   COPY public.galaxy_types (galaxy_types_id, name, description, mass, radius, status) FROM stdin;
    public          freecodecamp    false    214   �M       �          0    16421    moon 
   TABLE DATA           O   COPY public.moon (moon_id, name, description, has_life, planet_id) FROM stdin;
    public          freecodecamp    false    209   :N       �          0    16410    planet 
   TABLE DATA           Q   COPY public.planet (planet_id, name, description, has_life, star_id) FROM stdin;
    public          freecodecamp    false    207   wP       �          0    16478    planet_types 
   TABLE DATA           `   COPY public.planet_types (planet_types_id, name, description, mass, radius, status) FROM stdin;
    public          freecodecamp    false    213   R       �          0    16399    star 
   TABLE DATA           O   COPY public.star (star_id, name, description, is_dying, galaxy_id) FROM stdin;
    public          freecodecamp    false    205   �R       �           0    0    galaxy_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);
          public          freecodecamp    false    202            �           0    0    galaxy_types_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.galaxy_types_id_seq', 3, true);
          public          freecodecamp    false    216            �           0    0    moon_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.moon_id_seq', 45, true);
          public          freecodecamp    false    208            �           0    0    moon_planet_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);
          public          freecodecamp    false    211            �           0    0    planet_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.planet_id_seq', 25, true);
          public          freecodecamp    false    206                        0    0    planet_star_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);
          public          freecodecamp    false    212                       0    0    planet_types_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.planet_types_id_seq', 3, true);
          public          freecodecamp    false    215                       0    0    star_galaxy_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);
          public          freecodecamp    false    210                       0    0    star_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.star_id_seq', 7, true);
          public          freecodecamp    false    204            C           2606    16396    galaxy galaxy_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);
 <   ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_pkey;
       public            freecodecamp    false    203            Y           2606    16516 "   galaxy_types galaxy_types_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);
 L   ALTER TABLE ONLY public.galaxy_types DROP CONSTRAINT galaxy_types_name_key;
       public            freecodecamp    false    214            O           2606    16429    moon moon_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);
 8   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_pkey;
       public            freecodecamp    false    209            [           2606    16534    galaxy_types pk_galaxy_types_id 
   CONSTRAINT     j   ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT pk_galaxy_types_id PRIMARY KEY (galaxy_types_id);
 I   ALTER TABLE ONLY public.galaxy_types DROP CONSTRAINT pk_galaxy_types_id;
       public            freecodecamp    false    214            S           2606    16532    planet_types pk_planet_types_id 
   CONSTRAINT     j   ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT pk_planet_types_id PRIMARY KEY (planet_types_id);
 I   ALTER TABLE ONLY public.planet_types DROP CONSTRAINT pk_planet_types_id;
       public            freecodecamp    false    213            K           2606    16418    planet planet_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);
 <   ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_pkey;
       public            freecodecamp    false    207            U           2606    16500 "   planet_types planet_types_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);
 L   ALTER TABLE ONLY public.planet_types DROP CONSTRAINT planet_types_name_key;
       public            freecodecamp    false    213            G           2606    16407    star star_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);
 8   ALTER TABLE ONLY public.star DROP CONSTRAINT star_pkey;
       public            freecodecamp    false    205            E           2606    16493    galaxy uq_galaxy_name 
   CONSTRAINT     P   ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_galaxy_name UNIQUE (name);
 ?   ALTER TABLE ONLY public.galaxy DROP CONSTRAINT uq_galaxy_name;
       public            freecodecamp    false    203            Q           2606    16495    moon uq_moon_name 
   CONSTRAINT     L   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon_name UNIQUE (name);
 ;   ALTER TABLE ONLY public.moon DROP CONSTRAINT uq_moon_name;
       public            freecodecamp    false    209            M           2606    16489    planet uq_planet_name 
   CONSTRAINT     P   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_name UNIQUE (name);
 ?   ALTER TABLE ONLY public.planet DROP CONSTRAINT uq_planet_name;
       public            freecodecamp    false    207            W           2606    16528 !   planet_types uq_planet_types_name 
   CONSTRAINT     \   ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT uq_planet_types_name UNIQUE (name);
 K   ALTER TABLE ONLY public.planet_types DROP CONSTRAINT uq_planet_types_name;
       public            freecodecamp    false    213            I           2606    16491    star uq_star_name 
   CONSTRAINT     L   ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_name UNIQUE (name);
 ;   ALTER TABLE ONLY public.star DROP CONSTRAINT uq_star_name;
       public            freecodecamp    false    205            \           2606    16440    star fk_galaxy    FK CONSTRAINT     w   ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);
 8   ALTER TABLE ONLY public.star DROP CONSTRAINT fk_galaxy;
       public          freecodecamp    false    205    203    2883            ^           2606    16448    moon fk_planet    FK CONSTRAINT     w   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);
 8   ALTER TABLE ONLY public.moon DROP CONSTRAINT fk_planet;
       public          freecodecamp    false    2891    209    207            ]           2606    16466    planet fk_star    FK CONSTRAINT     q   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);
 8   ALTER TABLE ONLY public.planet DROP CONSTRAINT fk_star;
       public          freecodecamp    false    207    205    2887            �   /  x�]��N�0D���h�6i){@!��J\�l�mb�ؑ�@ӯ�iJa�ރGo��<+����`6�,��k㰴cA�����RF�m��VS<[��"���]��4�L!]d�n�09�}����P2����k�.IS\�Ep���M�]&{�A�� 䣭5�̙Y�N�iƓ5,��Z�g\�ή��������]��'��M޽��(�X��m��<�o�2��݀�⌔}g��Byv3xO.��W'�G�R,a����Mk��`X�k���٣�(�n1�Ji��A��2$ml��!~N�#ŧB���;      �   �   x�3�.�,J�QpO�I���tTH3�3K2�!��%E��%�E�z��H��L&&�d��rq���d�d&�40O!��8?3dlFb�H##͐�4��,*JM/�I,�nb^�Lj�)�a�`23j\� �)J      �   -  x��S�r�0<C_�[/I&��<��$Ӥ�4�6����,�4��f�������Ӟt�.v��Sx��%��	���7y��@gӢ<�O-�8�JT��d�1�sX�΋�n�-F�t u	��[΢��A��/Z�7�C�TZ�������,�!<��7�.���D!��t��,Z2l	Ú_��{��j�G�9���&�d"{��hqdXf.�0c�:���bb��'��Κ�_|W%����������{45�H��Ե$��/����`�c�#\��SI4�`�3���p�6�''j����Cq��ݥ��ȸ*�)��K�#u)zct�S(	�kZe4��Ӣ���@]��H�C�7f��f4��Dh�{[����楮��8NY.�����1.�w1���mɛ�ME:�
n�3��LܼM�/�]��5gr
�}�9r��l���5&��jr�[�Lm{$9�ެ�{�/�A�R���I�|���}�,{ʕv%���R��v0d��0=���'x��h
��]�l2�kq��Y��K�R���Z� �k����(~��^      �   �  x�mR�r�0>��b�0��4=2�N�d�2����b�X��r�U	y�J@hHs�g��#�c_G��yG�"�
��7;�-	+����P[�e�E9�_,1�����F�to�MB�&zSg��
G�����Ӊ=7ⶒ�B�{��ix�1pG>���dz�,j�b�<���nI����M�M��kY���H`�ʥ�vA�˰�(/aN����Q�6���3���Y�C�£�\�T�ԌkCr�H�<EF5V��g��^�0L�vv�	�6]��Ի��5r(.�J�y�l:�e��gw���QZZ�'��_﯒kJKd�QQUp˽e?��wL�B�,�Ƈ̙e\T#�n��e�>�і;ڽ���IQ�a�0�ͮ�A���`4�ܿ�A0/���k��7�_��EQ�S-�y      �   �   x�uϿ�0�����B�7:7G�K9��P�Vo/�2��r��O�c�&�gC8���6Ḟ�ԡCBo����]C�#H�<>�dI.�T�1T��4,�!��U���{냙�6ؒg�,�b�^�����I�Ʒ�����DY�HC�ZMHaN;vs�"+䟠8M�����FB�.�W�      �     x�]��n�0���S���BǮ�4M����]LgH4�T���_�Up�d�oٹ��N5� 
@IuKN(�߃�Dϩ��q��*ׅ��3/i�`�R�$�n<���,(�R��_�q�wh�G�?Ο�D��iˉ\��BV�̳���w��dX�J�;+�c��w4H��Tol)����2�)��)]�N�g]ȕ~Rͦ���m��w�����,�+}?��^��='j�}J�;
�N�.�z��Čb�>�R1��k����q�Q     