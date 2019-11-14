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
    discount double precision DEFAULT 0.0,
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
17	picture	Category	15	17	2019-10-23 05:40:40.52174
18	picture	Category	16	18	2019-10-23 09:15:41.77944
19	picture	SubCategory	8	19	2019-10-23 12:18:00.205657
20	picture	SubCategory	9	20	2019-10-23 15:39:38.001543
24	picture	Category	12	24	2019-10-27 22:43:37.171313
25	picture	Category	9	25	2019-10-28 05:51:33.21887
26	picture	Category	18	26	2019-10-28 23:27:24.967979
27	picture	Category	19	27	2019-10-29 04:26:48.958564
28	picture	Category	20	28	2019-10-29 04:41:54.10447
29	picture	Category	21	29	2019-10-29 04:48:28.673171
30	picture	Category	12	30	2019-10-29 06:00:29.468113
31	picture	Category	12	31	2019-10-29 06:22:14.897597
32	picture	Category	9	32	2019-10-29 09:04:52.530238
33	picture	Category	12	33	2019-10-29 09:13:03.940382
34	picture	Category	12	34	2019-10-29 09:15:58.424054
35	picture	Product	2472	35	2019-10-29 13:24:43.676795
36	picture	Product	2473	36	2019-10-29 13:30:53.052594
37	picture	SubCategory	10	37	2019-10-29 13:36:09.780031
38	picture	Product	2474	38	2019-10-29 13:41:40.461934
39	picture	Product	2475	39	2019-10-29 13:46:22.082907
40	picture	Product	2476	40	2019-10-29 13:55:24.790776
41	picture	Product	2476	41	2019-10-29 13:55:24.798973
42	picture	Product	2476	42	2019-10-29 13:55:24.806173
43	picture	Product	2477	43	2019-10-29 14:01:49.721666
44	picture	Product	2477	44	2019-10-29 14:01:49.740318
45	picture	Product	2478	45	2019-10-29 14:06:21.060603
46	picture	Product	2479	46	2019-10-29 14:12:49.508114
47	picture	Product	2480	47	2019-10-29 14:17:04.30928
48	picture	Product	2481	48	2019-10-29 14:23:37.466093
49	picture	Product	2481	49	2019-10-29 14:23:37.469582
50	picture	Product	2482	50	2019-11-05 22:01:32.303067
51	picture	Product	2482	51	2019-11-05 22:01:32.307609
52	picture	Product	2482	52	2019-11-05 22:01:32.30903
53	picture	Product	2482	53	2019-11-05 22:01:32.310966
54	picture	SubCategory	11	54	2019-11-06 14:17:22.193078
55	picture	Product	2483	55	2019-11-06 14:29:24.111306
56	picture	Product	2483	56	2019-11-06 14:29:24.113617
57	picture	Product	2483	57	2019-11-06 14:29:24.115037
58	picture	Product	2483	58	2019-11-06 14:29:24.116354
59	picture	Product	2483	59	2019-11-06 14:29:24.117626
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
1	1N6iiTGK2LZjeUj4wXL1CBG3	49282239_1920167948081289_459382434895495168_o.jpg	image/jpeg	{"identified":true}	131219	IpezPaYY1B1+NiIH7W52lw==	2019-09-14 08:17:41.383941
3	RdcvwKcVaP6iPDn3S6AL6XfW	49282239_1920167948081289_459382434895495168_o.jpg	image/jpeg	{"identified":true}	131219	IpezPaYY1B1+NiIH7W52lw==	2019-09-14 11:29:15.402603
37	H4GG27UWxktR7vZhL3PV7P24	accessories.png	image/png	{"identified":true,"width":1200,"height":1000,"analyzed":true}	2383454	1Im1x9ziQ/j7yRos+VtM1g==	2019-10-29 13:36:09.663537
38	GCsvKRajio6awznrenyS6LgF	51zb1MhP2aL._AC_UY436_FMwebp_QL65_.webp	image/webp	{"identified":true,"width":215,"height":436,"analyzed":true}	5778	D1JNux9YivdsH4dRFx+gGQ==	2019-10-29 13:41:40.070381
39	jfLbS35ecfEutve197Rf48SG	81BwcI j7yL._SX679_.jpg	image/jpeg	{"identified":true,"width":679,"height":679,"analyzed":true}	41652	5tEL2oZ5vswU7JFIhkjY3g==	2019-10-29 13:46:21.99876
42	uFruNrcM4fcifMcynxMVJDUZ	61rpaMyZTbL._SL1500_.jpg	image/jpeg	{"identified":true,"width":1073,"height":1500,"analyzed":true}	66504	yzWBsvakgiwvpazBEJv1Sg==	2019-10-29 13:55:24.694032
41	Fe9wudtiGA1YW8Aw2jGZdVBR	61oCbpLY4fL._SL1500_.jpg	image/jpeg	{"identified":true,"width":1318,"height":1500,"analyzed":true}	66214	aEvj1cIlGYYJH2VUHSIVTg==	2019-10-29 13:55:24.669309
40	sLS8Ym4rzzHGEjrQv9AGoELe	61mAAI4W52L._SL1500_.jpg	image/jpeg	{"identified":true,"width":1080,"height":1500,"analyzed":true}	101796	WuOxmptsGIy8dHOOzPc+PA==	2019-10-29 13:55:24.614722
17	RedEKHnKkHVwLyPrzYe6ciMh	https___blogs-images.forbes.com_jasonevangelho_files_2019_08_ThinkPad-P-series-laptops.jpg	image/jpeg	{"identified":true,"width":960,"height":385,"analyzed":true}	46421	+fb9I6MH3zlPS9rHfK4w1g==	2019-10-23 05:40:40.429509
18	JxepEYxCa2TPFxT79q67Pyvz	Blog-675x320.jpg	image/jpeg	{"identified":true,"width":675,"height":320,"analyzed":true}	68212	jamuhOZc3o+jzoyUCKyjDg==	2019-10-23 09:15:41.709379
19	EFYwbJPGvTun8BPNYk45PBrd	apple-13-inch-macbook-air.jpg	image/jpeg	{"identified":true,"width":1500,"height":750,"analyzed":true}	126612	3axHo5DnsUU3qMwel3RGQQ==	2019-10-23 12:18:00.11846
20	QQXcZiHyc1bxT9p3w2eHXfig	apple-13-inch-macbook-air.jpg	image/jpeg	{"identified":true,"width":1500,"height":750,"analyzed":true}	126612	3axHo5DnsUU3qMwel3RGQQ==	2019-10-23 15:39:37.883344
28	23GXoA1sg1f8PJC7iB1HkmUV	GettyImages-641295580.jpg	image/jpeg	{"identified":true,"width":1390,"height":925,"analyzed":true}	223993	7ZCVX9whKOZl5ghMOjP3Pw==	2019-10-29 04:41:54.04342
24	h7Q9EaYhw2HDDToGNL17upkW	YALNN-Fashion-New-High-Heels-Pumps-Black-Women-Shoes-Pump-Girls-Leather-7cm-Thick-Heel-Black.jpg	image/jpeg	{"identified":true,"width":800,"height":800,"analyzed":true}	166155	YxdSOikEKQJMsb6wr2M9yw==	2019-10-27 22:43:37.122709
25	Zkr7sP6i1Pqp2SsW1tiBtnaa	mobile-phones.jpg	image/jpeg	{"identified":true,"width":970,"height":293,"analyzed":true}	187910	y57NBIdKfFYH6iPKzXRLRg==	2019-10-28 05:51:33.161876
26	jayUAvCVqC3BawGvrnFESXwp	DQh58mnXUAAB04v.jpg	image/jpeg	{"identified":true,"width":1200,"height":900,"analyzed":true}	222110	l3A6VsJ84jf+Z43WC3sBsg==	2019-10-28 23:27:24.87899
27	CGQrLrxhqmiUZaBZaNwgeiB2	Faith-Website.jpg	image/jpeg	{"identified":true,"width":1000,"height":563,"analyzed":true}	85919	+3T0a5d2LJqzgmmnczSXwQ==	2019-10-29 04:26:48.89073
29	7eXFViad7zENcKpdywY9aBEq	Faith-Website.jpg	image/jpeg	{"identified":true,"width":1000,"height":563,"analyzed":true}	85919	+3T0a5d2LJqzgmmnczSXwQ==	2019-10-29 04:48:28.641812
30	MqdgN6oQU31ASwF9TxAar8rf	361522_270_ss_01.jpeg	image/jpeg	{"identified":true,"width":1280,"height":960,"analyzed":true}	31365	29znND2zK+WUOZrPFfAt7A==	2019-10-29 06:00:29.372727
31	y4Zf2w9SSRATBrLVXPoyqLfr	s-l640.jpg	image/jpeg	{"identified":true,"width":600,"height":450,"analyzed":true}	19850	wKyIb8Hh4WeOy6z7PAM1ww==	2019-10-29 06:22:14.867087
32	QrnimZmYUwx6MKYV47ufdzkJ	Refurbished-Mobile-Phones.png	image/png	{"identified":true,"width":1032,"height":577,"analyzed":true}	569648	sWOXddcz2srvCVSgtjwbrw==	2019-10-29 09:04:52.478327
33	vF2nqG6fxphRnjyXpKZCYFfA	Shoes_1.jpg	image/jpeg	{"identified":true,"width":1400,"height":800,"analyzed":true}	65615	B7OM1k7I5uNF3CjKot1thA==	2019-10-29 09:13:03.920496
34	MswhpMUviRNQptvFdBHxRJMS	images.jpeg	image/jpeg	{"identified":true,"width":299,"height":169,"analyzed":true}	5847	vkpvwqUZrLoLBFQaNYLpxw==	2019-10-29 09:15:58.407255
35	JNAcubYgaQxaFjjBFTQNfXDk	81XgCDVpQIL._UX395_.jpg	image/jpeg	{"identified":true,"width":395,"height":241,"analyzed":true}	20583	owXqxsFUc1BHlpleBbrCqA==	2019-10-29 13:24:43.372694
36	jArnfXeDRWQRWJ69JQKVXp1V	71fRayAebNL._UY695_.jpg	image/jpeg	{"identified":true,"width":695,"height":695,"analyzed":true}	41651	QDCZiefMnw91i4NtddikbA==	2019-10-29 13:30:53.013236
44	yVQTj5HxUjv3x4AaW8f2opjL	51zFQCOla2L._SL1000_.jpg	image/jpeg	{"identified":true,"width":1000,"height":1000,"analyzed":true}	32996	FSrX/xvdsyGdYHRabqwDeQ==	2019-10-29 14:01:49.681863
43	PrzFKYtgqq6PAjendqrrvEF5	51KwPunsIjL._SL1000_.jpg	image/jpeg	{"identified":true,"width":1000,"height":1000,"analyzed":true}	64307	53nqklMPq18adXj8YhpkLg==	2019-10-29 14:01:49.637692
45	DUi4KFS6cEFgTjV18VQ6szD3	91w7-s95biL._UX679_.jpg	image/jpeg	{"identified":true,"width":679,"height":679,"analyzed":true}	100356	KasiM18FiCaDH/Qk+9DVxg==	2019-10-29 14:06:20.982657
46	eTCoCdejQBvHZmDuorggzn23	A1SseQulFGL._UY879_.jpg	image/jpeg	{"identified":true,"width":618,"height":879,"analyzed":true}	180837	itqZVrOJ/4phTylSVHITJA==	2019-10-29 14:12:49.44431
47	wfwMWss19i2gDW7PqpZ2gcoH	71371rEMk4L._UX679_.jpg	image/jpeg	{"identified":true,"width":679,"height":679,"analyzed":true}	103712	jyW0PVjVtXMCnJqyQJvDcw==	2019-10-29 14:17:04.265245
48	j5cKqtEjNrHTtdsbHfaPmDZJ	61Chj5po2SL._UX679_.jpg	image/jpeg	{"identified":true,"width":679,"height":842,"analyzed":true}	55370	zsF0xC9J3Gdvw26rAhSdBw==	2019-10-29 14:23:37.419207
49	1khbMb6zedhx4nvtaSgtoX1i	61I0Uh0yV L._UX679_.jpg	image/jpeg	{"identified":true,"width":679,"height":877,"analyzed":true}	56519	jwSjtMq7+YOgASQ3KxKaqw==	2019-10-29 14:23:37.44241
53	R4KSvHb23cKK5ztkgfUeEi4N	611Q zLU1CL._UY879_.jpg	image/jpeg	{"identified":true,"width":679,"height":879,"analyzed":true}	45149	xa5jDQY0l3gUjpHWSc7Ehw==	2019-11-05 22:01:32.286653
50	5b1E6MbgLTTGXd3LUE4EHsSN	51Og C8w6ZL._UL1023_.jpg	image/jpeg	{"identified":true,"width":787,"height":1023,"analyzed":true}	40501	ek4qvK6p6n7ttsA4rqkAWA==	2019-11-05 22:01:32.236049
52	N4z1Jpaxzm4T1ifMry2sZpHz	61navpTKNPL._UL1023_.jpg	image/jpeg	{"identified":true,"width":787,"height":1023,"analyzed":true}	71891	iDqgdu6BnQm7Rk6bVaU/MQ==	2019-11-05 22:01:32.26962
54	Y371SAYsAuRduCaUDnyjrdxr	download (1).jpeg	image/jpeg	{"identified":true,"width":225,"height":225,"analyzed":true}	6747	QsQb7RQNEcZcjnyER997XA==	2019-11-06 14:17:22.117829
58	XQCc7z8NMUKed84AmiGVqe8f	514-vV54W7L._UL1000_.jpg	image/jpeg	{"identified":true,"width":1000,"height":1000,"analyzed":true}	60193	/p7OeQnU7ivcZJzyudA3jg==	2019-11-06 14:29:24.084755
56	s5zXfmWGbnahkui7C78q15ie	61eHndArwdL._UL1000_.jpg	image/jpeg	{"identified":true,"width":1000,"height":1000,"analyzed":true}	77581	v9Z31r6XOKgNyx7M+C02Cg==	2019-11-06 14:29:24.068548
57	Zcw6BbPsUaQ7UQwFGuE3cgD9	61HjP2j6uEL._UL1000_.jpg	image/jpeg	{"identified":true,"width":1000,"height":1000,"analyzed":true}	95880	x3zQooj1fpkG2zJ7VaXwaw==	2019-11-06 14:29:24.07702
55	JYM3NhE9jWgBiUcfNW1pqVzX	61eHndArwdL._UL1000_ (1).jpg	image/jpeg	{"identified":true,"width":1000,"height":1000,"analyzed":true}	77581	v9Z31r6XOKgNyx7M+C02Cg==	2019-11-06 14:29:24.060209
59	Ep8GzXExA8cENKACt5Qtbnwt	619W0ioA0QL._UL1000_.jpg	image/jpeg	{"identified":true,"width":1000,"height":1000,"analyzed":true}	65822	yufTkgbMe6pojECDiJoJIA==	2019-11-06 14:29:24.094061
51	1BF8YsA7XjXeW2UP3RrodGqq	51U CkojBJL._UL1023_.jpg	image/jpeg	{"identified":true,"width":787,"height":1023,"analyzed":true}	41470	yvLBMJIKvVAaJSnCxEM6XQ==	2019-11-05 22:01:32.25945
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
165	2374	27	2019-11-07 20:55:05.410178	2019-11-08 04:20:28.575606	2
146	2387	5	2019-11-05 22:03:00.924342	2019-11-07 04:22:27.271879	2
148	2381	5	2019-11-07 04:22:49.221099	2019-11-07 04:22:49.221099	1
149	2390	5	2019-11-07 04:27:58.717952	2019-11-07 04:27:58.717952	1
150	2376	5	2019-11-07 04:27:58.719829	2019-11-07 04:27:58.719829	1
171	2379	100	2019-11-08 10:45:40.799047	2019-11-08 10:45:40.799047	1
172	2387	100	2019-11-08 10:45:53.219393	2019-11-08 10:45:53.219393	1
173	2387	3	2019-11-09 08:19:26.641401	2019-11-09 08:19:26.641401	1
174	2369	100	2019-11-09 08:21:56.916452	2019-11-09 08:21:56.916452	1
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.categories (id, category_name, category_description, picture, created_at, updated_at, url_key) FROM stdin;
11	Men's shoes	Men's shoes of different sizes and types, corporate and casual	\N	2019-08-15 07:00:50.055758	2019-08-15 07:00:50.074127	men-s-shoes-11
13	Men's clothings	Men's clothings of different sizes and types, corporate and casual	\N	2019-08-15 07:02:31.377183	2019-08-15 07:02:31.381272	men-s-clothings-13
14	Women's bags	Women's bags of various types and sizes	\N	2019-08-18 06:45:08.945774	2019-08-18 06:45:10.209759	women-s-bags-14
12	Women's shoes	Women's shoes of different sizes and types, corporate and casual	\N	2019-08-15 07:01:39.350351	2019-10-29 09:15:58.436024	women-s-shoes-12
15	Computers	Laptops and desktops of different brands and specifications	\N	2019-10-23 05:40:40.513789	2019-10-23 16:37:46.120471	computers-15
9	Phones And Tablets	Mobile phones and tablets of different brands and specifications	\N	2019-08-12 05:00:22.183233	2019-10-29 09:04:52.546011	phones-and-tablets-9
\.


