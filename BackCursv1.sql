PGDMP     8                    y            curswork    14.1    14.1 '               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    curswork    DATABASE     e   CREATE DATABASE curswork WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE curswork;
                postgres    false            ?            1259    16444    Cemetery    TABLE     ?   CREATE TABLE public."Cemetery" (
    "Id" bigint NOT NULL,
    "City" character varying(50),
    "Name" character varying(50)
);
    DROP TABLE public."Cemetery";
       public         heap    postgres    false            ?            1259    16443    Cemetery_Id_seq    SEQUENCE     z   CREATE SEQUENCE public."Cemetery_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Cemetery_Id_seq";
       public          postgres    false    218                       0    0    Cemetery_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Cemetery_Id_seq" OWNED BY public."Cemetery"."Id";
          public          postgres    false    217            ?            1259    16430    Coffin    TABLE     a   CREATE TABLE public."Coffin" (
    "Id" bigint NOT NULL,
    "Material" character varying(50)
);
    DROP TABLE public."Coffin";
       public         heap    postgres    false            ?            1259    16429    Coffin_Id_seq    SEQUENCE     x   CREATE SEQUENCE public."Coffin_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Coffin_Id_seq";
       public          postgres    false    214                       0    0    Coffin_Id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Coffin_Id_seq" OWNED BY public."Coffin"."Id";
          public          postgres    false    213            ?            1259    16396    Customer    TABLE     ?   CREATE TABLE public."Customer" (
    "Id" bigint NOT NULL,
    "FirstName" character varying(50),
    "LastName" character varying(50),
    "Patronymic" character varying(50),
    "PhoneNumber" character varying(15),
    "City" character varying(50)
);
    DROP TABLE public."Customer";
       public         heap    postgres    false            ?            1259    16395    Customer_Id_seq    SEQUENCE     z   CREATE SEQUENCE public."Customer_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Customer_Id_seq";
       public          postgres    false    210                       0    0    Customer_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Customer_Id_seq" OWNED BY public."Customer"."Id";
          public          postgres    false    209            ?            1259    16437    FuneralProcession    TABLE     ?   CREATE TABLE public."FuneralProcession" (
    "Id" bigint NOT NULL,
    "CemeteryId" bigint,
    "GraveId" bigint,
    "Cafe" character varying(50),
    "CoffinId" bigint,
    "Customer" bigint,
    "Date" character varying(12)
);
 '   DROP TABLE public."FuneralProcession";
       public         heap    postgres    false            ?            1259    16436    FuneralProcession_Id_seq    SEQUENCE     ?   CREATE SEQUENCE public."FuneralProcession_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."FuneralProcession_Id_seq";
       public          postgres    false    216                       0    0    FuneralProcession_Id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."FuneralProcession_Id_seq" OWNED BY public."FuneralProcession"."Id";
          public          postgres    false    215            ?            1259    16423    Grave    TABLE     \   CREATE TABLE public."Grave" (
    "Id" bigint NOT NULL,
    "Name" character varying(50)
);
    DROP TABLE public."Grave";
       public         heap    postgres    false            ?            1259    16422    Grave_Id_seq    SEQUENCE     w   CREATE SEQUENCE public."Grave_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Grave_Id_seq";
       public          postgres    false    212                       0    0    Grave_Id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Grave_Id_seq" OWNED BY public."Grave"."Id";
          public          postgres    false    211            t           2604    16447    Cemetery Id    DEFAULT     p   ALTER TABLE ONLY public."Cemetery" ALTER COLUMN "Id" SET DEFAULT nextval('public."Cemetery_Id_seq"'::regclass);
 >   ALTER TABLE public."Cemetery" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    217    218    218            r           2604    16433 	   Coffin Id    DEFAULT     l   ALTER TABLE ONLY public."Coffin" ALTER COLUMN "Id" SET DEFAULT nextval('public."Coffin_Id_seq"'::regclass);
 <   ALTER TABLE public."Coffin" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    214    213    214            p           2604    16399    Customer Id    DEFAULT     p   ALTER TABLE ONLY public."Customer" ALTER COLUMN "Id" SET DEFAULT nextval('public."Customer_Id_seq"'::regclass);
 >   ALTER TABLE public."Customer" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    210    209    210            s           2604    16440    FuneralProcession Id    DEFAULT     ?   ALTER TABLE ONLY public."FuneralProcession" ALTER COLUMN "Id" SET DEFAULT nextval('public."FuneralProcession_Id_seq"'::regclass);
 G   ALTER TABLE public."FuneralProcession" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    216    215    216            q           2604    16426    Grave Id    DEFAULT     j   ALTER TABLE ONLY public."Grave" ALTER COLUMN "Id" SET DEFAULT nextval('public."Grave_Id_seq"'::regclass);
 ;   ALTER TABLE public."Grave" ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    211    212    212                      0    16444    Cemetery 
   TABLE DATA           :   COPY public."Cemetery" ("Id", "City", "Name") FROM stdin;
    public          postgres    false    218   *)                 0    16430    Coffin 
   TABLE DATA           4   COPY public."Coffin" ("Id", "Material") FROM stdin;
    public          postgres    false    214   ?)                 0    16396    Customer 
   TABLE DATA           h   COPY public."Customer" ("Id", "FirstName", "LastName", "Patronymic", "PhoneNumber", "City") FROM stdin;
    public          postgres    false    210   -*                 0    16437    FuneralProcession 
   TABLE DATA           t   COPY public."FuneralProcession" ("Id", "CemeteryId", "GraveId", "Cafe", "CoffinId", "Customer", "Date") FROM stdin;
    public          postgres    false    216   ?+                 0    16423    Grave 
   TABLE DATA           /   COPY public."Grave" ("Id", "Name") FROM stdin;
    public          postgres    false    212   c,                  0    0    Cemetery_Id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Cemetery_Id_seq"', 7, true);
          public          postgres    false    217                        0    0    Coffin_Id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Coffin_Id_seq"', 6, true);
          public          postgres    false    213            !           0    0    Customer_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Customer_Id_seq"', 13, true);
          public          postgres    false    209            "           0    0    FuneralProcession_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."FuneralProcession_Id_seq"', 9, true);
          public          postgres    false    215            #           0    0    Grave_Id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Grave_Id_seq"', 6, true);
          public          postgres    false    211            ~           2606    16449    Cemetery Cemetery_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Cemetery"
    ADD CONSTRAINT "Cemetery_pkey" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Cemetery" DROP CONSTRAINT "Cemetery_pkey";
       public            postgres    false    218            z           2606    16435    Coffin Coffin_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Coffin"
    ADD CONSTRAINT "Coffin_pkey" PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public."Coffin" DROP CONSTRAINT "Coffin_pkey";
       public            postgres    false    214            v           2606    16401    Customer Customer_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Customer" DROP CONSTRAINT "Customer_pkey";
       public            postgres    false    210            |           2606    16442 (   FuneralProcession FuneralProcession_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."FuneralProcession"
    ADD CONSTRAINT "FuneralProcession_pkey" PRIMARY KEY ("Id");
 V   ALTER TABLE ONLY public."FuneralProcession" DROP CONSTRAINT "FuneralProcession_pkey";
       public            postgres    false    216            x           2606    16428    Grave Grave_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Grave"
    ADD CONSTRAINT "Grave_pkey" PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public."Grave" DROP CONSTRAINT "Grave_pkey";
       public            postgres    false    212               ?   x?e?;?0??{$???0U?tP?9?????g??c
?,???}??gxt???᪍V???? ?"2?T???NȺe?*?W?Mϝ?G?n?kna܃=Qni܅?B?Ʊ[wcڗ?????;]`s???DD>???.         S   x?3??0?b???\F??]l??????????/?\lrL8/??l???b?)??E?]??@y.3???z????qqq ?k+Q         s  x???[N?0E??Š??cw/,??B Q??? ?^?I?6k??wh???G"?f??;?p??0
CT?R??17??t?J\_(;p?1&3Z+???c,???`?:?Є??-<?hP(̸X?Sp?6?u??L9cMf$??J?.KEO܌b???2?Ue???o???WL?R??$????Tk{Dq
o??k?#?7?+??0Eb?Bo[R?.wNH>]???LbX????TU??N?0?TGp?ۮ?^J$_n(?Xe?"g̭XR?aJ?%7u4?G??Z??q???{???E[?+]??t????????M~?s???ǌh??$k׾n]?i?l???H?ػZ?Q&#??Sv?S??-?p2?s?nv_??$I?o???K         ?   x?U?Q
?0D?7???$mbzcD??*x?jB=?H؏̼v?x|?$;^xļ?ɓ	?:팳?-???Ϙ	ߖ???/ĕ???x)??O?֐??d???YGQ[?H!G?r?^zDV??????Bӡ??u?&_6?EN?PDku?Z)?l?Y?         {   x?]?;
?P?wW???w5.&&?`?a/J?D⃘h?0gG^?Uڙ?Y?<H??:??*pS?țA?J>:??u?NK?B?m?rj????o%?%??8??$Ry9??H???D??K??~af_?f?     