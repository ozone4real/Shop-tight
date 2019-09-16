--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO ezenwaogbonna;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: ezenwaogbonna
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO ezenwaogbonna;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezenwaogbonna
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO ezenwaogbonna;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: ezenwaogbonna
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO ezenwaogbonna;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezenwaogbonna
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO ezenwaogbonna;

--
-- Name: carts; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.carts (
    id bigint NOT NULL,
    product_detail_id bigint,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    quantity integer DEFAULT 1
);


ALTER TABLE public.carts OWNER TO ezenwaogbonna;

--
-- Name: carts_id_seq; Type: SEQUENCE; Schema: public; Owner: ezenwaogbonna
--

CREATE SEQUENCE public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carts_id_seq OWNER TO ezenwaogbonna;

--
-- Name: carts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezenwaogbonna
--

ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    category_name character varying,
    category_description character varying,
    picture character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    url_key character varying
);


ALTER TABLE public.categories OWNER TO ezenwaogbonna;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: ezenwaogbonna
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO ezenwaogbonna;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezenwaogbonna
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: order_details; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.order_details (
    id bigint NOT NULL,
    quantity integer,
    total_price integer,
    status integer DEFAULT 0,
    bill_date timestamp without time zone,
    ship_date timestamp without time zone,
    sales_tax double precision,
    order_id bigint,
    shipper_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_detail_id bigint,
    location character varying
);


ALTER TABLE public.order_details OWNER TO ezenwaogbonna;

--
-- Name: order_details_id_seq; Type: SEQUENCE; Schema: public; Owner: ezenwaogbonna
--

CREATE SEQUENCE public.order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_details_id_seq OWNER TO ezenwaogbonna;

--
-- Name: order_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezenwaogbonna
--

ALTER SEQUENCE public.order_details_id_seq OWNED BY public.order_details.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    order_number integer,
    payment_date timestamp without time zone,
    user_id bigint,
    payment_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    amount_payable integer,
    payment_made boolean
);


ALTER TABLE public.orders OWNER TO ezenwaogbonna;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: ezenwaogbonna
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO ezenwaogbonna;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezenwaogbonna
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.payments (
    id bigint NOT NULL,
    payment_type character varying,
    allowed boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    picture character varying,
    description text
);


ALTER TABLE public.payments OWNER TO ezenwaogbonna;

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: ezenwaogbonna
--

CREATE SEQUENCE public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_id_seq OWNER TO ezenwaogbonna;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezenwaogbonna
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: product_details; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.product_details (
    id bigint NOT NULL,
    size character varying,
    color character varying,
    price integer,
    product_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_available boolean DEFAULT true,
    quantity_in_stock integer,
    quantity_sold integer DEFAULT 0,
    url_key character varying
);


ALTER TABLE public.product_details OWNER TO ezenwaogbonna;

--
-- Name: product_details_id_seq; Type: SEQUENCE; Schema: public; Owner: ezenwaogbonna
--

CREATE SEQUENCE public.product_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_details_id_seq OWNER TO ezenwaogbonna;

--
-- Name: product_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezenwaogbonna
--

ALTER SEQUENCE public.product_details_id_seq OWNED BY public.product_details.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    product_name character varying,
    product_description character varying,
    discount double precision,
    picture character varying,
    unit_weight double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint,
    brand character varying,
    url_key character varying,
    product_size integer,
    shipping_fee integer,
    sub_category_id bigint,
    category_id bigint,
    times_viewed integer DEFAULT 0
);


ALTER TABLE public.products OWNER TO ezenwaogbonna;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: ezenwaogbonna
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO ezenwaogbonna;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezenwaogbonna
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: recently_viewed_products; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.recently_viewed_products (
    id bigint NOT NULL,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_id bigint
);


ALTER TABLE public.recently_viewed_products OWNER TO ezenwaogbonna;

--
-- Name: recently_viewed_products_id_seq; Type: SEQUENCE; Schema: public; Owner: ezenwaogbonna
--

CREATE SEQUENCE public.recently_viewed_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recently_viewed_products_id_seq OWNER TO ezenwaogbonna;

--
-- Name: recently_viewed_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezenwaogbonna
--

ALTER SEQUENCE public.recently_viewed_products_id_seq OWNED BY public.recently_viewed_products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO ezenwaogbonna;

--
-- Name: sub_categories; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.sub_categories (
    id bigint NOT NULL,
    category_id bigint,
    category_name character varying,
    category_description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    picture character varying,
    url_key character varying
);


ALTER TABLE public.sub_categories OWNER TO ezenwaogbonna;

--
-- Name: sub_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: ezenwaogbonna
--

CREATE SEQUENCE public.sub_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sub_categories_id_seq OWNER TO ezenwaogbonna;

--
-- Name: sub_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezenwaogbonna
--