--
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.order_details (id, quantity, total_price, status, bill_date, ship_date, sales_tax, order_id, shipper_id, created_at, updated_at, product_detail_id, location) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.orders (id, order_number, payment_date, user_id, payment_id, created_at, updated_at, amount_payable, payment_made) FROM stdin;
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.payments (id, payment_type, allowed, created_at, updated_at, picture, description) FROM stdin;
1	Pay on delivery	\N	2019-07-19 07:13:50.520605	2019-07-19 07:13:50.520605	https://res.cloudinary.com/dgo3gjxnl/image/upload/v1573210875/cash-on-delivery_set8s6.png	Pay when your order is delivered to you. Your order would be delivered between 7 - 10 working days.
2	Debit card	\N	2019-07-19 07:17:27.33414	2019-07-19 07:17:27.33414	https://res.cloudinary.com/dgo3gjxnl/image/upload/v1573210705/visa_PNG39_md0wnz.png	Pay with your debit card. Accepts Master card, Visa and Verve. Your order would be delivered between 5 - 7 working days.
\.


--
-- Data for Name: product_details; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.product_details (id, size, color, price, product_id, created_at, updated_at, product_available, quantity_in_stock, quantity_sold, url_key) FROM stdin;
2369	43	Oxford Tan	45000	2472	2019-10-29 13:24:44.16081	2019-10-30 04:27:32.814306	t	5	0	yeezy-boost-350-2369
2368	45	Oxford Tan	50000	2472	2019-10-29 13:24:43.687938	2019-10-30 04:27:32.859884	t	3	0	yeezy-boost-350-2368
2370	44	White/Silver	20000	2473	2019-10-29 13:30:53.056091	2019-10-30 04:27:32.872455	t	5	0	men-s-air-monarch-iv-cross-trainer-2370
2371	42	White/Silver	20000	2473	2019-10-29 13:30:53.070441	2019-10-30 04:27:32.89441	t	4	0	men-s-air-monarch-iv-cross-trainer-2371
2372	\N	Black	360000	2474	2019-10-29 13:41:40.46393	2019-10-30 04:27:32.899601	t	7	0	iphone-xs-max-verizon-space-64gb-2372
2373	\N	Gold	380000	2475	2019-10-29 13:46:22.091732	2019-10-30 04:27:32.916633	t	9	0	iphone-11-pro-max-64gb-2373
2374	\N	Rose Gold	150000	2476	2019-10-29 13:55:24.837123	2019-10-30 04:27:32.933491	t	10	0	iphone-7-32gb-rose-gold-2374
2375	\N	Red	120000	2477	2019-10-29 14:01:49.74363	2019-10-30 04:27:32.942015	t	12	0	galaxy-a20-32gb-2375
2376	XL	Blue Plaid	14000	2478	2019-10-29 14:06:21.072953	2019-10-30 04:27:32.964351	t	8	0	german-bavarian-oktoberfest-dress-shirt-checkered-button-down-shirt-2376
2377	XXL	Blue Plaid	18000	2478	2019-10-29 14:06:21.088868	2019-10-30 04:27:32.974843	t	4	0	german-bavarian-oktoberfest-dress-shirt-checkered-button-down-shirt-2377
2378	L	Blue Plaid	20000	2479	2019-10-29 14:12:49.514413	2019-10-30 04:27:32.982499	t	11	0	men-s-tailored-fit-gingham-dress-shirt-supima-cotton-non-iron-2378
2379	XXL	Blue Plaid	25000	2479	2019-10-29 14:12:49.537267	2019-10-30 04:27:32.993441	t	4	0	men-s-tailored-fit-gingham-dress-shirt-supima-cotton-non-iron-2379
2380	XL	Blue Plaid	20000	2479	2019-10-29 14:12:49.553497	2019-10-30 04:27:33.008037	t	9	0	men-s-tailored-fit-gingham-dress-shirt-supima-cotton-non-iron-2380
2381	XL	Navy Blue	20000	2480	2019-10-29 14:17:04.315224	2019-10-30 04:27:33.022234	t	11	0	men-s-printed-cotton-casual-long-sleeve-regular-fit-dress-shirt-2381
2382	XXL	Navy Blue	24000	2480	2019-10-29 14:17:04.331343	2019-10-30 04:27:33.036034	t	8	0	men-s-printed-cotton-casual-long-sleeve-regular-fit-dress-shirt-2382
2383	XL	Black	10000	2481	2019-10-29 14:23:37.471403	2019-10-30 04:27:33.046673	t	6	0	men-s-casual-dress-shirt-button-down-shirts-long-sleeve-denim-work-shirt-2383
2384	XXL	Black	12000	2481	2019-10-29 14:23:37.476324	2019-10-30 04:27:33.05855	t	5	0	men-s-casual-dress-shirt-button-down-shirts-long-sleeve-denim-work-shirt-2384
2385	L	Sky Blue	10000	2481	2019-10-29 14:23:37.479562	2019-10-30 04:27:33.064285	t	9	0	men-s-casual-dress-shirt-button-down-shirts-long-sleeve-denim-work-shirt-2385
2386	XL	Sky Blue	10000	2481	2019-10-29 14:23:37.482725	2019-10-30 04:27:33.075574	t	4	0	men-s-casual-dress-shirt-button-down-shirts-long-sleeve-denim-work-shirt-2386
2387	42W  x 31L	Indigo Blue	9000	2482	2019-11-05 22:01:32.312468	2019-11-05 22:01:32.39661	t	5	0	match-men-s-slim-tapered-stretchy-casual-pants-2387
2388	40W x 35L	Indigo Blue	9000	2482	2019-11-05 22:01:32.398276	2019-11-05 22:01:32.400295	t	9	0	match-men-s-slim-tapered-stretchy-casual-pants-2388
2389	5	Leopard	15000	2483	2019-11-06 14:29:24.119244	2019-11-06 14:29:24.121517	t	7	0	rumors-women-s-fashion-chunky-heel-sandal-open-toe-wedding-pumps-with-buckle-ankle-strap-evening-party-shoes-2389
2390	7	Leopard	15000	2483	2019-11-06 14:29:24.123476	2019-11-06 14:29:24.125381	t	5	0	rumors-women-s-fashion-chunky-heel-sandal-open-toe-wedding-pumps-with-buckle-ankle-strap-evening-party-shoes-2390
2391	6	Leopard	15000	2483	2019-11-06 14:29:24.127078	2019-11-06 14:29:24.128859	t	9	0	rumors-women-s-fashion-chunky-heel-sandal-open-toe-wedding-pumps-with-buckle-ankle-strap-evening-party-shoes-2391
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.products (id, product_name, product_description, discount, picture, unit_weight, created_at, updated_at, user_id, brand, url_key, product_size, shipping_fee, sub_category_id, category_id, times_viewed) FROM stdin;
2482	Men's Slim Tapered Stretchy Casual Pants	97% Cotton, 3% Lycra Spandex; Slightly below waist/ flat front; Slim fit/ Slightly tapered; Two side-seam pockets, two rear welt pockets/ zip fly with button; Suitable for spring & autumn casual wear	10	\N	\N	2019-11-05 22:01:32.29638	2019-11-05 22:01:32.312115	5	Match	match-men-s-slim-tapered-stretchy-casual-pants-2482	0	400	3	13	36
2472	Yeezy Boost 350	Comfortable fancy sneaker	10	\N	\N	2019-10-29 13:24:43.606608	2019-10-29 13:24:43.686419	5	Adidas	yeezy-boost-350-2472	0	400	6	11	178
2477	Galaxy A20 32GB	32GB + 3GB RAM - microSD, up to 512 GB (dedicated slot); Exynos 7884 Octa-core; Non-removable Li-Po 4000 mAh battery; Fast battery charging 15W	5	\N	\N	2019-10-29 14:01:49.713297	2019-10-29 14:01:49.742982	5	Samsung	galaxy-a20-32gb-2477	0	400	1	9	119
2473	Men's Air Monarch IV Cross Trainer	Training Shoe for Men sets you up for a comfortable training session with durable leather on top for support	0	\N	\N	2019-10-29 13:30:53.040641	2019-10-29 13:30:53.055495	5	Nike	men-s-air-monarch-iv-cross-trainer-2473	0	400	6	11	1
2478	German Bavarian Oktoberfest Dress Shirt Checkered Button Down Shirt	Long sleeve, comfortable fabric, checkered pattern, french cuffs, button front closure; classic Turn-down collar	0	\N	\N	2019-10-29 14:06:21.041872	2019-10-29 14:06:21.07213	5	Paul Jones	german-bavarian-oktoberfest-dress-shirt-checkered-button-down-shirt-2478	0	400	4	13	3
2483	Rumors Women's Fashion Chunky Heel Sandal Open Toe Wedding Pumps with Buckle Ankle Strap Evening Party Shoes	THE PERFECT SHOE: This stunning pair of heels is ideal for weddings, parties and every other special occasion that calls for dressy, upscale shoes !; ULTIMATE COMFORT There high heels come with an extra pad insert that lets you wear the shoes all night long with no pain	0	\N	\N	2019-11-06 14:29:24.106345	2019-11-06 14:29:24.118893	5	Herstyle	rumors-women-s-fashion-chunky-heel-sandal-open-toe-wedding-pumps-with-buckle-ankle-strap-evening-party-shoes-2483	0	400	11	12	4
2481	Men's Casual Dress Shirt Button Down Shirts Long-Sleeve Denim Work Shirt	Cotton Blend, Long sleeve denim shirt for men, perfect for casual, business, make you look great and handsome	20	\N	\N	2019-10-29 14:23:37.462196	2019-10-29 14:23:37.470987	5	COOFANDY	men-s-casual-dress-shirt-button-down-shirts-long-sleeve-denim-work-shirt-2481	0	400	4	13	419
2476	iPhone 7, 32GB, Rose Gold	12MP rear Camera; optical image stabilization; Quad-LED true Tone Flash; and live Photos LTE Advanced up to 450 Mbps and 802.11a/b/G/openings/AC Wi-Fi with MIMO iOS 10 and iCloud; 7MP FaceTime HD camera with Retina Flash splash, water, and dust resistant 4K video recording at 30 fps and slo-mo video recording for 1080P at 120 fps; Apple A10 Fusion chip with embedded M10 motion coprocessor	10	\N	\N	2019-10-29 13:55:24.781842	2019-10-29 13:55:24.8351	5	Apple	iphone-7-32gb-rose-gold-2476	0	400	2	9	518
2474	iPhone Xs Max Verizon Space 64GB	64GB, Super Retina HD display, 6.5‑inch, 1,000, 000: 1 contrast ratio (typical) HDR display 2688‑by-1242‑pixel resolution at 458 ppi (diagonal) all‑screen OLED Multi‑Touch display,	5	\N	\N	2019-10-29 13:41:40.396536	2019-10-29 13:41:40.463527	5	Apple	iphone-xs-max-verizon-space-64gb-2474	0	400	2	9	43
2479	Men's Tailored Fit Gingham Dress Shirt, Supima Cotton Non-Iron	Long sleeve; comfortable fabric checkered pattern; french cuffs; button front closure; classic Turn-down collar	15	\N	\N	2019-10-29 14:12:49.499029	2019-10-29 14:12:49.51371	5	Buttoned Down	men-s-tailored-fit-gingham-dress-shirt-supima-cotton-non-iron-2479	0	400	4	13	300
2480	Men's Printed Cotton Casual Long Sleeve Regular Fit Dress Shirt	Button-down closure, long sleeves, printed color, point collar, convertible cuff	20	\N	\N	2019-10-29 14:17:04.300236	2019-10-29 14:17:04.313924	5	MUSE FATH	men-s-printed-cotton-casual-long-sleeve-regular-fit-dress-shirt-2480	0	400	4	13	299
2475	iPhone 11 Pro Max (64GB)	64GB, Super Retina HD display, 6.5‑inch, 1,000, 000: 1 contrast ratio (typical) HDR display 2688‑by-1242‑pixel resolution at 458 ppi (diagonal) all‑screen OLED Multi‑Touch display,	4	\N	\N	2019-10-29 13:46:22.067967	2019-10-29 13:46:22.091019	5	Apple	iphone-11-pro-max-64gb-2475	0	400	2	9	1
\.


