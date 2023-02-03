--
-- PostgreSQL database dump
--

-- Dumped from database version 11.16 (Debian 11.16-0+deb10u1)
-- Dumped by pg_dump version 14.2

-- Started on 2023-02-03 08:24:38

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

DROP DATABASE cd14;
--
-- TOC entry 3057 (class 1262 OID 188868)
-- Name: cd14; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE cd14 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


\connect cd14

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

--
-- TOC entry 215 (class 1259 OID 189174)
-- Name: employee; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    name_surname character varying(30),
    email character varying(30),
    speciality character varying(30),
    function character varying(30),
    department character varying(40),
    telephone_number character varying(20),
    address character varying(100)
);


--
-- TOC entry 214 (class 1259 OID 189172)
-- Name: empleado_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 214
-- Name: empleado_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.employee.employee_id;


--
-- TOC entry 220 (class 1259 OID 189328)
-- Name: employee_project; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employee_project (
    employee_id integer NOT NULL,
    project_id integer NOT NULL,
    ep_id integer NOT NULL,
    percentage integer
);


--
-- TOC entry 218 (class 1259 OID 189324)
-- Name: empleado_proyecto_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.empleado_proyecto_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 218
-- Name: empleado_proyecto_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.empleado_proyecto_id_empleado_seq OWNED BY public.employee_project.employee_id;


--
-- TOC entry 219 (class 1259 OID 189326)
-- Name: empleado_proyecto_id_proyecto_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.empleado_proyecto_id_proyecto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 219
-- Name: empleado_proyecto_id_proyecto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.empleado_proyecto_id_proyecto_seq OWNED BY public.employee_project.project_id;


--
-- TOC entry 221 (class 1259 OID 189466)
-- Name: employee_project_ep_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.employee_project_ep_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 221
-- Name: employee_project_ep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.employee_project_ep_id_seq OWNED BY public.employee_project.ep_id;


--
-- TOC entry 217 (class 1259 OID 189272)
-- Name: project; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project (
    project_id integer NOT NULL,
    project_name character varying(50),
    description character varying(200),
    start_date date,
    end_date date
);


--
-- TOC entry 216 (class 1259 OID 189270)
-- Name: proyecto_id_proyecto_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.proyecto_id_proyecto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 216
-- Name: proyecto_id_proyecto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.proyecto_id_proyecto_seq OWNED BY public.project.project_id;


--
-- TOC entry 197 (class 1259 OID 189048)
-- Name: ti18n; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ti18n (
    id_18n integer NOT NULL,
    class_name character varying(150),
    i18n_description character varying(250)
);


--
-- TOC entry 196 (class 1259 OID 189046)
-- Name: ti18n_id_18n_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ti18n_id_18n_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 196
-- Name: ti18n_id_18n_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ti18n_id_18n_seq OWNED BY public.ti18n.id_18n;


--
-- TOC entry 199 (class 1259 OID 189056)
-- Name: ti18n_value; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ti18n_value (
    id_18n_value integer NOT NULL,
    id_18n integer NOT NULL,
    key character varying(250),
    es_es character varying(10485760),
    en_us character varying(10485760),
    gl_es character varying(10485760)
);


--
-- TOC entry 198 (class 1259 OID 189054)
-- Name: ti18n_value_id_18n_value_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ti18n_value_id_18n_value_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3065 (class 0 OID 0)
-- Dependencies: 198
-- Name: ti18n_value_id_18n_value_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ti18n_value_id_18n_value_seq OWNED BY public.ti18n_value.id_18n_value;


--
-- TOC entry 201 (class 1259 OID 189067)
-- Name: trequest_statistics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trequest_statistics (
    id_request_statistics integer NOT NULL,
    service_name character varying(255),
    method_name character varying(50),
    user_name character varying(50),
    execution_date date,
    execution_time integer,
    method_params character varying(5000),
    service_exception character varying(5000)
);


--
-- TOC entry 200 (class 1259 OID 189065)
-- Name: trequest_statistics_id_request_statistics_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.trequest_statistics_id_request_statistics_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3066 (class 0 OID 0)
-- Dependencies: 200
-- Name: trequest_statistics_id_request_statistics_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.trequest_statistics_id_request_statistics_seq OWNED BY public.trequest_statistics.id_request_statistics;


--
-- TOC entry 203 (class 1259 OID 189081)
-- Name: trole; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trole (
    id_rolename integer NOT NULL,
    rolename character varying(255),
    xmlclientpermission character varying(10485760)
);


