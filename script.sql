PGDMP      3                |         	   ecommerce    14.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384 	   ecommerce    DATABASE     t   CREATE DATABASE ecommerce WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE ecommerce;
                root    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                root    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   root    false    4            �            1259    16386    produit    TABLE     �   CREATE TABLE public.produit (
    id integer NOT NULL,
    description character varying(255),
    image character varying(255),
    prix real,
    titre character varying(255)
);
    DROP TABLE public.produit;
       public         heap    root    false    4            �            1259    16385    produit_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produit_id_seq;
       public          root    false    4    210            �           0    0    produit_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.produit_id_seq OWNED BY public.produit.id;
          public          root    false    209            ^           2604    16389 
   produit id    DEFAULT     h   ALTER TABLE ONLY public.produit ALTER COLUMN id SET DEFAULT nextval('public.produit_id_seq'::regclass);
 9   ALTER TABLE public.produit ALTER COLUMN id DROP DEFAULT;
       public          root    false    210    209    210            �          0    16386    produit 
   TABLE DATA           F   COPY public.produit (id, description, image, prix, titre) FROM stdin;
    public          root    false    210   8       �           0    0    produit_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.produit_id_seq', 1, false);
          public          root    false    209            `           2606    16393    produit produit_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produit DROP CONSTRAINT produit_pkey;
       public            root    false    210            �   �  x���r�0���S�BzI\%���0)��@�����"�R�V�T}$)��0�r�%2�+�Bz�Lb;��v���7 ����i����Ԣ���ᶅ��A+o��L`�,�yIі;j�Ո4�lhK%d�3x/s�o��;���Y%���
q�"�J��u�����x��N�]���7h�^�ww_�D���"������;Fk\������t�kj�2-��M�]S���<�w(���[j�s�>?=�-�Pyi�����jOu���$�x��y��p�Ti��,IN���y<�-Ҹ�G�;�芺�nA@��^-L5ɣ8��/��l�__/3�:��/�;|^��]�����b?g��}�u��g�
��<-��\
|gv����8�s<n����AC���m�̭ǂ�
����[�@�a����W0��\�1!䠚��Yp9F�1.���� h��xW$B]S��^k7�%=[0�H�l�꦳�r�(O������.�ZcX	.��1��g�4|�IFY^%����	�%yG�e�b�^�� �^��� jz�������8J���p
���Ɲ�0y��Ң���vxz]����R��	��	����)`t����� E0����}��Cf�Q�@��?d_Ki`��i��i���lRPJ�YN҂�'�Tv�ΰ�����?�q*�r^&�I�'�4N�(ҿ���i��(��f�9�� �^g�     