ALTER SEQUENCE public.sub_categories_id_seq OWNED BY public.sub_categories.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: ezenwaogbonna
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    email character varying,
    password_digest character varying,
    address character varying,
    city character varying,
    state character varying,
    postal_code character varying,
    country character varying,
    phone character varying,
    is_admin boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    verified boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO ezenwaogbonna;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: ezenwaogbonna
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO ezenwaogbonna;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezenwaogbonna
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: carts id; Type: DEFAULT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: order_details id; Type: DEFAULT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.order_details ALTER COLUMN id SET DEFAULT nextval('public.order_details_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: product_details id; Type: DEFAULT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.product_details ALTER COLUMN id SET DEFAULT nextval('public.product_details_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: recently_viewed_products id; Type: DEFAULT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.recently_viewed_products ALTER COLUMN id SET DEFAULT nextval('public.recently_viewed_products_id_seq'::regclass);


--
-- Name: sub_categories id; Type: DEFAULT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.sub_categories ALTER COLUMN id SET DEFAULT nextval('public.sub_categories_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	picture	Product	2453	1	2019-09-14 08:17:41.480986
2	picture	Product	2454	2	2019-09-14 09:00:19.812437
4	picture	Product	2456	4	2019-09-14 11:36:27.664563
5	picture	Product	2458	5	2019-09-14 11:57:47.690844
6	picture	Product	2458	6	2019-09-14 11:57:47.692511
7	picture	Product	2459	7	2019-09-14 12:09:31.240207
8	picture	Product	2460	8	2019-09-14 12:11:10.918116
9	picture	Product	2461	9	2019-09-14 12:19:13.872027
10	picture	Product	2464	10	2019-09-16 03:48:43.603903
11	picture	Product	2464	11	2019-09-16 03:48:43.60826
12	picture	Product	2465	12	2019-09-16 03:49:38.286446
13	picture	Product	2465	13	2019-09-16 03:49:38.28842
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
1	1N6iiTGK2LZjeUj4wXL1CBG3	49282239_1920167948081289_459382434895495168_o.jpg	image/jpeg	{"identified":true}	131219	IpezPaYY1B1+NiIH7W52lw==	2019-09-14 08:17:41.383941
2	CLFysegRyYNL3pnqT5SkosLS	49282239_1920167948081289_459382434895495168_o.jpg	image/jpeg	{"identified":true}	131219	IpezPaYY1B1+NiIH7W52lw==	2019-09-14 09:00:19.651124
3	RdcvwKcVaP6iPDn3S6AL6XfW	49282239_1920167948081289_459382434895495168_o.jpg	image/jpeg	{"identified":true}	131219	IpezPaYY1B1+NiIH7W52lw==	2019-09-14 11:29:15.402603
4	XUmuu4A5cAb16zfunCHJpYvK	484925_v9_bb.jpg	image/jpeg	{"identified":true,"width":1080,"height":1440,"analyzed":true}	313672	pp4yME6tquKyQ/yTqwP27w==	2019-09-14 11:36:27.54006
5	WHV97tn1KBDnj5AV5pHwYAaE	56951229_2217931561632892_1492706649545113600_n.jpg	image/jpeg	{"identified":true,"width":557,"height":960,"analyzed":true}	73717	BdjxHuiU571boKn1WzpNug==	2019-09-14 11:57:45.083392
6	Ftb74F8DPd5HQKmyFi5qxRTh	Blaise_Pascal._Lithograph_after_G._Edelinck_after_F._Quesnel_Wellcome_V0004512-998x740.jpg	image/jpeg	{"identified":true,"width":998,"height":740,"analyzed":true}	217442	aW82Xj2BYWsyh2Amf0C+Bg==	2019-09-14 11:57:47.679808
7	ArMGMfVGDZGyU3AMJdKaJZt7	Blog-675x320.jpg	image/jpeg	{"identified":true,"width":675,"height":320,"analyzed":true}	68212	jamuhOZc3o+jzoyUCKyjDg==	2019-09-14 12:09:31.176877
8	7Pmxify3JZaCTW85HkqSzEiX	Blog-675x320.jpg	image/jpeg	{"identified":true,"width":675,"height":320,"analyzed":true}	68212	jamuhOZc3o+jzoyUCKyjDg==	2019-09-14 12:11:10.887357
9	3zRqfePXf1swwWSCMVhmibSq	Blog-675x320.jpg	image/jpeg	{"identified":true,"width":675,"height":320,"analyzed":true}	68212	jamuhOZc3o+jzoyUCKyjDg==	2019-09-14 12:19:13.84962
10	Jed2PUgnhHtu98uZTPDepWwv	56951229_2217931561632892_1492706649545113600_n.jpg	image/jpeg	{"identified":true,"width":557,"height":960,"analyzed":true}	73717	BdjxHuiU571boKn1WzpNug==	2019-09-16 03:48:43.571204
11	oQdDAw2eB6zPvsVoTaywMCk9	Ajax-celebrate.jpg	image/jpeg	{"identified":true,"width":1000,"height":667,"analyzed":true}	209247	FOI0XdP2vsBKh8KbLekUKQ==	2019-09-16 03:48:43.59225
12	QMpVzUUnMUNxrBTNPAPbCUpF	56951229_2217931561632892_1492706649545113600_n.jpg	image/jpeg	{"identified":true,"width":557,"height":960,"analyzed":true}	73717	BdjxHuiU571boKn1WzpNug==	2019-09-16 03:49:38.258903
13	RgpzzeMCzYQR4EWRjaKmYdYM	Ajax-celebrate.jpg	image/jpeg	{"identified":true,"width":1000,"height":667,"analyzed":true}	209247	FOI0XdP2vsBKh8KbLekUKQ==	2019-09-16 03:49:38.270874
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-07-08 01:38:57.895227	2019-07-08 01:38:57.895227
\.


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.carts (id, product_detail_id, user_id, created_at, updated_at, quantity) FROM stdin;
82	102	27	2019-09-10 17:33:12.408658	2019-09-10 17:33:12.408658	1
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.categories (id, category_name, category_description, picture, created_at, updated_at, url_key) FROM stdin;
9	Phones And Tablets	Mobile phones and tablets of different brands and specifications	\N	2019-08-12 05:00:22.183233	2019-08-12 05:00:22.183233	\N
11	Men's shoes	Men's shoes of different sizes and types, corporate and casual	\N	2019-08-15 07:00:50.055758	2019-08-15 07:00:50.074127	men-s-shoes-11
12	Women's shoes	Women's shoes of different sizes and types, corporate and casual	\N	2019-08-15 07:01:39.350351	2019-08-15 07:01:39.358052	women-s-shoes-12
13	Men's clothings	Men's clothings of different sizes and types, corporate and casual	\N	2019-08-15 07:02:31.377183	2019-08-15 07:02:31.381272	men-s-clothings-13
14	Women's bags	Women's bags of various types and sizes	\N	2019-08-18 06:45:08.945774	2019-08-18 06:45:10.209759	women-s-bags-14
\.


--
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.order_details (id, quantity, total_price, status, bill_date, ship_date, sales_tax, order_id, shipper_id, created_at, updated_at, product_detail_id, location) FROM stdin;
39	1	17000	0	\N	\N	\N	45	\N	2019-08-15 10:47:49.264621	2019-08-15 10:47:49.264621	93	\N
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.orders (id, order_number, payment_date, user_id, payment_id, created_at, updated_at, amount_payable, payment_made) FROM stdin;
23	\N	\N	3	1	2019-07-21 11:42:31.601373	2019-07-21 11:42:31.601373	31600	\N
25	\N	\N	3	1	2019-07-21 12:21:52.757754	2019-07-21 12:21:52.757754	61100	\N
26	\N	\N	3	1	2019-07-21 17:54:05.863353	2019-07-21 17:54:05.863353	71300	\N
30	\N	\N	1	1	2019-07-22 07:48:21.446164	2019-07-22 07:48:21.446164	340800	\N
31	\N	\N	1	1	2019-07-24 10:03:34.344693	2019-07-24 10:03:34.344693	170400	\N
32	\N	\N	1	1	2019-07-25 03:31:26.539221	2019-07-25 03:31:26.539221	170400	\N
33	\N	\N	1	1	2019-07-25 03:52:22.11632	2019-07-25 03:52:22.11632	511200	\N
42	\N	\N	2	1	2019-07-30 07:24:53.114389	2019-07-30 07:24:53.114389	82000	\N
43	\N	2019-07-30 16:36:40.249015	2	2	2019-07-30 07:31:28.820912	2019-07-30 16:36:40.260646	45800	t
45	\N	2019-08-15 10:47:49.106146	8	2	2019-08-15 10:47:49.131299	2019-08-15 10:47:49.131299	17400	t
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.payments (id, payment_type, allowed, created_at, updated_at, picture, description) FROM stdin;
1	Pay on delivery	\N	2019-07-19 07:13:50.520605	2019-07-19 07:13:50.520605	\N	Pay when your order is delivered to you
2	Debit card	\N	2019-07-19 07:17:27.33414	2019-07-19 07:17:27.33414	\N	Pay with your debit card(Faster delivery)
\.


--
-- Data for Name: product_details; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.product_details (id, size, color, price, product_id, created_at, updated_at, product_available, quantity_in_stock, quantity_sold, url_key) FROM stdin;
101	47	mixed	35000	205	2019-08-16 17:48:49.917974	2019-08-16 17:48:49.922549	t	2	0	nike-air-jordan-78-101
2345	XL	Black	3000	2449	2019-09-13 13:59:57.523137	2019-09-13 13:59:57.62366	t	3	0	nike-tee-shirt-2345
102	\N	black	400000	206	2019-08-16 17:50:40.204102	2019-08-16 17:50:40.207688	t	3	0	iphone-xs-102
2346	43	Black	14000	2450	2019-09-13 16:10:49.650332	2019-09-13 16:10:49.659294	t	3	0	nike-slides-2346
103	\N	black	400000	207	2019-08-16 18:00:43.498185	2019-08-18 05:30:06.635526	t	3	0	iphone-xs-103
104	\N	black	400000	208	2019-08-31 01:41:19.119073	2019-08-31 01:41:19.12369	t	3	0	iphone-xs-104
2350	L	Mixed	45000	2454	2019-09-14 09:00:20.736622	2019-09-14 09:00:20.740366	t	3	0	fashion-plaid-shirt-2350
2351	L	Mixed	45000	2456	2019-09-14 11:36:27.698895	2019-09-14 11:36:27.701075	t	3	0	fashion-plaid-shirt-2351
2352	L	Black	4500	2457	2019-09-14 11:54:43.177942	2019-09-14 11:54:43.180735	t	3	0	fashion-plaid-shirt-2352
2353	L	Black	4500	2458	2019-09-14 11:57:47.778	2019-09-14 11:57:47.780117	t	3	0	fashion-plaid-shirt-2353
87	\N	black	43000	195	2019-08-12 10:27:54.305772	2019-08-12 10:27:56.26714	t	7	0	infinix-hot-9-87
2354	L	\N	4500	2459	2019-09-14 12:09:31.282609	2019-09-14 12:09:31.285224	t	3	0	fashion-plaid-shirt-2354
2355	L	\N	4500	2460	2019-09-14 12:11:10.935655	2019-09-14 12:11:10.937845	t	3	0	fashion-plaid-shirt-2355
2356	L	\N	4500	2461	2019-09-14 12:19:14.368031	2019-09-14 12:19:14.370909	t	3	0	fashion-plaid-shirt-2356
2357	\N	black	400000	2462	2019-09-16 03:28:26.329385	2019-09-16 03:28:26.335312	t	3	0	iphone-xs-2357
2358	\N	black	400000	2463	2019-09-16 03:28:29.647745	2019-09-16 03:28:29.649487	t	3	0	iphone-xs-2358
2359	44	Yellow	35000	2464	2019-09-16 03:48:43.626684	2019-09-16 03:48:43.629288	t	4	0	addidas-yeezys-sneakers-2359
2360	44	Yellow	35000	2465	2019-09-16 03:49:38.304353	2019-09-16 03:49:38.337972	t	4	0	addidas-yeezys-sneakers-2360
90	\N	white	43000	198	2019-08-12 17:14:52.114702	2019-08-12 17:14:52.134976	t	7	0	iphone-8-90
91	44	mixed	17500	199	2019-08-15 07:17:22.768371	2019-08-15 07:17:22.775323	t	4	0	givenchy-flat-sole-sneakers-91
92	42	mixed	17000	199	2019-08-15 07:17:22.78593	2019-08-15 07:17:22.788145	t	2	0	givenchy-flat-sole-sneakers-92
93	41	mixed	17000	199	2019-08-15 07:17:22.798205	2019-08-15 10:47:49.281964	t	1	1	givenchy-flat-sole-sneakers-93
94	44	black	14000	200	2019-08-16 16:27:15.329287	2019-08-16 16:27:16.890498	t	2	0	kastrow-chelsea-boots-94
95	43	brown	14000	200	2019-08-16 16:27:16.915948	2019-08-16 16:27:16.918984	t	2	0	kastrow-chelsea-boots-95
96	41	blue	14000	200	2019-08-16 16:27:16.933591	2019-08-16 16:27:16.93873	t	2	0	kastrow-chelsea-boots-96
97	47	mixed	35000	201	2019-08-16 16:36:01.951741	2019-08-16 16:36:01.96024	t	2	0	nike-air-jordan-78-97
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.products (id, product_name, product_description, discount, picture, unit_weight, created_at, updated_at, user_id, brand, url_key, product_size, shipping_fee, sub_category_id, category_id, times_viewed) FROM stdin;
199	Givenchy flat sole sneakers	flat sole mixed color, laced sneakers	\N	\N	\N	2019-08-15 07:17:22.631629	2019-08-15 07:17:22.631629	5	Givenchy	\N	0	400	6	11	0
200	Kastrow Chelsea Boots	Chelsea boots for any occasion	\N	\N	\N	2019-08-16 16:27:15.221546	2019-08-16 16:27:15.221546	5	Kastrow	\N	0	400	6	11	0
201	Nike Air Jordan 78	Jordan casual sneakers	\N	\N	\N	2019-08-16 16:36:01.905616	2019-08-16 16:36:01.927121	5	Nike	nike-air-jordan-78-201	0	400	6	11	0
195	Infinix Hot 9	32GB ROM, 2GB RAM, 3500mHZ battery	\N	\N	\N	2019-08-12 10:27:54.225426	2019-08-12 10:27:54.225426	5	Infinix	\N	0	400	1	9	0
198	iphone 8	64GB ROM, 17px camera	\N	\N	\N	2019-08-12 17:14:52.045457	2019-08-12 17:14:52.045457	5	Apple	\N	0	400	2	9	0
205	Nike Air Jordan 78	Jordan casual sneakers	\N	\N	\N	2019-08-16 17:48:49.881727	2019-08-16 17:48:49.890821	5	Nike	nike-air-jordan-78-205	0	400	6	11	0
206	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-08-16 17:50:40.147164	2019-08-16 17:50:40.158698	5	Apple	iphone-xs-206	0	400	2	9	0
207	iphone XS	500GB ROM, 8GB RAM, 4000mHZ battery	\N	\N	\N	2019-08-16 18:00:43.434794	2019-08-18 05:30:06.629007	5	Apple	iphone-xs-207	0	400	2	9	0
208	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-08-31 01:41:19.016757	2019-08-31 01:41:19.077036	5	Apple	iphone-xs-208	0	400	2	9	0
1270	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.816724	2019-09-03 04:15:34.833732	5	Apple	iphone-xs-1270	0	400	2	9	0
1271	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.841573	2019-09-03 04:15:34.852888	5	Apple	iphone-xs-1271	0	400	2	9	0
1272	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.874583	2019-09-03 04:15:34.884247	5	Apple	iphone-xs-1272	0	400	2	9	0
1273	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.894963	2019-09-03 04:15:34.912935	5	Apple	iphone-xs-1273	0	400	2	9	0
2156	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.019892	2019-09-03 04:16:35.030075	5	Apple	iphone-xs-2156	0	400	2	9	0
1274	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.933438	2019-09-03 04:15:34.942575	5	Apple	iphone-xs-1274	0	400	2	9	0
2158	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.027505	2019-09-03 04:16:35.033628	5	Apple	iphone-xs-2158	0	400	2	9	0
1275	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.976087	2019-09-03 04:15:34.984519	5	Apple	iphone-xs-1275	0	400	2	9	0
2157	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.026405	2019-09-03 04:16:35.034857	5	Apple	iphone-xs-2157	0	400	2	9	0
2159	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.028446	2019-09-03 04:16:35.037914	5	Apple	iphone-xs-2159	0	400	2	9	0
1277	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.030025	2019-09-03 04:15:35.032538	5	Apple	iphone-xs-1277	0	400	2	9	0
1276	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.023809	2019-09-03 04:15:35.036961	5	Apple	iphone-xs-1276	0	400	2	9	0
1278	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.047045	2019-09-03 04:15:35.072116	5	Apple	iphone-xs-1278	0	400	2	9	0
2160	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.038952	2019-09-03 04:16:35.045165	5	Apple	iphone-xs-2160	0	400	2	9	0
1279	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.091229	2019-09-03 04:15:35.099992	5	Apple	iphone-xs-1279	0	400	2	9	0
1201	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:32.748304	2019-09-03 04:15:32.753997	5	Apple	iphone-xs-1201	0	400	2	9	0
1206	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:32.862164	2019-09-03 04:15:32.868681	5	Apple	iphone-xs-1206	0	400	2	9	0
1280	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.135766	2019-09-03 04:15:35.152338	5	Apple	iphone-xs-1280	0	400	2	9	0
2161	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.146981	2019-09-03 04:16:35.160137	5	Apple	iphone-xs-2161	0	400	2	9	0
1285	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.278787	2019-09-03 04:15:35.28636	5	Apple	iphone-xs-1285	0	400	2	9	0
1290	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.402475	2019-09-03 04:15:35.413548	5	Apple	iphone-xs-1290	0	400	2	9	0
1203	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:32.820879	2019-09-03 04:15:32.827173	5	Apple	iphone-xs-1203	0	400	2	9	0
1296	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.613868	2019-09-03 04:15:35.619361	5	Apple	iphone-xs-1296	0	400	2	9	0
1208	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:32.927567	2019-09-03 04:15:32.936485	5	Apple	iphone-xs-1208	0	400	2	9	0
1214	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.048107	2019-09-03 04:15:33.053261	5	Apple	iphone-xs-1214	0	400	2	9	0
1301	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.792182	2019-09-03 04:15:35.799505	5	Apple	iphone-xs-1301	0	400	2	9	0
1219	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.21635	2019-09-03 04:15:33.224298	5	Apple	iphone-xs-1219	0	400	2	9	0
1223	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.317958	2019-09-03 04:15:33.320389	5	Apple	iphone-xs-1223	0	400	2	9	0
1306	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.935464	2019-09-03 04:15:35.952927	5	Apple	iphone-xs-1306	0	400	2	9	0
1227	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.529709	2019-09-03 04:15:33.535233	5	Apple	iphone-xs-1227	0	400	2	9	0
1234	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.730782	2019-09-03 04:15:33.737039	5	Apple	iphone-xs-1234	0	400	2	9	0
1311	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.042015	2019-09-03 04:15:36.051493	5	Apple	iphone-xs-1311	0	400	2	9	0
1238	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.848729	2019-09-03 04:15:33.853778	5	Apple	iphone-xs-1238	0	400	2	9	0
1244	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.994838	2019-09-03 04:15:33.999028	5	Apple	iphone-xs-1244	0	400	2	9	0
1316	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.152913	2019-09-03 04:15:36.162692	5	Apple	iphone-xs-1316	0	400	2	9	0
1246	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.091821	2019-09-03 04:15:34.095466	5	Apple	iphone-xs-1246	0	400	2	9	0
1251	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.226494	2019-09-03 04:15:34.232598	5	Apple	iphone-xs-1251	0	400	2	9	0
1321	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.376166	2019-09-03 04:15:36.386911	5	Apple	iphone-xs-1321	0	400	2	9	0
1256	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.370387	2019-09-03 04:15:34.380013	5	Apple	iphone-xs-1256	0	400	2	9	0
1261	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.59726	2019-09-03 04:15:34.599075	5	Apple	iphone-xs-1261	0	400	2	9	0
1265	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.7101	2019-09-03 04:15:34.717639	5	Apple	iphone-xs-1265	0	400	2	9	0
1329	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.631297	2019-09-03 04:15:36.639385	5	Apple	iphone-xs-1329	0	400	2	9	0
1334	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.780743	2019-09-03 04:15:36.792445	5	Apple	iphone-xs-1334	0	400	2	9	0
1339	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.919659	2019-09-03 04:15:36.933225	5	Apple	iphone-xs-1339	0	400	2	9	0
1345	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.074483	2019-09-03 04:15:37.081145	5	Apple	iphone-xs-1345	0	400	2	9	0
1348	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.237553	2019-09-03 04:15:37.247164	5	Apple	iphone-xs-1348	0	400	2	9	0
1353	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.362122	2019-09-03 04:15:37.378705	5	Apple	iphone-xs-1353	0	400	2	9	0
1358	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.566534	2019-09-03 04:15:37.569149	5	Apple	iphone-xs-1358	0	400	2	9	0
1365	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.693919	2019-09-03 04:15:37.698304	5	Apple	iphone-xs-1365	0	400	2	9	0
1370	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.853395	2019-09-03 04:15:37.857002	5	Apple	iphone-xs-1370	0	400	2	9	0
1375	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.997987	2019-09-03 04:15:38.002187	5	Apple	iphone-xs-1375	0	400	2	9	0
1380	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.11564	2019-09-03 04:15:38.119977	5	Apple	iphone-xs-1380	0	400	2	9	0
1385	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.236212	2019-09-03 04:15:38.245084	5	Apple	iphone-xs-1385	0	400	2	9	0
1389	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.359137	2019-09-03 04:15:38.367321	5	Apple	iphone-xs-1389	0	400	2	9	0
1395	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.575525	2019-09-03 04:15:38.578273	5	Apple	iphone-xs-1395	0	400	2	9	0
1397	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.677303	2019-09-03 04:15:38.684227	5	Apple	iphone-xs-1397	0	400	2	9	0
1405	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.809657	2019-09-03 04:15:38.815048	5	Apple	iphone-xs-1405	0	400	2	9	0
1410	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.94645	2019-09-03 04:15:38.953074	5	Apple	iphone-xs-1410	0	400	2	9	0
1414	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.072041	2019-09-03 04:15:39.079708	5	Apple	iphone-xs-1414	0	400	2	9	0
1420	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.211728	2019-09-03 04:15:39.219609	5	Apple	iphone-xs-1420	0	400	2	9	0
1281	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.17894	2019-09-03 04:15:35.186391	5	Apple	iphone-xs-1281	0	400	2	9	0
1286	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.296784	2019-09-03 04:15:35.298955	5	Apple	iphone-xs-1286	0	400	2	9	0
1202	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:32.758042	2019-09-03 04:15:32.762142	5	Apple	iphone-xs-1202	0	400	2	9	0
1207	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:32.866517	2019-09-03 04:15:32.874294	5	Apple	iphone-xs-1207	0	400	2	9	0
1291	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.429823	2019-09-03 04:15:35.435254	5	Apple	iphone-xs-1291	0	400	2	9	0
1210	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:32.999286	2019-09-03 04:15:33.00367	5	Apple	iphone-xs-1210	0	400	2	9	0
1215	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.152389	2019-09-03 04:15:33.163987	5	Apple	iphone-xs-1215	0	400	2	9	0
1295	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.603611	2019-09-03 04:15:35.609635	5	Apple	iphone-xs-1295	0	400	2	9	0
1221	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.28583	2019-09-03 04:15:33.297679	5	Apple	iphone-xs-1221	0	400	2	9	0
1226	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.407246	2019-09-03 04:15:33.416892	5	Apple	iphone-xs-1226	0	400	2	9	0
1300	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.728464	2019-09-03 04:15:35.732219	5	Apple	iphone-xs-1300	0	400	2	9	0
1230	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.644164	2019-09-03 04:15:33.701343	5	Apple	iphone-xs-1230	0	400	2	9	0
1235	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.814502	2019-09-03 04:15:33.820242	5	Apple	iphone-xs-1235	0	400	2	9	0
1305	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.867885	2019-09-03 04:15:35.875046	5	Apple	iphone-xs-1305	0	400	2	9	0
1240	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.953312	2019-09-03 04:15:33.961075	5	Apple	iphone-xs-1240	0	400	2	9	0
1247	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.092832	2019-09-03 04:15:34.105058	5	Apple	iphone-xs-1247	0	400	2	9	0
1310	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.035245	2019-09-03 04:15:36.039407	5	Apple	iphone-xs-1310	0	400	2	9	0
1253	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.258016	2019-09-03 04:15:34.267306	5	Apple	iphone-xs-1253	0	400	2	9	0
1259	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.414073	2019-09-03 04:15:34.41723	5	Apple	iphone-xs-1259	0	400	2	9	0
1315	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.149467	2019-09-03 04:15:36.155981	5	Apple	iphone-xs-1315	0	400	2	9	0
1264	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.626544	2019-09-03 04:15:34.635254	5	Apple	iphone-xs-1264	0	400	2	9	0
1269	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.786743	2019-09-03 04:15:34.80227	5	Apple	iphone-xs-1269	0	400	2	9	0
1320	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.304048	2019-09-03 04:15:36.314799	5	Apple	iphone-xs-1320	0	400	2	9	0
1325	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.53632	2019-09-03 04:15:36.551687	5	Apple	iphone-xs-1325	0	400	2	9	0
1330	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.667484	2019-09-03 04:15:36.676784	5	Apple	iphone-xs-1330	0	400	2	9	0
1335	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.819733	2019-09-03 04:15:36.825157	5	Apple	iphone-xs-1335	0	400	2	9	0
1340	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.931298	2019-09-03 04:15:36.949643	5	Apple	iphone-xs-1340	0	400	2	9	0
1344	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.07304	2019-09-03 04:15:37.088671	5	Apple	iphone-xs-1344	0	400	2	9	0
1350	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.252882	2019-09-03 04:15:37.262068	5	Apple	iphone-xs-1350	0	400	2	9	0
1355	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.390657	2019-09-03 04:15:37.396794	5	Apple	iphone-xs-1355	0	400	2	9	0
1360	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.581217	2019-09-03 04:15:37.587203	5	Apple	iphone-xs-1360	0	400	2	9	0
1363	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.675822	2019-09-03 04:15:37.682895	5	Apple	iphone-xs-1363	0	400	2	9	0
1367	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.784328	2019-09-03 04:15:37.81156	5	Apple	iphone-xs-1367	0	400	2	9	0
1371	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.920391	2019-09-03 04:15:37.931061	5	Apple	iphone-xs-1371	0	400	2	9	0
1376	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.065319	2019-09-03 04:15:38.073473	5	Apple	iphone-xs-1376	0	400	2	9	0
1384	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.225976	2019-09-03 04:15:38.239118	5	Apple	iphone-xs-1384	0	400	2	9	0
1390	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.370676	2019-09-03 04:15:38.375329	5	Apple	iphone-xs-1390	0	400	2	9	0
1393	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.569112	2019-09-03 04:15:38.574192	5	Apple	iphone-xs-1393	0	400	2	9	0
1398	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.678754	2019-09-03 04:15:38.68285	5	Apple	iphone-xs-1398	0	400	2	9	0
1401	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.787414	2019-09-03 04:15:38.792067	5	Apple	iphone-xs-1401	0	400	2	9	0
1408	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.925152	2019-09-03 04:15:38.93567	5	Apple	iphone-xs-1408	0	400	2	9	0
1412	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.06317	2019-09-03 04:15:39.069183	5	Apple	iphone-xs-1412	0	400	2	9	0
1417	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.152246	2019-09-03 04:15:39.164574	5	Apple	iphone-xs-1417	0	400	2	9	0
1422	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.284173	2019-09-03 04:15:39.29019	5	Apple	iphone-xs-1422	0	400	2	9	0
1424	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.332868	2019-09-03 04:15:39.341137	5	Apple	iphone-xs-1424	0	400	2	9	0
1282	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.184401	2019-09-03 04:15:35.19563	5	Apple	iphone-xs-1282	0	400	2	9	0
2162	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.164423	2019-09-03 04:16:35.166819	5	Apple	iphone-xs-2162	0	400	2	9	0
1288	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.352302	2019-09-03 04:15:35.360255	5	Apple	iphone-xs-1288	0	400	2	9	0
1204	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:32.82273	2019-09-03 04:15:32.831831	5	Apple	iphone-xs-1204	0	400	2	9	0
1209	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:32.934953	2019-09-03 04:15:32.942513	5	Apple	iphone-xs-1209	0	400	2	9	0
1293	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.567575	2019-09-03 04:15:35.576994	5	Apple	iphone-xs-1293	0	400	2	9	0
1213	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.038169	2019-09-03 04:15:33.039995	5	Apple	iphone-xs-1213	0	400	2	9	0
1218	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.201181	2019-09-03 04:15:33.211044	5	Apple	iphone-xs-1218	0	400	2	9	0
1298	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.686972	2019-09-03 04:15:35.694761	5	Apple	iphone-xs-1298	0	400	2	9	0
1224	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.338426	2019-09-03 04:15:33.344632	5	Apple	iphone-xs-1224	0	400	2	9	0
1228	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.545382	2019-09-03 04:15:33.558314	5	Apple	iphone-xs-1228	0	400	2	9	0
1302	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.816505	2019-09-03 04:15:35.833363	5	Apple	iphone-xs-1302	0	400	2	9	0
1233	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.728711	2019-09-03 04:15:33.739517	5	Apple	iphone-xs-1233	0	400	2	9	0
1239	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.849814	2019-09-03 04:15:33.858311	5	Apple	iphone-xs-1239	0	400	2	9	0
1309	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.977948	2019-09-03 04:15:35.987507	5	Apple	iphone-xs-1309	0	400	2	9	0
1243	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.993038	2019-09-03 04:15:34.000203	5	Apple	iphone-xs-1243	0	400	2	9	0
1249	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.110865	2019-09-03 04:15:34.112881	5	Apple	iphone-xs-1249	0	400	2	9	0
1313	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.085798	2019-09-03 04:15:36.094359	5	Apple	iphone-xs-1313	0	400	2	9	0
1252	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.246745	2019-09-03 04:15:34.255381	5	Apple	iphone-xs-1252	0	400	2	9	0
1257	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.394121	2019-09-03 04:15:34.400662	5	Apple	iphone-xs-1257	0	400	2	9	0
1319	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.237214	2019-09-03 04:15:36.243726	5	Apple	iphone-xs-1319	0	400	2	9	0
1262	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.614572	2019-09-03 04:15:34.622155	5	Apple	iphone-xs-1262	0	400	2	9	0
1267	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.753003	2019-09-03 04:15:34.762461	5	Apple	iphone-xs-1267	0	400	2	9	0
1324	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.440123	2019-09-03 04:15:36.44945	5	Apple	iphone-xs-1324	0	400	2	9	0
1328	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.6211	2019-09-03 04:15:36.627318	5	Apple	iphone-xs-1328	0	400	2	9	0
1332	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.735574	2019-09-03 04:15:36.742029	5	Apple	iphone-xs-1332	0	400	2	9	0
1337	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.864933	2019-09-03 04:15:36.880788	5	Apple	iphone-xs-1337	0	400	2	9	0
1342	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.004892	2019-09-03 04:15:37.017329	5	Apple	iphone-xs-1342	0	400	2	9	0
1346	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.152915	2019-09-03 04:15:37.156546	5	Apple	iphone-xs-1346	0	400	2	9	0
1351	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.298291	2019-09-03 04:15:37.308856	5	Apple	iphone-xs-1351	0	400	2	9	0
1356	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.404726	2019-09-03 04:15:37.417249	5	Apple	iphone-xs-1356	0	400	2	9	0
1361	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.648326	2019-09-03 04:15:37.661716	5	Apple	iphone-xs-1361	0	400	2	9	0
1366	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.763932	2019-09-03 04:15:37.775363	5	Apple	iphone-xs-1366	0	400	2	9	0
1372	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.938978	2019-09-03 04:15:37.954168	5	Apple	iphone-xs-1372	0	400	2	9	0
1377	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.074531	2019-09-03 04:15:38.082271	5	Apple	iphone-xs-1377	0	400	2	9	0
1381	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.204137	2019-09-03 04:15:38.213163	5	Apple	iphone-xs-1381	0	400	2	9	0
1388	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.357274	2019-09-03 04:15:38.363341	5	Apple	iphone-xs-1388	0	400	2	9	0
1394	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.570362	2019-09-03 04:15:38.577374	5	Apple	iphone-xs-1394	0	400	2	9	0
1396	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.668513	2019-09-03 04:15:38.671838	5	Apple	iphone-xs-1396	0	400	2	9	0
1403	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.802909	2019-09-03 04:15:38.807731	5	Apple	iphone-xs-1403	0	400	2	9	0
1407	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.920365	2019-09-03 04:15:38.933668	5	Apple	iphone-xs-1407	0	400	2	9	0
1415	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.077815	2019-09-03 04:15:39.081297	5	Apple	iphone-xs-1415	0	400	2	9	0
1418	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.193477	2019-09-03 04:15:39.202614	5	Apple	iphone-xs-1418	0	400	2	9	0
1423	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.304064	2019-09-03 04:15:39.313961	5	Apple	iphone-xs-1423	0	400	2	9	0
1200	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:32.7366	2019-09-03 04:15:32.742228	5	Apple	iphone-xs-1200	0	400	2	9	0
1283	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.193122	2019-09-03 04:15:35.210911	5	Apple	iphone-xs-1283	0	400	2	9	0
1205	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:32.85003	2019-09-03 04:15:32.85447	5	Apple	iphone-xs-1205	0	400	2	9	0
1211	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.000888	2019-09-03 04:15:33.005247	5	Apple	iphone-xs-1211	0	400	2	9	0
1287	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.346571	2019-09-03 04:15:35.358743	5	Apple	iphone-xs-1287	0	400	2	9	0
1216	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.161448	2019-09-03 04:15:33.176232	5	Apple	iphone-xs-1216	0	400	2	9	0
1220	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.278267	2019-09-03 04:15:33.282019	5	Apple	iphone-xs-1220	0	400	2	9	0
1292	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.55758	2019-09-03 04:15:35.568629	5	Apple	iphone-xs-1292	0	400	2	9	0
1225	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.388622	2019-09-03 04:15:33.399087	5	Apple	iphone-xs-1225	0	400	2	9	0
1231	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.650986	2019-09-03 04:15:33.704317	5	Apple	iphone-xs-1231	0	400	2	9	0
1299	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.707922	2019-09-03 04:15:35.713012	5	Apple	iphone-xs-1299	0	400	2	9	0
1237	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.834697	2019-09-03 04:15:33.838816	5	Apple	iphone-xs-1237	0	400	2	9	0
1241	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.98149	2019-09-03 04:15:33.984718	5	Apple	iphone-xs-1241	0	400	2	9	0
1304	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.848193	2019-09-03 04:15:35.851577	5	Apple	iphone-xs-1304	0	400	2	9	0
1245	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.079622	2019-09-03 04:15:34.096646	5	Apple	iphone-xs-1245	0	400	2	9	0
1250	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.218215	2019-09-03 04:15:34.231039	5	Apple	iphone-xs-1250	0	400	2	9	0
1307	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.966394	2019-09-03 04:15:35.97105	5	Apple	iphone-xs-1307	0	400	2	9	0
1255	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.367795	2019-09-03 04:15:34.376759	5	Apple	iphone-xs-1255	0	400	2	9	0
1260	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.591093	2019-09-03 04:15:34.607821	5	Apple	iphone-xs-1260	0	400	2	9	0
1266	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.737208	2019-09-03 04:15:34.74747	5	Apple	iphone-xs-1266	0	400	2	9	0
1312	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.0808	2019-09-03 04:15:36.083964	5	Apple	iphone-xs-1312	0	400	2	9	0
1318	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.222395	2019-09-03 04:15:36.231226	5	Apple	iphone-xs-1318	0	400	2	9	0
1322	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.378822	2019-09-03 04:15:36.389546	5	Apple	iphone-xs-1322	0	400	2	9	0
1327	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.615778	2019-09-03 04:15:36.618657	5	Apple	iphone-xs-1327	0	400	2	9	0
1333	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.754211	2019-09-03 04:15:36.76134	5	Apple	iphone-xs-1333	0	400	2	9	0
1338	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.906863	2019-09-03 04:15:36.915587	5	Apple	iphone-xs-1338	0	400	2	9	0
1343	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.066188	2019-09-03 04:15:37.086902	5	Apple	iphone-xs-1343	0	400	2	9	0
1349	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.244501	2019-09-03 04:15:37.249519	5	Apple	iphone-xs-1349	0	400	2	9	0
1354	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.367161	2019-09-03 04:15:37.375247	5	Apple	iphone-xs-1354	0	400	2	9	0
1359	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.576662	2019-09-03 04:15:37.583922	5	Apple	iphone-xs-1359	0	400	2	9	0
1364	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.68939	2019-09-03 04:15:37.696637	5	Apple	iphone-xs-1364	0	400	2	9	0
1369	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.827372	2019-09-03 04:15:37.834829	5	Apple	iphone-xs-1369	0	400	2	9	0
1374	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.980147	2019-09-03 04:15:37.98647	5	Apple	iphone-xs-1374	0	400	2	9	0
1378	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.075341	2019-09-03 04:15:38.079659	5	Apple	iphone-xs-1378	0	400	2	9	0
1383	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.221954	2019-09-03 04:15:38.237633	5	Apple	iphone-xs-1383	0	400	2	9	0
1387	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.355021	2019-09-03 04:15:38.361057	5	Apple	iphone-xs-1387	0	400	2	9	0
1392	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.566862	2019-09-03 04:15:38.573205	5	Apple	iphone-xs-1392	0	400	2	9	0
1400	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.687535	2019-09-03 04:15:38.691442	5	Apple	iphone-xs-1400	0	400	2	9	0
1402	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.799302	2019-09-03 04:15:38.804632	5	Apple	iphone-xs-1402	0	400	2	9	0
1406	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.8929	2019-09-03 04:15:38.898554	5	Apple	iphone-xs-1406	0	400	2	9	0
1411	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.04426	2019-09-03 04:15:39.050264	5	Apple	iphone-xs-1411	0	400	2	9	0
1416	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.139014	2019-09-03 04:15:39.150175	5	Apple	iphone-xs-1416	0	400	2	9	0
1421	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.276954	2019-09-03 04:15:39.287975	5	Apple	iphone-xs-1421	0	400	2	9	0
1426	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.38605	2019-09-03 04:15:39.392291	5	Apple	iphone-xs-1426	0	400	2	9	0
1427	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.415048	2019-09-03 04:15:39.434058	5	Apple	iphone-xs-1427	0	400	2	9	0
1429	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.548531	2019-09-03 04:15:39.552004	5	Apple	iphone-xs-1429	0	400	2	9	0
1430	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.570598	2019-09-03 04:15:39.574355	5	Apple	iphone-xs-1430	0	400	2	9	0
1212	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.027419	2019-09-03 04:15:33.034228	5	Apple	iphone-xs-1212	0	400	2	9	0
1217	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.182127	2019-09-03 04:15:33.197501	5	Apple	iphone-xs-1217	0	400	2	9	0
1284	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.224592	2019-09-03 04:15:35.232592	5	Apple	iphone-xs-1284	0	400	2	9	0
1222	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.313371	2019-09-03 04:15:33.325389	5	Apple	iphone-xs-1222	0	400	2	9	0
1229	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.546759	2019-09-03 04:15:33.557244	5	Apple	iphone-xs-1229	0	400	2	9	0
1289	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.353821	2019-09-03 04:15:35.376001	5	Apple	iphone-xs-1289	0	400	2	9	0
1232	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.715167	2019-09-03 04:15:33.719593	5	Apple	iphone-xs-1232	0	400	2	9	0
1236	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.817817	2019-09-03 04:15:33.826806	5	Apple	iphone-xs-1236	0	400	2	9	0
1294	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.570002	2019-09-03 04:15:35.583301	5	Apple	iphone-xs-1294	0	400	2	9	0
1242	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:33.985735	2019-09-03 04:15:33.991842	5	Apple	iphone-xs-1242	0	400	2	9	0
1248	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.108506	2019-09-03 04:15:34.115801	5	Apple	iphone-xs-1248	0	400	2	9	0
1297	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.68241	2019-09-03 04:15:35.685775	5	Apple	iphone-xs-1297	0	400	2	9	0
1254	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.261852	2019-09-03 04:15:34.270272	5	Apple	iphone-xs-1254	0	400	2	9	0
1258	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.398952	2019-09-03 04:15:34.40479	5	Apple	iphone-xs-1258	0	400	2	9	0
1303	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.827559	2019-09-03 04:15:35.83572	5	Apple	iphone-xs-1303	0	400	2	9	0
1263	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.616147	2019-09-03 04:15:34.624523	5	Apple	iphone-xs-1263	0	400	2	9	0
1268	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:34.77171	2019-09-03 04:15:34.776508	5	Apple	iphone-xs-1268	0	400	2	9	0
1308	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:35.971773	2019-09-03 04:15:35.975883	5	Apple	iphone-xs-1308	0	400	2	9	0
1314	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.089142	2019-09-03 04:15:36.098976	5	Apple	iphone-xs-1314	0	400	2	9	0
1317	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.212525	2019-09-03 04:15:36.221223	5	Apple	iphone-xs-1317	0	400	2	9	0
1323	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.390244	2019-09-03 04:15:36.395841	5	Apple	iphone-xs-1323	0	400	2	9	0
1326	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.607702	2019-09-03 04:15:36.609684	5	Apple	iphone-xs-1326	0	400	2	9	0
1331	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.699665	2019-09-03 04:15:36.714064	5	Apple	iphone-xs-1331	0	400	2	9	0
1336	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.85418	2019-09-03 04:15:36.863875	5	Apple	iphone-xs-1336	0	400	2	9	0
1341	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:36.999536	2019-09-03 04:15:37.016036	5	Apple	iphone-xs-1341	0	400	2	9	0
1347	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.190312	2019-09-03 04:15:37.21293	5	Apple	iphone-xs-1347	0	400	2	9	0
1352	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.33789	2019-09-03 04:15:37.342583	5	Apple	iphone-xs-1352	0	400	2	9	0
1357	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.557416	2019-09-03 04:15:37.562973	5	Apple	iphone-xs-1357	0	400	2	9	0
1362	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.663928	2019-09-03 04:15:37.673077	5	Apple	iphone-xs-1362	0	400	2	9	0
1368	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.813349	2019-09-03 04:15:37.823639	5	Apple	iphone-xs-1368	0	400	2	9	0
1373	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:37.977712	2019-09-03 04:15:37.981553	5	Apple	iphone-xs-1373	0	400	2	9	0
1379	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.083887	2019-09-03 04:15:38.091766	5	Apple	iphone-xs-1379	0	400	2	9	0
1382	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.209178	2019-09-03 04:15:38.220012	5	Apple	iphone-xs-1382	0	400	2	9	0
1386	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.341218	2019-09-03 04:15:38.343193	5	Apple	iphone-xs-1386	0	400	2	9	0
1391	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.555094	2019-09-03 04:15:38.567939	5	Apple	iphone-xs-1391	0	400	2	9	0
1399	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.681264	2019-09-03 04:15:38.685585	5	Apple	iphone-xs-1399	0	400	2	9	0
1404	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.806264	2019-09-03 04:15:38.81177	5	Apple	iphone-xs-1404	0	400	2	9	0
1409	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:38.927235	2019-09-03 04:15:38.943751	5	Apple	iphone-xs-1409	0	400	2	9	0
1413	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.070779	2019-09-03 04:15:39.074895	5	Apple	iphone-xs-1413	0	400	2	9	0
1419	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.209057	2019-09-03 04:15:39.213704	5	Apple	iphone-xs-1419	0	400	2	9	0
1425	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.361479	2019-09-03 04:15:39.365132	5	Apple	iphone-xs-1425	0	400	2	9	0
1428	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.426827	2019-09-03 04:15:39.440438	5	Apple	iphone-xs-1428	0	400	2	9	0
1431	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.582435	2019-09-03 04:15:39.587979	5	Apple	iphone-xs-1431	0	400	2	9	0
1432	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.621562	2019-09-03 04:15:39.630339	5	Apple	iphone-xs-1432	0	400	2	9	0
1433	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.625586	2019-09-03 04:15:39.642513	5	Apple	iphone-xs-1433	0	400	2	9	0
1434	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.687536	2019-09-03 04:15:39.691431	5	Apple	iphone-xs-1434	0	400	2	9	0
1435	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.702827	2019-09-03 04:15:39.708472	5	Apple	iphone-xs-1435	0	400	2	9	0
1436	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.737002	2019-09-03 04:15:39.746082	5	Apple	iphone-xs-1436	0	400	2	9	0
1437	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.757078	2019-09-03 04:15:39.76973	5	Apple	iphone-xs-1437	0	400	2	9	0
1442	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.868574	2019-09-03 04:15:39.871881	5	Apple	iphone-xs-1442	0	400	2	9	0
1447	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.001646	2019-09-03 04:15:40.009171	5	Apple	iphone-xs-1447	0	400	2	9	0
1452	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.128099	2019-09-03 04:15:40.135292	5	Apple	iphone-xs-1452	0	400	2	9	0
1457	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.263341	2019-09-03 04:15:40.270133	5	Apple	iphone-xs-1457	0	400	2	9	0
1462	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.377725	2019-09-03 04:15:40.384931	5	Apple	iphone-xs-1462	0	400	2	9	0
1467	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.561184	2019-09-03 04:15:40.571671	5	Apple	iphone-xs-1467	0	400	2	9	0
1473	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.684005	2019-09-03 04:15:40.690359	5	Apple	iphone-xs-1473	0	400	2	9	0
1478	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.827405	2019-09-03 04:15:40.836654	5	Apple	iphone-xs-1478	0	400	2	9	0
1482	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.930955	2019-09-03 04:15:40.937461	5	Apple	iphone-xs-1482	0	400	2	9	0
1488	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.04806	2019-09-03 04:15:41.065307	5	Apple	iphone-xs-1488	0	400	2	9	0
1493	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.165612	2019-09-03 04:15:41.176828	5	Apple	iphone-xs-1493	0	400	2	9	0
1498	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.299086	2019-09-03 04:15:41.306388	5	Apple	iphone-xs-1498	0	400	2	9	0
1503	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.434644	2019-09-03 04:15:41.440543	5	Apple	iphone-xs-1503	0	400	2	9	0
1507	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.606456	2019-09-03 04:15:41.615842	5	Apple	iphone-xs-1507	0	400	2	9	0
1511	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.705765	2019-09-03 04:15:41.710402	5	Apple	iphone-xs-1511	0	400	2	9	0
1516	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.81737	2019-09-03 04:15:41.827931	5	Apple	iphone-xs-1516	0	400	2	9	0
1521	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.947517	2019-09-03 04:15:41.953604	5	Apple	iphone-xs-1521	0	400	2	9	0
1526	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.069992	2019-09-03 04:15:42.076377	5	Apple	iphone-xs-1526	0	400	2	9	0
1531	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.214865	2019-09-03 04:15:42.217699	5	Apple	iphone-xs-1531	0	400	2	9	0
1536	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.31956	2019-09-03 04:15:42.323932	5	Apple	iphone-xs-1536	0	400	2	9	0
1539	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.419079	2019-09-03 04:15:42.425625	5	Apple	iphone-xs-1539	0	400	2	9	0
1545	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.663324	2019-09-03 04:15:42.667787	5	Apple	iphone-xs-1545	0	400	2	9	0
1549	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.784303	2019-09-03 04:15:42.793847	5	Apple	iphone-xs-1549	0	400	2	9	0
1554	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.912895	2019-09-03 04:15:42.919746	5	Apple	iphone-xs-1554	0	400	2	9	0
1559	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.026765	2019-09-03 04:15:43.038054	5	Apple	iphone-xs-1559	0	400	2	9	0
1564	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.152708	2019-09-03 04:15:43.167633	5	Apple	iphone-xs-1564	0	400	2	9	0
1569	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.282902	2019-09-03 04:15:43.286067	5	Apple	iphone-xs-1569	0	400	2	9	0
1574	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.409346	2019-09-03 04:15:43.417192	5	Apple	iphone-xs-1574	0	400	2	9	0
1579	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.614345	2019-09-03 04:15:43.62005	5	Apple	iphone-xs-1579	0	400	2	9	0
1584	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.785067	2019-09-03 04:15:43.800088	5	Apple	iphone-xs-1584	0	400	2	9	0
1589	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.917314	2019-09-03 04:15:43.928051	5	Apple	iphone-xs-1589	0	400	2	9	0
1594	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.03066	2019-09-03 04:15:44.036984	5	Apple	iphone-xs-1594	0	400	2	9	0
1599	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.15208	2019-09-03 04:15:44.167653	5	Apple	iphone-xs-1599	0	400	2	9	0
1604	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.299507	2019-09-03 04:15:44.306371	5	Apple	iphone-xs-1604	0	400	2	9	0
1609	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.450514	2019-09-03 04:15:44.528179	5	Apple	iphone-xs-1609	0	400	2	9	0
1614	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.645896	2019-09-03 04:15:44.650299	5	Apple	iphone-xs-1614	0	400	2	9	0
1619	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.79047	2019-09-03 04:15:44.800119	5	Apple	iphone-xs-1619	0	400	2	9	0
1624	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.915692	2019-09-03 04:15:44.922526	5	Apple	iphone-xs-1624	0	400	2	9	0
1629	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.055478	2019-09-03 04:15:45.063125	5	Apple	iphone-xs-1629	0	400	2	9	0
1634	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.225002	2019-09-03 04:15:45.235451	5	Apple	iphone-xs-1634	0	400	2	9	0
1639	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.371696	2019-09-03 04:15:45.376043	5	Apple	iphone-xs-1639	0	400	2	9	0
1644	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.575904	2019-09-03 04:15:45.582828	5	Apple	iphone-xs-1644	0	400	2	9	0
1649	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.741268	2019-09-03 04:15:45.749519	5	Apple	iphone-xs-1649	0	400	2	9	0
1654	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.887233	2019-09-03 04:15:45.89146	5	Apple	iphone-xs-1654	0	400	2	9	0
1660	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.000419	2019-09-03 04:15:46.003279	5	Apple	iphone-xs-1660	0	400	2	9	0
1665	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.191302	2019-09-03 04:15:46.199553	5	Apple	iphone-xs-1665	0	400	2	9	0
1438	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.767899	2019-09-03 04:15:39.778934	5	Apple	iphone-xs-1438	0	400	2	9	0
1443	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.887092	2019-09-03 04:15:39.900407	5	Apple	iphone-xs-1443	0	400	2	9	0
1448	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.025969	2019-09-03 04:15:40.031871	5	Apple	iphone-xs-1448	0	400	2	9	0
1453	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.133581	2019-09-03 04:15:40.145431	5	Apple	iphone-xs-1453	0	400	2	9	0
1458	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.274311	2019-09-03 04:15:40.28319	5	Apple	iphone-xs-1458	0	400	2	9	0
1463	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.39025	2019-09-03 04:15:40.393423	5	Apple	iphone-xs-1463	0	400	2	9	0
1468	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.568795	2019-09-03 04:15:40.576001	5	Apple	iphone-xs-1468	0	400	2	9	0
1472	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.679193	2019-09-03 04:15:40.685438	5	Apple	iphone-xs-1472	0	400	2	9	0
1477	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.800157	2019-09-03 04:15:40.830136	5	Apple	iphone-xs-1477	0	400	2	9	0
1483	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.942812	2019-09-03 04:15:40.951558	5	Apple	iphone-xs-1483	0	400	2	9	0
1487	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.044753	2019-09-03 04:15:41.05073	5	Apple	iphone-xs-1487	0	400	2	9	0
1492	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.152875	2019-09-03 04:15:41.159745	5	Apple	iphone-xs-1492	0	400	2	9	0
1496	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.268408	2019-09-03 04:15:41.281784	5	Apple	iphone-xs-1496	0	400	2	9	0
1501	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.415257	2019-09-03 04:15:41.421735	5	Apple	iphone-xs-1501	0	400	2	9	0
1508	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.634988	2019-09-03 04:15:41.643267	5	Apple	iphone-xs-1508	0	400	2	9	0
1514	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.768788	2019-09-03 04:15:41.7746	5	Apple	iphone-xs-1514	0	400	2	9	0
1518	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.876766	2019-09-03 04:15:41.884832	5	Apple	iphone-xs-1518	0	400	2	9	0
1525	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.023591	2019-09-03 04:15:42.032802	5	Apple	iphone-xs-1525	0	400	2	9	0
1528	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.147985	2019-09-03 04:15:42.154729	5	Apple	iphone-xs-1528	0	400	2	9	0
1533	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.28943	2019-09-03 04:15:42.300391	5	Apple	iphone-xs-1533	0	400	2	9	0
1538	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.402588	2019-09-03 04:15:42.412977	5	Apple	iphone-xs-1538	0	400	2	9	0
1543	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.650454	2019-09-03 04:15:42.655693	5	Apple	iphone-xs-1543	0	400	2	9	0
1548	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.744156	2019-09-03 04:15:42.751268	5	Apple	iphone-xs-1548	0	400	2	9	0
1553	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.841575	2019-09-03 04:15:42.849549	5	Apple	iphone-xs-1553	0	400	2	9	0
1558	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.961147	2019-09-03 04:15:42.971964	5	Apple	iphone-xs-1558	0	400	2	9	0
1562	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.07227	2019-09-03 04:15:43.076277	5	Apple	iphone-xs-1562	0	400	2	9	0
1567	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.256217	2019-09-03 04:15:43.26912	5	Apple	iphone-xs-1567	0	400	2	9	0
1571	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.365716	2019-09-03 04:15:43.374535	5	Apple	iphone-xs-1571	0	400	2	9	0
1578	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.583664	2019-09-03 04:15:43.596258	5	Apple	iphone-xs-1578	0	400	2	9	0
1582	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.736949	2019-09-03 04:15:43.747303	5	Apple	iphone-xs-1582	0	400	2	9	0
1588	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.87073	2019-09-03 04:15:43.876681	5	Apple	iphone-xs-1588	0	400	2	9	0
1593	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.99994	2019-09-03 04:15:44.008003	5	Apple	iphone-xs-1593	0	400	2	9	0
1598	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.119271	2019-09-03 04:15:44.129495	5	Apple	iphone-xs-1598	0	400	2	9	0
1603	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.272223	2019-09-03 04:15:44.278656	5	Apple	iphone-xs-1603	0	400	2	9	0
1608	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.430185	2019-09-03 04:15:44.43794	5	Apple	iphone-xs-1608	0	400	2	9	0
1611	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.622093	2019-09-03 04:15:44.631352	5	Apple	iphone-xs-1611	0	400	2	9	0
1615	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.724549	2019-09-03 04:15:44.737509	5	Apple	iphone-xs-1615	0	400	2	9	0
1621	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.863144	2019-09-03 04:15:44.869435	5	Apple	iphone-xs-1621	0	400	2	9	0
1626	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.99242	2019-09-03 04:15:44.997144	5	Apple	iphone-xs-1626	0	400	2	9	0
1630	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.115821	2019-09-03 04:15:45.131315	5	Apple	iphone-xs-1630	0	400	2	9	0
1635	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.272207	2019-09-03 04:15:45.284296	5	Apple	iphone-xs-1635	0	400	2	9	0
1640	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.386709	2019-09-03 04:15:45.40369	5	Apple	iphone-xs-1640	0	400	2	9	0
1645	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.581503	2019-09-03 04:15:45.613817	5	Apple	iphone-xs-1645	0	400	2	9	0
1650	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.743803	2019-09-03 04:15:45.754405	5	Apple	iphone-xs-1650	0	400	2	9	0
1655	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.893229	2019-09-03 04:15:45.905207	5	Apple	iphone-xs-1655	0	400	2	9	0
1661	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.013471	2019-09-03 04:15:46.071613	5	Apple	iphone-xs-1661	0	400	2	9	0
1666	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.198017	2019-09-03 04:15:46.202606	5	Apple	iphone-xs-1666	0	400	2	9	0
1439	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.808815	2019-09-03 04:15:39.813339	5	Apple	iphone-xs-1439	0	400	2	9	0
1444	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.939999	2019-09-03 04:15:39.952405	5	Apple	iphone-xs-1444	0	400	2	9	0
1449	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.05384	2019-09-03 04:15:40.065317	5	Apple	iphone-xs-1449	0	400	2	9	0
1454	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.188418	2019-09-03 04:15:40.192172	5	Apple	iphone-xs-1454	0	400	2	9	0
1459	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.326415	2019-09-03 04:15:40.342478	5	Apple	iphone-xs-1459	0	400	2	9	0
1465	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.539723	2019-09-03 04:15:40.546084	5	Apple	iphone-xs-1465	0	400	2	9	0
1471	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.651923	2019-09-03 04:15:40.666779	5	Apple	iphone-xs-1471	0	400	2	9	0
1475	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.75861	2019-09-03 04:15:40.765864	5	Apple	iphone-xs-1475	0	400	2	9	0
1479	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.867972	2019-09-03 04:15:40.872837	5	Apple	iphone-xs-1479	0	400	2	9	0
1486	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.99236	2019-09-03 04:15:41.003098	5	Apple	iphone-xs-1486	0	400	2	9	0
1490	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.115049	2019-09-03 04:15:41.118685	5	Apple	iphone-xs-1490	0	400	2	9	0
1495	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.21817	2019-09-03 04:15:41.232491	5	Apple	iphone-xs-1495	0	400	2	9	0
1499	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.364006	2019-09-03 04:15:41.372643	5	Apple	iphone-xs-1499	0	400	2	9	0
1505	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.536343	2019-09-03 04:15:41.542318	5	Apple	iphone-xs-1505	0	400	2	9	0
1510	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.649525	2019-09-03 04:15:41.652616	5	Apple	iphone-xs-1510	0	400	2	9	0
1515	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.775635	2019-09-03 04:15:41.778355	5	Apple	iphone-xs-1515	0	400	2	9	0
1520	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.896777	2019-09-03 04:15:41.904433	5	Apple	iphone-xs-1520	0	400	2	9	0
1524	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.018582	2019-09-03 04:15:42.029764	5	Apple	iphone-xs-1524	0	400	2	9	0
1530	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.164389	2019-09-03 04:15:42.192494	5	Apple	iphone-xs-1530	0	400	2	9	0
1535	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.305198	2019-09-03 04:15:42.31079	5	Apple	iphone-xs-1535	0	400	2	9	0
1540	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.42826	2019-09-03 04:15:42.435649	5	Apple	iphone-xs-1540	0	400	2	9	0
1546	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.664556	2019-09-03 04:15:42.670581	5	Apple	iphone-xs-1546	0	400	2	9	0
1550	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.78608	2019-09-03 04:15:42.798248	5	Apple	iphone-xs-1550	0	400	2	9	0
1556	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.934202	2019-09-03 04:15:42.944701	5	Apple	iphone-xs-1556	0	400	2	9	0
1560	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.061988	2019-09-03 04:15:43.069397	5	Apple	iphone-xs-1560	0	400	2	9	0
1565	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.199834	2019-09-03 04:15:43.204418	5	Apple	iphone-xs-1565	0	400	2	9	0
1570	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.359109	2019-09-03 04:15:43.36796	5	Apple	iphone-xs-1570	0	400	2	9	0
1575	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.559784	2019-09-03 04:15:43.568306	5	Apple	iphone-xs-1575	0	400	2	9	0
1580	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.655816	2019-09-03 04:15:43.665763	5	Apple	iphone-xs-1580	0	400	2	9	0
1585	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.814489	2019-09-03 04:15:43.824666	5	Apple	iphone-xs-1585	0	400	2	9	0
1591	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.973888	2019-09-03 04:15:43.981502	5	Apple	iphone-xs-1591	0	400	2	9	0
1595	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.090452	2019-09-03 04:15:44.100529	5	Apple	iphone-xs-1595	0	400	2	9	0
1600	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.233507	2019-09-03 04:15:44.245726	5	Apple	iphone-xs-1600	0	400	2	9	0
1605	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.387556	2019-09-03 04:15:44.403057	5	Apple	iphone-xs-1605	0	400	2	9	0
1610	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.603996	2019-09-03 04:15:44.615182	5	Apple	iphone-xs-1610	0	400	2	9	0
1617	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.747223	2019-09-03 04:15:44.752536	5	Apple	iphone-xs-1617	0	400	2	9	0
1620	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.861437	2019-09-03 04:15:44.871777	5	Apple	iphone-xs-1620	0	400	2	9	0
1625	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.989509	2019-09-03 04:15:45.015739	5	Apple	iphone-xs-1625	0	400	2	9	0
1631	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.133075	2019-09-03 04:15:45.142449	5	Apple	iphone-xs-1631	0	400	2	9	0
1636	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.289303	2019-09-03 04:15:45.298945	5	Apple	iphone-xs-1636	0	400	2	9	0
1641	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.433515	2019-09-03 04:15:45.445448	5	Apple	iphone-xs-1641	0	400	2	9	0
1646	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.648912	2019-09-03 04:15:45.653525	5	Apple	iphone-xs-1646	0	400	2	9	0
1651	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.775657	2019-09-03 04:15:45.782284	5	Apple	iphone-xs-1651	0	400	2	9	0
1656	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.898085	2019-09-03 04:15:45.904074	5	Apple	iphone-xs-1656	0	400	2	9	0
1659	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.998905	2019-09-03 04:15:46.00832	5	Apple	iphone-xs-1659	0	400	2	9	0
1664	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.18909	2019-09-03 04:15:46.196571	5	Apple	iphone-xs-1664	0	400	2	9	0
1671	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.364965	2019-09-03 04:15:46.375989	5	Apple	iphone-xs-1671	0	400	2	9	0
2164	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.17426	2019-09-03 04:16:35.187341	5	Apple	iphone-xs-2164	0	400	2	9	0
1440	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.824183	2019-09-03 04:15:39.832709	5	Apple	iphone-xs-1440	0	400	2	9	0
1446	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.976463	2019-09-03 04:15:39.986958	5	Apple	iphone-xs-1446	0	400	2	9	0
1451	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.092076	2019-09-03 04:15:40.100734	5	Apple	iphone-xs-1451	0	400	2	9	0
1456	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.208971	2019-09-03 04:15:40.236517	5	Apple	iphone-xs-1456	0	400	2	9	0
1460	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.339549	2019-09-03 04:15:40.346174	5	Apple	iphone-xs-1460	0	400	2	9	0
1464	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.527533	2019-09-03 04:15:40.533021	5	Apple	iphone-xs-1464	0	400	2	9	0
1469	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.630342	2019-09-03 04:15:40.63846	5	Apple	iphone-xs-1469	0	400	2	9	0
1474	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.728165	2019-09-03 04:15:40.737064	5	Apple	iphone-xs-1474	0	400	2	9	0
1481	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.873911	2019-09-03 04:15:40.8799	5	Apple	iphone-xs-1481	0	400	2	9	0
1484	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.979871	2019-09-03 04:15:40.985117	5	Apple	iphone-xs-1484	0	400	2	9	0
1489	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.091271	2019-09-03 04:15:41.104136	5	Apple	iphone-xs-1489	0	400	2	9	0
1494	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.200738	2019-09-03 04:15:41.205897	5	Apple	iphone-xs-1494	0	400	2	9	0
1500	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.365502	2019-09-03 04:15:41.370489	5	Apple	iphone-xs-1500	0	400	2	9	0
1504	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.533843	2019-09-03 04:15:41.539417	5	Apple	iphone-xs-1504	0	400	2	9	0
1509	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.637391	2019-09-03 04:15:41.644134	5	Apple	iphone-xs-1509	0	400	2	9	0
1513	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.757957	2019-09-03 04:15:41.764626	5	Apple	iphone-xs-1513	0	400	2	9	0
1519	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.891736	2019-09-03 04:15:41.894043	5	Apple	iphone-xs-1519	0	400	2	9	0
1523	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.012398	2019-09-03 04:15:42.020204	5	Apple	iphone-xs-1523	0	400	2	9	0
1529	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.152196	2019-09-03 04:15:42.158181	5	Apple	iphone-xs-1529	0	400	2	9	0
1534	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.301042	2019-09-03 04:15:42.306106	5	Apple	iphone-xs-1534	0	400	2	9	0
1541	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.432159	2019-09-03 04:15:42.443657	5	Apple	iphone-xs-1541	0	400	2	9	0
1544	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.659272	2019-09-03 04:15:42.671397	5	Apple	iphone-xs-1544	0	400	2	9	0
1551	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.803757	2019-09-03 04:15:42.811383	5	Apple	iphone-xs-1551	0	400	2	9	0
1557	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.946838	2019-09-03 04:15:42.951648	5	Apple	iphone-xs-1557	0	400	2	9	0
1561	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.06712	2019-09-03 04:15:43.070707	5	Apple	iphone-xs-1561	0	400	2	9	0
1566	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.225761	2019-09-03 04:15:43.236938	5	Apple	iphone-xs-1566	0	400	2	9	0
1572	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.370235	2019-09-03 04:15:43.377317	5	Apple	iphone-xs-1572	0	400	2	9	0
1576	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.572819	2019-09-03 04:15:43.582884	5	Apple	iphone-xs-1576	0	400	2	9	0
1581	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.708036	2019-09-03 04:15:43.71834	5	Apple	iphone-xs-1581	0	400	2	9	0
1586	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.854932	2019-09-03 04:15:43.863706	5	Apple	iphone-xs-1586	0	400	2	9	0
1590	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.966858	2019-09-03 04:15:43.978666	5	Apple	iphone-xs-1590	0	400	2	9	0
1596	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.099285	2019-09-03 04:15:44.107229	5	Apple	iphone-xs-1596	0	400	2	9	0
1601	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.253947	2019-09-03 04:15:44.259579	5	Apple	iphone-xs-1601	0	400	2	9	0
1607	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.417068	2019-09-03 04:15:44.426474	5	Apple	iphone-xs-1607	0	400	2	9	0
1613	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.629781	2019-09-03 04:15:44.636758	5	Apple	iphone-xs-1613	0	400	2	9	0
1618	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.772759	2019-09-03 04:15:44.77904	5	Apple	iphone-xs-1618	0	400	2	9	0
1623	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.894733	2019-09-03 04:15:44.900049	5	Apple	iphone-xs-1623	0	400	2	9	0
1627	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.043518	2019-09-03 04:15:45.049881	5	Apple	iphone-xs-1627	0	400	2	9	0
1632	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.18646	2019-09-03 04:15:45.200667	5	Apple	iphone-xs-1632	0	400	2	9	0
1637	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.328168	2019-09-03 04:15:45.339203	5	Apple	iphone-xs-1637	0	400	2	9	0
1642	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.443075	2019-09-03 04:15:45.449927	5	Apple	iphone-xs-1642	0	400	2	9	0
1647	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.67831	2019-09-03 04:15:45.713691	5	Apple	iphone-xs-1647	0	400	2	9	0
1653	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.849496	2019-09-03 04:15:45.852771	5	Apple	iphone-xs-1653	0	400	2	9	0
1657	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.938912	2019-09-03 04:15:45.948197	5	Apple	iphone-xs-1657	0	400	2	9	0
1663	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.135118	2019-09-03 04:15:46.15148	5	Apple	iphone-xs-1663	0	400	2	9	0
1668	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.293845	2019-09-03 04:15:46.302212	5	Apple	iphone-xs-1668	0	400	2	9	0
1673	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.429015	2019-09-03 04:15:46.436306	5	Apple	iphone-xs-1673	0	400	2	9	0
2165	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.184542	2019-09-03 04:16:35.190646	5	Apple	iphone-xs-2165	0	400	2	9	0
1441	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.828072	2019-09-03 04:15:39.834521	5	Apple	iphone-xs-1441	0	400	2	9	0
1445	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:39.971887	2019-09-03 04:15:39.985717	5	Apple	iphone-xs-1445	0	400	2	9	0
1450	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.079523	2019-09-03 04:15:40.087045	5	Apple	iphone-xs-1450	0	400	2	9	0
1455	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.192875	2019-09-03 04:15:40.197421	5	Apple	iphone-xs-1455	0	400	2	9	0
1461	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.350345	2019-09-03 04:15:40.357472	5	Apple	iphone-xs-1461	0	400	2	9	0
1466	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.551513	2019-09-03 04:15:40.556191	5	Apple	iphone-xs-1466	0	400	2	9	0
1470	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.647526	2019-09-03 04:15:40.656365	5	Apple	iphone-xs-1470	0	400	2	9	0
1476	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.762731	2019-09-03 04:15:40.768379	5	Apple	iphone-xs-1476	0	400	2	9	0
1480	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.869074	2019-09-03 04:15:40.876714	5	Apple	iphone-xs-1480	0	400	2	9	0
1485	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:40.987203	2019-09-03 04:15:40.999387	5	Apple	iphone-xs-1485	0	400	2	9	0
1491	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.126832	2019-09-03 04:15:41.140202	5	Apple	iphone-xs-1491	0	400	2	9	0
1497	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.291752	2019-09-03 04:15:41.295603	5	Apple	iphone-xs-1497	0	400	2	9	0
1502	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.424517	2019-09-03 04:15:41.428875	5	Apple	iphone-xs-1502	0	400	2	9	0
1506	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.593395	2019-09-03 04:15:41.600429	5	Apple	iphone-xs-1506	0	400	2	9	0
1512	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.717961	2019-09-03 04:15:41.73628	5	Apple	iphone-xs-1512	0	400	2	9	0
1517	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.849912	2019-09-03 04:15:41.859267	5	Apple	iphone-xs-1517	0	400	2	9	0
1522	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:41.969981	2019-09-03 04:15:41.978347	5	Apple	iphone-xs-1522	0	400	2	9	0
1527	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.079	2019-09-03 04:15:42.08568	5	Apple	iphone-xs-1527	0	400	2	9	0
1532	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.237339	2019-09-03 04:15:42.242501	5	Apple	iphone-xs-1532	0	400	2	9	0
1537	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.356375	2019-09-03 04:15:42.3746	5	Apple	iphone-xs-1537	0	400	2	9	0
1542	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.600075	2019-09-03 04:15:42.607449	5	Apple	iphone-xs-1542	0	400	2	9	0
1547	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.697435	2019-09-03 04:15:42.705914	5	Apple	iphone-xs-1547	0	400	2	9	0
1552	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.808373	2019-09-03 04:15:42.814283	5	Apple	iphone-xs-1552	0	400	2	9	0
1555	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:42.924634	2019-09-03 04:15:42.937034	5	Apple	iphone-xs-1555	0	400	2	9	0
1563	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.073619	2019-09-03 04:15:43.080319	5	Apple	iphone-xs-1563	0	400	2	9	0
1568	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.27122	2019-09-03 04:15:43.27272	5	Apple	iphone-xs-1568	0	400	2	9	0
1573	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.383023	2019-09-03 04:15:43.38636	5	Apple	iphone-xs-1573	0	400	2	9	0
1577	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.581687	2019-09-03 04:15:43.595376	5	Apple	iphone-xs-1577	0	400	2	9	0
1583	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.741153	2019-09-03 04:15:43.744723	5	Apple	iphone-xs-1583	0	400	2	9	0
1587	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.872207	2019-09-03 04:15:43.882025	5	Apple	iphone-xs-1587	0	400	2	9	0
1592	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:43.995614	2019-09-03 04:15:44.002936	5	Apple	iphone-xs-1592	0	400	2	9	0
1597	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.115888	2019-09-03 04:15:44.122375	5	Apple	iphone-xs-1597	0	400	2	9	0
1602	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.269182	2019-09-03 04:15:44.276621	5	Apple	iphone-xs-1602	0	400	2	9	0
1606	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.415151	2019-09-03 04:15:44.428214	5	Apple	iphone-xs-1606	0	400	2	9	0
1612	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.6255	2019-09-03 04:15:44.632817	5	Apple	iphone-xs-1612	0	400	2	9	0
1616	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.74026	2019-09-03 04:15:44.742841	5	Apple	iphone-xs-1616	0	400	2	9	0
1622	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:44.880756	2019-09-03 04:15:44.890549	5	Apple	iphone-xs-1622	0	400	2	9	0
1628	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.054137	2019-09-03 04:15:45.067353	5	Apple	iphone-xs-1628	0	400	2	9	0
1633	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.198524	2019-09-03 04:15:45.217015	5	Apple	iphone-xs-1633	0	400	2	9	0
1638	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.330192	2019-09-03 04:15:45.350717	5	Apple	iphone-xs-1638	0	400	2	9	0
1643	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.537546	2019-09-03 04:15:45.541805	5	Apple	iphone-xs-1643	0	400	2	9	0
1648	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.683119	2019-09-03 04:15:45.712174	5	Apple	iphone-xs-1648	0	400	2	9	0
1652	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.822177	2019-09-03 04:15:45.833066	5	Apple	iphone-xs-1652	0	400	2	9	0
1658	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:45.958734	2019-09-03 04:15:45.973012	5	Apple	iphone-xs-1658	0	400	2	9	0
1662	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.110117	2019-09-03 04:15:46.123962	5	Apple	iphone-xs-1662	0	400	2	9	0
1667	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.286823	2019-09-03 04:15:46.297213	5	Apple	iphone-xs-1667	0	400	2	9	0
1672	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.419646	2019-09-03 04:15:46.424838	5	Apple	iphone-xs-1672	0	400	2	9	0
1669	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.361681	2019-09-03 04:15:46.371598	5	Apple	iphone-xs-1669	0	400	2	9	0
2163	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.171653	2019-09-03 04:16:35.197878	5	Apple	iphone-xs-2163	0	400	2	9	0
1675	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.591631	2019-09-03 04:15:46.597263	5	Apple	iphone-xs-1675	0	400	2	9	0
1680	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.735175	2019-09-03 04:15:46.751407	5	Apple	iphone-xs-1680	0	400	2	9	0
1686	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.891371	2019-09-03 04:15:46.899719	5	Apple	iphone-xs-1686	0	400	2	9	0
1691	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.998612	2019-09-03 04:15:47.002543	5	Apple	iphone-xs-1691	0	400	2	9	0
1696	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.120544	2019-09-03 04:15:47.130896	5	Apple	iphone-xs-1696	0	400	2	9	0
1701	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.253853	2019-09-03 04:15:47.259732	5	Apple	iphone-xs-1701	0	400	2	9	0
1705	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.372885	2019-09-03 04:15:47.379176	5	Apple	iphone-xs-1705	0	400	2	9	0
1709	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.588776	2019-09-03 04:15:47.594235	5	Apple	iphone-xs-1709	0	400	2	9	0
1713	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.705591	2019-09-03 04:15:47.71394	5	Apple	iphone-xs-1713	0	400	2	9	0
1719	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.825678	2019-09-03 04:15:47.830726	5	Apple	iphone-xs-1719	0	400	2	9	0
1725	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.942634	2019-09-03 04:15:47.965389	5	Apple	iphone-xs-1725	0	400	2	9	0
1730	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.107075	2019-09-03 04:15:48.120395	5	Apple	iphone-xs-1730	0	400	2	9	0
1735	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.276312	2019-09-03 04:15:48.298569	5	Apple	iphone-xs-1735	0	400	2	9	0
1740	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.417019	2019-09-03 04:15:48.431423	5	Apple	iphone-xs-1740	0	400	2	9	0
1744	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.604102	2019-09-03 04:15:48.607631	5	Apple	iphone-xs-1744	0	400	2	9	0
1749	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.752336	2019-09-03 04:15:48.760216	5	Apple	iphone-xs-1749	0	400	2	9	0
1754	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.847247	2019-09-03 04:15:48.861765	5	Apple	iphone-xs-1754	0	400	2	9	0
1759	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.975591	2019-09-03 04:15:48.984153	5	Apple	iphone-xs-1759	0	400	2	9	0
1764	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.117867	2019-09-03 04:15:49.123961	5	Apple	iphone-xs-1764	0	400	2	9	0
1769	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.285665	2019-09-03 04:15:49.289937	5	Apple	iphone-xs-1769	0	400	2	9	0
1774	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.384724	2019-09-03 04:15:49.395485	5	Apple	iphone-xs-1774	0	400	2	9	0
1779	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.559874	2019-09-03 04:15:49.570104	5	Apple	iphone-xs-1779	0	400	2	9	0
1784	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.667282	2019-09-03 04:15:49.691163	5	Apple	iphone-xs-1784	0	400	2	9	0
1788	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.783151	2019-09-03 04:15:49.79708	5	Apple	iphone-xs-1788	0	400	2	9	0
1793	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.940416	2019-09-03 04:15:49.949693	5	Apple	iphone-xs-1793	0	400	2	9	0
1799	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.069039	2019-09-03 04:15:50.081993	5	Apple	iphone-xs-1799	0	400	2	9	0
1806	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.210075	2019-09-03 04:15:50.223101	5	Apple	iphone-xs-1806	0	400	2	9	0
1809	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.333674	2019-09-03 04:15:50.340403	5	Apple	iphone-xs-1809	0	400	2	9	0
1814	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.432548	2019-09-03 04:15:50.439269	5	Apple	iphone-xs-1814	0	400	2	9	0
1819	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.614274	2019-09-03 04:15:50.620658	5	Apple	iphone-xs-1819	0	400	2	9	0
1824	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.734172	2019-09-03 04:15:50.742991	5	Apple	iphone-xs-1824	0	400	2	9	0
1829	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.86631	2019-09-03 04:15:50.875647	5	Apple	iphone-xs-1829	0	400	2	9	0
1834	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.017127	2019-09-03 04:15:51.035406	5	Apple	iphone-xs-1834	0	400	2	9	0
1841	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.164497	2019-09-03 04:15:51.165797	5	Apple	iphone-xs-1841	0	400	2	9	0
1845	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.35062	2019-09-03 04:15:51.352667	5	Apple	iphone-xs-1845	0	400	2	9	0
1850	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.469494	2019-09-03 04:15:51.477288	5	Apple	iphone-xs-1850	0	400	2	9	0
1856	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.59183	2019-09-03 04:15:51.597367	5	Apple	iphone-xs-1856	0	400	2	9	0
1862	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.715113	2019-09-03 04:15:51.717047	5	Apple	iphone-xs-1862	0	400	2	9	0
1867	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.824563	2019-09-03 04:15:51.826484	5	Apple	iphone-xs-1867	0	400	2	9	0
1871	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.946108	2019-09-03 04:15:51.950095	5	Apple	iphone-xs-1871	0	400	2	9	0
1877	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.071073	2019-09-03 04:15:52.074761	5	Apple	iphone-xs-1877	0	400	2	9	0
1880	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.198257	2019-09-03 04:15:52.210523	5	Apple	iphone-xs-1880	0	400	2	9	0
1884	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.306908	2019-09-03 04:15:52.315866	5	Apple	iphone-xs-1884	0	400	2	9	0
1890	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.431759	2019-09-03 04:15:52.464723	5	Apple	iphone-xs-1890	0	400	2	9	0
1893	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.416097	2019-09-03 04:16:01.421352	5	Apple	iphone-xs-1893	0	400	2	9	0
1898	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.541668	2019-09-03 04:16:01.554429	5	Apple	iphone-xs-1898	0	400	2	9	0
1670	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.36704	2019-09-03 04:15:46.372952	5	Apple	iphone-xs-1670	0	400	2	9	0
1674	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.575984	2019-09-03 04:15:46.58019	5	Apple	iphone-xs-1674	0	400	2	9	0
1679	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.670045	2019-09-03 04:15:46.676064	5	Apple	iphone-xs-1679	0	400	2	9	0
1684	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.80675	2019-09-03 04:15:46.816562	5	Apple	iphone-xs-1684	0	400	2	9	0
1687	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.93139	2019-09-03 04:15:46.940266	5	Apple	iphone-xs-1687	0	400	2	9	0
1694	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.080729	2019-09-03 04:15:47.090917	5	Apple	iphone-xs-1694	0	400	2	9	0
1699	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.230983	2019-09-03 04:15:47.24611	5	Apple	iphone-xs-1699	0	400	2	9	0
1704	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.369379	2019-09-03 04:15:47.380508	5	Apple	iphone-xs-1704	0	400	2	9	0
1711	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.60424	2019-09-03 04:15:47.618131	5	Apple	iphone-xs-1711	0	400	2	9	0
1715	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.719604	2019-09-03 04:15:47.741415	5	Apple	iphone-xs-1715	0	400	2	9	0
1722	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.867623	2019-09-03 04:15:47.877139	5	Apple	iphone-xs-1722	0	400	2	9	0
1727	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.03222	2019-09-03 04:15:48.045709	5	Apple	iphone-xs-1727	0	400	2	9	0
1731	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.16659	2019-09-03 04:15:48.177256	5	Apple	iphone-xs-1731	0	400	2	9	0
1736	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.331077	2019-09-03 04:15:48.341344	5	Apple	iphone-xs-1736	0	400	2	9	0
1743	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.559134	2019-09-03 04:15:48.567362	5	Apple	iphone-xs-1743	0	400	2	9	0
1747	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.679771	2019-09-03 04:15:48.68857	5	Apple	iphone-xs-1747	0	400	2	9	0
1750	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.789709	2019-09-03 04:15:48.794861	5	Apple	iphone-xs-1750	0	400	2	9	0
1756	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.91406	2019-09-03 04:15:48.91651	5	Apple	iphone-xs-1756	0	400	2	9	0
1761	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.045778	2019-09-03 04:15:49.049226	5	Apple	iphone-xs-1761	0	400	2	9	0
1767	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.183124	2019-09-03 04:15:49.190462	5	Apple	iphone-xs-1767	0	400	2	9	0
1771	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.314903	2019-09-03 04:15:49.326751	5	Apple	iphone-xs-1771	0	400	2	9	0
1777	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.436115	2019-09-03 04:15:49.446622	5	Apple	iphone-xs-1777	0	400	2	9	0
1781	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.606364	2019-09-03 04:15:49.614815	5	Apple	iphone-xs-1781	0	400	2	9	0
1786	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.724503	2019-09-03 04:15:49.735201	5	Apple	iphone-xs-1786	0	400	2	9	0
1790	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.826221	2019-09-03 04:15:49.836459	5	Apple	iphone-xs-1790	0	400	2	9	0
1794	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.942408	2019-09-03 04:15:49.955274	5	Apple	iphone-xs-1794	0	400	2	9	0
1798	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.04438	2019-09-03 04:15:50.051021	5	Apple	iphone-xs-1798	0	400	2	9	0
1803	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.14369	2019-09-03 04:15:50.148664	5	Apple	iphone-xs-1803	0	400	2	9	0
1808	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.286066	2019-09-03 04:15:50.299413	5	Apple	iphone-xs-1808	0	400	2	9	0
1813	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.399672	2019-09-03 04:15:50.416114	5	Apple	iphone-xs-1813	0	400	2	9	0
1818	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.582511	2019-09-03 04:15:50.584859	5	Apple	iphone-xs-1818	0	400	2	9	0
1823	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.682769	2019-09-03 04:15:50.689121	5	Apple	iphone-xs-1823	0	400	2	9	0
1826	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.799069	2019-09-03 04:15:50.813742	5	Apple	iphone-xs-1826	0	400	2	9	0
1831	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.906777	2019-09-03 04:15:50.922339	5	Apple	iphone-xs-1831	0	400	2	9	0
1837	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.057898	2019-09-03 04:15:51.061251	5	Apple	iphone-xs-1837	0	400	2	9	0
1843	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.275192	2019-09-03 04:15:51.280571	5	Apple	iphone-xs-1843	0	400	2	9	0
1848	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.388877	2019-09-03 04:15:51.394612	5	Apple	iphone-xs-1848	0	400	2	9	0
1853	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.503825	2019-09-03 04:15:51.515364	5	Apple	iphone-xs-1853	0	400	2	9	0
1858	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.652517	2019-09-03 04:15:51.669965	5	Apple	iphone-xs-1858	0	400	2	9	0
1863	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.783303	2019-09-03 04:15:51.796097	5	Apple	iphone-xs-1863	0	400	2	9	0
1868	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.879677	2019-09-03 04:15:51.888043	5	Apple	iphone-xs-1868	0	400	2	9	0
1873	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.031259	2019-09-03 04:15:52.043279	5	Apple	iphone-xs-1873	0	400	2	9	0
1879	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.186397	2019-09-03 04:15:52.194903	5	Apple	iphone-xs-1879	0	400	2	9	0
1885	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.308702	2019-09-03 04:15:52.314322	5	Apple	iphone-xs-1885	0	400	2	9	0
1889	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.430749	2019-09-03 04:15:52.459875	5	Apple	iphone-xs-1889	0	400	2	9	0
1894	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.433208	2019-09-03 04:16:01.43955	5	Apple	iphone-xs-1894	0	400	2	9	0
1899	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.571708	2019-09-03 04:16:01.580075	5	Apple	iphone-xs-1899	0	400	2	9	0
1676	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.599813	2019-09-03 04:15:46.615289	5	Apple	iphone-xs-1676	0	400	2	9	0
2166	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.278611	2019-09-03 04:16:35.288056	5	Apple	iphone-xs-2166	0	400	2	9	0
1681	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.765601	2019-09-03 04:15:46.775364	5	Apple	iphone-xs-1681	0	400	2	9	0
1685	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.859285	2019-09-03 04:15:46.885097	5	Apple	iphone-xs-1685	0	400	2	9	0
1690	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.995838	2019-09-03 04:15:47.001496	5	Apple	iphone-xs-1690	0	400	2	9	0
1695	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.101802	2019-09-03 04:15:47.107083	5	Apple	iphone-xs-1695	0	400	2	9	0
1700	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.237617	2019-09-03 04:15:47.247918	5	Apple	iphone-xs-1700	0	400	2	9	0
1706	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.385036	2019-09-03 04:15:47.417624	5	Apple	iphone-xs-1706	0	400	2	9	0
1708	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.583222	2019-09-03 04:15:47.59242	5	Apple	iphone-xs-1708	0	400	2	9	0
1716	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.72211	2019-09-03 04:15:47.732767	5	Apple	iphone-xs-1716	0	400	2	9	0
1720	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.826732	2019-09-03 04:15:47.841415	5	Apple	iphone-xs-1720	0	400	2	9	0
1724	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.939739	2019-09-03 04:15:47.954048	5	Apple	iphone-xs-1724	0	400	2	9	0
1729	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.102912	2019-09-03 04:15:48.110664	5	Apple	iphone-xs-1729	0	400	2	9	0
1734	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.236386	2019-09-03 04:15:48.250223	5	Apple	iphone-xs-1734	0	400	2	9	0
1739	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.41565	2019-09-03 04:15:48.432993	5	Apple	iphone-xs-1739	0	400	2	9	0
1745	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.632678	2019-09-03 04:15:48.655486	5	Apple	iphone-xs-1745	0	400	2	9	0
1751	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.790938	2019-09-03 04:15:48.795835	5	Apple	iphone-xs-1751	0	400	2	9	0
1755	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.887254	2019-09-03 04:15:48.896243	5	Apple	iphone-xs-1755	0	400	2	9	0
1760	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.000295	2019-09-03 04:15:49.016818	5	Apple	iphone-xs-1760	0	400	2	9	0
1765	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.16063	2019-09-03 04:15:49.164789	5	Apple	iphone-xs-1765	0	400	2	9	0
1770	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.293211	2019-09-03 04:15:49.297078	5	Apple	iphone-xs-1770	0	400	2	9	0
1773	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.378169	2019-09-03 04:15:49.386696	5	Apple	iphone-xs-1773	0	400	2	9	0
1780	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.560925	2019-09-03 04:15:49.56648	5	Apple	iphone-xs-1780	0	400	2	9	0
1785	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.698106	2019-09-03 04:15:49.703771	5	Apple	iphone-xs-1785	0	400	2	9	0
1791	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.829523	2019-09-03 04:15:49.838864	5	Apple	iphone-xs-1791	0	400	2	9	0
1796	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.96126	2019-09-03 04:15:49.964145	5	Apple	iphone-xs-1796	0	400	2	9	0
1801	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.090352	2019-09-03 04:15:50.095459	5	Apple	iphone-xs-1801	0	400	2	9	0
1804	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.208299	2019-09-03 04:15:50.215878	5	Apple	iphone-xs-1804	0	400	2	9	0
1811	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.354689	2019-09-03 04:15:50.360911	5	Apple	iphone-xs-1811	0	400	2	9	0
1816	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.548336	2019-09-03 04:15:50.551988	5	Apple	iphone-xs-1816	0	400	2	9	0
1820	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.657538	2019-09-03 04:15:50.663965	5	Apple	iphone-xs-1820	0	400	2	9	0
1825	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.797645	2019-09-03 04:15:50.801894	5	Apple	iphone-xs-1825	0	400	2	9	0
1830	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.902931	2019-09-03 04:15:50.915003	5	Apple	iphone-xs-1830	0	400	2	9	0
1835	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.043624	2019-09-03 04:15:51.048996	5	Apple	iphone-xs-1835	0	400	2	9	0
1839	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.127221	2019-09-03 04:15:51.13998	5	Apple	iphone-xs-1839	0	400	2	9	0
1844	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.337633	2019-09-03 04:15:51.347919	5	Apple	iphone-xs-1844	0	400	2	9	0
1849	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.45673	2019-09-03 04:15:51.46383	5	Apple	iphone-xs-1849	0	400	2	9	0
1857	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.599745	2019-09-03 04:15:51.608828	5	Apple	iphone-xs-1857	0	400	2	9	0
1861	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.693731	2019-09-03 04:15:51.711548	5	Apple	iphone-xs-1861	0	400	2	9	0
1865	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.816635	2019-09-03 04:15:51.823732	5	Apple	iphone-xs-1865	0	400	2	9	0
1870	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.944779	2019-09-03 04:15:51.951741	5	Apple	iphone-xs-1870	0	400	2	9	0
1875	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.069093	2019-09-03 04:15:52.072415	5	Apple	iphone-xs-1875	0	400	2	9	0
1878	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.178058	2019-09-03 04:15:52.18438	5	Apple	iphone-xs-1878	0	400	2	9	0
1883	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.299612	2019-09-03 04:15:52.304003	5	Apple	iphone-xs-1883	0	400	2	9	0
1888	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.392514	2019-09-03 04:15:52.403204	5	Apple	iphone-xs-1888	0	400	2	9	0
1896	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.441316	2019-09-03 04:16:01.453779	5	Apple	iphone-xs-1896	0	400	2	9	0
1900	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.578866	2019-09-03 04:16:01.589967	5	Apple	iphone-xs-1900	0	400	2	9	0
1905	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.809477	2019-09-03 04:16:01.814336	5	Apple	iphone-xs-1905	0	400	2	9	0
1677	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.639636	2019-09-03 04:15:46.64873	5	Apple	iphone-xs-1677	0	400	2	9	0
2167	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.309602	2019-09-03 04:16:35.31836	5	Apple	iphone-xs-2167	0	400	2	9	0
1682	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.78818	2019-09-03 04:15:46.795496	5	Apple	iphone-xs-1682	0	400	2	9	0
1689	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.944194	2019-09-03 04:15:46.951082	5	Apple	iphone-xs-1689	0	400	2	9	0
1692	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.05457	2019-09-03 04:15:47.062865	5	Apple	iphone-xs-1692	0	400	2	9	0
1697	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.157111	2019-09-03 04:15:47.164917	5	Apple	iphone-xs-1697	0	400	2	9	0
1702	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.297168	2019-09-03 04:15:47.30132	5	Apple	iphone-xs-1702	0	400	2	9	0
1707	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.443911	2019-09-03 04:15:47.452032	5	Apple	iphone-xs-1707	0	400	2	9	0
1712	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.630026	2019-09-03 04:15:47.633337	5	Apple	iphone-xs-1712	0	400	2	9	0
1717	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.750936	2019-09-03 04:15:47.759917	5	Apple	iphone-xs-1717	0	400	2	9	0
1721	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.855517	2019-09-03 04:15:47.860133	5	Apple	iphone-xs-1721	0	400	2	9	0
1726	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.009584	2019-09-03 04:15:48.022123	5	Apple	iphone-xs-1726	0	400	2	9	0
1732	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.179248	2019-09-03 04:15:48.197039	5	Apple	iphone-xs-1732	0	400	2	9	0
1738	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.333189	2019-09-03 04:15:48.345197	5	Apple	iphone-xs-1738	0	400	2	9	0
1741	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.551904	2019-09-03 04:15:48.563788	5	Apple	iphone-xs-1741	0	400	2	9	0
1748	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.685856	2019-09-03 04:15:48.69147	5	Apple	iphone-xs-1748	0	400	2	9	0
1753	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.803234	2019-09-03 04:15:48.81435	5	Apple	iphone-xs-1753	0	400	2	9	0
1758	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.931524	2019-09-03 04:15:48.936469	5	Apple	iphone-xs-1758	0	400	2	9	0
1762	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.053318	2019-09-03 04:15:49.062564	5	Apple	iphone-xs-1762	0	400	2	9	0
1766	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.180365	2019-09-03 04:15:49.184735	5	Apple	iphone-xs-1766	0	400	2	9	0
1772	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.319451	2019-09-03 04:15:49.325981	5	Apple	iphone-xs-1772	0	400	2	9	0
1776	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.424504	2019-09-03 04:15:49.432721	5	Apple	iphone-xs-1776	0	400	2	9	0
1782	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.620821	2019-09-03 04:15:49.625623	5	Apple	iphone-xs-1782	0	400	2	9	0
1787	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.760265	2019-09-03 04:15:49.769391	5	Apple	iphone-xs-1787	0	400	2	9	0
1792	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.882248	2019-09-03 04:15:49.89177	5	Apple	iphone-xs-1792	0	400	2	9	0
1797	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.976641	2019-09-03 04:15:49.979861	5	Apple	iphone-xs-1797	0	400	2	9	0
1802	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.091637	2019-09-03 04:15:50.09827	5	Apple	iphone-xs-1802	0	400	2	9	0
1807	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.247563	2019-09-03 04:15:50.251286	5	Apple	iphone-xs-1807	0	400	2	9	0
1812	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.363434	2019-09-03 04:15:50.369268	5	Apple	iphone-xs-1812	0	400	2	9	0
1817	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.564604	2019-09-03 04:15:50.577712	5	Apple	iphone-xs-1817	0	400	2	9	0
1822	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.681937	2019-09-03 04:15:50.687034	5	Apple	iphone-xs-1822	0	400	2	9	0
1827	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.810816	2019-09-03 04:15:50.817918	5	Apple	iphone-xs-1827	0	400	2	9	0
1832	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.929458	2019-09-03 04:15:50.938656	5	Apple	iphone-xs-1832	0	400	2	9	0
1836	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.050035	2019-09-03 04:15:51.055056	5	Apple	iphone-xs-1836	0	400	2	9	0
1840	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.162998	2019-09-03 04:15:51.176029	5	Apple	iphone-xs-1840	0	400	2	9	0
1846	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.36225	2019-09-03 04:15:51.375425	5	Apple	iphone-xs-1846	0	400	2	9	0
1852	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.483541	2019-09-03 04:15:51.492202	5	Apple	iphone-xs-1852	0	400	2	9	0
1855	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.588682	2019-09-03 04:15:51.592946	5	Apple	iphone-xs-1855	0	400	2	9	0
1860	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.69151	2019-09-03 04:15:51.713463	5	Apple	iphone-xs-1860	0	400	2	9	0
1864	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.80727	2019-09-03 04:15:51.811536	5	Apple	iphone-xs-1864	0	400	2	9	0
1869	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.929902	2019-09-03 04:15:51.933595	5	Apple	iphone-xs-1869	0	400	2	9	0
1874	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.05723	2019-09-03 04:15:52.061322	5	Apple	iphone-xs-1874	0	400	2	9	0
1881	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.215137	2019-09-03 04:15:52.222746	5	Apple	iphone-xs-1881	0	400	2	9	0
1887	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.352645	2019-09-03 04:15:52.365087	5	Apple	iphone-xs-1887	0	400	2	9	0
1895	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.433965	2019-09-03 04:16:01.436328	5	Apple	iphone-xs-1895	0	400	2	9	0
1901	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.580844	2019-09-03 04:16:01.587574	5	Apple	iphone-xs-1901	0	400	2	9	0
1906	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.813308	2019-09-03 04:16:01.818252	5	Apple	iphone-xs-1906	0	400	2	9	0
1911	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.932128	2019-09-03 04:16:01.940726	5	Apple	iphone-xs-1911	0	400	2	9	0
1678	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.65874	2019-09-03 04:15:46.662528	5	Apple	iphone-xs-1678	0	400	2	9	0
1683	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.790968	2019-09-03 04:15:46.79721	5	Apple	iphone-xs-1683	0	400	2	9	0
1688	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:46.934823	2019-09-03 04:15:46.942912	5	Apple	iphone-xs-1688	0	400	2	9	0
1693	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.06642	2019-09-03 04:15:47.073087	5	Apple	iphone-xs-1693	0	400	2	9	0
1698	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.230135	2019-09-03 04:15:47.236104	5	Apple	iphone-xs-1698	0	400	2	9	0
1703	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.366185	2019-09-03 04:15:47.374948	5	Apple	iphone-xs-1703	0	400	2	9	0
1710	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.599616	2019-09-03 04:15:47.616282	5	Apple	iphone-xs-1710	0	400	2	9	0
1714	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.711597	2019-09-03 04:15:47.718209	5	Apple	iphone-xs-1714	0	400	2	9	0
1718	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.811041	2019-09-03 04:15:47.817543	5	Apple	iphone-xs-1718	0	400	2	9	0
1723	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:47.92967	2019-09-03 04:15:47.935159	5	Apple	iphone-xs-1723	0	400	2	9	0
1728	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.063595	2019-09-03 04:15:48.080147	5	Apple	iphone-xs-1728	0	400	2	9	0
1733	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.211606	2019-09-03 04:15:48.220286	5	Apple	iphone-xs-1733	0	400	2	9	0
1737	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.331717	2019-09-03 04:15:48.357042	5	Apple	iphone-xs-1737	0	400	2	9	0
1742	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.554914	2019-09-03 04:15:48.560514	5	Apple	iphone-xs-1742	0	400	2	9	0
1746	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.673353	2019-09-03 04:15:48.675921	5	Apple	iphone-xs-1746	0	400	2	9	0
1752	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.799668	2019-09-03 04:15:48.80476	5	Apple	iphone-xs-1752	0	400	2	9	0
1757	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:48.923492	2019-09-03 04:15:48.934018	5	Apple	iphone-xs-1757	0	400	2	9	0
1763	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.083417	2019-09-03 04:15:49.100542	5	Apple	iphone-xs-1763	0	400	2	9	0
1768	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.263742	2019-09-03 04:15:49.283579	5	Apple	iphone-xs-1768	0	400	2	9	0
1775	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.396801	2019-09-03 04:15:49.400613	5	Apple	iphone-xs-1775	0	400	2	9	0
1778	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.559166	2019-09-03 04:15:49.564182	5	Apple	iphone-xs-1778	0	400	2	9	0
1783	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.660396	2019-09-03 04:15:49.669919	5	Apple	iphone-xs-1783	0	400	2	9	0
1789	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.809788	2019-09-03 04:15:49.819883	5	Apple	iphone-xs-1789	0	400	2	9	0
1795	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:49.943123	2019-09-03 04:15:49.951574	5	Apple	iphone-xs-1795	0	400	2	9	0
1800	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.085163	2019-09-03 04:15:50.088507	5	Apple	iphone-xs-1800	0	400	2	9	0
1805	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.218266	2019-09-03 04:15:50.221077	5	Apple	iphone-xs-1805	0	400	2	9	0
1810	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.337701	2019-09-03 04:15:50.346087	5	Apple	iphone-xs-1810	0	400	2	9	0
1815	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.54348	2019-09-03 04:15:50.550256	5	Apple	iphone-xs-1815	0	400	2	9	0
1821	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.678179	2019-09-03 04:15:50.68982	5	Apple	iphone-xs-1821	0	400	2	9	0
1828	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.832829	2019-09-03 04:15:50.840076	5	Apple	iphone-xs-1828	0	400	2	9	0
1833	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:50.963984	2019-09-03 04:15:50.967074	5	Apple	iphone-xs-1833	0	400	2	9	0
1838	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.071562	2019-09-03 04:15:51.079262	5	Apple	iphone-xs-1838	0	400	2	9	0
1842	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.184368	2019-09-03 04:15:51.273295	5	Apple	iphone-xs-1842	0	400	2	9	0
1847	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.386424	2019-09-03 04:15:51.390709	5	Apple	iphone-xs-1847	0	400	2	9	0
1851	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.481759	2019-09-03 04:15:51.493442	5	Apple	iphone-xs-1851	0	400	2	9	0
1854	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.583334	2019-09-03 04:15:51.590458	5	Apple	iphone-xs-1854	0	400	2	9	0
1859	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.689615	2019-09-03 04:15:51.71234	5	Apple	iphone-xs-1859	0	400	2	9	0
1866	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.820309	2019-09-03 04:15:51.830168	5	Apple	iphone-xs-1866	0	400	2	9	0
1872	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:51.94882	2019-09-03 04:15:51.958226	5	Apple	iphone-xs-1872	0	400	2	9	0
1876	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.069847	2019-09-03 04:15:52.081532	5	Apple	iphone-xs-1876	0	400	2	9	0
1882	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.218972	2019-09-03 04:15:52.23034	5	Apple	iphone-xs-1882	0	400	2	9	0
1886	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.345037	2019-09-03 04:15:52.354173	5	Apple	iphone-xs-1886	0	400	2	9	0
1891	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:15:52.482936	2019-09-03 04:15:52.49081	5	Apple	iphone-xs-1891	0	400	2	9	0
1892	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.399258	2019-09-03 04:16:01.403551	5	Apple	iphone-xs-1892	0	400	2	9	0
1897	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.488688	2019-09-03 04:16:01.500151	5	Apple	iphone-xs-1897	0	400	2	9	0
1902	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.655282	2019-09-03 04:16:01.686002	5	Apple	iphone-xs-1902	0	400	2	9	0
1907	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.863975	2019-09-03 04:16:01.871509	5	Apple	iphone-xs-1907	0	400	2	9	0
1903	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.765449	2019-09-03 04:16:01.769479	5	Apple	iphone-xs-1903	0	400	2	9	0
1908	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.883787	2019-09-03 04:16:01.902957	5	Apple	iphone-xs-1908	0	400	2	9	0
1912	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.996206	2019-09-03 04:16:02.006082	5	Apple	iphone-xs-1912	0	400	2	9	0
1918	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.261228	2019-09-03 04:16:02.263523	5	Apple	iphone-xs-1918	0	400	2	9	0
1923	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.45774	2019-09-03 04:16:02.471858	5	Apple	iphone-xs-1923	0	400	2	9	0
1931	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.618089	2019-09-03 04:16:02.625216	5	Apple	iphone-xs-1931	0	400	2	9	0
1933	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.704896	2019-09-03 04:16:02.709896	5	Apple	iphone-xs-1933	0	400	2	9	0
1940	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.875856	2019-09-03 04:16:02.883914	5	Apple	iphone-xs-1940	0	400	2	9	0
1945	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:03.542834	2019-09-03 04:16:03.561834	5	Apple	iphone-xs-1945	0	400	2	9	0
1950	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:03.892532	2019-09-03 04:16:03.905364	5	Apple	iphone-xs-1950	0	400	2	9	0
1955	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.247161	2019-09-03 04:16:04.304902	5	Apple	iphone-xs-1955	0	400	2	9	0
1960	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.701065	2019-09-03 04:16:04.719565	5	Apple	iphone-xs-1960	0	400	2	9	0
1965	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.006034	2019-09-03 04:16:05.050304	5	Apple	iphone-xs-1965	0	400	2	9	0
1970	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.284839	2019-09-03 04:16:05.29994	5	Apple	iphone-xs-1970	0	400	2	9	0
1975	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.396091	2019-09-03 04:16:05.404268	5	Apple	iphone-xs-1975	0	400	2	9	0
1980	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.518403	2019-09-03 04:16:05.528075	5	Apple	iphone-xs-1980	0	400	2	9	0
1985	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.760085	2019-09-03 04:16:05.765259	5	Apple	iphone-xs-1985	0	400	2	9	0
1990	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.902061	2019-09-03 04:16:05.910911	5	Apple	iphone-xs-1990	0	400	2	9	0
1996	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.033228	2019-09-03 04:16:06.048735	5	Apple	iphone-xs-1996	0	400	2	9	0
2002	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.409955	2019-09-03 04:16:06.421513	5	Apple	iphone-xs-2002	0	400	2	9	0
2007	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.559598	2019-09-03 04:16:06.583548	5	Apple	iphone-xs-2007	0	400	2	9	0
2012	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.700211	2019-09-03 04:16:06.704325	5	Apple	iphone-xs-2012	0	400	2	9	0
2016	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.845825	2019-09-03 04:16:06.850345	5	Apple	iphone-xs-2016	0	400	2	9	0
2020	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.946917	2019-09-03 04:16:06.958528	5	Apple	iphone-xs-2020	0	400	2	9	0
2024	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.079332	2019-09-03 04:16:07.089891	5	Apple	iphone-xs-2024	0	400	2	9	0
2029	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.2358	2019-09-03 04:16:07.241389	5	Apple	iphone-xs-2029	0	400	2	9	0
2036	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.343558	2019-09-03 04:16:07.346944	5	Apple	iphone-xs-2036	0	400	2	9	0
2039	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.450691	2019-09-03 04:16:07.456289	5	Apple	iphone-xs-2039	0	400	2	9	0
2046	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.602962	2019-09-03 04:16:07.609659	5	Apple	iphone-xs-2046	0	400	2	9	0
2051	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.703851	2019-09-03 04:16:07.712051	5	Apple	iphone-xs-2051	0	400	2	9	0
2056	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.829792	2019-09-03 04:16:07.837864	5	Apple	iphone-xs-2056	0	400	2	9	0
2061	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.983945	2019-09-03 04:16:07.993488	5	Apple	iphone-xs-2061	0	400	2	9	0
2066	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.149485	2019-09-03 04:16:08.164167	5	Apple	iphone-xs-2066	0	400	2	9	0
2071	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.335637	2019-09-03 04:16:08.348798	5	Apple	iphone-xs-2071	0	400	2	9	0
2076	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.452612	2019-09-03 04:16:08.498313	5	Apple	iphone-xs-2076	0	400	2	9	0
2081	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.667597	2019-09-03 04:16:08.677007	5	Apple	iphone-xs-2081	0	400	2	9	0
2089	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.810515	2019-09-03 04:16:08.819991	5	Apple	iphone-xs-2089	0	400	2	9	0
2093	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.918622	2019-09-03 04:16:08.9373	5	Apple	iphone-xs-2093	0	400	2	9	0
2098	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.050201	2019-09-03 04:16:09.05521	5	Apple	iphone-xs-2098	0	400	2	9	0
2103	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.178324	2019-09-03 04:16:09.186264	5	Apple	iphone-xs-2103	0	400	2	9	0
2108	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.299582	2019-09-03 04:16:09.307889	5	Apple	iphone-xs-2108	0	400	2	9	0
2115	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.522451	2019-09-03 04:16:09.526464	5	Apple	iphone-xs-2115	0	400	2	9	0
2119	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.624335	2019-09-03 04:16:09.626926	5	Apple	iphone-xs-2119	0	400	2	9	0
2123	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.732334	2019-09-03 04:16:09.741212	5	Apple	iphone-xs-2123	0	400	2	9	0
2129	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.860038	2019-09-03 04:16:09.868975	5	Apple	iphone-xs-2129	0	400	2	9	0
2134	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.967044	2019-09-03 04:16:09.972837	5	Apple	iphone-xs-2134	0	400	2	9	0
2139	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.091189	2019-09-03 04:16:10.101671	5	Apple	iphone-xs-2139	0	400	2	9	0
1904	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.784894	2019-09-03 04:16:01.80129	5	Apple	iphone-xs-1904	0	400	2	9	0
2168	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.324283	2019-09-03 04:16:35.32809	5	Apple	iphone-xs-2168	0	400	2	9	0
1910	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.930812	2019-09-03 04:16:01.936536	5	Apple	iphone-xs-1910	0	400	2	9	0
1915	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.048992	2019-09-03 04:16:02.060946	5	Apple	iphone-xs-1915	0	400	2	9	0
1921	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.299369	2019-09-03 04:16:02.308656	5	Apple	iphone-xs-1921	0	400	2	9	0
1926	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.484415	2019-09-03 04:16:02.487789	5	Apple	iphone-xs-1926	0	400	2	9	0
1930	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.606974	2019-09-03 04:16:02.615575	5	Apple	iphone-xs-1930	0	400	2	9	0
1936	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.823657	2019-09-03 04:16:02.843344	5	Apple	iphone-xs-1936	0	400	2	9	0
1941	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:03.349299	2019-09-03 04:16:03.35614	5	Apple	iphone-xs-1941	0	400	2	9	0
1946	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:03.713742	2019-09-03 04:16:03.747076	5	Apple	iphone-xs-1946	0	400	2	9	0
1952	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.011052	2019-09-03 04:16:04.055642	5	Apple	iphone-xs-1952	0	400	2	9	0
1956	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.461459	2019-09-03 04:16:04.487654	5	Apple	iphone-xs-1956	0	400	2	9	0
1964	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.874511	2019-09-03 04:16:04.892444	5	Apple	iphone-xs-1964	0	400	2	9	0
1967	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.082645	2019-09-03 04:16:05.098066	5	Apple	iphone-xs-1967	0	400	2	9	0
1973	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.32489	2019-09-03 04:16:05.329664	5	Apple	iphone-xs-1973	0	400	2	9	0
1978	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.474807	2019-09-03 04:16:05.484825	5	Apple	iphone-xs-1978	0	400	2	9	0
1983	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.617949	2019-09-03 04:16:05.625099	5	Apple	iphone-xs-1983	0	400	2	9	0
1988	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.865591	2019-09-03 04:16:05.875507	5	Apple	iphone-xs-1988	0	400	2	9	0
1993	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.960879	2019-09-03 04:16:05.964039	5	Apple	iphone-xs-1993	0	400	2	9	0
1998	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.066618	2019-09-03 04:16:06.071368	5	Apple	iphone-xs-1998	0	400	2	9	0
2003	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.418821	2019-09-03 04:16:06.422715	5	Apple	iphone-xs-2003	0	400	2	9	0
2006	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.558253	2019-09-03 04:16:06.585678	5	Apple	iphone-xs-2006	0	400	2	9	0
2013	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.705148	2019-09-03 04:16:06.708361	5	Apple	iphone-xs-2013	0	400	2	9	0
2017	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.853157	2019-09-03 04:16:06.858521	5	Apple	iphone-xs-2017	0	400	2	9	0
2022	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.971445	2019-09-03 04:16:06.977206	5	Apple	iphone-xs-2022	0	400	2	9	0
2027	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.128299	2019-09-03 04:16:07.133933	5	Apple	iphone-xs-2027	0	400	2	9	0
2033	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.29632	2019-09-03 04:16:07.305501	5	Apple	iphone-xs-2033	0	400	2	9	0
2038	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.42281	2019-09-03 04:16:07.434708	5	Apple	iphone-xs-2038	0	400	2	9	0
2042	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.544366	2019-09-03 04:16:07.559497	5	Apple	iphone-xs-2042	0	400	2	9	0
2048	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.6719	2019-09-03 04:16:07.676397	5	Apple	iphone-xs-2048	0	400	2	9	0
2053	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.802488	2019-09-03 04:16:07.810476	5	Apple	iphone-xs-2053	0	400	2	9	0
2058	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.907065	2019-09-03 04:16:07.911309	5	Apple	iphone-xs-2058	0	400	2	9	0
2063	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.053587	2019-09-03 04:16:08.059574	5	Apple	iphone-xs-2063	0	400	2	9	0
2068	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.2337	2019-09-03 04:16:08.244708	5	Apple	iphone-xs-2068	0	400	2	9	0
2074	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.391374	2019-09-03 04:16:08.400384	5	Apple	iphone-xs-2074	0	400	2	9	0
2079	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.541013	2019-09-03 04:16:08.554926	5	Apple	iphone-xs-2079	0	400	2	9	0
2082	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.684734	2019-09-03 04:16:08.697479	5	Apple	iphone-xs-2082	0	400	2	9	0
2086	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.800269	2019-09-03 04:16:08.806081	5	Apple	iphone-xs-2086	0	400	2	9	0
2091	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.902046	2019-09-03 04:16:08.905377	5	Apple	iphone-xs-2091	0	400	2	9	0
2097	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.03472	2019-09-03 04:16:09.042927	5	Apple	iphone-xs-2097	0	400	2	9	0
2101	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.125711	2019-09-03 04:16:09.134652	5	Apple	iphone-xs-2101	0	400	2	9	0
2106	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.243456	2019-09-03 04:16:09.253995	5	Apple	iphone-xs-2106	0	400	2	9	0
2112	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.375628	2019-09-03 04:16:09.383814	5	Apple	iphone-xs-2112	0	400	2	9	0
2116	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.533861	2019-09-03 04:16:09.542757	5	Apple	iphone-xs-2116	0	400	2	9	0
2122	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.677379	2019-09-03 04:16:09.684208	5	Apple	iphone-xs-2122	0	400	2	9	0
2127	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.792304	2019-09-03 04:16:09.822658	5	Apple	iphone-xs-2127	0	400	2	9	0
2132	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.94473	2019-09-03 04:16:09.951073	5	Apple	iphone-xs-2132	0	400	2	9	0
2138	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.085224	2019-09-03 04:16:10.095604	5	Apple	iphone-xs-2138	0	400	2	9	0
1909	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:01.91506	2019-09-03 04:16:01.921331	5	Apple	iphone-xs-1909	0	400	2	9	0
1914	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.043057	2019-09-03 04:16:02.052305	5	Apple	iphone-xs-1914	0	400	2	9	0
1919	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.266031	2019-09-03 04:16:02.27278	5	Apple	iphone-xs-1919	0	400	2	9	0
1925	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.47437	2019-09-03 04:16:02.478608	5	Apple	iphone-xs-1925	0	400	2	9	0
1928	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.593532	2019-09-03 04:16:02.59727	5	Apple	iphone-xs-1928	0	400	2	9	0
1934	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.713455	2019-09-03 04:16:02.716835	5	Apple	iphone-xs-1934	0	400	2	9	0
1937	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.856646	2019-09-03 04:16:02.864139	5	Apple	iphone-xs-1937	0	400	2	9	0
1942	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:03.371209	2019-09-03 04:16:03.428768	5	Apple	iphone-xs-1942	0	400	2	9	0
1948	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:03.776435	2019-09-03 04:16:03.811202	5	Apple	iphone-xs-1948	0	400	2	9	0
1954	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.072604	2019-09-03 04:16:04.087512	5	Apple	iphone-xs-1954	0	400	2	9	0
1959	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.519239	2019-09-03 04:16:04.5415	5	Apple	iphone-xs-1959	0	400	2	9	0
1961	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.830034	2019-09-03 04:16:04.84405	5	Apple	iphone-xs-1961	0	400	2	9	0
1966	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.080968	2019-09-03 04:16:05.100139	5	Apple	iphone-xs-1966	0	400	2	9	0
1971	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.301068	2019-09-03 04:16:05.308642	5	Apple	iphone-xs-1971	0	400	2	9	0
1976	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.412606	2019-09-03 04:16:05.415747	5	Apple	iphone-xs-1976	0	400	2	9	0
1982	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.54036	2019-09-03 04:16:05.566774	5	Apple	iphone-xs-1982	0	400	2	9	0
1987	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.777708	2019-09-03 04:16:05.79517	5	Apple	iphone-xs-1987	0	400	2	9	0
1991	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.911769	2019-09-03 04:16:05.916764	5	Apple	iphone-xs-1991	0	400	2	9	0
1995	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.028318	2019-09-03 04:16:06.038948	5	Apple	iphone-xs-1995	0	400	2	9	0
2001	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.407753	2019-09-03 04:16:06.417082	5	Apple	iphone-xs-2001	0	400	2	9	0
2008	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.586941	2019-09-03 04:16:06.589773	5	Apple	iphone-xs-2008	0	400	2	9	0
2011	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.694985	2019-09-03 04:16:06.706485	5	Apple	iphone-xs-2011	0	400	2	9	0
2018	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.857712	2019-09-03 04:16:06.863118	5	Apple	iphone-xs-2018	0	400	2	9	0
2023	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.984698	2019-09-03 04:16:06.988214	5	Apple	iphone-xs-2023	0	400	2	9	0
2028	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.134982	2019-09-03 04:16:07.14184	5	Apple	iphone-xs-2028	0	400	2	9	0
2032	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.291632	2019-09-03 04:16:07.293914	5	Apple	iphone-xs-2032	0	400	2	9	0
2037	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.401251	2019-09-03 04:16:07.410275	5	Apple	iphone-xs-2037	0	400	2	9	0
2043	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.558232	2019-09-03 04:16:07.568225	5	Apple	iphone-xs-2043	0	400	2	9	0
2047	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.651609	2019-09-03 04:16:07.659337	5	Apple	iphone-xs-2047	0	400	2	9	0
2052	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.748486	2019-09-03 04:16:07.757346	5	Apple	iphone-xs-2052	0	400	2	9	0
2057	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.863161	2019-09-03 04:16:07.868505	5	Apple	iphone-xs-2057	0	400	2	9	0
2062	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.03591	2019-09-03 04:16:08.042361	5	Apple	iphone-xs-2062	0	400	2	9	0
2067	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.191572	2019-09-03 04:16:08.195568	5	Apple	iphone-xs-2067	0	400	2	9	0
2072	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.352049	2019-09-03 04:16:08.366883	5	Apple	iphone-xs-2072	0	400	2	9	0
2077	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.521257	2019-09-03 04:16:08.526105	5	Apple	iphone-xs-2077	0	400	2	9	0
2083	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.689191	2019-09-03 04:16:08.700056	5	Apple	iphone-xs-2083	0	400	2	9	0
2087	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.80359	2019-09-03 04:16:08.80866	5	Apple	iphone-xs-2087	0	400	2	9	0
2092	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.917476	2019-09-03 04:16:08.941759	5	Apple	iphone-xs-2092	0	400	2	9	0
2100	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.065131	2019-09-03 04:16:09.072359	5	Apple	iphone-xs-2100	0	400	2	9	0
2105	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.191022	2019-09-03 04:16:09.197898	5	Apple	iphone-xs-2105	0	400	2	9	0
2110	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.310205	2019-09-03 04:16:09.313522	5	Apple	iphone-xs-2110	0	400	2	9	0
2114	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.498394	2019-09-03 04:16:09.507681	5	Apple	iphone-xs-2114	0	400	2	9	0
2120	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.63322	2019-09-03 04:16:09.641182	5	Apple	iphone-xs-2120	0	400	2	9	0
2124	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.747445	2019-09-03 04:16:09.754189	5	Apple	iphone-xs-2124	0	400	2	9	0
2128	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.856698	2019-09-03 04:16:09.867798	5	Apple	iphone-xs-2128	0	400	2	9	0
2133	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.95798	2019-09-03 04:16:09.968521	5	Apple	iphone-xs-2133	0	400	2	9	0
2137	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.063954	2019-09-03 04:16:10.075419	5	Apple	iphone-xs-2137	0	400	2	9	0
1913	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.006953	2019-09-03 04:16:02.012911	5	Apple	iphone-xs-1913	0	400	2	9	0
2169	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.326224	2019-09-03 04:16:35.332098	5	Apple	iphone-xs-2169	0	400	2	9	0
1917	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.221432	2019-09-03 04:16:02.230348	5	Apple	iphone-xs-1917	0	400	2	9	0
1922	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.374385	2019-09-03 04:16:02.386476	5	Apple	iphone-xs-1922	0	400	2	9	0
1927	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.553499	2019-09-03 04:16:02.560743	5	Apple	iphone-xs-1927	0	400	2	9	0
1932	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.679404	2019-09-03 04:16:02.697208	5	Apple	iphone-xs-1932	0	400	2	9	0
1938	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.861778	2019-09-03 04:16:02.868234	5	Apple	iphone-xs-1938	0	400	2	9	0
1944	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:03.500995	2019-09-03 04:16:03.526204	5	Apple	iphone-xs-1944	0	400	2	9	0
1947	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:03.764721	2019-09-03 04:16:03.819591	5	Apple	iphone-xs-1947	0	400	2	9	0
1953	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.053691	2019-09-03 04:16:04.068022	5	Apple	iphone-xs-1953	0	400	2	9	0
1958	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.517746	2019-09-03 04:16:04.543044	5	Apple	iphone-xs-1958	0	400	2	9	0
1962	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.841461	2019-09-03 04:16:04.861232	5	Apple	iphone-xs-1962	0	400	2	9	0
1968	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.10127	2019-09-03 04:16:05.105749	5	Apple	iphone-xs-1968	0	400	2	9	0
1972	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.318573	2019-09-03 04:16:05.323524	5	Apple	iphone-xs-1972	0	400	2	9	0
1977	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.427508	2019-09-03 04:16:05.435364	5	Apple	iphone-xs-1977	0	400	2	9	0
1981	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.557477	2019-09-03 04:16:05.564693	5	Apple	iphone-xs-1981	0	400	2	9	0
1986	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.7742	2019-09-03 04:16:05.790437	5	Apple	iphone-xs-1986	0	400	2	9	0
1992	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.919621	2019-09-03 04:16:05.929166	5	Apple	iphone-xs-1992	0	400	2	9	0
1997	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.034759	2019-09-03 04:16:06.047473	5	Apple	iphone-xs-1997	0	400	2	9	0
2000	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.388227	2019-09-03 04:16:06.402138	5	Apple	iphone-xs-2000	0	400	2	9	0
2004	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.523191	2019-09-03 04:16:06.557701	5	Apple	iphone-xs-2004	0	400	2	9	0
2010	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.687667	2019-09-03 04:16:06.693658	5	Apple	iphone-xs-2010	0	400	2	9	0
2015	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.843638	2019-09-03 04:16:06.846848	5	Apple	iphone-xs-2015	0	400	2	9	0
2021	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.959478	2019-09-03 04:16:06.966593	5	Apple	iphone-xs-2021	0	400	2	9	0
2026	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.100012	2019-09-03 04:16:07.10593	5	Apple	iphone-xs-2026	0	400	2	9	0
2030	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.240426	2019-09-03 04:16:07.244562	5	Apple	iphone-xs-2030	0	400	2	9	0
2035	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.331839	2019-09-03 04:16:07.336784	5	Apple	iphone-xs-2035	0	400	2	9	0
2041	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.461751	2019-09-03 04:16:07.465313	5	Apple	iphone-xs-2041	0	400	2	9	0
2045	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.601743	2019-09-03 04:16:07.607457	5	Apple	iphone-xs-2045	0	400	2	9	0
2049	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.701779	2019-09-03 04:16:07.705875	5	Apple	iphone-xs-2049	0	400	2	9	0
2054	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.804708	2019-09-03 04:16:07.817897	5	Apple	iphone-xs-2054	0	400	2	9	0
2059	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.942563	2019-09-03 04:16:07.955418	5	Apple	iphone-xs-2059	0	400	2	9	0
2064	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.070867	2019-09-03 04:16:08.076246	5	Apple	iphone-xs-2064	0	400	2	9	0
2069	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.240243	2019-09-03 04:16:08.2481	5	Apple	iphone-xs-2069	0	400	2	9	0
2073	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.389554	2019-09-03 04:16:08.394317	5	Apple	iphone-xs-2073	0	400	2	9	0
2078	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.535961	2019-09-03 04:16:08.541953	5	Apple	iphone-xs-2078	0	400	2	9	0
2084	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.698898	2019-09-03 04:16:08.705083	5	Apple	iphone-xs-2084	0	400	2	9	0
2088	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.804987	2019-09-03 04:16:08.812944	5	Apple	iphone-xs-2088	0	400	2	9	0
2094	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.935961	2019-09-03 04:16:08.940294	5	Apple	iphone-xs-2094	0	400	2	9	0
2096	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.030704	2019-09-03 04:16:09.038318	5	Apple	iphone-xs-2096	0	400	2	9	0
2102	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.128053	2019-09-03 04:16:09.14101	5	Apple	iphone-xs-2102	0	400	2	9	0
2107	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.244194	2019-09-03 04:16:09.250273	5	Apple	iphone-xs-2107	0	400	2	9	0
2111	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.37476	2019-09-03 04:16:09.381042	5	Apple	iphone-xs-2111	0	400	2	9	0
2117	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.540882	2019-09-03 04:16:09.546291	5	Apple	iphone-xs-2117	0	400	2	9	0
2121	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.656836	2019-09-03 04:16:09.662224	5	Apple	iphone-xs-2121	0	400	2	9	0
2126	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.760043	2019-09-03 04:16:09.774469	5	Apple	iphone-xs-2126	0	400	2	9	0
2131	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.89013	2019-09-03 04:16:09.89355	5	Apple	iphone-xs-2131	0	400	2	9	0
2135	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.985901	2019-09-03 04:16:09.991786	5	Apple	iphone-xs-2135	0	400	2	9	0
1916	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.064007	2019-09-03 04:16:02.067863	5	Apple	iphone-xs-1916	0	400	2	9	0
2170	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.328728	2019-09-03 04:16:35.334467	5	Apple	iphone-xs-2170	0	400	2	9	0
1920	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.273966	2019-09-03 04:16:02.295559	5	Apple	iphone-xs-1920	0	400	2	9	0
1924	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.472714	2019-09-03 04:16:02.480272	5	Apple	iphone-xs-1924	0	400	2	9	0
1929	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.601303	2019-09-03 04:16:02.610132	5	Apple	iphone-xs-1929	0	400	2	9	0
1935	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.7144	2019-09-03 04:16:02.721173	5	Apple	iphone-xs-1935	0	400	2	9	0
1939	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:02.866687	2019-09-03 04:16:02.869618	5	Apple	iphone-xs-1939	0	400	2	9	0
1943	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:03.412453	2019-09-03 04:16:03.455351	5	Apple	iphone-xs-1943	0	400	2	9	0
1949	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:03.779578	2019-09-03 04:16:03.806432	5	Apple	iphone-xs-1949	0	400	2	9	0
1951	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.00545	2019-09-03 04:16:04.023252	5	Apple	iphone-xs-1951	0	400	2	9	0
1957	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.49053	2019-09-03 04:16:04.515353	5	Apple	iphone-xs-1957	0	400	2	9	0
1963	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:04.845378	2019-09-03 04:16:04.868182	5	Apple	iphone-xs-1963	0	400	2	9	0
1969	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.107223	2019-09-03 04:16:05.132892	5	Apple	iphone-xs-1969	0	400	2	9	0
1974	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.330726	2019-09-03 04:16:05.337182	5	Apple	iphone-xs-1974	0	400	2	9	0
1979	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.479714	2019-09-03 04:16:05.490753	5	Apple	iphone-xs-1979	0	400	2	9	0
1984	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.750452	2019-09-03 04:16:05.758661	5	Apple	iphone-xs-1984	0	400	2	9	0
1989	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:05.880461	2019-09-03 04:16:05.885949	5	Apple	iphone-xs-1989	0	400	2	9	0
1994	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.010854	2019-09-03 04:16:06.017	5	Apple	iphone-xs-1994	0	400	2	9	0
1999	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.150703	2019-09-03 04:16:06.164984	5	Apple	iphone-xs-1999	0	400	2	9	0
2005	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.537781	2019-09-03 04:16:06.552845	5	Apple	iphone-xs-2005	0	400	2	9	0
2009	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.661087	2019-09-03 04:16:06.672342	5	Apple	iphone-xs-2009	0	400	2	9	0
2014	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.804191	2019-09-03 04:16:06.824318	5	Apple	iphone-xs-2014	0	400	2	9	0
2019	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:06.917701	2019-09-03 04:16:06.937408	5	Apple	iphone-xs-2019	0	400	2	9	0
2025	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.09364	2019-09-03 04:16:07.104923	5	Apple	iphone-xs-2025	0	400	2	9	0
2031	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.246709	2019-09-03 04:16:07.251447	5	Apple	iphone-xs-2031	0	400	2	9	0
2034	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.330741	2019-09-03 04:16:07.339227	5	Apple	iphone-xs-2034	0	400	2	9	0
2040	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.455382	2019-09-03 04:16:07.458295	5	Apple	iphone-xs-2040	0	400	2	9	0
2044	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.589145	2019-09-03 04:16:07.592363	5	Apple	iphone-xs-2044	0	400	2	9	0
2050	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.702976	2019-09-03 04:16:07.708198	5	Apple	iphone-xs-2050	0	400	2	9	0
2055	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.816472	2019-09-03 04:16:07.820944	5	Apple	iphone-xs-2055	0	400	2	9	0
2060	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:07.947228	2019-09-03 04:16:07.956287	5	Apple	iphone-xs-2060	0	400	2	9	0
2065	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.103551	2019-09-03 04:16:08.117396	5	Apple	iphone-xs-2065	0	400	2	9	0
2070	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.257115	2019-09-03 04:16:08.265324	5	Apple	iphone-xs-2070	0	400	2	9	0
2075	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.405839	2019-09-03 04:16:08.416772	5	Apple	iphone-xs-2075	0	400	2	9	0
2080	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.56304	2019-09-03 04:16:08.567022	5	Apple	iphone-xs-2080	0	400	2	9	0
2085	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.711149	2019-09-03 04:16:08.717157	5	Apple	iphone-xs-2085	0	400	2	9	0
2090	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.817409	2019-09-03 04:16:08.825598	5	Apple	iphone-xs-2090	0	400	2	9	0
2095	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:08.949256	2019-09-03 04:16:08.954033	5	Apple	iphone-xs-2095	0	400	2	9	0
2099	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.059359	2019-09-03 04:16:09.070065	5	Apple	iphone-xs-2099	0	400	2	9	0
2104	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.184497	2019-09-03 04:16:09.192742	5	Apple	iphone-xs-2104	0	400	2	9	0
2109	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.300897	2019-09-03 04:16:09.305816	5	Apple	iphone-xs-2109	0	400	2	9	0
2113	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.489589	2019-09-03 04:16:09.499375	5	Apple	iphone-xs-2113	0	400	2	9	0
2118	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.621933	2019-09-03 04:16:09.637799	5	Apple	iphone-xs-2118	0	400	2	9	0
2125	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.751753	2019-09-03 04:16:09.759113	5	Apple	iphone-xs-2125	0	400	2	9	0
2130	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:09.881217	2019-09-03 04:16:09.888263	5	Apple	iphone-xs-2130	0	400	2	9	0
2136	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.002007	2019-09-03 04:16:10.009462	5	Apple	iphone-xs-2136	0	400	2	9	0
2141	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.109432	2019-09-03 04:16:10.118936	5	Apple	iphone-xs-2141	0	400	2	9	0
2146	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.254597	2019-09-03 04:16:10.264798	5	Apple	iphone-xs-2146	0	400	2	9	0
2140	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.094323	2019-09-03 04:16:10.103479	5	Apple	iphone-xs-2140	0	400	2	9	0
2144	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.241607	2019-09-03 04:16:10.246355	5	Apple	iphone-xs-2144	0	400	2	9	0
2171	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.431099	2019-09-03 04:16:35.436639	5	Apple	iphone-xs-2171	0	400	2	9	0
2149	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.359875	2019-09-03 04:16:10.367015	5	Apple	iphone-xs-2149	0	400	2	9	0
2154	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.51335	2019-09-03 04:16:10.543167	5	Apple	iphone-xs-2154	0	400	2	9	0
2176	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.620222	2019-09-03 04:16:35.622061	5	Apple	iphone-xs-2176	0	400	2	9	0
2181	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.717114	2019-09-03 04:16:35.721408	5	Apple	iphone-xs-2181	0	400	2	9	0
2186	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.813906	2019-09-03 04:16:35.822288	5	Apple	iphone-xs-2186	0	400	2	9	0
2191	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.924905	2019-09-03 04:16:35.930246	5	Apple	iphone-xs-2191	0	400	2	9	0
2196	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.047831	2019-09-03 04:16:36.052714	5	Apple	iphone-xs-2196	0	400	2	9	0
2201	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.162368	2019-09-03 04:16:36.168024	5	Apple	iphone-xs-2201	0	400	2	9	0
2206	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.301053	2019-09-03 04:16:36.310178	5	Apple	iphone-xs-2206	0	400	2	9	0
2211	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.554016	2019-09-03 04:16:36.561551	5	Apple	iphone-xs-2211	0	400	2	9	0
2217	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.696402	2019-09-03 04:16:36.70189	5	Apple	iphone-xs-2217	0	400	2	9	0
2221	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.805737	2019-09-03 04:16:36.813358	5	Apple	iphone-xs-2221	0	400	2	9	0
2226	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.910688	2019-09-03 04:16:36.9192	5	Apple	iphone-xs-2226	0	400	2	9	0
2231	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.048206	2019-09-03 04:16:37.04999	5	Apple	iphone-xs-2231	0	400	2	9	0
2236	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.210147	2019-09-03 04:16:37.228853	5	Apple	iphone-xs-2236	0	400	2	9	0
2241	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.400255	2019-09-03 04:16:37.410293	5	Apple	iphone-xs-2241	0	400	2	9	0
2246	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.574758	2019-09-03 04:16:37.596681	5	Apple	iphone-xs-2246	0	400	2	9	0
2251	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.695626	2019-09-03 04:16:37.700241	5	Apple	iphone-xs-2251	0	400	2	9	0
2256	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.809229	2019-09-03 04:16:37.816947	5	Apple	iphone-xs-2256	0	400	2	9	0
2262	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.928264	2019-09-03 04:16:37.933194	5	Apple	iphone-xs-2262	0	400	2	9	0
2267	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.06395	2019-09-03 04:16:38.068838	5	Apple	iphone-xs-2267	0	400	2	9	0
2274	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.192168	2019-09-03 04:16:38.199896	5	Apple	iphone-xs-2274	0	400	2	9	0
2279	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.322907	2019-09-03 04:16:38.325466	5	Apple	iphone-xs-2279	0	400	2	9	0
2281	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.411146	2019-09-03 04:16:38.415217	5	Apple	iphone-xs-2281	0	400	2	9	0
2286	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.545719	2019-09-03 04:16:38.556927	5	Apple	iphone-xs-2286	0	400	2	9	0
2291	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.666101	2019-09-03 04:16:38.679652	5	Apple	iphone-xs-2291	0	400	2	9	0
2296	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.776868	2019-09-03 04:16:38.793496	5	Apple	iphone-xs-2296	0	400	2	9	0
2302	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.906792	2019-09-03 04:16:38.915885	5	Apple	iphone-xs-2302	0	400	2	9	0
2306	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.990604	2019-09-03 04:16:38.996108	5	Apple	iphone-xs-2306	0	400	2	9	0
2311	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.103555	2019-09-03 04:16:39.114431	5	Apple	iphone-xs-2311	0	400	2	9	0
2316	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.251634	2019-09-03 04:16:39.26332	5	Apple	iphone-xs-2316	0	400	2	9	0
2320	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.355119	2019-09-03 04:16:39.363519	5	Apple	iphone-xs-2320	0	400	2	9	0
2325	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.454351	2019-09-03 04:16:39.471523	5	Apple	iphone-xs-2325	0	400	2	9	0
2330	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.634089	2019-09-03 04:16:39.644511	5	Apple	iphone-xs-2330	0	400	2	9	0
2335	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.751841	2019-09-03 04:16:39.760611	5	Apple	iphone-xs-2335	0	400	2	9	0
2340	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.844991	2019-09-03 04:16:39.852649	5	Apple	iphone-xs-2340	0	400	2	9	0
2345	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.946553	2019-09-03 04:16:39.95677	5	Apple	iphone-xs-2345	0	400	2	9	0
2355	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.162608	2019-09-03 04:16:40.187259	5	Apple	iphone-xs-2355	0	400	2	9	0
2360	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.295787	2019-09-03 04:16:40.306866	5	Apple	iphone-xs-2360	0	400	2	9	0
2365	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.451486	2019-09-03 04:16:40.456096	5	Apple	iphone-xs-2365	0	400	2	9	0
2371	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.602477	2019-09-03 04:16:40.606834	5	Apple	iphone-xs-2371	0	400	2	9	0
2374	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.692635	2019-09-03 04:16:40.698867	5	Apple	iphone-xs-2374	0	400	2	9	0
2379	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.814191	2019-09-03 04:16:40.817105	5	Apple	iphone-xs-2379	0	400	2	9	0
2142	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.160575	2019-09-03 04:16:10.175779	5	Apple	iphone-xs-2142	0	400	2	9	0
2148	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.326084	2019-09-03 04:16:10.335434	5	Apple	iphone-xs-2148	0	400	2	9	0
2172	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.438928	2019-09-03 04:16:35.4417	5	Apple	iphone-xs-2172	0	400	2	9	0
2153	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.470203	2019-09-03 04:16:10.47608	5	Apple	iphone-xs-2153	0	400	2	9	0
2177	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.623011	2019-09-03 04:16:35.631353	5	Apple	iphone-xs-2177	0	400	2	9	0
2183	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.730255	2019-09-03 04:16:35.741827	5	Apple	iphone-xs-2183	0	400	2	9	0
2188	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.861861	2019-09-03 04:16:35.87256	5	Apple	iphone-xs-2188	0	400	2	9	0
2194	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.99824	2019-09-03 04:16:36.004988	5	Apple	iphone-xs-2194	0	400	2	9	0
2199	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.116148	2019-09-03 04:16:36.129225	5	Apple	iphone-xs-2199	0	400	2	9	0
2204	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.269014	2019-09-03 04:16:36.274217	5	Apple	iphone-xs-2204	0	400	2	9	0
2210	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.427265	2019-09-03 04:16:36.449778	5	Apple	iphone-xs-2210	0	400	2	9	0
2215	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.589141	2019-09-03 04:16:36.590806	5	Apple	iphone-xs-2215	0	400	2	9	0
2218	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.706978	2019-09-03 04:16:36.714435	5	Apple	iphone-xs-2218	0	400	2	9	0
2223	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.816447	2019-09-03 04:16:36.8201	5	Apple	iphone-xs-2223	0	400	2	9	0
2227	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.967618	2019-09-03 04:16:36.96976	5	Apple	iphone-xs-2227	0	400	2	9	0
2232	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.067008	2019-09-03 04:16:37.071007	5	Apple	iphone-xs-2232	0	400	2	9	0
2237	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.221959	2019-09-03 04:16:37.235525	5	Apple	iphone-xs-2237	0	400	2	9	0
2242	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.411775	2019-09-03 04:16:37.427455	5	Apple	iphone-xs-2242	0	400	2	9	0
2247	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.614902	2019-09-03 04:16:37.619609	5	Apple	iphone-xs-2247	0	400	2	9	0
2253	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.726041	2019-09-03 04:16:37.731241	5	Apple	iphone-xs-2253	0	400	2	9	0
2258	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.830509	2019-09-03 04:16:37.838673	5	Apple	iphone-xs-2258	0	400	2	9	0
2263	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.954434	2019-09-03 04:16:37.963977	5	Apple	iphone-xs-2263	0	400	2	9	0
2269	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.079867	2019-09-03 04:16:38.092108	5	Apple	iphone-xs-2269	0	400	2	9	0
2271	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.184562	2019-09-03 04:16:38.188379	5	Apple	iphone-xs-2271	0	400	2	9	0
2277	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.31088	2019-09-03 04:16:38.318249	5	Apple	iphone-xs-2277	0	400	2	9	0
2285	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.449814	2019-09-03 04:16:38.459658	5	Apple	iphone-xs-2285	0	400	2	9	0
2290	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.649204	2019-09-03 04:16:38.662467	5	Apple	iphone-xs-2290	0	400	2	9	0
2295	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.771417	2019-09-03 04:16:38.779199	5	Apple	iphone-xs-2295	0	400	2	9	0
2300	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.893588	2019-09-03 04:16:38.900335	5	Apple	iphone-xs-2300	0	400	2	9	0
2305	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.988311	2019-09-03 04:16:38.993216	5	Apple	iphone-xs-2305	0	400	2	9	0
2310	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.100487	2019-09-03 04:16:39.111218	5	Apple	iphone-xs-2310	0	400	2	9	0
2315	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.230517	2019-09-03 04:16:39.238412	5	Apple	iphone-xs-2315	0	400	2	9	0
2321	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.358659	2019-09-03 04:16:39.365094	5	Apple	iphone-xs-2321	0	400	2	9	0
2327	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.47827	2019-09-03 04:16:39.548974	5	Apple	iphone-xs-2327	0	400	2	9	0
2331	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.636899	2019-09-03 04:16:39.640598	5	Apple	iphone-xs-2331	0	400	2	9	0
2336	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.762656	2019-09-03 04:16:39.773465	5	Apple	iphone-xs-2336	0	400	2	9	0
2341	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.871444	2019-09-03 04:16:39.8872	5	Apple	iphone-xs-2341	0	400	2	9	0
2346	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.988622	2019-09-03 04:16:39.998191	5	Apple	iphone-xs-2346	0	400	2	9	0
2351	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.099288	2019-09-03 04:16:40.10809	5	Apple	iphone-xs-2351	0	400	2	9	0
2356	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.227004	2019-09-03 04:16:40.237751	5	Apple	iphone-xs-2356	0	400	2	9	0
2361	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.313308	2019-09-03 04:16:40.321142	5	Apple	iphone-xs-2361	0	400	2	9	0
2366	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.457403	2019-09-03 04:16:40.460974	5	Apple	iphone-xs-2366	0	400	2	9	0
2369	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.5942	2019-09-03 04:16:40.599622	5	Apple	iphone-xs-2369	0	400	2	9	0
2376	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.706985	2019-09-03 04:16:40.716443	5	Apple	iphone-xs-2376	0	400	2	9	0
2381	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.834824	2019-09-03 04:16:40.84102	5	Apple	iphone-xs-2381	0	400	2	9	0
2384	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.922245	2019-09-03 04:16:40.925855	5	Apple	iphone-xs-2384	0	400	2	9	0
2386	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.94789	2019-09-03 04:16:40.964118	5	Apple	iphone-xs-2386	0	400	2	9	0
2143	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.177051	2019-09-03 04:16:10.186253	5	Apple	iphone-xs-2143	0	400	2	9	0
2147	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.302919	2019-09-03 04:16:10.306237	5	Apple	iphone-xs-2147	0	400	2	9	0
2173	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.444738	2019-09-03 04:16:35.448669	5	Apple	iphone-xs-2173	0	400	2	9	0
2152	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.458124	2019-09-03 04:16:10.467053	5	Apple	iphone-xs-2152	0	400	2	9	0
2179	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.637012	2019-09-03 04:16:35.647469	5	Apple	iphone-xs-2179	0	400	2	9	0
2184	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.757727	2019-09-03 04:16:35.767373	5	Apple	iphone-xs-2184	0	400	2	9	0
2189	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.864409	2019-09-03 04:16:35.878073	5	Apple	iphone-xs-2189	0	400	2	9	0
2193	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.97586	2019-09-03 04:16:35.997585	5	Apple	iphone-xs-2193	0	400	2	9	0
2197	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.110305	2019-09-03 04:16:36.127277	5	Apple	iphone-xs-2197	0	400	2	9	0
2202	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.252507	2019-09-03 04:16:36.262621	5	Apple	iphone-xs-2202	0	400	2	9	0
2207	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.388732	2019-09-03 04:16:36.397845	5	Apple	iphone-xs-2207	0	400	2	9	0
2212	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.570384	2019-09-03 04:16:36.572815	5	Apple	iphone-xs-2212	0	400	2	9	0
2219	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.707731	2019-09-03 04:16:36.716437	5	Apple	iphone-xs-2219	0	400	2	9	0
2224	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.84024	2019-09-03 04:16:36.843638	5	Apple	iphone-xs-2224	0	400	2	9	0
2230	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.9833	2019-09-03 04:16:36.992358	5	Apple	iphone-xs-2230	0	400	2	9	0
2235	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.113439	2019-09-03 04:16:37.121619	5	Apple	iphone-xs-2235	0	400	2	9	0
2240	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.288001	2019-09-03 04:16:37.298663	5	Apple	iphone-xs-2240	0	400	2	9	0
2245	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.456808	2019-09-03 04:16:37.463387	5	Apple	iphone-xs-2245	0	400	2	9	0
2249	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.624016	2019-09-03 04:16:37.629426	5	Apple	iphone-xs-2249	0	400	2	9	0
2255	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.736029	2019-09-03 04:16:37.742351	5	Apple	iphone-xs-2255	0	400	2	9	0
2260	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.860809	2019-09-03 04:16:37.876406	5	Apple	iphone-xs-2260	0	400	2	9	0
2265	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.99949	2019-09-03 04:16:38.005865	5	Apple	iphone-xs-2265	0	400	2	9	0
2270	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.09603	2019-09-03 04:16:38.10062	5	Apple	iphone-xs-2270	0	400	2	9	0
2275	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.20534	2019-09-03 04:16:38.207402	5	Apple	iphone-xs-2275	0	400	2	9	0
2280	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.330134	2019-09-03 04:16:38.334492	5	Apple	iphone-xs-2280	0	400	2	9	0
2283	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.423518	2019-09-03 04:16:38.430588	5	Apple	iphone-xs-2283	0	400	2	9	0
2288	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.607969	2019-09-03 04:16:38.614739	5	Apple	iphone-xs-2288	0	400	2	9	0
2293	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.716226	2019-09-03 04:16:38.725484	5	Apple	iphone-xs-2293	0	400	2	9	0
2299	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.829252	2019-09-03 04:16:38.83484	5	Apple	iphone-xs-2299	0	400	2	9	0
2303	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.924904	2019-09-03 04:16:38.930432	5	Apple	iphone-xs-2303	0	400	2	9	0
2308	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.021391	2019-09-03 04:16:39.02733	5	Apple	iphone-xs-2308	0	400	2	9	0
2313	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.142959	2019-09-03 04:16:39.148002	5	Apple	iphone-xs-2313	0	400	2	9	0
2318	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.272945	2019-09-03 04:16:39.280094	5	Apple	iphone-xs-2318	0	400	2	9	0
2323	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.390761	2019-09-03 04:16:39.397455	5	Apple	iphone-xs-2323	0	400	2	9	0
2328	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.559902	2019-09-03 04:16:39.562927	5	Apple	iphone-xs-2328	0	400	2	9	0
2333	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.679141	2019-09-03 04:16:39.684481	5	Apple	iphone-xs-2333	0	400	2	9	0
2338	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.780915	2019-09-03 04:16:39.787874	5	Apple	iphone-xs-2338	0	400	2	9	0
2342	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.901553	2019-09-03 04:16:39.907909	5	Apple	iphone-xs-2342	0	400	2	9	0
2348	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.018414	2019-09-03 04:16:40.030926	5	Apple	iphone-xs-2348	0	400	2	9	0
2352	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.125621	2019-09-03 04:16:40.130991	5	Apple	iphone-xs-2352	0	400	2	9	0
2358	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.273539	2019-09-03 04:16:40.283093	5	Apple	iphone-xs-2358	0	400	2	9	0
2364	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.444988	2019-09-03 04:16:40.448625	5	Apple	iphone-xs-2364	0	400	2	9	0
2367	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.564013	2019-09-03 04:16:40.573031	5	Apple	iphone-xs-2367	0	400	2	9	0
2372	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.663906	2019-09-03 04:16:40.67695	5	Apple	iphone-xs-2372	0	400	2	9	0
2378	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.766993	2019-09-03 04:16:40.776857	5	Apple	iphone-xs-2378	0	400	2	9	0
2382	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.880053	2019-09-03 04:16:40.890233	5	Apple	iphone-xs-2382	0	400	2	9	0
2387	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.97068	2019-09-03 04:16:40.973939	5	Apple	iphone-xs-2387	0	400	2	9	0
2389	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.019744	2019-09-03 04:16:41.026295	5	Apple	iphone-xs-2389	0	400	2	9	0
2145	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.24744	2019-09-03 04:16:10.252153	5	Apple	iphone-xs-2145	0	400	2	9	0
2151	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.431762	2019-09-03 04:16:10.442786	5	Apple	iphone-xs-2151	0	400	2	9	0
2174	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.450004	2019-09-03 04:16:35.455831	5	Apple	iphone-xs-2174	0	400	2	9	0
2178	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.632791	2019-09-03 04:16:35.636454	5	Apple	iphone-xs-2178	0	400	2	9	0
2182	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.727306	2019-09-03 04:16:35.731254	5	Apple	iphone-xs-2182	0	400	2	9	0
2187	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.827071	2019-09-03 04:16:35.839839	5	Apple	iphone-xs-2187	0	400	2	9	0
2192	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.967327	2019-09-03 04:16:35.97107	5	Apple	iphone-xs-2192	0	400	2	9	0
2198	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.114795	2019-09-03 04:16:36.122125	5	Apple	iphone-xs-2198	0	400	2	9	0
2203	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.254686	2019-09-03 04:16:36.26584	5	Apple	iphone-xs-2203	0	400	2	9	0
2208	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.414498	2019-09-03 04:16:36.41718	5	Apple	iphone-xs-2208	0	400	2	9	0
2213	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.571576	2019-09-03 04:16:36.575255	5	Apple	iphone-xs-2213	0	400	2	9	0
2216	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.695464	2019-09-03 04:16:36.698514	5	Apple	iphone-xs-2216	0	400	2	9	0
2222	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.815174	2019-09-03 04:16:36.822743	5	Apple	iphone-xs-2222	0	400	2	9	0
2228	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.972038	2019-09-03 04:16:36.975568	5	Apple	iphone-xs-2228	0	400	2	9	0
2233	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.079354	2019-09-03 04:16:37.083236	5	Apple	iphone-xs-2233	0	400	2	9	0
2238	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.26356	2019-09-03 04:16:37.270629	5	Apple	iphone-xs-2238	0	400	2	9	0
2243	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.439598	2019-09-03 04:16:37.448132	5	Apple	iphone-xs-2243	0	400	2	9	0
2248	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.622291	2019-09-03 04:16:37.625539	5	Apple	iphone-xs-2248	0	400	2	9	0
2252	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.717777	2019-09-03 04:16:37.721288	5	Apple	iphone-xs-2252	0	400	2	9	0
2257	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.810097	2019-09-03 04:16:37.816038	5	Apple	iphone-xs-2257	0	400	2	9	0
2261	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.927073	2019-09-03 04:16:37.929428	5	Apple	iphone-xs-2261	0	400	2	9	0
2266	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.063339	2019-09-03 04:16:38.070211	5	Apple	iphone-xs-2266	0	400	2	9	0
2273	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.189584	2019-09-03 04:16:38.197582	5	Apple	iphone-xs-2273	0	400	2	9	0
2278	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.320936	2019-09-03 04:16:38.331791	5	Apple	iphone-xs-2278	0	400	2	9	0
2284	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.445742	2019-09-03 04:16:38.451881	5	Apple	iphone-xs-2284	0	400	2	9	0
2289	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.60944	2019-09-03 04:16:38.613519	5	Apple	iphone-xs-2289	0	400	2	9	0
2294	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.72135	2019-09-03 04:16:38.729128	5	Apple	iphone-xs-2294	0	400	2	9	0
2298	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.818381	2019-09-03 04:16:38.820991	5	Apple	iphone-xs-2298	0	400	2	9	0
2304	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.928532	2019-09-03 04:16:38.935987	5	Apple	iphone-xs-2304	0	400	2	9	0
2309	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.023217	2019-09-03 04:16:39.027966	5	Apple	iphone-xs-2309	0	400	2	9	0
2314	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.148999	2019-09-03 04:16:39.152507	5	Apple	iphone-xs-2314	0	400	2	9	0
2319	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.278219	2019-09-03 04:16:39.288146	5	Apple	iphone-xs-2319	0	400	2	9	0
2324	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.4039	2019-09-03 04:16:39.417318	5	Apple	iphone-xs-2324	0	400	2	9	0
2329	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.567842	2019-09-03 04:16:39.578683	5	Apple	iphone-xs-2329	0	400	2	9	0
2334	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.686624	2019-09-03 04:16:39.69016	5	Apple	iphone-xs-2334	0	400	2	9	0
2339	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.80595	2019-09-03 04:16:39.812773	5	Apple	iphone-xs-2339	0	400	2	9	0
2344	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.914923	2019-09-03 04:16:39.924447	5	Apple	iphone-xs-2344	0	400	2	9	0
2349	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.022128	2019-09-03 04:16:40.029512	5	Apple	iphone-xs-2349	0	400	2	9	0
2354	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.140558	2019-09-03 04:16:40.145267	5	Apple	iphone-xs-2354	0	400	2	9	0
2359	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.280446	2019-09-03 04:16:40.287453	5	Apple	iphone-xs-2359	0	400	2	9	0
2363	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.437091	2019-09-03 04:16:40.443627	5	Apple	iphone-xs-2363	0	400	2	9	0
2370	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.595443	2019-09-03 04:16:40.604295	5	Apple	iphone-xs-2370	0	400	2	9	0
2375	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.696039	2019-09-03 04:16:40.699659	5	Apple	iphone-xs-2375	0	400	2	9	0
2380	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.827582	2019-09-03 04:16:40.832077	5	Apple	iphone-xs-2380	0	400	2	9	0
2385	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.940408	2019-09-03 04:16:40.944172	5	Apple	iphone-xs-2385	0	400	2	9	0
2390	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.023798	2019-09-03 04:16:41.030483	5	Apple	iphone-xs-2390	0	400	2	9	0
2391	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.056741	2019-09-03 04:16:41.064121	5	Apple	iphone-xs-2391	0	400	2	9	0
2150	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.386748	2019-09-03 04:16:10.391388	5	Apple	iphone-xs-2150	0	400	2	9	0
2155	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:10.562299	2019-09-03 04:16:10.569607	5	Apple	iphone-xs-2155	0	400	2	9	0
2175	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.454177	2019-09-03 04:16:35.462222	5	Apple	iphone-xs-2175	0	400	2	9	0
2180	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.658253	2019-09-03 04:16:35.663194	5	Apple	iphone-xs-2180	0	400	2	9	0
2185	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.773363	2019-09-03 04:16:35.777874	5	Apple	iphone-xs-2185	0	400	2	9	0
2190	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:35.911203	2019-09-03 04:16:35.913935	5	Apple	iphone-xs-2190	0	400	2	9	0
2195	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.02958	2019-09-03 04:16:36.031318	5	Apple	iphone-xs-2195	0	400	2	9	0
2200	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.13576	2019-09-03 04:16:36.138459	5	Apple	iphone-xs-2200	0	400	2	9	0
2205	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.282719	2019-09-03 04:16:36.294622	5	Apple	iphone-xs-2205	0	400	2	9	0
2209	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.425943	2019-09-03 04:16:36.446328	5	Apple	iphone-xs-2209	0	400	2	9	0
2214	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.581693	2019-09-03 04:16:36.586321	5	Apple	iphone-xs-2214	0	400	2	9	0
2220	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.747527	2019-09-03 04:16:36.756998	5	Apple	iphone-xs-2220	0	400	2	9	0
2225	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.845585	2019-09-03 04:16:36.853274	5	Apple	iphone-xs-2225	0	400	2	9	0
2229	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:36.978174	2019-09-03 04:16:36.982088	5	Apple	iphone-xs-2229	0	400	2	9	0
2234	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.111484	2019-09-03 04:16:37.116184	5	Apple	iphone-xs-2234	0	400	2	9	0
2239	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.271563	2019-09-03 04:16:37.28143	5	Apple	iphone-xs-2239	0	400	2	9	0
2244	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.455891	2019-09-03 04:16:37.528804	5	Apple	iphone-xs-2244	0	400	2	9	0
2250	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.631054	2019-09-03 04:16:37.635423	5	Apple	iphone-xs-2250	0	400	2	9	0
2254	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.72686	2019-09-03 04:16:37.732073	5	Apple	iphone-xs-2254	0	400	2	9	0
2259	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.844941	2019-09-03 04:16:37.850157	5	Apple	iphone-xs-2259	0	400	2	9	0
2264	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:37.957406	2019-09-03 04:16:37.966232	5	Apple	iphone-xs-2264	0	400	2	9	0
2268	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.07889	2019-09-03 04:16:38.089916	5	Apple	iphone-xs-2268	0	400	2	9	0
2272	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.18635	2019-09-03 04:16:38.191397	5	Apple	iphone-xs-2272	0	400	2	9	0
2276	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.306169	2019-09-03 04:16:38.316344	5	Apple	iphone-xs-2276	0	400	2	9	0
2282	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.414006	2019-09-03 04:16:38.419678	5	Apple	iphone-xs-2282	0	400	2	9	0
2287	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.586914	2019-09-03 04:16:38.590016	5	Apple	iphone-xs-2287	0	400	2	9	0
2292	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.683779	2019-09-03 04:16:38.699539	5	Apple	iphone-xs-2292	0	400	2	9	0
2297	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.81113	2019-09-03 04:16:38.814313	5	Apple	iphone-xs-2297	0	400	2	9	0
2301	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:38.905999	2019-09-03 04:16:38.914516	5	Apple	iphone-xs-2301	0	400	2	9	0
2307	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.019337	2019-09-03 04:16:39.024487	5	Apple	iphone-xs-2307	0	400	2	9	0
2312	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.142096	2019-09-03 04:16:39.145515	5	Apple	iphone-xs-2312	0	400	2	9	0
2317	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.255029	2019-09-03 04:16:39.262241	5	Apple	iphone-xs-2317	0	400	2	9	0
2322	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.362085	2019-09-03 04:16:39.367744	5	Apple	iphone-xs-2322	0	400	2	9	0
2326	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.464609	2019-09-03 04:16:39.476705	5	Apple	iphone-xs-2326	0	400	2	9	0
2332	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.643741	2019-09-03 04:16:39.649457	5	Apple	iphone-xs-2332	0	400	2	9	0
2337	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.778166	2019-09-03 04:16:39.78387	5	Apple	iphone-xs-2337	0	400	2	9	0
2343	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:39.906406	2019-09-03 04:16:39.914114	5	Apple	iphone-xs-2343	0	400	2	9	0
2347	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.016989	2019-09-03 04:16:40.023171	5	Apple	iphone-xs-2347	0	400	2	9	0
2353	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.138025	2019-09-03 04:16:40.142851	5	Apple	iphone-xs-2353	0	400	2	9	0
2357	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.249923	2019-09-03 04:16:40.255657	5	Apple	iphone-xs-2357	0	400	2	9	0
2362	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.426868	2019-09-03 04:16:40.435776	5	Apple	iphone-xs-2362	0	400	2	9	0
2368	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.578823	2019-09-03 04:16:40.590738	5	Apple	iphone-xs-2368	0	400	2	9	0
2373	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.667295	2019-09-03 04:16:40.68377	5	Apple	iphone-xs-2373	0	400	2	9	0
2377	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.766318	2019-09-03 04:16:40.7742	5	Apple	iphone-xs-2377	0	400	2	9	0
2383	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.883871	2019-09-03 04:16:40.892137	5	Apple	iphone-xs-2383	0	400	2	9	0
2388	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.971413	2019-09-03 04:16:40.976637	5	Apple	iphone-xs-2388	0	400	2	9	0
2392	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.062516	2019-09-03 04:16:41.06945	5	Apple	iphone-xs-2392	0	400	2	9	0
2398	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.18913	2019-09-03 04:16:41.198044	5	Apple	iphone-xs-2398	0	400	2	9	0
2403	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.323982	2019-09-03 04:16:41.329222	5	Apple	iphone-xs-2403	0	400	2	9	0
2407	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.455634	2019-09-03 04:16:41.462609	5	Apple	iphone-xs-2407	0	400	2	9	0
2410	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.611528	2019-09-03 04:16:41.614947	5	Apple	iphone-xs-2410	0	400	2	9	0
2415	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.712655	2019-09-03 04:16:41.715582	5	Apple	iphone-xs-2415	0	400	2	9	0
2423	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.843092	2019-09-03 04:16:41.849903	5	Apple	iphone-xs-2423	0	400	2	9	0
2428	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.941425	2019-09-03 04:16:41.946504	5	Apple	iphone-xs-2428	0	400	2	9	0
2431	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.040731	2019-09-03 04:16:42.044611	5	Apple	iphone-xs-2431	0	400	2	9	0
2436	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.147693	2019-09-03 04:16:42.15405	5	Apple	iphone-xs-2436	0	400	2	9	0
2441	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.292324	2019-09-03 04:16:42.301384	5	Apple	iphone-xs-2441	0	400	2	9	0
2445	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.411781	2019-09-03 04:16:42.41715	5	Apple	iphone-xs-2445	0	400	2	9	0
2393	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.067444	2019-09-03 04:16:41.072384	5	Apple	iphone-xs-2393	0	400	2	9	0
2397	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.163386	2019-09-03 04:16:41.180567	5	Apple	iphone-xs-2397	0	400	2	9	0
2401	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.301699	2019-09-03 04:16:41.310309	5	Apple	iphone-xs-2401	0	400	2	9	0
2406	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.450125	2019-09-03 04:16:41.451924	5	Apple	iphone-xs-2406	0	400	2	9	0
2413	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.615969	2019-09-03 04:16:41.619549	5	Apple	iphone-xs-2413	0	400	2	9	0
2417	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.726518	2019-09-03 04:16:41.729724	5	Apple	iphone-xs-2417	0	400	2	9	0
2421	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.84008	2019-09-03 04:16:41.852239	5	Apple	iphone-xs-2421	0	400	2	9	0
2427	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.940553	2019-09-03 04:16:41.945519	5	Apple	iphone-xs-2427	0	400	2	9	0
2432	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.04153	2019-09-03 04:16:42.052183	5	Apple	iphone-xs-2432	0	400	2	9	0
2438	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.16004	2019-09-03 04:16:42.181672	5	Apple	iphone-xs-2438	0	400	2	9	0
2442	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.303348	2019-09-03 04:16:42.309661	5	Apple	iphone-xs-2442	0	400	2	9	0
2448	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.422908	2019-09-03 04:16:42.43442	5	Apple	iphone-xs-2448	0	400	2	9	0
2394	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.125491	2019-09-03 04:16:41.134011	5	Apple	iphone-xs-2394	0	400	2	9	0
2399	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.271788	2019-09-03 04:16:41.285474	5	Apple	iphone-xs-2399	0	400	2	9	0
2405	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.412567	2019-09-03 04:16:41.416194	5	Apple	iphone-xs-2405	0	400	2	9	0
2411	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.612559	2019-09-03 04:16:41.623755	5	Apple	iphone-xs-2411	0	400	2	9	0
2418	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.731861	2019-09-03 04:16:41.734895	5	Apple	iphone-xs-2418	0	400	2	9	0
2422	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.840747	2019-09-03 04:16:41.845027	5	Apple	iphone-xs-2422	0	400	2	9	0
2426	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.936497	2019-09-03 04:16:41.939225	5	Apple	iphone-xs-2426	0	400	2	9	0
2433	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.045632	2019-09-03 04:16:42.049045	5	Apple	iphone-xs-2433	0	400	2	9	0
2437	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.152421	2019-09-03 04:16:42.159122	5	Apple	iphone-xs-2437	0	400	2	9	0
2443	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.30532	2019-09-03 04:16:42.311802	5	Apple	iphone-xs-2443	0	400	2	9	0
2446	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.413311	2019-09-03 04:16:42.418795	5	Apple	iphone-xs-2446	0	400	2	9	0
2396	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.150066	2019-09-03 04:16:41.153181	5	Apple	iphone-xs-2396	0	400	2	9	0
2402	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.317397	2019-09-03 04:16:41.322987	5	Apple	iphone-xs-2402	0	400	2	9	0
2408	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.460691	2019-09-03 04:16:41.464606	5	Apple	iphone-xs-2408	0	400	2	9	0
2412	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.613462	2019-09-03 04:16:41.620491	5	Apple	iphone-xs-2412	0	400	2	9	0
2416	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.725348	2019-09-03 04:16:41.730399	5	Apple	iphone-xs-2416	0	400	2	9	0
2420	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.839122	2019-09-03 04:16:41.846029	5	Apple	iphone-xs-2420	0	400	2	9	0
2425	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.935055	2019-09-03 04:16:41.942533	5	Apple	iphone-xs-2425	0	400	2	9	0
2430	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.03317	2019-09-03 04:16:42.039901	5	Apple	iphone-xs-2430	0	400	2	9	0
2435	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.1394	2019-09-03 04:16:42.147045	5	Apple	iphone-xs-2435	0	400	2	9	0
2440	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.290874	2019-09-03 04:16:42.297843	5	Apple	iphone-xs-2440	0	400	2	9	0
2447	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.421597	2019-09-03 04:16:42.426523	5	Apple	iphone-xs-2447	0	400	2	9	0
2395	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.148615	2019-09-03 04:16:41.154633	5	Apple	iphone-xs-2395	0	400	2	9	0
2400	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.299075	2019-09-03 04:16:41.313621	5	Apple	iphone-xs-2400	0	400	2	9	0
2404	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.403664	2019-09-03 04:16:41.414296	5	Apple	iphone-xs-2404	0	400	2	9	0
2409	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.586711	2019-09-03 04:16:41.602364	5	Apple	iphone-xs-2409	0	400	2	9	0
2414	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.698764	2019-09-03 04:16:41.71204	5	Apple	iphone-xs-2414	0	400	2	9	0
2419	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.785037	2019-09-03 04:16:41.800171	5	Apple	iphone-xs-2419	0	400	2	9	0
2424	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:41.899241	2019-09-03 04:16:41.90078	5	Apple	iphone-xs-2424	0	400	2	9	0
2429	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.014299	2019-09-03 04:16:42.023189	5	Apple	iphone-xs-2429	0	400	2	9	0
2434	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.117894	2019-09-03 04:16:42.13616	5	Apple	iphone-xs-2434	0	400	2	9	0
2439	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.283416	2019-09-03 04:16:42.287842	5	Apple	iphone-xs-2439	0	400	2	9	0
2444	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:42.406441	2019-09-03 04:16:42.409332	5	Apple	iphone-xs-2444	0	400	2	9	0
2449	Nike Tee shirt	Casual Teen shirt	0	\N	5	2019-09-13 13:59:57.400679	2019-09-13 13:59:57.437178	5	Nike	nike-tee-shirt-2449	0	400	5	13	0
2350	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-03 04:16:40.044896	2019-09-03 04:16:40.050768	5	Apple	iphone-xs-2350	0	400	2	9	2
2450	Nike Slides	Nike in-door slides	\N	\N	\N	2019-09-13 16:10:49.545803	2019-09-13 16:10:49.579751	5	Nike	nike-slides-2450	0	400	7	11	11
2454	Fashion Plaid Shirt	Casual plaid shirt	\N	\N	\N	2019-09-14 09:00:19.793648	2019-09-14 09:00:19.822486	5	Fashion	fashion-plaid-shirt-2454	0	400	5	13	14
2456	Fashion Plaid Shirt	Casual plaid shirt	\N	\N	\N	2019-09-14 11:36:27.606518	2019-09-14 11:36:27.666189	5	Fashion	\N	0	400	5	13	2
2457	Fashion Plaid Shirt	Casual plaid shirt	\N	[#<ActionDispatch::Http::UploadedFile:0x00007fb81c100c58 @tempfile=#<Tempfile:/var/folders/5k/bv68ty3n41ddmrd377697fm80000gn/T/RackMultipart20190914-59490-1g5gb5g.jpg>, @original_filename="56951229_2217931561632892_1492706649545113600_n.jpg", @content_type="image/jpeg", @headers="Content-Disposition: form-data; name=\\"1\\"; filename=\\"56951229_2217931561632892_1492706649545113600_n.jpg\\"\\r\\nContent-Type: image/jpeg\\r\\n">, #<ActionDispatch::Http::UploadedFile:0x00007fb81c100b40 @tempfile=#<Tempfile:/var/folders/5k/bv68ty3n41ddmrd377697fm80000gn/T/RackMultipart20190914-59490-1ngihux.jpg>, @original_filename="Blaise_Pascal._Lithograph_after_G._Edelinck_after_F._Quesnel_Wellcome_V0004512-998x740.jpg", @content_type="image/jpeg", @headers="Content-Disposition: form-data; name=\\"2\\"; filename=\\"Blaise_Pascal._Lithograph_after_G._Edelinck_after_F._Quesnel_Wellcome_V0004512-998x740.jpg\\"\\r\\nContent-Type: image/jpeg\\r\\n">]	\N	2019-09-14 11:54:43.109955	2019-09-14 11:54:43.109955	5	Fashion	\N	0	400	5	13	0
2464	Addidas Yeezys sneakers	High top sneakers	\N	\N	\N	2019-09-16 03:48:43.599724	2019-09-16 03:48:43.60938	5	Addidas	addidas-yeezys-sneakers-2464	0	400	6	11	0
2465	Addidas Yeezys sneakers	High top sneakers	\N	\N	\N	2019-09-16 03:49:38.28003	2019-09-16 03:49:38.289637	5	Addidas	addidas-yeezys-sneakers-2465	0	400	6	11	5
2458	Fashion Plaid Shirt	Casual plaid shirt	\N	\N	\N	2019-09-14 11:57:47.688541	2019-09-14 11:57:47.693566	5	Fashion	\N	0	400	5	13	11
2459	Fashion Plaid Shirt	Casual plaid shirt	\N	\N	\N	2019-09-14 12:09:31.231053	2019-09-14 12:09:31.247537	5	Fashion	\N	0	400	5	13	0
2461	Fashion Plaid Shirt	Casual plaid shirt	\N	\N	\N	2019-09-14 12:19:13.869301	2019-09-14 12:19:13.873736	5	Fashion	fashion-plaid-shirt-2461	0	400	5	13	0
2460	Fashion Plaid Shirt	Casual plaid shirt	\N	\N	\N	2019-09-14 12:11:10.913724	2019-09-14 12:11:10.920328	5	Fashion	\N	0	400	5	13	56
2462	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-16 03:28:26.218085	2019-09-16 03:28:26.307262	5	Apple	iphone-xs-2462	0	400	2	9	0
2463	iphone XS	500GB ROM, 8GB RAM, 3500mHZ battery	\N	\N	\N	2019-09-16 03:28:29.638941	2019-09-16 03:28:29.640934	5	Apple	iphone-xs-2463	0	400	2	9	0
\.


--
-- Data for Name: recently_viewed_products; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.recently_viewed_products (id, user_id, created_at, updated_at, product_id) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.schema_migrations (version) FROM stdin;
20190708005408
20190708011758
20190708013152
20190708014234
20190708023538
20190708023816
20190708030143
20190712171311
20190712172711
20190714212337
20190715024208
20190715071225
20190715210405
20190716120253
20190717074551
20190717123638
20190717183839
20190718051043
20190718062024
20190718115201
20190718121438
20190718143543
20190718161006
20190719060511
20190720054126
20190720190016
20190721033949
20190721062646
20190721121048
20190724153058
20190728092439
20190731023330
20190731125213
20190808223857
20190811035710
20190811080555
20190811081557
20190812045332
20190815045148
20190815145126
20190905151619
20190913133604
20190914100023
\.


--
-- Data for Name: sub_categories; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.sub_categories (id, category_id, category_name, category_description, created_at, updated_at, picture, url_key) FROM stdin;
1	9	Android phones	Android phones of different specifications	2019-08-12 05:28:02.212887	2019-08-12 05:28:02.212887	\N	\N
2	9	IOS	Apple phones (i phones)	2019-08-12 16:07:28.049085	2019-08-12 16:07:28.049085	\N	\N
3	13	Men's trousers	Men's trousers of different sizes, and types. Jeans, chinos, pant trousers, e.t.c	2019-08-15 07:08:40.188975	2019-08-15 07:08:40.20933	\N	men-s-trousers-3
4	13	Men's shirts	Men's shirts of different sizes, and types. Linen, cotton, corporate, check e.t.c	2019-08-15 07:09:50.561459	2019-08-15 07:09:50.569116	\N	men-s-shirts-4
5	13	Men's t-shirts	Men's t-shirts of different sizes, and types	2019-08-15 07:10:18.923782	2019-08-15 07:10:18.928196	\N	men-s-t-shirts-5
6	11	Men'sneakers	Men's sneakers of different sizes, colors and types	2019-08-15 07:11:49.803289	2019-08-15 07:11:49.805938	\N	men-sneakers-6
7	11	Men'slides	Men's slides of different sizes, colors and types	2019-09-13 13:58:09.358473	2019-09-13 13:58:09.559584	\N	men-slides-7
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.users (id, first_name, last_name, email, password_digest, address, city, state, postal_code, country, phone, is_admin, created_at, updated_at, verified) FROM stdin;
1	Chidinma	Ogbonna	chidinmaogbonna@gmail.com	$2a$12$TrJjWA188gDp6AIS6gwoC.2jAw5XtLd2JB8S/ZXtx0/P648hJMbyO	8. Muibi st	Ogba	Lagos	1203309	Nigeria	080849494004	f	2019-07-15 21:21:13.053786	2019-07-15 21:21:13.053786	f
2	Ezenwa	Ogbonna	ezenwaogbonna390@gmail.com	$2a$12$9E/pBPYorFRZ44HHnTg3tup8uNyEwQlytuRCGrGWH9zHOfnvIiBBe	8. Muibi st	Ogba	Lagos	1203309	Nigeria	08140064376	f	2019-07-15 21:24:17.161196	2019-07-15 21:24:17.161196	f
4	Angela	Ogbonna	ogadinmaogb@gmail.com	$2a$12$a.U6chfNNPF1z0B1iZXZleNEzjcSuc3QIQa9Mfxf4iHQmvAJ8Gt.K	8. Meigida st	Apapa	Lagos	1203309	Nigeria	081738393000	f	2019-07-16 04:36:28.661842	2019-07-16 04:36:28.661842	f
5	Chimaobi	Adanma	chimaobi389@gmail.com	$2a$12$z3bbid8qIBma8Wg0Jw3d/eCH1fiyaXBi7Ev5Snz8MQFbthuADXk9u	8. Meigida st	Apapa	Lagos	1203309	Nigeria	081738393000	t	2019-07-16 04:41:15.739012	2019-07-16 04:41:15.739012	f
6	Chasis	Nedum	chasisnedum39@gmail.com	$2a$12$C7DbhAXkE67PWrtc/.Aru.pTIzCYLByD204056zeXJcgRSvCh8tRy	8. Meigida st	Apapa	Lagos	1203309	Nigeria	081738393000	f	2019-07-24 10:00:51.12318	2019-07-24 10:00:51.12318	f
33	djdjdj	djdjd	50centeejeiiodid@gmail.com	$2a$12$JV5aeKq.7GVibyJfzAxGF.6weOUk3D4vURHPvMCQZllZmlyl5mCvi	\N	\N	\N	\N	\N	\N	f	2019-09-10 16:50:43.437421	2019-09-10 16:50:43.437421	f
34	3030	jdj	50centdiirdildld@gmail.com	$2a$12$ZH1OWbIC844xdenhEHmvY.YmF6C12WLJ.Ap7FFsU3po0SQ1LC.o7S	\N	\N	\N	\N	\N	\N	f	2019-09-10 16:51:06.34442	2019-09-10 16:51:06.34442	f
35	djd	djddj	50centdieeieii3i@gmail.com	$2a$12$8bkjfcHAVHPpoXuxNEjrROc90M/JWdRBbpJwU8Qdfpe6sqGM4pxce	\N	\N	\N	\N	\N	\N	f	2019-09-10 17:00:46.969813	2019-09-10 17:00:46.969813	f
3	Chimdi	Dennis	ndukachinko390@gmail.com	$2a$12$p5LmJHFTC7IZjtCkSnvAMumfvz8OcajkVrUcy22zLLKNPRlyjyTrO	8. Babudu st	Alaba	Lagos	1203309	Nigeria	081738393000	f	2019-07-16 03:10:45.892527	2019-07-30 16:23:16.06553	f
8	Ezenwa	Ogbonna	ezenwa.ogbonna@andela.com	$2a$12$BrOrQqZ34I70hDUCIT.tgea2Na5cB9BMrWcI9Gki4uPoKcmVzeoQS	8. Meigida st	Apapa	Lagos	1203309	Nigeria	081738393000	f	2019-08-03 09:27:41.037554	2019-08-03 09:27:41.037554	t
9	Ezenwa	Ogbonna	pampam@gmail.com	$2a$12$cgUkJ/hLZ0O/lmaaPOZ8aOXA150s1M8LN1hVe6WDgZk37od1XAe2C	8. Meigida st	Apapa	Lagos	1203309	Nigeria	081738393000	f	2019-08-30 12:08:58.205859	2019-08-30 12:08:58.205859	f
10	Padonu	Samuel	pampam205@gmail.com	$2a$12$AsaHlRr7qxMIjbQH0S0LfOGPKku9XF6Y7oyV8REms6XV12XaXrRFC	8. Meigida st	Apapa	Lagos	1203309	Nigeria	081738393000	f	2019-08-30 12:12:49.527215	2019-08-30 12:12:49.527215	f
11	Padonu	Samuel	pampam205eei@gmail.com	$2a$12$e7XefqFFAh/SZbIfchxaL.kXkIuW1c/bJMNnzFMBM5pXsvXCTvf3y	8. Meigida st	Apapa	Lagos	1203309	Nigeria	081738393000	f	2019-08-30 12:20:16.10517	2019-08-30 12:20:16.10517	f
18	wjjwj	HHJWJ	50cents12@gmail.com	$2a$12$0ur8cjg6U95ChLh0MlD9deMlCqdDJq8imqoKRifpa7mUKiDa4ZMme	\N	\N	\N	\N	\N	\N	f	2019-09-09 19:22:31.314393	2019-09-09 19:22:31.314393	f
19	ejj	eej	50cent@gmail.com	$2a$12$44TMTHo2d7eBARyKF4TSzOU3rFHAjdq9aiHKArMgv3f3QV1J8ChF6	\N	\N	\N	\N	\N	\N	f	2019-09-09 19:28:37.966941	2019-09-09 19:28:37.966941	f
20	ejj	eej	50cent45@gmail.com	$2a$12$XAJBxnQCmD5pplnBmsnHAuJreZsHCc6pvVl59ZP7xYIXcWMn0TMtq	\N	\N	\N	\N	\N	\N	f	2019-09-09 19:38:33.329625	2019-09-09 19:38:33.329625	f
21	ejj	eej	50cent45uu@gmail.com	$2a$12$NVm4GE5xWUWFVXQPuFvp.eiij3PaCbuyxLhL6wOCC7vLTgdVe30ca	\N	\N	\N	\N	\N	\N	f	2019-09-09 19:39:12.382851	2019-09-09 19:39:12.382851	f
22	ejj	eej	50cent45uuuu@gmail.com	$2a$12$HJzcuQ.J7BZvFaXAChzbNONYU9wvQ6d//mDcQGmlWD4tVqcSkyIay	\N	\N	\N	\N	\N	\N	f	2019-09-09 19:40:08.809277	2019-09-09 19:40:08.809277	f
23	ejj	eej	50cent45uv@gmail.com	$2a$12$1qm//7HlU5yXU1pCr.VQJe0/E8snoPaNpF0Q4owjoXmXq3t7683u.	\N	\N	\N	\N	\N	\N	f	2019-09-09 19:48:51.214379	2019-09-09 19:48:51.214379	f
24	gvv	hbh	50cent6uyjj@gmail.com	$2a$12$R3KXOvSClM4JB4fqSkLOve3oP6.S91eUAvRUWeAte8BjXbTz8iqFW	\N	\N	\N	\N	\N	\N	f	2019-09-09 19:51:03.757441	2019-09-09 19:51:03.757441	f
25	jk	jjj	50cent@gghhmail.com	$2a$12$qDvvR2fGPaglL3dYE31dresbN/Yx6NLcMcEnwLUJ/ZGJtlDXY4As2	\N	\N	\N	\N	\N	\N	f	2019-09-09 19:52:12.011825	2019-09-09 19:52:12.011825	f
26	rjrp	rjrjr	50cent@gmailkkd.com	$2a$12$LcYa7fty6QGu4F2nJFYqoeLtqKkxODaqUmqSxymxhb1ZO9M7WYEPu	\N	\N	\N	\N	\N	\N	f	2019-09-09 19:54:20.990016	2019-09-09 19:54:20.990016	f
27	Ezenwa	Ogbonna	ezenwaogbonna1@gmail.com	$2a$12$JGXcCt0WrrOA/OunABMhg.v2I2qaXDVN6iSGcymel6KBEcn99rt32	\N	\N	\N	\N	\N	\N	f	2019-09-10 07:26:20.870592	2019-09-10 07:26:20.870592	f
28	ehheh	ejjej	50cent8949@gmail.com	$2a$12$T7AO..I5eDDzF5KzHRvBxulHJYuKceoVhIkGSKiozclwtWl9YxdTq	\N	\N	\N	\N	\N	\N	f	2019-09-10 09:36:02.49818	2019-09-10 09:36:02.49818	f
29	kfk	fkfk	50cent45050@gmail.com	$2a$12$esVlaTD1SDzk.XDvsfZMk.p42y703z8qmBBtx4RTt.PyPvVjWyPJm	\N	\N	\N	\N	\N	\N	f	2019-09-10 13:57:11.583243	2019-09-10 13:57:11.583243	f
30	rkrkr	rkrkkr	50centrlro@gmail.com	$2a$12$RFxjp/tSF2Ci6azV5p0FEO5KaJIRDVNrcXilBA2bggUdRnzvH0UEe	\N	\N	\N	\N	\N	\N	f	2019-09-10 14:46:45.265859	2019-09-10 14:46:45.265859	f
31	rkkrk	rkrk	50cenrkrkrkkrt@gmail.com	$2a$12$zhWDa13GNuDf6CTaQcjpTOfVw2oUaLJ2Mt5bl6aFAT7nD4H.NOcAe	\N	\N	\N	\N	\N	\N	f	2019-09-10 14:47:21.412566	2019-09-10 14:47:21.412566	f
32	djdj	dnjdjd	50cent199393@gmail.com	$2a$12$XM50rg1JjtlQrlwVa//mnOuiU.cXlAxzYyxud6v7vHHoj59sekvdW	\N	\N	\N	\N	\N	\N	f	2019-09-10 16:49:48.84868	2019-09-10 16:49:48.84868	f
36	nddn	djddjdj	rjrpllr50centffjfriir@gmail.com	$2a$12$jSWf2bYwaNKFxXLDaHcJDelYjhjs8.bJ032aXHbEvfJQ5UP3yt8xK	\N	\N	\N	\N	\N	\N	f	2019-09-10 17:34:39.327672	2019-09-10 17:34:39.327672	f
37	dkdk	dkdkd	50centdjdjdjor90r04@gmail.com	$2a$12$s/c2uBhzdA7tArtQPlR4wuOCivaYEM9sgRN1E.DBV9BJkysNBi0Su	\N	\N	\N	\N	\N	\N	f	2019-09-10 17:36:23.463718	2019-09-10 17:36:23.463718	f
38	foofffl	fkfk	50cent44kkd@gmail.com	$2a$12$0IQA0zkXit51cVPk3bpqQOpNNAXxyEoVCGmsaOnlKDY7HZAnUjpy2	\N	\N	\N	\N	\N	\N	f	2019-09-10 17:36:53.317775	2019-09-10 17:36:53.317775	f
39	ekkee	dkdkd	50ceiri94i4knt@gmail.com	$2a$12$eCSjksDXeBKlPZltS70Fqe2yz6STM4L1qfLF4XtRpIeO5b8OxP3rq	\N	\N	\N	\N	\N	\N	f	2019-09-10 17:42:24.970647	2019-09-10 17:42:24.970647	f
40	ekkdkd	dkdkd	50cedjdjidient@gmail.com	$2a$12$oPQvQvNoc3jVQNK4I94w0.K3ljDTfHhoQ5z.oonwM7PdamJKiyZhC	\N	\N	\N	\N	\N	\N	f	2019-09-10 17:47:59.601691	2019-09-10 17:47:59.601691	f
41	ppp-r	rfffkf	50cenfkorrkfkfkt@gmail.com	$2a$12$hWpCaDBbt0zPrHlXQqbuiu7b2jjTPO10FjJ12FDLeqXnwveMhhHte	\N	\N	\N	\N	\N	\N	f	2019-09-11 04:53:54.006984	2019-09-11 04:53:54.006984	f
42	fkf	kfk	50centrjjgit905@gmail.com	$2a$12$xhLBwmFxFUso82eYensqAOMCXLy.Qp1.NbHx/XriLMgGy5zBCdm0m	\N	\N	\N	\N	\N	\N	f	2019-09-11 04:55:20.140232	2019-09-11 04:55:20.140232	f
43	djdjjjdjdj	jjjjjj	50cent04-404040@gmail.com	$2a$12$bEeqtvhKy9kDr7j9zdtT..ZcgoIQ9N/FpkgFbbl7PrsOQpRyJPf.e	\N	\N	\N	\N	\N	\N	f	2019-09-11 04:56:14.978002	2019-09-11 04:56:14.978002	f
44	djdjjjdjdj	jjjjjj	50cent450055@gmail.com	$2a$12$pFEPT0gMHPktGj3.Tiwex.n9N4X1RjeKgGJ8rvxZ3a3y7bC4wSquW	\N	\N	\N	\N	\N	\N	f	2019-09-11 04:57:01.370899	2019-09-11 04:57:01.370899	f
45	djdjjjdjdj	jjjjjj	50cent4500055o555@gmail.com	$2a$12$2Xrfx7NCXHs2PnIIJ/F0EurEImtBRrf6KhIamiwGwBYWGcUpY5MHa	\N	\N	\N	\N	\N	\N	f	2019-09-11 04:57:31.287374	2019-09-11 04:57:31.287374	f
46	dkkdk	fjdk	50cent3-0303003@gmail.com	$2a$12$s8Lh0fbwXBjb/ys2HsEI0O6NijkslF5Xm5ln50qwWjEQ/.IGGfWcq	\N	\N	\N	\N	\N	\N	f	2019-09-11 04:58:10.55501	2019-09-11 04:58:10.55501	f
47	fjrj	rrorro	50cent48905pp@gmail.com	$2a$12$PPWjob8dbIxFmo0YqQfPMu7saHutIW3hf8k.4LsRs0GOWR.c0B8ne	\N	\N	\N	\N	\N	\N	f	2019-09-11 05:57:40.135193	2019-09-11 05:57:40.135193	f
48	khkkky	ykykyy	50cent89606@gmail.com	$2a$12$l1OK7d5Zi2SXRzLBCrsWXu/bXHUVP91cqmzQFD3AeLeMX2G0G.vfG	\N	\N	\N	\N	\N	\N	f	2019-09-11 05:59:03.280809	2019-09-11 05:59:03.280809	f
49	ijiojkkj	uihhkhh	50cent7488400@gmail.com	$2a$12$2UX2CYyO9dDpIzw5KeAnKOhN9DJ8KqWL0UHnBBMRVRPBpL9uliDBO	\N	\N	\N	\N	\N	\N	f	2019-09-11 06:03:01.094044	2019-09-11 06:03:01.094044	f
50	rrppr	rprpr	50cent34555@gmail.com	$2a$12$M1WqWQPuj1bd/IZc2nrQluDwzSHZkldlpZ8otPmMYso6rdbD8CmJO	\N	\N	\N	\N	\N	\N	f	2019-09-11 06:12:29.790278	2019-09-11 06:12:29.790278	f
51	jjn	jjjj	50cent66u@gmail.com	$2a$12$rbm1.AWaZ69hR66ioq1cH.AAey7xvMywOy.I5dKXsFQ21mkS7vTvm	\N	\N	\N	\N	\N	\N	f	2019-09-11 11:03:27.545801	2019-09-11 11:03:27.545801	f
52	jjj	jkjlkl	50centuhkuh9io7hi@gmail.com	$2a$12$bn1Ck3EMAZ.HmQkZf2DjT.M.5.E48yKTDsmKQowWP8rZDCCOSJHC6	\N	\N	\N	\N	\N	\N	f	2019-09-11 11:17:19.136784	2019-09-11 11:17:19.136784	f
53	jkhn	7689	50cenhgvntcvnbft@gmail.com	$2a$12$UCQSOBFJZYpydC78Lc1YKOOOzz6RzImb.SiNS.kf1UOjT7pj1O2Pa	\N	\N	\N	\N	\N	\N	f	2019-09-11 11:21:43.824864	2019-09-11 11:21:43.824864	f
54	jkhn	7689	50cenhgvn7iuujmtcvnbft@gmail.com	$2a$12$70Bq5nu6prxTUGxHrnhjLu9PjmdPJDa6hIxKZI9bHWQNLYQH8wMda	\N	\N	\N	\N	\N	\N	f	2019-09-11 11:23:11.079505	2019-09-11 11:23:11.079505	f
55	jbmh	jkbng	bnuyh50cent@gmail.com	$2a$12$Pi51VUTlg4LUOZVI9MMxE.UfsSIc8hFb.E4PCeIUbqowSPKi2XkT2	\N	\N	\N	\N	\N	\N	f	2019-09-11 11:23:58.802129	2019-09-11 11:23:58.802129	f
56	jbb	jjjjjj	50clkkmnkbnent@gmail.com	$2a$12$nioKLtAe9nO/OnouHBH5e.1yXL1fRuADCsKmUzkc9O0ayIj8RHbvy	\N	\N	\N	\N	\N	\N	f	2019-09-11 11:24:51.278433	2019-09-11 11:24:51.278433	f
57	juajajjja	ahhhhaha	5ajjkajajaj0cent@gmail.com	$2a$12$.d4I8NdDoJvKLVONlosHeeOPdbNwY8SWlxIDMvOmqvOlxDXkump4G	\N	\N	\N	\N	\N	\N	f	2019-09-11 11:26:32.954664	2019-09-11 11:26:32.954664	f
58	eoeio	ekke	je93wj50cent@gmail.com	$2a$12$8jwR2DsYsKXDmheLR2leU.N9TxWc0jcn22IhnIL1hoNxhD5Q7q3CG	\N	\N	\N	\N	\N	\N	f	2019-09-12 02:17:34.252276	2019-09-12 02:17:34.252276	f
59	rjrjr	rjrj	50crjrjent@gmail.com	$2a$12$Ib8SPdwSrVpk6GCbEsnRPuIgJNjwc3ou0uCfVWuYMS5OqbCNdUH4K	\N	\N	\N	\N	\N	\N	f	2019-09-12 02:23:11.239693	2019-09-12 02:23:11.239693	f
60	wwke	ekke	5ejeeje0cent@gmail.com	$2a$12$3zMI2ZTmQ5g2YIki.BEdL.bnJbTDfTkUwPtnTy7aVp97zxmCWUDOC	\N	\N	\N	\N	\N	\N	f	2019-09-12 02:26:59.095161	2019-09-12 02:26:59.095161	f
61	jeje	eje	50cejeejeent@gmail.com	$2a$12$SSKLBknEpnYqk7wb0AjTHeSMYRzmltcxaLEx3PCj5cCPZp.F9t0/i	\N	\N	\N	\N	\N	\N	f	2019-09-12 02:29:38.39842	2019-09-12 02:29:38.39842	f
62	shs	shh	s50ceshshnt@gmail.com	$2a$12$366YfrvQGF1e30KfqkaKwOPfDVzpEWaSfns1KoRISHhcUPNhTIIp.	\N	\N	\N	\N	\N	\N	f	2019-09-12 02:30:42.579372	2019-09-12 02:30:42.579372	f
63	sshsh	sshs	50cent@gmashhhsil.com	$2a$12$S4XcyW974/1wynpZgNgmPOrAJEYDzGDvagkmv0J0tK/ED2WdhU1FW	\N	\N	\N	\N	\N	\N	f	2019-09-12 02:31:24.267455	2019-09-12 02:31:24.267455	f
64	djd	djdjd	50centdjdj@gmail.com	$2a$12$cr8nROKt/EufVhf54hPfKuwWF4e.ZxBmOwCvAOQ9dFqz4hCQ7VxtS	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:05:19.566357	2019-09-12 03:05:19.566357	f
65	ejjej	jejjeje	50cejejejeent@gmail.com	$2a$12$0RxamV2YF5Ccw8e7cs3kXuTFMrIzwEf5NwsuVI4DBApS7bN4snkRG	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:14:29.016252	2019-09-12 03:14:29.016252	f
66	whhw	whhw	50cdhhdent@gmail.com	$2a$12$NkjRBdt7fQ.otn9WE9VkueKjKWh9qzK/PvgW/njCDjiKz1MhhtW0O	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:22:21.036081	2019-09-12 03:22:21.036081	f
67	djdjdj	dkdj	50centdjdjd@gmail.com	$2a$12$InfJSDE92PM1W13yWFx.q.XAW1S1GjHEzz.KesNyuCC2WWogq2Rxe	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:26:52.997615	2019-09-12 03:26:52.997615	f
68	ejjej	eje	50ceneejhejt@gmail.com	$2a$12$s8iLVZHOL5VfZ3T9QefbpuGteue4fF3iI4aFIpYLigXEfw2/dAInm	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:27:43.646029	2019-09-12 03:27:43.646029	f
69	ejejj	ejejje	50cen4949jejt@gmail.com	$2a$12$TW3zUSqWPonsnsUksoEqX.oib/WZIIuZLnLiZIzwyg8/PANdt7WMm	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:28:09.515364	2019-09-12 03:28:09.515364	f
70	elele	ellele	50ceeelelnt@gmail.com	$2a$12$cnSyIT6waRDQD2z9UJ4EP.kbUoH2SZKYXlgSHBSCDhE/cOyu04lZ2	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:30:14.433949	2019-09-12 03:30:14.433949	f
71	elele	ellele	50ceeeekeklelnt@gmail.com	$2a$12$inrWsSiv7inWIngrrN0NneJvD.AnfgCUoPda766LVZujWX7IfaKc.	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:30:50.383646	2019-09-12 03:30:50.383646	f
72	elele	ellele	50ceeeepepekeklelnt@gmail.com	$2a$12$qjfwaAG2jsGiR27SfRJd2OsnPQK94pQkAqbetHDgwxxO1nNW3hfiq	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:30:59.967882	2019-09-12 03:30:59.967882	f
73	rjjr	rjjrjrj	50cent@gurrumail.com	$2a$12$C0TvUwQ7YMrL.tII4ifxbuzIgsYB1Pncgis/VQQ/E0ADC4xQn76ce	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:33:06.776537	2019-09-12 03:33:06.776537	f
74	rrkrk	rjrjrjr	50cent@grjrjmail.com	$2a$12$BLfJEgdlG3XoBmGts7r3DO82p8Wo/H9kEGeCCuV9t5p7YPddIg5We	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:36:54.573274	2019-09-12 03:36:54.573274	f
75	4i4ii4	rjrjjr	50cent@gmailkrkkr.com	$2a$12$Jj24j.tAQxmV2O/fgGtLtu5ZN2aTU7xiHsa9IRiroGY8cs5yjjAJ6	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:39:36.467007	2019-09-12 03:39:36.467007	f
76	r40rkrkr	rkrkkrk	50cen5990t@gmail.com	$2a$12$UZxC59K9EYyUSy7p51gx0.kj9AXsEl9eQOfLOiEHKty9BBq2eabLO	\N	\N	\N	\N	\N	\N	f	2019-09-12 03:40:46.861128	2019-09-12 03:40:46.861128	f
77	riririr	rkrjkrr	50cerhrhhhrhrnt@gmail.com	$2a$12$K9cyYnqmDS.Oq6YmxngNRuZVhi68nufVnSvFGQub2ef4Kx.GxeOSC	\N	\N	\N	\N	\N	\N	f	2019-09-12 07:27:27.15412	2019-09-12 07:27:27.15412	f
78	rrjjrj	rjrrjr	50cerjrjjrjnt@gmail.com	$2a$12$9gP7yzvTv7jIFiZ1pji8i.L0s6stkwdwa0E5cU2M8cgJus0OsVqYG	\N	\N	\N	\N	\N	\N	f	2019-09-12 07:28:34.486671	2019-09-12 07:28:34.486671	f
79	ejeje	eejjeje	50cehehhnt@gmail.com	$2a$12$cEJgtx87CfJvWpOktOmGzO1fvPfRSq.jMti3.Uq5YlkaBL6Lp.WsW	\N	\N	\N	\N	\N	\N	f	2019-09-12 07:30:10.985646	2019-09-12 07:30:10.985646	f
80	wjjee	ejejeje	50cejjejjuu4885ent@gmail.com	$2a$12$BlgMEPxaQnNpG1PvIzAMbuun1ZG/6bKKQTVWU7leBUO2MR2iIMGyW	\N	\N	\N	\N	\N	\N	f	2019-09-12 07:31:01.635215	2019-09-12 07:31:01.635215	f
81	rrrrri	rhrhrh	50rruuururcent@gmail.com	$2a$12$wCAch14DsF2ywxFjCdS57uYMDVBxmMNxpvkwcj8e75rY2Rngp5Y/u	\N	\N	\N	\N	\N	\N	f	2019-09-12 07:33:05.252998	2019-09-12 07:33:05.252998	f
82	rhjrjjrjjr	rjrjjjrj	50centrjjrjj@gmail.com	$2a$12$8x7uXAHxIePFF84L61z4ZuLEFfNPJjtVg7Ya5ntai1GpvOCITYQl2	\N	\N	\N	\N	\N	\N	f	2019-09-12 07:34:50.432912	2019-09-12 07:34:50.432912	f
83	ejejeje	ehehehe	50cenegegegegt@gmail.com	$2a$12$RrJk81a.TPHSWjP6EX.Yh.1lIqhPe4ATcV3tvoviEsfnvCgvH9gMm	\N	\N	\N	\N	\N	\N	f	2019-09-12 07:42:01.520078	2019-09-12 07:42:01.520078	f
84	ddjdjd	dhjddj	50centdghdhgdgd@gmail.com	$2a$12$P6FweZ6XLGUtexwhjNcAcey.ra8mAJx/rFJ6iJM7hMBBd51/jhphO	\N	\N	\N	\N	\N	\N	f	2019-09-12 07:42:23.368963	2019-09-12 07:42:23.368963	f
85	ddjjdjjd	djdjdjd	50cedjdjjdnt@gmail.com	$2a$12$fYsuhXxO7WqGOW9N/axNa.xgtA4t92iwVPn66K1Ns3sJcBnETn1FS	\N	\N	\N	\N	\N	\N	f	2019-09-12 07:43:33.471272	2019-09-12 07:43:33.471272	f
86	ddjkd	ddkkkd	50cfkif8tent@gmail.com	$2a$12$iQNPBOxOLmEjZizKwhqvC.E5DpPt4jSyDJZUCMnXH3qfTqQTpg.FG	\N	\N	\N	\N	\N	\N	f	2019-09-12 07:47:13.794113	2019-09-12 07:47:13.794113	f
87	rkkkr	ddjjdjjd	50centddjdjd@gmail.com	$2a$12$WVgsog7KrP.GjpEnZIRe8OGLt289/3C1LypofVaFSOr9muYUWbNWW	\N	\N	\N	\N	\N	\N	f	2019-09-12 07:49:46.326527	2019-09-12 07:49:46.326527	f
88	ui5uu5	555iio	50c5yu555uuent@gmail.com	$2a$12$z87U/L1qmaxixqgFWc5doeQV1/PxSEZo5eiXv21aOTZNOwX0u62Ku	\N	\N	\N	\N	\N	\N	f	2019-09-12 09:31:52.028889	2019-09-12 09:31:52.028889	f
89	ejejej	enejje	50ceeheheent@gmail.com	$2a$12$00/HRMaTMD8u.8jsJyvSPuVY7gyDU0odt6xG9LNx4.pQtNVKG2FwG	\N	\N	\N	\N	\N	\N	f	2019-09-12 10:23:25.896156	2019-09-12 10:23:25.896156	f
90	Ogaga	Nzubem	ogaganzubem@gmail.com	$2a$12$Jf2YRxEECY31NO7vS6PJ6.5aRx7ZlrgMYAgSI4FWVKulC80YDLbT.	\N	\N	\N	\N	\N	\N	f	2019-09-12 10:26:54.415875	2019-09-12 10:26:54.415875	f
91	Moshood	Ibro	moshoodibro@gmail.com	$2a$12$EXZMUCKpJw8NPrWkp8eREu5rEjTDECVECSQKoVHwdxfkcw9F3gQ3e	\N	\N	\N	\N	\N	\N	f	2019-09-12 15:17:58.174032	2019-09-12 15:17:58.174032	f
92	Mercy	Miracle	mercymira29@gmail.com	$2a$12$FQp.Imy3btJxx0eTXTb1Re51zc.5hEjHrEFQqXUYd3KG750wM0ttq	\N	\N	\N	\N	\N	\N	f	2019-09-13 03:56:30.350406	2019-09-13 03:56:30.350406	f
93	Chiga	Nezu	chigamezu9@gmail.com	$2a$12$48Ey/oIpz95rzjje1V2xBuN4OVEyHdYaFzsgmiy.pq3LxMlyE3sGe	\N	\N	\N	\N	\N	\N	f	2019-09-13 04:04:20.743666	2019-09-13 04:04:20.743666	f
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 13, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 13, true);


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.carts_id_seq', 82, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.categories_id_seq', 14, true);


--
-- Name: order_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.order_details_id_seq', 39, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.orders_id_seq', 45, true);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.payments_id_seq', 2, true);