--
-- TOC entry 202 (class 1259 OID 189079)
-- Name: trole_id_rolename_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.trole_id_rolename_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3067 (class 0 OID 0)
-- Dependencies: 202
-- Name: trole_id_rolename_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.trole_id_rolename_seq OWNED BY public.trole.id_rolename;


--
-- TOC entry 206 (class 1259 OID 189097)
-- Name: trole_server_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trole_server_permission (
    id_role_server_permission integer NOT NULL,
    id_rolename integer,
    id_server_permission integer
);


--
-- TOC entry 205 (class 1259 OID 189095)
-- Name: trole_server_permission_id_role_server_permission_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.trole_server_permission_id_role_server_permission_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3068 (class 0 OID 0)
-- Dependencies: 205
-- Name: trole_server_permission_id_role_server_permission_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.trole_server_permission_id_role_server_permission_seq OWNED BY public.trole_server_permission.id_role_server_permission;


--
-- TOC entry 208 (class 1259 OID 189112)
-- Name: tserver_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tserver_permission (
    id_server_permission integer NOT NULL,
    permision_name character varying(10485760)
);


--
-- TOC entry 207 (class 1259 OID 189110)
-- Name: tserver_permission_id_server_permission_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tserver_permission_id_server_permission_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3069 (class 0 OID 0)
-- Dependencies: 207
-- Name: tserver_permission_id_server_permission_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tserver_permission_id_server_permission_seq OWNED BY public.tserver_permission.id_server_permission;


--
-- TOC entry 211 (class 1259 OID 189131)
-- Name: tsetting; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tsetting (
    id_setting integer NOT NULL,
    setting_key character varying(10485760),
    setting_value character varying(10485760),
    setting_comment character varying(10485760)
);


--
-- TOC entry 210 (class 1259 OID 189129)
-- Name: tsetting_id_setting_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tsetting_id_setting_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3070 (class 0 OID 0)
-- Dependencies: 210
-- Name: tsetting_id_setting_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tsetting_id_setting_seq OWNED BY public.tsetting.id_setting;


--
-- TOC entry 204 (class 1259 OID 189090)
-- Name: tuser; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser (
    user_ character varying(50) NOT NULL,
    password character varying(50),
    name character varying(50),
    surname character varying(50),
    email character varying(50),
    nif character varying(50),
    userblocked timestamp without time zone,
    lastpasswordupdate timestamp without time zone,
    firstlogin boolean
);


--
-- TOC entry 209 (class 1259 OID 189121)
-- Name: tuser_preference; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser_preference (
    id_user_preference integer NOT NULL,
    preference_name character varying(150),
    user_login character varying(150),
    preference_value character varying(10485760)
);


--
-- TOC entry 213 (class 1259 OID 189142)
-- Name: tuser_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser_role (
    id_user_role integer NOT NULL,
    id_rolename integer,
    user_ character varying
);


--
-- TOC entry 212 (class 1259 OID 189140)
-- Name: tuser_role_id_user_role_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tuser_role_id_user_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3071 (class 0 OID 0)
-- Dependencies: 212
-- Name: tuser_role_id_user_role_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tuser_role_id_user_role_seq OWNED BY public.tuser_role.id_user_role;


--
-- TOC entry 223 (class 1259 OID 189557)
-- Name: vdelete_projects; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.vdelete_projects AS
 SELECT ep.ep_id
   FROM public.employee_project ep
  WHERE (ep.project_id = 1);


--
-- TOC entry 222 (class 1259 OID 189494)
-- Name: vinfo_projects_employees; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.vinfo_projects_employees AS
 SELECT ep.ep_id,
    ep.percentage,
    e.employee_id,
    e.name_surname,
    e.email,
    e.speciality,
    e.function,
    p.project_id,
    p.project_name,
    p.description
   FROM ((public.employee_project ep
     JOIN public.project p ON ((ep.project_id = p.project_id)))
     JOIN public.employee e ON ((ep.employee_id = e.employee_id)));


--
-- TOC entry 2870 (class 2604 OID 189177)
-- Name: employee employee_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);


--
-- TOC entry 2872 (class 2604 OID 189331)
-- Name: employee_project employee_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee_project ALTER COLUMN employee_id SET DEFAULT nextval('public.empleado_proyecto_id_empleado_seq'::regclass);


--
-- TOC entry 2873 (class 2604 OID 189332)
-- Name: employee_project project_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee_project ALTER COLUMN project_id SET DEFAULT nextval('public.empleado_proyecto_id_proyecto_seq'::regclass);