--
-- Data for Name: recently_viewed_products; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.recently_viewed_products (id, user_id, created_at, updated_at, product_id) FROM stdin;
19	5	2019-10-31 01:25:24.307192	2019-10-31 01:25:24.307192	2480
20	5	2019-10-31 01:25:24.334932	2019-10-31 01:25:24.334932	2476
21	5	2019-10-31 01:30:02.009349	2019-10-31 01:30:02.009349	2481
22	5	2019-10-31 01:30:02.016027	2019-10-31 01:30:02.016027	2476
23	5	2019-10-31 01:30:02.020026	2019-10-31 01:30:02.020026	2477
24	5	2019-10-31 01:30:02.024468	2019-10-31 01:30:02.024468	2472
25	5	2019-10-31 01:35:19.183428	2019-10-31 01:35:19.183428	2472
26	5	2019-10-31 01:45:28.15641	2019-10-31 01:45:28.15641	2472
27	5	2019-10-31 02:05:14.255252	2019-10-31 02:05:14.255252	2472
28	5	2019-10-31 03:15:22.582165	2019-10-31 03:15:22.582165	2472
29	5	2019-10-31 03:20:20.045774	2019-10-31 03:20:20.045774	2472
30	5	2019-10-31 03:25:07.2122	2019-10-31 03:25:07.2122	2472
31	5	2019-10-31 03:25:07.218931	2019-10-31 03:25:07.218931	2477
32	5	2019-10-31 03:25:07.223484	2019-10-31 03:25:07.223484	2479
33	5	2019-10-31 03:25:07.227473	2019-10-31 03:25:07.227473	2480
34	5	2019-10-31 03:25:07.230872	2019-10-31 03:25:07.230872	2476
35	5	2019-10-31 03:30:13.292612	2019-10-31 03:30:13.292612	2476
36	5	2019-10-31 03:30:13.295958	2019-10-31 03:30:13.295958	2480
37	5	2019-10-31 03:30:13.299185	2019-10-31 03:30:13.299185	2481
38	5	2019-10-31 03:35:09.907603	2019-10-31 03:35:09.907603	2481
39	5	2019-10-31 03:35:09.912577	2019-10-31 03:35:09.912577	2472
40	5	2019-10-31 03:35:09.916571	2019-10-31 03:35:09.916571	2479
41	5	2019-10-31 03:40:16.460308	2019-10-31 03:40:16.460308	2479
42	5	2019-10-31 06:05:08.42255	2019-10-31 06:05:08.42255	2479
43	5	2019-10-31 06:05:08.4287	2019-10-31 06:05:08.4287	2476
44	5	2019-10-31 06:05:08.480317	2019-10-31 06:05:08.480317	2472
45	5	2019-10-31 06:05:08.486604	2019-10-31 06:05:08.486604	2480
46	5	2019-10-31 06:05:08.492936	2019-10-31 06:05:08.492936	2481
47	5	2019-10-31 06:10:39.337409	2019-10-31 06:10:39.337409	2481
48	5	2019-10-31 06:15:12.133768	2019-10-31 06:15:12.133768	2481
49	5	2019-10-31 06:20:05.755555	2019-10-31 06:20:05.755555	2479
50	5	2019-10-31 06:20:05.761115	2019-10-31 06:20:05.761115	2476
51	5	2019-10-31 06:20:05.76455	2019-10-31 06:20:05.76455	2481
52	5	2019-10-31 06:20:05.768724	2019-10-31 06:20:05.768724	2477
53	5	2019-10-31 06:25:28.446112	2019-10-31 06:25:28.446112	2472
54	5	2019-10-31 06:25:28.450379	2019-10-31 06:25:28.450379	2476
55	5	2019-10-31 06:25:28.454707	2019-10-31 06:25:28.454707	2481
56	5	2019-10-31 06:30:02.290961	2019-10-31 06:30:02.290961	2481
57	5	2019-10-31 06:35:31.803457	2019-10-31 06:35:31.803457	2481
58	5	2019-10-31 06:35:31.808737	2019-10-31 06:35:31.808737	2480
59	5	2019-10-31 06:40:22.219686	2019-10-31 06:40:22.219686	2479
60	5	2019-10-31 06:40:22.224892	2019-10-31 06:40:22.224892	2480
61	5	2019-10-31 06:45:01.40621	2019-10-31 06:45:01.40621	2476
62	5	2019-10-31 06:45:01.411822	2019-10-31 06:45:01.411822	2480
63	5	2019-10-31 06:45:01.415184	2019-10-31 06:45:01.415184	2479
64	5	2019-10-31 06:45:01.418149	2019-10-31 06:45:01.418149	2481
65	5	2019-10-31 06:50:28.511952	2019-10-31 06:50:28.511952	2477
66	5	2019-10-31 06:50:28.516166	2019-10-31 06:50:28.516166	2479
67	5	2019-10-31 06:50:28.519213	2019-10-31 06:50:28.519213	2476
68	5	2019-10-31 06:50:28.522473	2019-10-31 06:50:28.522473	2480
69	5	2019-10-31 06:50:28.526607	2019-10-31 06:50:28.526607	2481
70	5	2019-10-31 06:55:20.571627	2019-10-31 06:55:20.571627	2481
71	5	2019-10-31 07:00:18.096386	2019-10-31 07:00:18.096386	2481
72	5	2019-10-31 07:00:18.100984	2019-10-31 07:00:18.100984	2479
73	5	2019-10-31 07:00:18.103896	2019-10-31 07:00:18.103896	2477
74	5	2019-10-31 07:00:18.106769	2019-10-31 07:00:18.106769	2476
75	5	2019-10-31 07:00:18.109702	2019-10-31 07:00:18.109702	2472
76	5	2019-10-31 07:00:18.112482	2019-10-31 07:00:18.112482	2480
77	5	2019-10-31 08:40:26.746419	2019-10-31 08:40:26.746419	2480
78	5	2019-10-31 08:45:04.529729	2019-10-31 08:45:04.529729	2481
79	5	2019-10-31 09:55:24.699512	2019-10-31 09:55:24.699512	2476
80	5	2019-10-31 10:45:11.326529	2019-10-31 10:45:11.326529	2476
81	5	2019-10-31 10:45:11.33261	2019-10-31 10:45:11.33261	2480
82	5	2019-10-31 11:15:25.678064	2019-10-31 11:15:25.678064	2480
83	5	2019-10-31 11:20:18.048215	2019-10-31 11:20:18.048215	2476
84	5	2019-10-31 11:20:18.054028	2019-10-31 11:20:18.054028	2477
85	5	2019-10-31 11:20:18.0588	2019-10-31 11:20:18.0588	2480
86	5	2019-10-31 11:25:12.683737	2019-10-31 11:25:12.683737	2480
87	5	2019-10-31 11:25:12.69016	2019-10-31 11:25:12.69016	2476
88	5	2019-10-31 11:25:12.694633	2019-10-31 11:25:12.694633	2481
89	5	2019-10-31 11:25:12.699141	2019-10-31 11:25:12.699141	2477
90	5	2019-10-31 11:25:12.702962	2019-10-31 11:25:12.702962	2472
91	5	2019-10-31 11:30:20.447179	2019-10-31 11:30:20.447179	2472
92	5	2019-10-31 11:35:04.279374	2019-10-31 11:35:04.279374	2472
93	5	2019-10-31 11:35:04.28569	2019-10-31 11:35:04.28569	2480
94	5	2019-10-31 11:35:04.28954	2019-10-31 11:35:04.28954	2481
95	5	2019-10-31 11:40:05.335486	2019-10-31 11:40:05.335486	2481
96	5	2019-10-31 11:45:06.82884	2019-10-31 11:45:06.82884	2481
97	5	2019-10-31 11:50:22.887739	2019-10-31 11:50:22.887739	2481
98	5	2019-10-31 11:55:16.925878	2019-10-31 11:55:16.925878	2476
99	5	2019-10-31 11:55:16.931108	2019-10-31 11:55:16.931108	2472
100	5	2019-10-31 11:55:16.934789	2019-10-31 11:55:16.934789	2479
101	5	2019-10-31 11:55:16.938393	2019-10-31 11:55:16.938393	2480
102	5	2019-10-31 11:55:16.941701	2019-10-31 11:55:16.941701	2481
103	5	2019-10-31 12:00:28.103868	2019-10-31 12:00:28.103868	2476
104	5	2019-10-31 12:00:28.108133	2019-10-31 12:00:28.108133	2480
105	5	2019-10-31 12:00:28.112389	2019-10-31 12:00:28.112389	2481
106	5	2019-10-31 12:05:16.627033	2019-10-31 12:05:16.627033	2481
107	5	2019-10-31 12:05:16.633199	2019-10-31 12:05:16.633199	2479
108	5	2019-10-31 12:05:16.638632	2019-10-31 12:05:16.638632	2476
109	5	2019-10-31 12:05:16.642598	2019-10-31 12:05:16.642598	2480
110	5	2019-10-31 12:15:03.531922	2019-10-31 12:15:03.531922	2480
111	5	2019-10-31 12:30:10.263352	2019-10-31 12:30:10.263352	2480
112	5	2019-10-31 12:35:07.1578	2019-10-31 12:35:07.1578	2480
113	5	2019-10-31 12:35:07.163557	2019-10-31 12:35:07.163557	2481
114	5	2019-10-31 12:35:07.168834	2019-10-31 12:35:07.168834	2476
115	5	2019-10-31 12:40:36.058438	2019-10-31 12:40:36.058438	2476
116	5	2019-10-31 12:40:36.063859	2019-10-31 12:40:36.063859	2472
117	5	2019-10-31 12:40:36.067469	2019-10-31 12:40:36.067469	2477
118	5	2019-10-31 12:40:36.071043	2019-10-31 12:40:36.071043	2479
119	5	2019-10-31 12:40:36.074423	2019-10-31 12:40:36.074423	2480
120	5	2019-10-31 12:50:18.683568	2019-10-31 12:50:18.683568	2480
121	5	2019-10-31 12:50:18.689289	2019-10-31 12:50:18.689289	2472
122	5	2019-10-31 12:50:18.707692	2019-10-31 12:50:18.707692	2476
123	5	2019-10-31 12:55:08.04092	2019-10-31 12:55:08.04092	2479
124	5	2019-10-31 12:55:08.046171	2019-10-31 12:55:08.046171	2477
125	5	2019-10-31 12:55:08.051195	2019-10-31 12:55:08.051195	2472
126	5	2019-10-31 12:55:08.055082	2019-10-31 12:55:08.055082	2476
127	5	2019-10-31 12:55:08.059482	2019-10-31 12:55:08.059482	2481
128	5	2019-10-31 12:55:08.062765	2019-10-31 12:55:08.062765	2480
129	5	2019-10-31 13:00:27.397494	2019-10-31 13:00:27.397494	2480
130	5	2019-10-31 13:05:29.933438	2019-10-31 13:05:29.933438	2480
131	5	2019-10-31 15:20:35.516775	2019-10-31 15:20:35.516775	2480
132	5	2019-10-31 15:20:35.522848	2019-10-31 15:20:35.522848	2481
133	5	2019-10-31 15:25:18.081006	2019-10-31 15:25:18.081006	2481
134	5	2019-10-31 15:30:12.123752	2019-10-31 15:30:12.123752	2481
135	5	2019-10-31 15:35:06.664376	2019-10-31 15:35:06.664376	2481
136	5	2019-10-31 15:40:20.589039	2019-10-31 15:40:20.589039	2481
137	5	2019-10-31 15:50:24.928594	2019-10-31 15:50:24.928594	2481
138	5	2019-10-31 15:55:05.322819	2019-10-31 15:55:05.322819	2481
139	5	2019-10-31 16:00:05.399759	2019-10-31 16:00:05.399759	2481
140	5	2019-10-31 16:05:14.402557	2019-10-31 16:05:14.402557	2481
141	5	2019-10-31 16:10:38.50698	2019-10-31 16:10:38.50698	2481
142	5	2019-10-31 16:15:32.418117	2019-10-31 16:15:32.418117	2481
143	5	2019-10-31 16:20:33.954213	2019-10-31 16:20:33.954213	2481
144	5	2019-10-31 16:25:05.072285	2019-10-31 16:25:05.072285	2481
145	5	2019-10-31 16:40:06.946178	2019-10-31 16:40:06.946178	2481
146	5	2019-10-31 16:45:01.636418	2019-10-31 16:45:01.636418	2480
147	5	2019-10-31 16:45:01.645051	2019-10-31 16:45:01.645051	2481
148	5	2019-10-31 16:50:21.397788	2019-10-31 16:50:21.397788	2481
149	5	2019-10-31 16:55:07.369908	2019-10-31 16:55:07.369908	2481
150	5	2019-10-31 19:40:19.271115	2019-10-31 19:40:19.271115	2479
151	5	2019-10-31 19:40:19.311298	2019-10-31 19:40:19.311298	2476
152	5	2019-10-31 19:40:19.316034	2019-10-31 19:40:19.316034	2480
153	5	2019-10-31 19:40:19.320165	2019-10-31 19:40:19.320165	2481
154	5	2019-10-31 20:40:10.861608	2019-10-31 20:40:10.861608	2481
155	5	2019-10-31 20:45:27.652977	2019-10-31 20:45:27.652977	2481
156	5	2019-10-31 20:50:23.351428	2019-10-31 20:50:23.351428	2480
157	5	2019-10-31 20:50:23.357413	2019-10-31 20:50:23.357413	2476
158	5	2019-10-31 20:50:23.360801	2019-10-31 20:50:23.360801	2472
159	5	2019-10-31 20:50:23.364069	2019-10-31 20:50:23.364069	2479
160	5	2019-10-31 20:55:15.398742	2019-10-31 20:55:15.398742	2472
161	5	2019-10-31 20:55:15.404478	2019-10-31 20:55:15.404478	2479
162	5	2019-10-31 20:55:15.408714	2019-10-31 20:55:15.408714	2480
163	5	2019-10-31 21:00:27.31381	2019-10-31 21:00:27.31381	2477
164	5	2019-10-31 21:05:33.388312	2019-10-31 21:05:33.388312	2481
165	5	2019-10-31 21:10:10.942548	2019-10-31 21:10:10.942548	2472
166	5	2019-10-31 21:10:10.951072	2019-10-31 21:10:10.951072	2476
167	5	2019-10-31 21:10:10.955049	2019-10-31 21:10:10.955049	2477
168	5	2019-10-31 21:10:10.958934	2019-10-31 21:10:10.958934	2479
169	5	2019-10-31 21:10:10.96204	2019-10-31 21:10:10.96204	2480
170	5	2019-10-31 21:10:10.964724	2019-10-31 21:10:10.964724	2481
171	5	2019-11-01 05:50:09.459176	2019-11-01 05:50:09.459176	2481
172	5	2019-11-01 06:20:29.64556	2019-11-01 06:20:29.64556	2476
173	5	2019-11-01 06:20:29.652642	2019-11-01 06:20:29.652642	2480
174	5	2019-11-01 06:35:11.632238	2019-11-01 06:35:11.632238	2480
175	5	2019-11-01 06:35:11.637668	2019-11-01 06:35:11.637668	2481
176	5	2019-11-01 06:55:09.780564	2019-11-01 06:55:09.780564	2481
177	5	2019-11-01 07:30:01.960635	2019-11-01 07:30:01.960635	2481
178	5	2019-11-01 07:35:01.199795	2019-11-01 07:35:01.199795	2481
179	5	2019-11-01 07:40:16.78511	2019-11-01 07:40:16.78511	2477
180	5	2019-11-01 07:40:16.793487	2019-11-01 07:40:16.793487	2480
181	5	2019-11-01 07:40:16.796924	2019-11-01 07:40:16.796924	2479
182	5	2019-11-01 07:40:16.801223	2019-11-01 07:40:16.801223	2472
183	5	2019-11-01 07:40:16.80506	2019-11-01 07:40:16.80506	2476
184	5	2019-11-01 07:40:16.808775	2019-11-01 07:40:16.808775	2481
185	5	2019-11-01 07:45:02.997817	2019-11-01 07:45:02.997817	2481
186	5	2019-11-01 07:45:03.005708	2019-11-01 07:45:03.005708	2476
187	5	2019-11-01 07:50:24.93266	2019-11-01 07:50:24.93266	2476
188	5	2019-11-01 07:55:41.633267	2019-11-01 07:55:41.633267	2476
189	5	2019-11-01 08:00:39.534705	2019-11-01 08:00:39.534705	2479
190	5	2019-11-01 08:00:39.550737	2019-11-01 08:00:39.550737	2480
191	5	2019-11-01 08:00:39.554279	2019-11-01 08:00:39.554279	2481
192	5	2019-11-01 08:00:39.558324	2019-11-01 08:00:39.558324	2476
193	5	2019-11-01 08:00:39.562145	2019-11-01 08:00:39.562145	2477
194	5	2019-11-01 08:05:27.496063	2019-11-01 08:05:27.496063	2481
195	5	2019-11-01 08:10:08.854842	2019-11-01 08:10:08.854842	2481
196	5	2019-11-01 08:15:03.763346	2019-11-01 08:15:03.763346	2481
197	5	2019-11-01 08:20:06.303815	2019-11-01 08:20:06.303815	2481
198	5	2019-11-01 08:25:12.153923	2019-11-01 08:25:12.153923	2481
199	5	2019-11-01 08:25:12.195868	2019-11-01 08:25:12.195868	2472
200	5	2019-11-01 08:25:12.216806	2019-11-01 08:25:12.216806	2476
201	5	2019-11-01 08:25:12.220292	2019-11-01 08:25:12.220292	2480
202	5	2019-11-01 08:30:24.929685	2019-11-01 08:30:24.929685	2476
203	5	2019-11-01 08:30:24.934935	2019-11-01 08:30:24.934935	2480
204	5	2019-11-01 09:10:37.134962	2019-11-01 09:10:37.134962	2480
205	5	2019-11-01 09:10:37.174992	2019-11-01 09:10:37.174992	2479
206	5	2019-11-01 09:20:02.143448	2019-11-01 09:20:02.143448	2481
207	5	2019-11-01 09:20:02.149259	2019-11-01 09:20:02.149259	2480
208	5	2019-11-01 09:20:02.152676	2019-11-01 09:20:02.152676	2476
209	5	2019-11-01 09:25:11.43497	2019-11-01 09:25:11.43497	2476
210	5	2019-11-01 09:30:27.963274	2019-11-01 09:30:27.963274	2476
211	5	2019-11-01 09:30:27.969158	2019-11-01 09:30:27.969158	2479
212	5	2019-11-01 09:35:11.976836	2019-11-01 09:35:11.976836	2479
213	5	2019-11-01 09:35:11.982279	2019-11-01 09:35:11.982279	2481
214	5	2019-11-01 09:35:11.985612	2019-11-01 09:35:11.985612	2480
215	5	2019-11-01 09:40:32.253406	2019-11-01 09:40:32.253406	2481
216	5	2019-11-01 09:40:32.258851	2019-11-01 09:40:32.258851	2479
217	5	2019-11-01 09:40:32.262185	2019-11-01 09:40:32.262185	2476
218	5	2019-11-01 09:45:14.13105	2019-11-01 09:45:14.13105	2479
219	5	2019-11-01 09:45:14.136713	2019-11-01 09:45:14.136713	2476
220	5	2019-11-01 09:50:28.690951	2019-11-01 09:50:28.690951	2480
221	5	2019-11-01 09:50:28.696707	2019-11-01 09:50:28.696707	2472
222	5	2019-11-01 09:50:28.701271	2019-11-01 09:50:28.701271	2479
223	5	2019-11-01 09:50:28.705233	2019-11-01 09:50:28.705233	2476
224	5	2019-11-01 09:50:28.708798	2019-11-01 09:50:28.708798	2481
225	5	2019-11-01 09:55:29.391833	2019-11-01 09:55:29.391833	2476
226	5	2019-11-01 09:55:29.396653	2019-11-01 09:55:29.396653	2479
227	5	2019-11-01 09:55:29.400155	2019-11-01 09:55:29.400155	2481
228	5	2019-11-01 09:55:29.403658	2019-11-01 09:55:29.403658	2480
229	5	2019-11-01 10:00:05.209391	2019-11-01 10:00:05.209391	2476
230	5	2019-11-01 10:00:05.21451	2019-11-01 10:00:05.21451	2480
231	5	2019-11-01 10:00:05.219681	2019-11-01 10:00:05.219681	2472
232	5	2019-11-01 10:00:05.223445	2019-11-01 10:00:05.223445	2477
233	5	2019-11-01 10:00:05.226905	2019-11-01 10:00:05.226905	2481
234	5	2019-11-01 10:05:32.988318	2019-11-01 10:05:32.988318	2472
235	5	2019-11-01 10:05:32.993643	2019-11-01 10:05:32.993643	2477
236	5	2019-11-01 10:05:32.997745	2019-11-01 10:05:32.997745	2481
237	5	2019-11-01 10:05:33.001219	2019-11-01 10:05:33.001219	2479
238	5	2019-11-01 10:05:33.037568	2019-11-01 10:05:33.037568	2476
239	5	2019-11-01 10:05:33.040783	2019-11-01 10:05:33.040783	2480
240	5	2019-11-01 10:10:21.974582	2019-11-01 10:10:21.974582	2472
241	5	2019-11-01 10:10:21.981259	2019-11-01 10:10:21.981259	2481
242	5	2019-11-01 10:10:21.98544	2019-11-01 10:10:21.98544	2476
243	5	2019-11-01 10:10:21.988707	2019-11-01 10:10:21.988707	2480
244	5	2019-11-01 10:10:21.9923	2019-11-01 10:10:21.9923	2477
245	5	2019-11-01 10:10:21.996428	2019-11-01 10:10:21.996428	2479
246	5	2019-11-01 10:15:04.044423	2019-11-01 10:15:04.044423	2479
247	5	2019-11-01 10:15:04.048908	2019-11-01 10:15:04.048908	2477
248	5	2019-11-01 10:15:04.053003	2019-11-01 10:15:04.053003	2480
249	5	2019-11-01 10:15:04.056053	2019-11-01 10:15:04.056053	2476
250	5	2019-11-01 10:15:04.059446	2019-11-01 10:15:04.059446	2481
251	5	2019-11-01 11:10:07.832563	2019-11-01 11:10:07.832563	2479
252	5	2019-11-01 11:45:15.480023	2019-11-01 11:45:15.480023	2476
253	5	2019-11-01 12:05:21.078031	2019-11-01 12:05:21.078031	2479
254	5	2019-11-01 12:05:21.084384	2019-11-01 12:05:21.084384	2472
255	5	2019-11-01 12:05:21.088286	2019-11-01 12:05:21.088286	2480
256	5	2019-11-01 12:05:21.091791	2019-11-01 12:05:21.091791	2481
257	5	2019-11-01 12:05:21.095453	2019-11-01 12:05:21.095453	2476
258	5	2019-11-01 12:05:21.098765	2019-11-01 12:05:21.098765	2477
259	5	2019-11-01 12:25:17.97724	2019-11-01 12:25:17.97724	2480
260	5	2019-11-01 12:30:09.428034	2019-11-01 12:30:09.428034	2480
261	5	2019-11-01 12:35:33.054044	2019-11-01 12:35:33.054044	2480
262	5	2019-11-01 12:40:16.768579	2019-11-01 12:40:16.768579	2480
263	5	2019-11-01 12:45:03.088655	2019-11-01 12:45:03.088655	2480
264	5	2019-11-01 12:50:30.160804	2019-11-01 12:50:30.160804	2480
265	5	2019-11-01 12:50:30.16419	2019-11-01 12:50:30.16419	2476
266	5	2019-11-01 13:00:08.463523	2019-11-01 13:00:08.463523	2476
267	5	2019-11-01 13:05:08.050979	2019-11-01 13:05:08.050979	2476
268	5	2019-11-01 13:10:25.740463	2019-11-01 13:10:25.740463	2476
269	5	2019-11-01 13:15:34.280957	2019-11-01 13:15:34.280957	2476
270	5	2019-11-01 13:20:17.358053	2019-11-01 13:20:17.358053	2476
271	5	2019-11-01 13:20:17.362991	2019-11-01 13:20:17.362991	2481
272	5	2019-11-01 13:25:25.909065	2019-11-01 13:25:25.909065	2479
273	5	2019-11-01 13:25:25.91488	2019-11-01 13:25:25.91488	2477
274	5	2019-11-01 13:25:25.918342	2019-11-01 13:25:25.918342	2481
275	5	2019-11-01 13:30:52.21204	2019-11-01 13:30:52.21204	2479
276	5	2019-11-01 13:30:52.217134	2019-11-01 13:30:52.217134	2476
277	5	2019-11-01 13:35:02.819595	2019-11-01 13:35:02.819595	2472
278	5	2019-11-01 13:35:02.824746	2019-11-01 13:35:02.824746	2477
279	5	2019-11-01 13:35:02.828261	2019-11-01 13:35:02.828261	2476
280	5	2019-11-01 13:40:07.095922	2019-11-01 13:40:07.095922	2476
281	5	2019-11-01 13:45:09.53321	2019-11-01 13:45:09.53321	2476
282	5	2019-11-01 13:50:06.416651	2019-11-01 13:50:06.416651	2476
283	5	2019-11-01 13:50:06.420881	2019-11-01 13:50:06.420881	2479
284	5	2019-11-01 13:55:02.134411	2019-11-01 13:55:02.134411	2479
285	5	2019-11-01 14:00:09.310688	2019-11-01 14:00:09.310688	2479
286	5	2019-11-01 14:05:28.941557	2019-11-01 14:05:28.941557	2479
287	5	2019-11-01 14:10:29.364554	2019-11-01 14:10:29.364554	2476
288	5	2019-11-01 14:10:29.370856	2019-11-01 14:10:29.370856	2480
289	5	2019-11-01 14:10:29.374855	2019-11-01 14:10:29.374855	2481
290	5	2019-11-01 14:15:20.490413	2019-11-01 14:15:20.490413	2476
291	5	2019-11-01 14:15:20.494464	2019-11-01 14:15:20.494464	2479
292	5	2019-11-01 14:15:20.502115	2019-11-01 14:15:20.502115	2481
293	5	2019-11-01 14:15:20.507339	2019-11-01 14:15:20.507339	2480
294	5	2019-11-01 14:15:20.511923	2019-11-01 14:15:20.511923	2477
295	5	2019-11-01 14:20:10.295711	2019-11-01 14:20:10.295711	2477
296	5	2019-11-01 14:20:10.300164	2019-11-01 14:20:10.300164	2480
297	5	2019-11-01 14:20:10.305041	2019-11-01 14:20:10.305041	2481
298	5	2019-11-01 14:30:20.204468	2019-11-01 14:30:20.204468	2481
299	5	2019-11-01 14:35:27.180285	2019-11-01 14:35:27.180285	2481
300	5	2019-11-01 14:40:28.836841	2019-11-01 14:40:28.836841	2481
301	5	2019-11-01 14:45:09.785155	2019-11-01 14:45:09.785155	2481
302	5	2019-11-01 14:50:19.539427	2019-11-01 14:50:19.539427	2481
303	5	2019-11-01 14:55:05.596158	2019-11-01 14:55:05.596158	2481
304	5	2019-11-01 18:40:16.279877	2019-11-01 18:40:16.279877	2472
305	5	2019-11-01 18:40:16.291534	2019-11-01 18:40:16.291534	2481
306	5	2019-11-01 18:40:16.297227	2019-11-01 18:40:16.297227	2480
307	5	2019-11-01 18:45:34.211861	2019-11-01 18:45:34.211861	2480
308	5	2019-11-01 18:50:18.928325	2019-11-01 18:50:18.928325	2480
309	5	2019-11-01 18:55:08.588388	2019-11-01 18:55:08.588388	2480
310	5	2019-11-01 19:05:04.913616	2019-11-01 19:05:04.913616	2480
311	5	2019-11-01 19:05:04.930243	2019-11-01 19:05:04.930243	2481
312	5	2019-11-01 19:10:11.151692	2019-11-01 19:10:11.151692	2481
313	5	2019-11-01 19:10:11.157656	2019-11-01 19:10:11.157656	2479
314	5	2019-11-01 19:10:11.161399	2019-11-01 19:10:11.161399	2480
315	5	2019-11-01 19:15:03.746844	2019-11-01 19:15:03.746844	2480
316	5	2019-11-01 19:20:11.245046	2019-11-01 19:20:11.245046	2480
317	5	2019-11-01 19:25:29.660278	2019-11-01 19:25:29.660278	2480
318	5	2019-11-01 19:30:09.059817	2019-11-01 19:30:09.059817	2480
319	5	2019-11-01 19:35:31.309277	2019-11-01 19:35:31.309277	2480
320	5	2019-11-01 19:40:13.99166	2019-11-01 19:40:13.99166	2480
321	5	2019-11-01 19:45:24.480667	2019-11-01 19:45:24.480667	2480
322	5	2019-11-01 19:45:24.489935	2019-11-01 19:45:24.489935	2481
323	5	2019-11-01 19:50:14.023875	2019-11-01 19:50:14.023875	2472
324	5	2019-11-01 19:50:14.035519	2019-11-01 19:50:14.035519	2479
325	5	2019-11-01 22:05:14.48639	2019-11-01 22:05:14.48639	2477
326	5	2019-11-01 22:05:14.514937	2019-11-01 22:05:14.514937	2476
327	5	2019-11-01 22:05:14.531	2019-11-01 22:05:14.531	2480
328	5	2019-11-01 22:05:14.555396	2019-11-01 22:05:14.555396	2481
329	5	2019-11-01 22:35:07.87537	2019-11-01 22:35:07.87537	2481
330	5	2019-11-01 22:40:42.072895	2019-11-01 22:40:42.072895	2481
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
20191022175515
\.