--
-- Name: product_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.product_details_id_seq', 2360, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.products_id_seq', 2465, true);


--
-- Name: recently_viewed_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.recently_viewed_products_id_seq', 2, true);


--
-- Name: sub_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.sub_categories_id_seq', 7, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.users_id_seq', 93, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: carts carts_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: order_details order_details_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: product_details product_details_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.product_details
    ADD CONSTRAINT product_details_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: recently_viewed_products recently_viewed_products_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.recently_viewed_products
    ADD CONSTRAINT recently_viewed_products_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sub_categories sub_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT sub_categories_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_carts_on_product_detail_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_carts_on_product_detail_id ON public.carts USING btree (product_detail_id);


--
-- Name: index_carts_on_product_detail_id_and_user_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE UNIQUE INDEX index_carts_on_product_detail_id_and_user_id ON public.carts USING btree (product_detail_id, user_id);


--
-- Name: index_carts_on_user_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_carts_on_user_id ON public.carts USING btree (user_id);


--
-- Name: index_categories_on_url_key; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE UNIQUE INDEX index_categories_on_url_key ON public.categories USING btree (url_key);


--
-- Name: index_order_details_on_order_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_order_details_on_order_id ON public.order_details USING btree (order_id);


--
-- Name: index_order_details_on_product_detail_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_order_details_on_product_detail_id ON public.order_details USING btree (product_detail_id);


