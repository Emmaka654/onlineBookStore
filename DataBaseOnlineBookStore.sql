PGDMP      )                |            onlineBookStore    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16519    onlineBookStore    DATABASE     �   CREATE DATABASE "onlineBookStore" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Belarus.1251';
 !   DROP DATABASE "onlineBookStore";
                postgres    false                        2615    16589    schema    SCHEMA        CREATE SCHEMA schema;
    DROP SCHEMA schema;
                postgres    false            �            1259    16525    auto_increment    SEQUENCE     w   CREATE SEQUENCE public.auto_increment
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.auto_increment;
       public          postgres    false            �            1259    16527    books    TABLE     �   CREATE TABLE public.books (
    bookid bigint NOT NULL,
    booktitle character varying(255),
    bookauthor character varying(255),
    bookprice double precision,
    rb_fk bigint
);
    DROP TABLE public.books;
       public         heap    postgres    false            �            1259    16526    books_bookid_seq    SEQUENCE     �   CREATE SEQUENCE public.books_bookid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.books_bookid_seq;
       public          postgres    false    218            �           0    0    books_bookid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.books_bookid_seq OWNED BY public.books.bookid;
          public          postgres    false    217            �            1259    16534    readers    TABLE     �   CREATE TABLE public.readers (
    readerid bigint NOT NULL,
    readername character varying(255) NOT NULL,
    readeremail character varying(255) NOT NULL,
    readerpassword character varying(255) NOT NULL
);
    DROP TABLE public.readers;
       public         heap    postgres    false            �            1259    16533    readers_readerid_seq    SEQUENCE     �   CREATE SEQUENCE public.readers_readerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.readers_readerid_seq;
       public          postgres    false    220            �           0    0    readers_readerid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.readers_readerid_seq OWNED BY public.readers.readerid;
          public          postgres    false    219            W           2604    16644    books bookid    DEFAULT     l   ALTER TABLE ONLY public.books ALTER COLUMN bookid SET DEFAULT nextval('public.books_bookid_seq'::regclass);
 ;   ALTER TABLE public.books ALTER COLUMN bookid DROP DEFAULT;
       public          postgres    false    217    218    218            X           2604    16636    readers readerid    DEFAULT     t   ALTER TABLE ONLY public.readers ALTER COLUMN readerid SET DEFAULT nextval('public.readers_readerid_seq'::regclass);
 ?   ALTER TABLE public.readers ALTER COLUMN readerid DROP DEFAULT;
       public          postgres    false    220    219    220            �          0    16527    books 
   TABLE DATA           P   COPY public.books (bookid, booktitle, bookauthor, bookprice, rb_fk) FROM stdin;
    public          postgres    false    218   �       �          0    16534    readers 
   TABLE DATA           T   COPY public.readers (readerid, readername, readeremail, readerpassword) FROM stdin;
    public          postgres    false    220   �       �           0    0    auto_increment    SEQUENCE SET     =   SELECT pg_catalog.setval('public.auto_increment', 1, false);
          public          postgres    false    216            �           0    0    books_bookid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.books_bookid_seq', 1, false);
          public          postgres    false    217            �           0    0    readers_readerid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.readers_readerid_seq', 1, false);
          public          postgres    false    219            Z           2606    16646    books books_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (bookid);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    218            \           2606    16638    readers readers_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.readers
    ADD CONSTRAINT readers_pkey PRIMARY KEY (readerid);
 >   ALTER TABLE ONLY public.readers DROP CONSTRAINT readers_pkey;
       public            postgres    false    220            ]           2606    16639 !   books fketdtkn5jygewgr3apnsxllatg    FK CONSTRAINT     �   ALTER TABLE ONLY public.books
    ADD CONSTRAINT fketdtkn5jygewgr3apnsxllatg FOREIGN KEY (rb_fk) REFERENCES public.readers(readerid);
 K   ALTER TABLE ONLY public.books DROP CONSTRAINT fketdtkn5jygewgr3apnsxllatg;
       public          postgres    false    220    218    4700            �   �   x�����0 ��W�X����CJCc���ʲ���'Џf&��O��1�j���6�{��嶬�z69\|�>H�A���6ql	wmO��V_��=���q�EQ�_'��4� YeV�����Qp�m���!X�ۑY��CV�%���SH�	���I�08��4GZM	��g�4Wk�yx�@      �   K   x�3�H-)�/S Q�@�!713G/9?���L8�S��SS��tYj%g1��P����Z�WT�ihdl����� ��]     