--
-- TOC entry 2874 (class 2604 OID 189468)
-- Name: employee_project ep_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee_project ALTER COLUMN ep_id SET DEFAULT nextval('public.employee_project_ep_id_seq'::regclass);


--
-- TOC entry 2871 (class 2604 OID 189275)
-- Name: project project_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project ALTER COLUMN project_id SET DEFAULT nextval('public.proyecto_id_proyecto_seq'::regclass);


--
-- TOC entry 2862 (class 2604 OID 189051)
-- Name: ti18n id_18n; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n ALTER COLUMN id_18n SET DEFAULT nextval('public.ti18n_id_18n_seq'::regclass);


--
-- TOC entry 2863 (class 2604 OID 189059)
-- Name: ti18n_value id_18n_value; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n_value ALTER COLUMN id_18n_value SET DEFAULT nextval('public.ti18n_value_id_18n_value_seq'::regclass);


--
-- TOC entry 2864 (class 2604 OID 189070)
-- Name: trequest_statistics id_request_statistics; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trequest_statistics ALTER COLUMN id_request_statistics SET DEFAULT nextval('public.trequest_statistics_id_request_statistics_seq'::regclass);


--
-- TOC entry 2865 (class 2604 OID 189084)
-- Name: trole id_rolename; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole ALTER COLUMN id_rolename SET DEFAULT nextval('public.trole_id_rolename_seq'::regclass);


--
-- TOC entry 2866 (class 2604 OID 189100)
-- Name: trole_server_permission id_role_server_permission; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole_server_permission ALTER COLUMN id_role_server_permission SET DEFAULT nextval('public.trole_server_permission_id_role_server_permission_seq'::regclass);


--
-- TOC entry 2867 (class 2604 OID 189115)
-- Name: tserver_permission id_server_permission; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tserver_permission ALTER COLUMN id_server_permission SET DEFAULT nextval('public.tserver_permission_id_server_permission_seq'::regclass);


--
-- TOC entry 2868 (class 2604 OID 189134)
-- Name: tsetting id_setting; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tsetting ALTER COLUMN id_setting SET DEFAULT nextval('public.tsetting_id_setting_seq'::regclass);


--
-- TOC entry 2869 (class 2604 OID 189145)
-- Name: tuser_role id_user_role; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_role ALTER COLUMN id_user_role SET DEFAULT nextval('public.tuser_role_id_user_role_seq'::regclass);


--
-- TOC entry 3045 (class 0 OID 189174)
-- Dependencies: 215
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.employee VALUES (9, 'Manolo Castro', 'manolo.castro@newvision.com', 'software developing', 'employee', 'software developing', '(+34)635 019 053', 'C/ Pablo Iglesias, 64');
INSERT INTO public.employee VALUES (1, 'Ramon Garcia', 'ramon.garcia@newvision.com', 'programming', 'employees', 'software developing', '(+34)615 226 523', 'Plaza Colón, 34');
INSERT INTO public.employee VALUES (22, 'Manolo Santana', 'manolo.santa@newvision.com', 'Digital Marketer', 'employee', 'administration', '(+34)651 259 522', 'Carretera, 98');
INSERT INTO public.employee VALUES (0, 'Carmen Rodriguez', 'carmen.rodriguez@newvision.com', 'programming', 'employee', 'software developing', '(+34)689 687 662', 'C/ Olmos, 55');
INSERT INTO public.employee VALUES (2, 'Maria Purificacion Diaz', 'maripuri.diaz@newvision.com', 'software developing', 'employee', 'software developing', '(+34)776 547 632', 'C/ Cuevas de Ambrosio, 44');
INSERT INTO public.employee VALUES (5, 'Jose Antonio Lozano', 'jose.loza@newvision.com', 'software developing', 'employee', 'software developing', '(+34)747 520 885', 'Socampo, 80');
INSERT INTO public.employee VALUES (6, 'Ana Pereiro', 'ana.pereiro@newvision.com', 'digital marketing', 'employee', 'marketing', '(+34)686 514 640', 'Atamaria, 13');
INSERT INTO public.employee VALUES (7, 'David Vizcaino', 'david.vizca@newvision.com', 'programming', 'employee', 'software developing', '(+34)617 291 460', 'Estrela, 67');
INSERT INTO public.employee VALUES (8, 'Lucia De La Fuente', 'lucia.dlf@newvision.com', 'secretary', 'employee', 'administration', '(+34)775 842 454', 'Cruce Casa de Postas, 23');
INSERT INTO public.employee VALUES (10, 'Bernardino Garrido', 'bernar.garrido@newvision.com', 'software developing', 'employee', 'software developing', '(+34)730 871 901', 'Campillo, 91');
INSERT INTO public.employee VALUES (11, 'Charo Martinez', 'charo.martin@newvision.com', 'digital marketing', 'employee', 'marketing', '(+34)790 558 583', 'Inglaterra, 82');
INSERT INTO public.employee VALUES (12, 'Eulogio Veiga', 'eulogio.veiga@newvision.com', 'programming', 'employee', 'software developing', '(+34)779 100 623', 'C/ Cañada del Rosal, 81');
INSERT INTO public.employee VALUES (13, 'Gabino Perez', 'gabino.perez@newvision.com', 'software developing', 'employee', 'software developing', '(+34)749 857 384', 'Avenida Cervantes, 94');
INSERT INTO public.employee VALUES (14, 'Vanessa Rois', 'vane.rois@newvision.com', 'programming', 'employee', 'software developing', '(+34)770 068 922', 'Rúa Olmos, 44');
INSERT INTO public.employee VALUES (15, 'Iñigo Montoya', 'imontoya@newvision.com', 'digital marketing', 'Programmer', 'human resources', '(+34)602 254 980', 'Avda. Los llanos, 27');
INSERT INTO public.employee VALUES (18, 'Aitor Perez', 'aperez@newvision.com', 'software developing', 'Digital Marketer', 'management', '(+34)649 154 793', 'C/ Los Herrán, 66');
INSERT INTO public.employee VALUES (24, 'Ramon', '123@newvision.com', 'programador', 'porgramar', 'programacion', '98111111', 'calle programador');