--
-- Name: index_orders_on_payment_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_orders_on_payment_id ON public.orders USING btree (payment_id);


--
-- Name: index_orders_on_user_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_orders_on_user_id ON public.orders USING btree (user_id);


--
-- Name: index_product_details_on_product_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_product_details_on_product_id ON public.product_details USING btree (product_id);


--
-- Name: index_product_details_on_url_key; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE UNIQUE INDEX index_product_details_on_url_key ON public.product_details USING btree (url_key);


--
-- Name: index_products_on_category_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_products_on_category_id ON public.products USING btree (category_id);


--
-- Name: index_products_on_sub_category_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_products_on_sub_category_id ON public.products USING btree (sub_category_id);


--
-- Name: index_products_on_url_key; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE UNIQUE INDEX index_products_on_url_key ON public.products USING btree (url_key);


--
-- Name: index_products_on_user_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_products_on_user_id ON public.products USING btree (user_id);


--
-- Name: index_recently_viewed_products_on_product_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_recently_viewed_products_on_product_id ON public.recently_viewed_products USING btree (product_id);


--
-- Name: index_recently_viewed_products_on_user_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_recently_viewed_products_on_user_id ON public.recently_viewed_products USING btree (user_id);


--
-- Name: index_sub_categories_on_category_id; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE INDEX index_sub_categories_on_category_id ON public.sub_categories USING btree (category_id);


