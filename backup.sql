--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Orders" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    products json NOT NULL,
    total double precision NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: Orders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Orders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Orders_id_seq" OWNED BY public."Orders".id;


--
-- Name: Users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products (
    id integer NOT NULL,
    title text NOT NULL,
    price double precision NOT NULL,
    description text,
    category text NOT NULL,
    image text NOT NULL,
    rating_rate double precision,
    rating_count integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_id_seq1; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.products_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.products_id_seq1 OWNED BY public.products.id;


--
-- Name: Orders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Orders" ALTER COLUMN id SET DEFAULT nextval('public."Orders_id_seq"'::regclass);


--
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq1'::regclass);


--
-- Data for Name: Orders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Orders" (id, "userId", products, total, "createdAt", "updatedAt") FROM stdin;
20	1	[{"productId":17,"price":39.99,"quantity":2,"subtotal":79.98},{"productId":15,"price":56.99,"quantity":2,"subtotal":113.98}]	193.96	2025-06-05 09:21:00.566+01	2025-06-05 09:21:00.566+01
21	2	[{"productId":3,"price":55.99,"quantity":1,"subtotal":55.99}]	55.99	2025-06-05 09:38:01.816+01	2025-06-05 09:38:01.816+01
22	3	[{"productId":5,"price":695,"quantity":3,"subtotal":2085},{"productId":11,"price":109,"quantity":7,"subtotal":763},{"productId":15,"price":56.99,"quantity":1,"subtotal":56.99},{"productId":18,"price":9.85,"quantity":1,"subtotal":9.85}]	2914.8399999999997	2025-06-05 10:35:18.447+01	2025-06-05 10:35:18.447+01
23	4	[{"productId":3,"price":55.99,"quantity":2,"subtotal":111.98},{"productId":1,"price":109.95,"quantity":2,"subtotal":219.9},{"productId":5,"price":695,"quantity":2,"subtotal":1390},{"productId":6,"price":168,"quantity":3,"subtotal":504}]	2225.88	2025-06-05 13:07:51.632+01	2025-06-05 13:07:51.632+01
24	5	[{"productId":3,"price":55.99,"quantity":2,"subtotal":111.98}]	111.98	2025-06-05 13:09:43.155+01	2025-06-05 13:09:43.155+01
25	1	[{"productId":20,"price":12.99,"quantity":198,"subtotal":2572.02}]	2572.02	2025-06-05 16:18:27.56+01	2025-06-05 16:18:27.56+01
26	2	[{"productId":3,"price":55.99,"quantity":1,"subtotal":55.99}]	55.99	2025-06-05 16:25:28.887+01	2025-06-05 16:25:28.887+01
27	1	[{"productId":2,"price":22.3,"quantity":123,"subtotal":2742.9},{"productId":6,"price":168,"quantity":1,"subtotal":168}]	2910.9	2025-06-05 16:39:17.484+01	2025-06-05 16:39:17.484+01
28	1	[{"productId":5,"price":695,"quantity":1,"subtotal":695}]	695	2025-06-05 17:34:16.72+01	2025-06-05 17:34:16.72+01
29	1	[{"productId":20,"price":12.99,"quantity":1934,"subtotal":25122.66},{"productId":12,"price":114,"quantity":2333,"subtotal":265962},{"productId":17,"price":39.99,"quantity":167890,"subtotal":6713921.100000001},{"productId":2,"price":22.3,"quantity":712345,"subtotal":15885293.5},{"productId":9,"price":64,"quantity":8990,"subtotal":575360},{"productId":15,"price":56.99,"quantity":190222,"subtotal":10840751.780000001},{"productId":11,"price":109,"quantity":140222222222222,"subtotal":15284222222222198},{"productId":6,"price":168,"quantity":1000,"subtotal":168000},{"productId":13,"price":599,"quantity":3123,"subtotal":1870677}]	1.5284222258567288e+16	2025-06-08 14:28:09.586+01	2025-06-08 14:28:09.586+01
30	2	[{"productId":2,"price":22300,"quantity":2,"subtotal":44600},{"productId":3,"price":55.99,"quantity":1,"subtotal":55.99},{"productId":9,"price":64,"quantity":1,"subtotal":64}]	44719.99	2025-06-09 10:42:20.987+01	2025-06-09 10:42:20.987+01
31	3	[{"productId":2,"price":22.3,"quantity":7,"subtotal":156.1},{"productId":11,"price":109,"quantity":8,"subtotal":872},{"productId":6,"price":168,"quantity":1,"subtotal":168}]	1196.1	2025-06-09 11:51:46.495+01	2025-06-09 11:51:46.495+01
\.


--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Users" (id, email, password, name, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products (id, title, price, description, category, image, rating_rate, rating_count, "createdAt", "updatedAt") FROM stdin;
1	Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops	109.95	Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday	men's clothing	https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg	3.9	120	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
2	Mens Casual Premium Slim Fit T-Shirts 	22.3	Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.	men's clothing	https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg	4.1	259	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
3	Mens Cotton Jacket	55.99	great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.	men's clothing	https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg	4.7	500	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
4	Mens Casual Slim Fit	15.99	The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.	men's clothing	https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg	2.1	430	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
5	John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet	695	From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.	jewelery	https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg	4.6	400	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
6	Solid Gold Petite Micropave 	168	Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed. Return or exchange any order within 30 days.	jewelery	https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg	3.9	70	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
7	White Gold Plated Princess	9.99	Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentine's Day...	jewelery	https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg	3	400	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
8	Pierced Owl Rose Gold Plated Stainless Steel Double	10.99	Rose Gold Plated Double Flared Tunnel Plug Earrings. Made of 316L Stainless Steel	jewelery	https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg	1.9	100	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
9	WD 2TB Elements Portable External Hard Drive - USB 3.0 	64	USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system	electronics	https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg	3.3	203	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
10	SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s	109	Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.)	electronics	https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg	2.9	470	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
11	Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5	109	3D NAND flash are applied to deliver high transfer speeds Remarkable transfer speeds that enable faster bootup and improved overall system performance. The advanced SLC Cache Technology allows performance boost and longer lifespan 7mm slim design suitable for Ultrabooks and Ultra-slim notebooks. Supports TRIM command, Garbage Collection technology, RAID, and ECC (Error Checking & Correction) to provide the optimized performance and enhanced reliability.	electronics	https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg	4.8	319	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
12	WD 4TB Gaming Drive Works with Playstation 4 Portable External Hard Drive	114	Expand your PS4 gaming experience, Play anywhere Fast and easy, setup Sleek design with high capacity, 3-year manufacturer's limited warranty	electronics	https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg	4.8	400	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
13	Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin	599	21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz	electronics	https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg	2.9	250	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
14	Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor (LC49HG90DMNXZA) – Super Ultrawide Screen QLED 	999.99	49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR with dual 27 inch screen side by side QUANTUM DOT (QLED) TECHNOLOGY, HDR support and factory calibration provides stunningly realistic and accurate color and contrast 144HZ HIGH REFRESH RATE and 1ms ultra fast response time work to eliminate motion blur, ghosting, and reduce input lag	electronics	https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg	2.2	140	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
15	BIYLACLESEN Women's 3-in-1 Snowboard Jacket Winter Coats	56.99	Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates	women's clothing	https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg	2.6	235	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
16	Lock and Love Women's Removable Hooded Faux Leather Moto Biker Jacket	29.95	100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON	women's clothing	https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg	2.9	340	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
17	Rain Jacket Women Windbreaker Striped Climbing Raincoats	39.99	Lightweight perfet for trip or casual wear---Long sleeve with hooded, adjustable drawstring waist design. Button and zipper front closure raincoat, fully stripes Lined and The Raincoat has 2 side pockets are a good size to hold all kinds of things, it covers the hips, and the hood is generous but doesn't overdo it.Attached Cotton Lined Hood with Adjustable Drawstrings give it a real styled look.	women's clothing	https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg	3.8	679	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
18	MBJ Women's Solid Short Sleeve Boat Neck V 	9.85	95% RAYON 5% SPANDEX, Made in USA or Imported, Do Not Bleach, Lightweight fabric with great stretch for comfort, Ribbed on sleeves and neckline / Double stitching on bottom hem	women's clothing	https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg	4.7	130	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
19	Opna Women's Short Sleeve Moisture	7.95	100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comfortable V-neck collar and a slimmer fit, delivers a sleek, more feminine silhouette and Added Comfort	women's clothing	https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg	4.5	146	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
20	DANVOUY Womens T Shirt Casual Cotton Short	12.99	95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print,V-Neck,Fashion Tees, The fabric is soft and has some stretch., Occasion: Casual/Office/Beach/School/Home/Street. Season: Spring,Summer,Autumn,Winter.	women's clothing	https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg	3.6	145	2025-06-04 15:12:27.891+01	2025-06-04 15:12:27.891+01
\.


--
-- Name: Orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Orders_id_seq"', 31, true);


--
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Users_id_seq"', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_id_seq', 7, true);


--
-- Name: products_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_id_seq1', 20, true);


--
-- Name: Orders Orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (id);


--
-- Name: Users Users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);


--
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