--
-- TOC entry 3050 (class 0 OID 189328)
-- Dependencies: 220
-- Data for Name: employee_project; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.employee_project VALUES (0, 3, 1, 100);
INSERT INTO public.employee_project VALUES (2, 1, 3, 100);
INSERT INTO public.employee_project VALUES (5, 4, 6, 100);
INSERT INTO public.employee_project VALUES (6, 3, 7, 100);
INSERT INTO public.employee_project VALUES (7, 1, 8, 100);
INSERT INTO public.employee_project VALUES (8, 4, 9, 50);
INSERT INTO public.employee_project VALUES (9, 3, 10, 100);
INSERT INTO public.employee_project VALUES (11, 4, 12, 100);
INSERT INTO public.employee_project VALUES (13, 4, 14, 100);
INSERT INTO public.employee_project VALUES (8, 3, 19, 50);
INSERT INTO public.employee_project VALUES (18, 1, 45, 75);


--
-- TOC entry 3047 (class 0 OID 189272)
-- Dependencies: 217
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.project VALUES (3, 'Mountain Project', 'Developing an app for the Saint James Way', '2021-10-10', '2022-02-16');
INSERT INTO public.project VALUES (1, 'Trial project', 'Project for trials and other things', '2021-09-22', '2022-02-14');
INSERT INTO public.project VALUES (4, 'Gamma Project', 'Software investigation', '2021-12-06', '2022-11-16');


--
-- TOC entry 3027 (class 0 OID 189048)
-- Dependencies: 197
-- Data for Name: ti18n; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3029 (class 0 OID 189056)
-- Dependencies: 199
-- Data for Name: ti18n_value; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3031 (class 0 OID 189067)
-- Dependencies: 201
-- Data for Name: trequest_statistics; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3033 (class 0 OID 189081)
-- Dependencies: 203
-- Data for Name: trole; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3036 (class 0 OID 189097)
-- Dependencies: 206
-- Data for Name: trole_server_permission; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3038 (class 0 OID 189112)
-- Dependencies: 208
-- Data for Name: tserver_permission; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3041 (class 0 OID 189131)
-- Dependencies: 211
-- Data for Name: tsetting; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3034 (class 0 OID 189090)
-- Dependencies: 204
-- Data for Name: tuser; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tuser VALUES ('demo', 'demouser', 'demo', 'demo', NULL, '44460713B', NULL, NULL, NULL);


--
-- TOC entry 3039 (class 0 OID 189121)
-- Dependencies: 209
-- Data for Name: tuser_preference; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3043 (class 0 OID 189142)
-- Dependencies: 213
-- Data for Name: tuser_role; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3072 (class 0 OID 0)
-- Dependencies: 214
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 28, true);


--
-- TOC entry 3073 (class 0 OID 0)
-- Dependencies: 218
-- Name: empleado_proyecto_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.empleado_proyecto_id_empleado_seq', 12, true);


