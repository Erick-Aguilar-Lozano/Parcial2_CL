PGDMP                         x            alumno    10.13    10.13     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    25267    alumno    DATABASE     �   CREATE DATABASE alumno WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Bolivia.1252' LC_CTYPE = 'Spanish_Bolivia.1252';
    DROP DATABASE alumno;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    25314    datos    TABLE     o   CREATE TABLE public.datos (
    id integer NOT NULL,
    nombre character varying,
    ci character varying
);
    DROP TABLE public.datos;
       public         postgres    false    3            �            1259    25312    datos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.datos_id_seq;
       public       postgres    false    3    197            �
           0    0    datos_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.datos_id_seq OWNED BY public.datos.id;
            public       postgres    false    196            o
           2604    25317    datos id    DEFAULT     d   ALTER TABLE ONLY public.datos ALTER COLUMN id SET DEFAULT nextval('public.datos_id_seq'::regclass);
 7   ALTER TABLE public.datos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �
          0    25314    datos 
   TABLE DATA               /   COPY public.datos (id, nombre, ci) FROM stdin;
    public       postgres    false    197   �       �
           0    0    datos_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.datos_id_seq', 1, true);
            public       postgres    false    196            q
           2606    25319    datos datos_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.datos
    ADD CONSTRAINT datos_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.datos DROP CONSTRAINT datos_pkey;
       public         postgres    false    197            �
   ,   x�3�t-�L�VpL/��I,R�ɯJ���4��4�44����� ͈	�     