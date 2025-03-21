PGDMP     #        	            |            bikes "   12.17 (Ubuntu 12.17-1.pgdg22.04+1) "   12.17 (Ubuntu 12.17-1.pgdg22.04+1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385    bikes    DATABASE     o   CREATE DATABASE bikes WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE bikes;
                freecodecamp    false            �            1259    16386    bikes    TABLE     �   CREATE TABLE public.bikes (
    bike_id integer NOT NULL,
    type character varying(50) NOT NULL,
    size integer NOT NULL,
    available boolean DEFAULT true NOT NULL
);
    DROP TABLE public.bikes;
       public         heap    freecodecamp    false            �            1259    16390    bikes_bike_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bikes_bike_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.bikes_bike_id_seq;
       public          freecodecamp    false    202            �           0    0    bikes_bike_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.bikes_bike_id_seq OWNED BY public.bikes.bike_id;
          public          freecodecamp    false    203            �            1259    16392 	   customers    TABLE     �   CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    phone character varying(15) NOT NULL,
    name character varying(40) NOT NULL
);
    DROP TABLE public.customers;
       public         heap    freecodecamp    false            �            1259    16395    customers_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.customers_customer_id_seq;
       public          freecodecamp    false    204            �           0    0    customers_customer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;
          public          freecodecamp    false    205            �            1259    16397    rentals    TABLE     �   CREATE TABLE public.rentals (
    rental_id integer NOT NULL,
    customer_id integer NOT NULL,
    bike_id integer NOT NULL,
    date_rented date DEFAULT now() NOT NULL,
    date_returned date
);
    DROP TABLE public.rentals;
       public         heap    freecodecamp    false            �            1259    16401    rentals_rental_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rentals_rental_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.rentals_rental_id_seq;
       public          freecodecamp    false    206            �           0    0    rentals_rental_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.rentals_rental_id_seq OWNED BY public.rentals.rental_id;
          public          freecodecamp    false    207                       2604    16403    bikes bike_id    DEFAULT     n   ALTER TABLE ONLY public.bikes ALTER COLUMN bike_id SET DEFAULT nextval('public.bikes_bike_id_seq'::regclass);
 <   ALTER TABLE public.bikes ALTER COLUMN bike_id DROP DEFAULT;
       public          freecodecamp    false    203    202                       2604    16404    customers customer_id    DEFAULT     ~   ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);
 D   ALTER TABLE public.customers ALTER COLUMN customer_id DROP DEFAULT;
       public          freecodecamp    false    205    204                       2604    16405    rentals rental_id    DEFAULT     v   ALTER TABLE ONLY public.rentals ALTER COLUMN rental_id SET DEFAULT nextval('public.rentals_rental_id_seq'::regclass);
 @   ALTER TABLE public.rentals ALTER COLUMN rental_id DROP DEFAULT;
       public          freecodecamp    false    207    206            �          0    16386    bikes 
   TABLE DATA           ?   COPY public.bikes (bike_id, type, size, available) FROM stdin;
    public          freecodecamp    false    202   [       �          0    16392 	   customers 
   TABLE DATA           =   COPY public.customers (customer_id, phone, name) FROM stdin;
    public          freecodecamp    false    204   �       �          0    16397    rentals 
   TABLE DATA           ^   COPY public.rentals (rental_id, customer_id, bike_id, date_rented, date_returned) FROM stdin;
    public          freecodecamp    false    206   �       �           0    0    bikes_bike_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.bikes_bike_id_seq', 9, true);
          public          freecodecamp    false    203            �           0    0    customers_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customers_customer_id_seq', 2, true);
          public          freecodecamp    false    205            �           0    0    rentals_rental_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.rentals_rental_id_seq', 7, true);
          public          freecodecamp    false    207            !           2606    16407    bikes bikes_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.bikes
    ADD CONSTRAINT bikes_pkey PRIMARY KEY (bike_id);
 :   ALTER TABLE ONLY public.bikes DROP CONSTRAINT bikes_pkey;
       public            freecodecamp    false    202            #           2606    16409    customers customers_phone_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);
 G   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_phone_key;
       public            freecodecamp    false    204            %           2606    16411    customers customers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            freecodecamp    false    204            '           2606    16413    rentals rentals_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_pkey PRIMARY KEY (rental_id);
 >   ALTER TABLE ONLY public.rentals DROP CONSTRAINT rentals_pkey;
       public            freecodecamp    false    206            (           2606    16414    rentals rentals_bike_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_bike_id_fkey FOREIGN KEY (bike_id) REFERENCES public.bikes(bike_id);
 F   ALTER TABLE ONLY public.rentals DROP CONSTRAINT rentals_bike_id_fkey;
       public          freecodecamp    false    206    2849    202            )           2606    16419     rentals rentals_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);
 J   ALTER TABLE ONLY public.rentals DROP CONSTRAINT rentals_customer_id_fkey;
       public          freecodecamp    false    2853    206    204            �   O   x���t��42�,ᲄ0�LCN��Ҽ���<N#s ��o�#�-�|Π���ZS(����1ob��qqq  ��      �   (   x�3�455�bSN�T.#N] 6�I-.����� v��      �   G   x�uͱ@!�Zv� ����0V���$��xs$,\�4��T��\�����k	Kb+bo�F���'"  !      