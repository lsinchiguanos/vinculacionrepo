PGDMP     )    :                y            vinculacion    10.18    10.18 9    l           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            m           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            n           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            o           1262    16393    vinculacion    DATABASE     �   CREATE DATABASE vinculacion WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Mexico.1252' LC_CTYPE = 'Spanish_Mexico.1252';
    DROP DATABASE vinculacion;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            p           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            q           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16394    cita_cita_id_seq    SEQUENCE     y   CREATE SEQUENCE public.cita_cita_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cita_cita_id_seq;
       public       postgres    false    3            �            1259    16485    cita    TABLE     x  CREATE TABLE public.cita (
    cita_id integer DEFAULT nextval('public.cita_cita_id_seq'::regclass) NOT NULL,
    cita_anio integer NOT NULL,
    cita_mes integer NOT NULL,
    cita_dia integer NOT NULL,
    cita_codigo character varying(50) NOT NULL,
    cita_paciente integer NOT NULL,
    cita_galeno integer NOT NULL,
    cita_estado character varying(25) DEFAULT 'Espera'::character varying,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    cita_hora time without time zone,
    cita_observacion character varying(200) DEFAULT ''::character varying,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.cita;
       public         postgres    false    196    3            �            1259    16396     depertamento_departamento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.depertamento_departamento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.depertamento_departamento_id_seq;
       public       postgres    false    3            �            1259    16408    depertamento    TABLE     �  CREATE TABLE public.depertamento (
    departamento_id integer DEFAULT nextval('public.depertamento_departamento_id_seq'::regclass) NOT NULL,
    departamento_descripcion character varying(50) NOT NULL,
    departamento_estado character varying(25) DEFAULT 'Activo'::character varying,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.depertamento;
       public         postgres    false    197    3            �            1259    16398    ficha_clinica_ficha_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ficha_clinica_ficha_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.ficha_clinica_ficha_id_seq;
       public       postgres    false    3            �            1259    16506    ficha_clinica    TABLE     �  CREATE TABLE public.ficha_clinica (
    ficha_id integer DEFAULT nextval('public.ficha_clinica_ficha_id_seq'::regclass) NOT NULL,
    ficha_numeracion character varying(50) NOT NULL,
    ficha_paciente integer NOT NULL,
    ficha_estado character varying(25) DEFAULT 'Activo'::character varying,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone,
    pa character varying,
    pt character varying,
    pc character varying,
    peso character varying,
    estatura character varying,
    antecedente_personal character varying,
    antecedente_familiar character varying,
    antecedente_alergico character varying,
    antecedente_quirurgico character varying
);
 !   DROP TABLE public.ficha_clinica;
       public         postgres    false    198    3            �            1259    16400    galeno_galeno_id_seq    SEQUENCE     }   CREATE SEQUENCE public.galeno_galeno_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.galeno_galeno_id_seq;
       public       postgres    false    3            �            1259    16418    galeno    TABLE     �  CREATE TABLE public.galeno (
    galeno_id integer DEFAULT nextval('public.galeno_galeno_id_seq'::regclass) NOT NULL,
    galeno_tipo_dni character varying(25) DEFAULT 'Cédula'::character varying NOT NULL,
    galeno_dni character varying(15) NOT NULL,
    galeno_apellido_paterno character varying(200) NOT NULL,
    galeno_primer_nombre character varying(200) NOT NULL,
    galeno_telefono character varying(10) DEFAULT '9999999999'::character varying,
    galeno_direccion character varying(200) DEFAULT ''::character varying,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone,
    galeno_user character varying(25) NOT NULL,
    galeno_pass character varying(250) NOT NULL,
    galeno_apellido_materno character varying(200) NOT NULL,
    galeno_segundo_nombre character varying(200) DEFAULT ''::character varying,
    galeno_provincia character varying(150) NOT NULL,
    galeno_canton character varying(150) NOT NULL,
    galeno_parroquia character varying(200) DEFAULT ''::character varying,
    galeno_estado character varying(25) DEFAULT 'Activo'::character varying,
    galeno_departamento integer NOT NULL,
    galeno_correoelectronico character varying(100)
);
    DROP TABLE public.galeno;
       public         postgres    false    199    3            �            1259    16402    paciente_paciente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.paciente_paciente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.paciente_paciente_id_seq;
       public       postgres    false    3            �            1259    16443    paciente    TABLE     �  CREATE TABLE public.paciente (
    paciente_id integer DEFAULT nextval('public.paciente_paciente_id_seq'::regclass) NOT NULL,
    paciente_tipo_dni character varying(25) DEFAULT 'Cédula'::character varying,
    paciente_dni character varying(15) NOT NULL,
    paciente_apellido_paterno character varying(200) NOT NULL,
    paciente_primer_nombre character varying(200) NOT NULL,
    paciente_fnacimiento character varying(25) NOT NULL,
    paciente_direccion character varying(200) DEFAULT ''::character varying,
    paciente_telefono character varying(10) DEFAULT '9999999999'::character varying,
    paciente_genero character varying(25) DEFAULT ''::character varying,
    paciente_grupo character varying(15) DEFAULT 'Ninguno'::character varying NOT NULL,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone,
    paciente_apellido_materno character varying(200) NOT NULL,
    paciente_segundo_nombre character varying(200) DEFAULT ''::character varying,
    paciente_estado character varying(25) DEFAULT 'Activo'::character varying,
    paciente_provincia character varying(150) NOT NULL,
    paciente_canton character varying(150) NOT NULL,
    paciente_parroquia character varying(200) DEFAULT ''::character varying,
    paciente_nacionalidad character varying(150) DEFAULT 'Ecuatoriano'::character varying,
    paciente_estado_civil character varying(100) DEFAULT 'Soltero'::character varying,
    paciente_convencional character varying(10) DEFAULT '999999999'::character varying,
    paciente_tipo_sangre character varying(5) DEFAULT 'O+'::character varying,
    paciente_ayudasocial character varying(2)
);
    DROP TABLE public.paciente;
       public         postgres    false    200    3            �            1259    16404    patologia_patologia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.patologia_patologia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.patologia_patologia_id_seq;
       public       postgres    false    3            �            1259    16468 	   patologia    TABLE     �  CREATE TABLE public.patologia (
    patologia_id integer DEFAULT nextval('public.patologia_patologia_id_seq'::regclass) NOT NULL,
    patologia_codigo character varying(25) NOT NULL,
    patologia_descripcion character varying(150) NOT NULL,
    patologia_estado character varying(15) DEFAULT 'Activo'::character varying,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone,
    patologia_departamento integer NOT NULL
);
    DROP TABLE public.patologia;
       public         postgres    false    201    3            �            1259    16406    sesiones_se_id_seq    SEQUENCE     {   CREATE SEQUENCE public.sesiones_se_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sesiones_se_id_seq;
       public       postgres    false    3            �            1259    16521    sesiones    TABLE     `  CREATE TABLE public.sesiones (
    se_id integer DEFAULT nextval('public.sesiones_se_id_seq'::regclass) NOT NULL,
    se_motivo character varying(250) NOT NULL,
    se_diagnostico character varying(250) DEFAULT ''::character varying,
    se_procedimiento character varying(250) DEFAULT ''::character varying,
    se_prescripcion character varying(250) DEFAULT ''::character varying,
    se_observacion character varying(200) DEFAULT ''::character varying,
    se_cita integer NOT NULL,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sesiones;
       public         postgres    false    202    3            g          0    16485    cita 
   TABLE DATA               �   COPY public.cita (cita_id, cita_anio, cita_mes, cita_dia, cita_codigo, cita_paciente, cita_galeno, cita_estado, created_at, cita_hora, cita_observacion, updated_at) FROM stdin;
    public       postgres    false    207   �V       c          0    16408    depertamento 
   TABLE DATA               ~   COPY public.depertamento (departamento_id, departamento_descripcion, departamento_estado, created_at, updated_at) FROM stdin;
    public       postgres    false    203   �V       h          0    16506    ficha_clinica 
   TABLE DATA               �   COPY public.ficha_clinica (ficha_id, ficha_numeracion, ficha_paciente, ficha_estado, created_at, updated_at, pa, pt, pc, peso, estatura, antecedente_personal, antecedente_familiar, antecedente_alergico, antecedente_quirurgico) FROM stdin;
    public       postgres    false    208   �V       d          0    16418    galeno 
   TABLE DATA               m  COPY public.galeno (galeno_id, galeno_tipo_dni, galeno_dni, galeno_apellido_paterno, galeno_primer_nombre, galeno_telefono, galeno_direccion, created_at, updated_at, galeno_user, galeno_pass, galeno_apellido_materno, galeno_segundo_nombre, galeno_provincia, galeno_canton, galeno_parroquia, galeno_estado, galeno_departamento, galeno_correoelectronico) FROM stdin;
    public       postgres    false    204   W       e          0    16443    paciente 
   TABLE DATA               �  COPY public.paciente (paciente_id, paciente_tipo_dni, paciente_dni, paciente_apellido_paterno, paciente_primer_nombre, paciente_fnacimiento, paciente_direccion, paciente_telefono, paciente_genero, paciente_grupo, created_at, updated_at, paciente_apellido_materno, paciente_segundo_nombre, paciente_estado, paciente_provincia, paciente_canton, paciente_parroquia, paciente_nacionalidad, paciente_estado_civil, paciente_convencional, paciente_tipo_sangre, paciente_ayudasocial) FROM stdin;
    public       postgres    false    205   !W       f          0    16468 	   patologia 
   TABLE DATA               �   COPY public.patologia (patologia_id, patologia_codigo, patologia_descripcion, patologia_estado, created_at, updated_at, patologia_departamento) FROM stdin;
    public       postgres    false    206   �W       i          0    16521    sesiones 
   TABLE DATA               �   COPY public.sesiones (se_id, se_motivo, se_diagnostico, se_procedimiento, se_prescripcion, se_observacion, se_cita, created_at, updated_at) FROM stdin;
    public       postgres    false    209   X       r           0    0    cita_cita_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cita_cita_id_seq', 1, false);
            public       postgres    false    196            s           0    0     depertamento_departamento_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.depertamento_departamento_id_seq', 1, false);
            public       postgres    false    197            t           0    0    ficha_clinica_ficha_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ficha_clinica_ficha_id_seq', 1, false);
            public       postgres    false    198            u           0    0    galeno_galeno_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.galeno_galeno_id_seq', 1, true);
            public       postgres    false    199            v           0    0    paciente_paciente_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.paciente_paciente_id_seq', 1, false);
            public       postgres    false    200            w           0    0    patologia_patologia_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.patologia_patologia_id_seq', 1, false);
            public       postgres    false    201            x           0    0    sesiones_se_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sesiones_se_id_seq', 1, false);
            public       postgres    false    202            �
           2606    16493    cita pk_cita_cita_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.cita
    ADD CONSTRAINT pk_cita_cita_id PRIMARY KEY (cita_id);
 >   ALTER TABLE ONLY public.cita DROP CONSTRAINT pk_cita_cita_id;
       public         postgres    false    207            �
           2606    16534    sesiones pk_cita_detalle_cd_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.sesiones
    ADD CONSTRAINT pk_cita_detalle_cd_id PRIMARY KEY (se_id);
 H   ALTER TABLE ONLY public.sesiones DROP CONSTRAINT pk_cita_detalle_cd_id;
       public         postgres    false    209            �
           2606    16415 ,   depertamento pk_depertamento_departamento_id 
   CONSTRAINT     w   ALTER TABLE ONLY public.depertamento
    ADD CONSTRAINT pk_depertamento_departamento_id PRIMARY KEY (departamento_id);
 V   ALTER TABLE ONLY public.depertamento DROP CONSTRAINT pk_depertamento_departamento_id;
       public         postgres    false    203            �
           2606    16513 '   ficha_clinica pk_ficha_clinica_ficha_id 
   CONSTRAINT     k   ALTER TABLE ONLY public.ficha_clinica
    ADD CONSTRAINT pk_ficha_clinica_ficha_id PRIMARY KEY (ficha_id);
 Q   ALTER TABLE ONLY public.ficha_clinica DROP CONSTRAINT pk_ficha_clinica_ficha_id;
       public         postgres    false    208            �
           2606    16433    galeno pk_galeno_galeno_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.galeno
    ADD CONSTRAINT pk_galeno_galeno_id PRIMARY KEY (galeno_id);
 D   ALTER TABLE ONLY public.galeno DROP CONSTRAINT pk_galeno_galeno_id;
       public         postgres    false    204            �
           2606    16465     paciente pk_paciente_paciente_id 
   CONSTRAINT     g   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT pk_paciente_paciente_id PRIMARY KEY (paciente_id);
 J   ALTER TABLE ONLY public.paciente DROP CONSTRAINT pk_paciente_paciente_id;
       public         postgres    false    205            �
           2606    16475 #   patologia pk_patologia_patologia_id 
   CONSTRAINT     k   ALTER TABLE ONLY public.patologia
    ADD CONSTRAINT pk_patologia_patologia_id PRIMARY KEY (patologia_id);
 M   ALTER TABLE ONLY public.patologia DROP CONSTRAINT pk_patologia_patologia_id;
       public         postgres    false    206            �
           2606    16495    cita unq_cita 
   CONSTRAINT     O   ALTER TABLE ONLY public.cita
    ADD CONSTRAINT unq_cita UNIQUE (cita_codigo);
 7   ALTER TABLE ONLY public.cita DROP CONSTRAINT unq_cita;
       public         postgres    false    207            �
           2606    16417    depertamento unq_depertamento 
   CONSTRAINT     l   ALTER TABLE ONLY public.depertamento
    ADD CONSTRAINT unq_depertamento UNIQUE (departamento_descripcion);
 G   ALTER TABLE ONLY public.depertamento DROP CONSTRAINT unq_depertamento;
       public         postgres    false    203            �
           2606    16515    ficha_clinica unq_ficha_clinica 
   CONSTRAINT     f   ALTER TABLE ONLY public.ficha_clinica
    ADD CONSTRAINT unq_ficha_clinica UNIQUE (ficha_numeracion);
 I   ALTER TABLE ONLY public.ficha_clinica DROP CONSTRAINT unq_ficha_clinica;
       public         postgres    false    208            �
           2606    16435    galeno unq_galeno 
   CONSTRAINT     R   ALTER TABLE ONLY public.galeno
    ADD CONSTRAINT unq_galeno UNIQUE (galeno_dni);
 ;   ALTER TABLE ONLY public.galeno DROP CONSTRAINT unq_galeno;
       public         postgres    false    204            �
           2606    16437    galeno unq_galeno_usr 
   CONSTRAINT     W   ALTER TABLE ONLY public.galeno
    ADD CONSTRAINT unq_galeno_usr UNIQUE (galeno_user);
 ?   ALTER TABLE ONLY public.galeno DROP CONSTRAINT unq_galeno_usr;
       public         postgres    false    204            �
           2606    16467    paciente unq_paciente 
   CONSTRAINT     X   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT unq_paciente UNIQUE (paciente_dni);
 ?   ALTER TABLE ONLY public.paciente DROP CONSTRAINT unq_paciente;
       public         postgres    false    205            �
           2606    16479    patologia unq_patologia 
   CONSTRAINT     c   ALTER TABLE ONLY public.patologia
    ADD CONSTRAINT unq_patologia UNIQUE (patologia_descripcion);
 A   ALTER TABLE ONLY public.patologia DROP CONSTRAINT unq_patologia;
       public         postgres    false    206            �
           2606    16477    patologia unq_patologia_codigo 
   CONSTRAINT     e   ALTER TABLE ONLY public.patologia
    ADD CONSTRAINT unq_patologia_codigo UNIQUE (patologia_codigo);
 H   ALTER TABLE ONLY public.patologia DROP CONSTRAINT unq_patologia_codigo;
       public         postgres    false    206            �
           2606    16496    cita fk_cita_galeno    FK CONSTRAINT     ~   ALTER TABLE ONLY public.cita
    ADD CONSTRAINT fk_cita_galeno FOREIGN KEY (cita_galeno) REFERENCES public.galeno(galeno_id);
 =   ALTER TABLE ONLY public.cita DROP CONSTRAINT fk_cita_galeno;
       public       postgres    false    207    204    2756            �
           2606    16501    cita fk_cita_paciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.cita
    ADD CONSTRAINT fk_cita_paciente FOREIGN KEY (cita_paciente) REFERENCES public.paciente(paciente_id);
 ?   ALTER TABLE ONLY public.cita DROP CONSTRAINT fk_cita_paciente;
       public       postgres    false    205    2762    207            �
           2606    16516 '   ficha_clinica fk_ficha_clinica_paciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.ficha_clinica
    ADD CONSTRAINT fk_ficha_clinica_paciente FOREIGN KEY (ficha_paciente) REFERENCES public.paciente(paciente_id);
 Q   ALTER TABLE ONLY public.ficha_clinica DROP CONSTRAINT fk_ficha_clinica_paciente;
       public       postgres    false    205    208    2762            �
           2606    16438    galeno fk_galeno_depertamento    FK CONSTRAINT     �   ALTER TABLE ONLY public.galeno
    ADD CONSTRAINT fk_galeno_depertamento FOREIGN KEY (galeno_departamento) REFERENCES public.depertamento(departamento_id);
 G   ALTER TABLE ONLY public.galeno DROP CONSTRAINT fk_galeno_depertamento;
       public       postgres    false    204    2752    203            �
           2606    16480 #   patologia fk_patologia_depertamento    FK CONSTRAINT     �   ALTER TABLE ONLY public.patologia
    ADD CONSTRAINT fk_patologia_depertamento FOREIGN KEY (patologia_departamento) REFERENCES public.depertamento(departamento_id);
 M   ALTER TABLE ONLY public.patologia DROP CONSTRAINT fk_patologia_depertamento;
       public       postgres    false    203    206    2752            �
           2606    16535    sesiones fk_sesiones_cita    FK CONSTRAINT     |   ALTER TABLE ONLY public.sesiones
    ADD CONSTRAINT fk_sesiones_cita FOREIGN KEY (se_cita) REFERENCES public.cita(cita_id);
 C   ALTER TABLE ONLY public.sesiones DROP CONSTRAINT fk_sesiones_cita;
       public       postgres    false    2772    207    209            g      x������ � �      c      x������ � �      h      x������ � �      d      x������ � �      e   �   x�=��n�0F�/O�Q�o��,p�H�&��%�%Q-�?Cߪ��+]:�휣q�L�rEd ��~��n}^{�|F�L[��5�E5�ǔ�Q���L������PA�z0���bʥ���T�E�?b�1'l��%�c�;��	iUSK�������ӯv���v���M�6��~�ܝ��(�_�2�      f      x������ � �      i      x������ � �     