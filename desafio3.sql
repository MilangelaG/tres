--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7
-- Dumped by pg_dump version 14.7

-- Started on 2023-05-17 18:39:03

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

DROP DATABASE "desafio3-Milangela-Grimaldo-123";
--
-- TOC entry 3327 (class 1262 OID 16425)
-- Name: desafio3-Milangela-Grimaldo-123; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "desafio3-Milangela-Grimaldo-123" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';


ALTER DATABASE "desafio3-Milangela-Grimaldo-123" OWNER TO postgres;

\connect -reuse-previous=on "dbname='desafio3-Milangela-Grimaldo-123'"

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

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 16441)
-- Name: comentarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentarios (
    id integer NOT NULL,
    contenido character varying,
    fecha_creacion date,
    usuario_id bigint,
    post_id bigint
);


ALTER TABLE public.comentarios OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16440)
-- Name: comentarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comentarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comentarios_id_seq OWNER TO postgres;

--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 213
-- Name: comentarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentarios_id_seq OWNED BY public.comentarios.id;


--
-- TOC entry 212 (class 1259 OID 16434)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    titulo character varying,
    contenido text,
    fecha_creacion date,
    fecha_actualizacion date,
    destacado boolean,
    usuario_id bigint
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16433)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 211
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- TOC entry 210 (class 1259 OID 16427)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    email character varying,
    nombre character varying,
    apellido character varying,
    rol character varying
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16426)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 3330 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 3176 (class 2604 OID 16444)
-- Name: comentarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentarios ALTER COLUMN id SET DEFAULT nextval('public.comentarios_id_seq'::regclass);


--
-- TOC entry 3175 (class 2604 OID 16437)
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- TOC entry 3174 (class 2604 OID 16430)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 3321 (class 0 OID 16441)
-- Dependencies: 214
-- Data for Name: comentarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (1, 'comentario 1', '2023-05-01', 1, 1);
INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (2, 'comentario 2', '2023-05-02', 2, 1);
INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (3, 'comentario 3', '2023-05-03', 3, 1);
INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (4, 'comentario 4', '2023-05-04', 1, 2);
INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (5, 'comentario 5', '2023-05-05', 2, 2);


--
-- TOC entry 3319 (class 0 OID 16434)
-- Dependencies: 212
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (1, 'analisis', 'ingresos', '2022-01-01', '2023-01-01', true, 1);
INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (2, 'analisis2', 'egresos', '2022-02-01', '2023-02-01', true, 1);
INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (3, 'resultados', 'inventario', '2022-03-01', '2023-03-01', true, 3);
INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (4, 'resultados2', 'por pagar', '2022-04-01', '2023-04-01', false, 3);
INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (5, 'ensayo', 'por cobrar', '2022-05-01', '2023-05-01', false, NULL);


--
-- TOC entry 3317 (class 0 OID 16427)
-- Dependencies: 210
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (1, 'german@gmail.com', 'german', 'caceres', 'administrador');
INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (2, 'oscar@gmail.com', 'oscar', 'bohorquez', 'usuario');
INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (3, 'julio@gmail.com', 'julio', 'osorio', 'usuario');
INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (4, 'zulay@gmail.com', 'zulay', 'gomez', 'usuario');
INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (5, 'alicia@gmail.com', 'alicia', 'perez', 'usuario');


--
-- TOC entry 3331 (class 0 OID 0)
-- Dependencies: 213
-- Name: comentarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentarios_id_seq', 5, true);


--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 211
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 5, true);


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 5, true);


-- Completed on 2023-05-17 18:39:04

--
-- PostgreSQL database dump complete
--

/* 2. Cruza los datos de la tabla usuarios y posts mostrando las siguientes columnas.
nombre e email del usuario junto al título y contenido del post. */ 

SELECT nombre, email, titulo, contenido FROM usuarios u
JOIN posts p
ON u.id = p.usuario_id; 

/* 3. Muestra el id, título y contenido de los posts de los administradores. El
administrador puede ser cualquier id y debe ser seleccionado dinámicamente */

SELECT p.id, titulo, contenido FROM posts p
JOIN usuarios u
ON u.id = p.usuario_id
where rol = 'administrador';

/* 4. Cuenta la cantidad de posts de cada usuario. La tabla resultante debe mostrar el id
e email del usuario junto con la cantidad de posts de cada usuario. */

SELECT u.id, email, count(p.id) as cantidad FROM usuarios u
LEFT JOIN posts p
ON u.id = p.usuario_id
GROUP BY u.id, u.email;

/* 5. Muestra el email del usuario que ha creado más posts. Aquí la tabla resultante tiene
un único registro y muestra solo el email. */

SELECT email FROM usuarios u
JOIN posts p 
ON u.id = p.usuario_id
GROUP BY u.id, u.email;

/* 6. Muestra la fecha del último post de cada usuario */

-- Consulta de todos los posts 

SELECT p.id, p.contenido, p.fecha_creacion, u.nombre FROM usuarios u
JOIN posts p
ON u.id = p.usuario_id; 

-- Post mas recientes 

SELECT nombre, MAX(fecha_creacion) FROM (SELECT p.id, p.contenido, p.fecha_creacion, u.nombre FROM usuarios u
JOIN posts p
ON u.id = p.usuario_id ) AS t
GROUP BY t.nombre;

/* 7. Muestra el título y contenido del post (artículo) con más comentarios. */

-- Post con mas comentarios 
SELECT post_id, COUNT (post_id) AS cantidad FROM comentarios
GROUP BY post_id ORDER BY cantidad desc limit 1;

--Titulo y contenido del post con mas comentarios 
SELECT titulo, contenido FROM posts p 
JOIN (SELECT post_id, COUNT (post_id) AS cantidad FROM comentarios
GROUP BY post_id ORDER BY cantidad desc limit 1) AS t
ON t.post_id = p.id;

/* 8. Muestra en una tabla el título de cada post, el contenido de cada post y el contenido
de cada comentario asociado a los posts mostrados, junto con el email del usuario
que lo escribió. */

-- Titulo y contenido de los post mostrando el contenido de los comentarios 
SELECT p.titulo AS titulo_post, p.contenido AS contenido_post, c.contenido AS contenido_comentario FROM posts p
JOIN comentarios c 
ON p.id = c.post_id; 

--Incluyendo la tabla a usuarios 
SELECT p.titulo AS titulo_post, p.contenido AS contenido_post, c.contenido AS contenido_comentario, u.email FROM posts p
JOIN comentarios c 
ON p.id = c.post_id
JOIN usuarios u
ON c.usuario_id = u.id;

/* 9. Muestra el contenido del último comentario de cada usuario */

--Comentarios por usuarios 
SELECT fecha_creacion, contenido, usuario_id FROM comentarios c 
JOIN usuarios u
ON c.usuario_id = u.id;

--Comentario mas reciente de cada usuario 
SELECT fecha_creacion, contenido, usuario_id FROM comentarios c 
JOIN usuarios u
ON c.usuario_id = u.id where fecha_creacion = (SELECT MAX(fecha_creacion) FROM comentarios where usuario_id = u.id);

/* 10. Muestra los emails de los usuarios que no han escrito ningún comentario. */

SELECT u.email FROM usuarios u 
LEFT JOIN comentarios c
ON u.id = c.usuario_id
GROUP BY u.email HAVING COUNT(c.id) = 0; */