--
-- Name: index_sub_categories_on_url_key; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE UNIQUE INDEX index_sub_categories_on_url_key ON public.sub_categories USING btree (url_key);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: ezenwaogbonna
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: recently_viewed_products fk_rails_0ec7a52662; Type: FK CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.recently_viewed_products
    ADD CONSTRAINT fk_rails_0ec7a52662 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: orders fk_rails_84d308e2db; Type: FK CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_84d308e2db FOREIGN KEY (payment_id) REFERENCES public.payments(id);


--
-- Name: sub_categories fk_rails_8e75c2ee78; Type: FK CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT fk_rails_8e75c2ee78 FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: carts fk_rails_ae7974bc4c; Type: FK CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT fk_rails_ae7974bc4c FOREIGN KEY (product_detail_id) REFERENCES public.product_details(id);


--
-- Name: order_details fk_rails_b03dfa894a; Type: FK CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT fk_rails_b03dfa894a FOREIGN KEY (product_detail_id) REFERENCES public.product_details(id);


--
-- Name: product_details fk_rails_baeeaaf438; Type: FK CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.product_details
    ADD CONSTRAINT fk_rails_baeeaaf438 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: products fk_rails_db9640ef46; Type: FK CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_db9640ef46 FOREIGN KEY (sub_category_id) REFERENCES public.sub_categories(id);


--
-- Name: order_details fk_rails_e5976611fd; Type: FK CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT fk_rails_e5976611fd FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: carts fk_rails_ea59a35211; Type: FK CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.carts
    ADD CONSTRAINT fk_rails_ea59a35211 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: orders fk_rails_f868b47f6a; Type: FK CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_f868b47f6a FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: products fk_rails_fb915499a4; Type: FK CONSTRAINT; Schema: public; Owner: ezenwaogbonna
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_fb915499a4 FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- PostgreSQL database dump complete
--