--
-- TOC entry 3074 (class 0 OID 0)
-- Dependencies: 219
-- Name: empleado_proyecto_id_proyecto_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.empleado_proyecto_id_proyecto_seq', 1, false);


--
-- TOC entry 3075 (class 0 OID 0)
-- Dependencies: 221
-- Name: employee_project_ep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.employee_project_ep_id_seq', 53, true);


--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 216
-- Name: proyecto_id_proyecto_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.proyecto_id_proyecto_seq', 11, true);


--
-- TOC entry 3077 (class 0 OID 0)
-- Dependencies: 196
-- Name: ti18n_id_18n_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ti18n_id_18n_seq', 1, false);


--
-- TOC entry 3078 (class 0 OID 0)
-- Dependencies: 198
-- Name: ti18n_value_id_18n_value_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ti18n_value_id_18n_value_seq', 1, false);


--
-- TOC entry 3079 (class 0 OID 0)
-- Dependencies: 200
-- Name: trequest_statistics_id_request_statistics_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.trequest_statistics_id_request_statistics_seq', 1, false);


--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 202
-- Name: trole_id_rolename_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.trole_id_rolename_seq', 1, false);


--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 205
-- Name: trole_server_permission_id_role_server_permission_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.trole_server_permission_id_role_server_permission_seq', 1, false);


--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 207
-- Name: tserver_permission_id_server_permission_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tserver_permission_id_server_permission_seq', 1, false);


--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 210
-- Name: tsetting_id_setting_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tsetting_id_setting_seq', 1, false);


--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 212
-- Name: tuser_role_id_user_role_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tuser_role_id_user_role_seq', 1, false);


--
-- TOC entry 2896 (class 2606 OID 189179)
-- Name: employee empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 2900 (class 2606 OID 189474)
-- Name: employee_project ep_id; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee_project
    ADD CONSTRAINT ep_id PRIMARY KEY (ep_id);


--
-- TOC entry 2898 (class 2606 OID 189277)
-- Name: project proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT proyecto_pkey PRIMARY KEY (project_id);


--
-- TOC entry 2876 (class 2606 OID 189053)
-- Name: ti18n ti18n_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n
    ADD CONSTRAINT ti18n_pkey PRIMARY KEY (id_18n);


--
-- TOC entry 2878 (class 2606 OID 189064)
-- Name: ti18n_value ti18n_value_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n_value
    ADD CONSTRAINT ti18n_value_pkey PRIMARY KEY (id_18n_value);


--
-- TOC entry 2880 (class 2606 OID 189075)
-- Name: trequest_statistics trequest_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trequest_statistics
    ADD CONSTRAINT trequest_statistics_pkey PRIMARY KEY (id_request_statistics);


--
-- TOC entry 2882 (class 2606 OID 189089)
-- Name: trole trole_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole
    ADD CONSTRAINT trole_pkey PRIMARY KEY (id_rolename);


--
-- TOC entry 2886 (class 2606 OID 189102)
-- Name: trole_server_permission trole_server_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT trole_server_permission_pkey PRIMARY KEY (id_role_server_permission);


--
-- TOC entry 2888 (class 2606 OID 189120)
-- Name: tserver_permission tserver_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tserver_permission
    ADD CONSTRAINT tserver_permission_pkey PRIMARY KEY (id_server_permission);


--
-- TOC entry 2892 (class 2606 OID 189139)
-- Name: tsetting tsetting_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tsetting
    ADD CONSTRAINT tsetting_pkey PRIMARY KEY (id_setting);


--
-- TOC entry 2884 (class 2606 OID 189094)
-- Name: tuser tuser_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser
    ADD CONSTRAINT tuser_pkey PRIMARY KEY (user_);


--
-- TOC entry 2890 (class 2606 OID 189128)
-- Name: tuser_preference tuser_preference_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_preference
    ADD CONSTRAINT tuser_preference_pkey PRIMARY KEY (id_user_preference);


--
-- TOC entry 2894 (class 2606 OID 189150)
-- Name: tuser_role tuser_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_role
    ADD CONSTRAINT tuser_role_pkey PRIMARY KEY (id_user_role);


--
-- TOC entry 2901 (class 2606 OID 189333)
-- Name: employee_project fk_empro; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee_project
    ADD CONSTRAINT fk_empro FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);


--
-- TOC entry 2902 (class 2606 OID 189338)
-- Name: employee_project fk_proemp; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee_project
    ADD CONSTRAINT fk_proemp FOREIGN KEY (project_id) REFERENCES public.project(project_id);


-- Completed on 2023-02-03 08:24:42

--
-- PostgreSQL database dump complete
--