--
-- Data for Name: sub_categories; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.sub_categories (id, category_id, category_name, category_description, created_at, updated_at, picture, url_key) FROM stdin;
3	13	Men's trousers	Men's trousers of different sizes, and types. Jeans, chinos, pant trousers, e.t.c	2019-08-15 07:08:40.188975	2019-08-15 07:08:40.20933	\N	men-s-trousers-3
4	13	Men's shirts	Men's shirts of different sizes, and types. Linen, cotton, corporate, check e.t.c	2019-08-15 07:09:50.561459	2019-08-15 07:09:50.569116	\N	men-s-shirts-4
2	9	IOS	Apple phones (i phones)	2019-08-12 16:07:28.049085	2019-08-12 16:07:28.049085	\N	apple-phones-i-phones-2
1	9	Android phones	Android phones of different specifications	2019-08-12 05:28:02.212887	2019-08-12 05:28:02.212887	\N	android-phones-of-different-specifications-1
6	11	Men's sneakers	Men's sneakers of different sizes, colors and types	2019-08-15 07:11:49.803289	2019-08-15 07:11:49.805938	\N	men-sneakers-6
7	11	Men's slides	Men's slides of different sizes, colors and types	2019-09-13 13:58:09.358473	2019-09-13 13:58:09.559584	\N	men-slides-7
5	13	Men's t-shirts	Men's t-shirts of different sizes, and types	2019-08-15 07:10:18.923782	2019-08-15 07:10:18.928196	\N	men-s-t-shirts-5
8	15	MacBooks	Macintosh Laptop computers of Apple Inc. Different versions, sizes and specifications	2019-10-23 12:18:00.19451	2019-10-23 16:41:28.627464	\N	macbooks-8
10	9	Phone Accessories	Accessories for all kind of phones	2019-10-29 13:36:09.7711	2019-10-29 13:36:09.78379	\N	phone-accessories-10
11	12	Pumps	Women's pumps of different types, sizes and heel lengths. For any occasion, casual or corporate	2019-11-06 14:17:22.189195	2019-11-06 14:17:22.195574	\N	pumps-11
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ezenwaogbonna
--

COPY public.users (id, first_name, last_name, email, password_digest, address, city, state, postal_code, country, phone, is_admin, created_at, updated_at, verified) FROM stdin;
1	Chidinma	Ogbonna	chidinmaogbonna@gmail.com	$2a$12$TrJjWA188gDp6AIS6gwoC.2jAw5XtLd2JB8S/ZXtx0/P648hJMbyO	8. Muibi st	Ogba	Lagos	1203309	Nigeria	080849494004	f	2019-07-15 21:21:13.053786	2019-07-15 21:21:13.053786	f
2	Ezenwa	Ogbonna	ezenwaogbonna390@gmail.com	$2a$12$9E/pBPYorFRZ44HHnTg3tup8uNyEwQlytuRCGrGWH9zHOfnvIiBBe	8. Muibi st	Ogba	Lagos	1203309	Nigeria	08140064376	f	2019-07-15 21:24:17.161196	2019-07-15 21:24:17.161196	f
4	Angela	Ogbonna	ogadinmaogb@gmail.com	$2a$12$a.U6chfNNPF1z0B1iZXZleNEzjcSuc3QIQa9Mfxf4iHQmvAJ8Gt.K	8. Meigida st	Apapa	Lagos	1203309	Nigeria	081738393000	f	2019-07-16 04:36:28.661842	2019-07-16 04:36:28.661842	f
27	Ezenwa	Ogbonna	ezenwaogbonna1@gmail.com	$2a$12$JGXcCt0WrrOA/OunABMhg.v2I2qaXDVN6iSGcymel6KBEcn99rt32	8. Moshalashi st.	Sagamu	Oyo	15058585	Nigeria	08140064376	f	2019-09-10 07:26:20.870592	2019-11-07 15:51:08.62343	f
6	Chasis	Nedum	chasisnedum39@gmail.com	$2a$12$C7DbhAXkE67PWrtc/.Aru.pTIzCYLByD204056zeXJcgRSvCh8tRy	8. Meigida st	Apapa	Lagos	1203309	Nigeria	081738393000	f	2019-07-24 10:00:51.12318	2019-07-24 10:00:51.12318	f
33	djdjdj	djdjd	50centeejeiiodid@gmail.com	$2a$12$JV5aeKq.7GVibyJfzAxGF.6weOUk3D4vURHPvMCQZllZmlyl5mCvi	\N	\N	\N	\N	\N	\N	f	2019-09-10 16:50:43.437421	2019-09-10 16:50:43.437421	f
34	3030	jdj	50centdiirdildld@gmail.com	$2a$12$ZH1OWbIC844xdenhEHmvY.YmF6C12WLJ.Ap7FFsU3po0SQ1LC.o7S	\N	\N	\N	\N	\N	\N	f	2019-09-10 16:51:06.34442	2019-09-10 16:51:06.34442	f
35	djd	djddj	50centdieeieii3i@gmail.com	$2a$12$8bkjfcHAVHPpoXuxNEjrROc90M/JWdRBbpJwU8Qdfpe6sqGM4pxce	\N	\N	\N	\N	\N	\N	f	2019-09-10 17:00:46.969813	2019-09-10 17:00:46.969813	f
3	Chimdi	Dennis	ndukachinko390@gmail.com	$2a$12$p5LmJHFTC7IZjtCkSnvAMumfvz8OcajkVrUcy22zLLKNPRlyjyTrO	8. Babudu st	Alaba	Lagos	1203309	Nigeria	081738393000	f	2019-07-16 03:10:45.892527	2019-07-30 16:23:16.06553	f
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
5	Chika	Adanma	chimaobi389@gmail.com	$2a$12$z3bbid8qIBma8Wg0Jw3d/eCH1fiyaXBi7Ev5Snz8MQFbthuADXk9u	8. Meigida st	Idumota	Lagos	1203309	Nigeria	081738393000	t	2019-07-16 04:41:15.739012	2019-11-06 16:57:03.720939	f
94	macy	jokee	ddjdd@gmail.com	$2a$12$LKvwBXvROP7nzN0fteWql.4s1H098r0CPaNBIr8whbhvLfdIuSgBq	\N	\N	\N	\N	\N	\N	f	2019-11-07 07:23:56.224077	2019-11-07 07:23:56.224077	f
95	mira	cle	ndjjjdjd@gmail.com	$2a$12$KnHGM3ivlqiMBL/nFT338uYPZLbNEO.G.aSK2fZBNihIaZ1a67Rt.	\N	\N	\N	\N	\N	\N	f	2019-11-07 07:23:56.483621	2019-11-07 07:23:56.483621	f
100	Ezenwa	Ogbonna	ezenwa.ogbonna@andela.com	$2a$12$Rf.rSVmjSsr8n84km8uEvuYBaVZM/7qzOmK3NtzzOsjfJENBOyzw6	8. Shingbai street	Apapa	Lagos	12022102	Nigeria	80388488	f	2019-11-08 10:36:35.38397	2019-11-08 10:37:10.493152	f
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 59, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 59, true);


--
-- Name: carts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.carts_id_seq', 174, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.categories_id_seq', 21, true);


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

SELECT pg_catalog.setval('public.product_details_id_seq', 2391, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.products_id_seq', 2483, true);


--
-- Name: recently_viewed_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.recently_viewed_products_id_seq', 330, true);


--
-- Name: sub_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.sub_categories_id_seq', 11, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ezenwaogbonna
--

SELECT pg_catalog.setval('public.users_id_seq', 100, true);


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

