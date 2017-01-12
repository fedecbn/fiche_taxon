--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.2
-- Dumped by pg_dump version 9.2.2
-- Started on 2017-01-10 17:06:58

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

---DROP DATABASE aesn;
--
-- TOC entry 1926 (class 1262 OID 263498)
-- Name: aesn; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE aesn WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';


ALTER DATABASE aesn OWNER TO postgres;

--\connect aesn

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 1927 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 170 (class 3079 OID 11727)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1929 (class 0 OID 0)
-- Dependencies: 170
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 168 (class 1259 OID 263499)
-- Name: aesn_flore_totale_rattache_v7_photo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE aesn_flore_totale_rattache_v7_photo (
    cd_ref_v7 text,
    nom_valide_v7 text,
    lb_nom_ref_v7 text,
    lb_nom_ref_v7_italic text,
    lb_auteur_ref_v7 text,
    lr_cd_nom integer,
    nom_scientifique character varying(100),
    famille character varying(100),
    nom_francais character varying(100),
    synonyme character varying(100),
    statut_fiche character varying(100),
    pn_pr character varying(100),
    lr_national character varying(100),
    indigenat character varying(100),
    landolt integer,
    arrete_zh boolean,
    carte boolean,
    description character varying(10000),
    confusion character varying(10000),
    carac_bio character varying(10000),
    carac_eco character varying(10000),
    vegetations character varying(10000),
    repartition character varying(10000),
    sociabilite character varying(10000),
    floraison_cd_nom integer,
    janvier boolean,
    fevrier boolean,
    mars boolean,
    avril boolean,
    mai boolean,
    juin boolean,
    juillet boolean,
    aout boolean,
    septembre boolean,
    octobre boolean,
    novembre boolean,
    decembre boolean,
    "Relecture_cd_nom" integer,
    "CBNBP" boolean,
    "CBN_Bailleuil" boolean,
    "CBN_Brest" boolean,
    "Photo_cd_nom" integer,
    "Entier" boolean,
    "Detail" boolean,
    credit_photo character varying(100),
    "Presence_cd_nom" integer,
    _5 boolean,
    _7 boolean,
    _8 boolean,
    _1 boolean,
    _2 boolean,
    _3 boolean,
    _4 boolean,
    _51 boolean,
    _81 boolean,
    _0 boolean,
    _11 boolean,
    _21 boolean,
    _82 boolean,
    _83 boolean,
    _6 boolean,
    _71 boolean,
    _12 boolean,
    _52 boolean,
    _13 boolean,
    _84 boolean,
    _14 boolean,
    _9 boolean,
    _53 boolean,
    _22 boolean,
    _01 boolean,
    _02 boolean,
    _72 boolean,
    _61 boolean,
    _41 boolean,
    _03 boolean,
    _15 boolean,
    _54 boolean,
    _31 boolean,
    chemin_carte text,
    chemin_photo text,
    fichier_photo boolean,
    pn_pr_long text,
    id integer NOT NULL
);


ALTER TABLE public.aesn_flore_totale_rattache_v7_photo OWNER TO postgres;

--
-- TOC entry 169 (class 1259 OID 263505)
-- Name: aesn_flore_totale_rattache_v7_photo_2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE aesn_flore_totale_rattache_v7_photo_2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aesn_flore_totale_rattache_v7_photo_2_id_seq OWNER TO postgres;

--
-- TOC entry 1930 (class 0 OID 0)
-- Dependencies: 169
-- Name: aesn_flore_totale_rattache_v7_photo_2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE aesn_flore_totale_rattache_v7_photo_2_id_seq OWNED BY aesn_flore_totale_rattache_v7_photo.id;


--
-- TOC entry 1917 (class 2604 OID 263507)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY aesn_flore_totale_rattache_v7_photo ALTER COLUMN id SET DEFAULT nextval('aesn_flore_totale_rattache_v7_photo_2_id_seq'::regclass);


--
-- TOC entry 1920 (class 0 OID 263499)
-- Dependencies: 168
-- Data for Name: aesn_flore_totale_rattache_v7_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO aesn_flore_totale_rattache_v7_photo (cd_ref_v7, nom_valide_v7, lb_nom_ref_v7, lb_nom_ref_v7_italic, lb_auteur_ref_v7, lr_cd_nom, nom_scientifique, famille, nom_francais, synonyme, statut_fiche, pn_pr, lr_national, indigenat, landolt, arrete_zh, carte, description, confusion, carac_bio, carac_eco, vegetations, repartition, sociabilite, floraison_cd_nom, janvier, fevrier, mars, avril, mai, juin, juillet, aout, septembre, octobre, novembre, decembre, "Relecture_cd_nom", "CBNBP", "CBN_Bailleuil", "CBN_Brest", "Photo_cd_nom", "Entier", "Detail", credit_photo, "Presence_cd_nom", _5, _7, _8, _1, _2, _3, _4, _51, _81, _0, _11, _21, _82, _83, _6, _71, _12, _52, _13, _84, _14, _9, _53, _22, _01, _02, _72, _61, _41, _03, _15, _54, _31, chemin_carte, chemin_photo, fichier_photo, pn_pr_long, id) VALUES ('106044', 'Limonium auriculiursifolium (Pourr.) Druce, 1928', 'Limonium auriculiursifolium', '<i>Limonium auriculiursifolium</i>', '(Pourr.) Druce, 1928', 106044, 'Limonium auriculiursifolium (Pourr.) Druce, 1928', 'Plumbaginaceae', 'Statice à feuilles de Lychnis', '<i>Limonium lychnidifolium</i> (Gir.) Kuntze', 'Validé', 'P-L', 'NE', 'Indigène', 4, true, false, 'Plante vivace, acaule, glabre, à rhizome vertical. Feuilles toutes en rosette basale, à limbe atténué en pétiole, obovale, entier, mucroné, à 3-5 nervures faibles, parallèles, sans ramifications latérales visibles. Fleurs nombreuses, lilacées, de 4-5 mm de diamètre, réunies en petites cymes rassemblées en panicule allongée ou en corymbe dense ; fleurs toutes accompagnées d’un jeu complexe de bractées et bractéoles ; calice persistant, membraneux, en entonnoir, à 5 sépales soudés, obtus ; corolle à 5 pétales à peine soudés ; ovaire supère. Fruit : capsule.', 'Confusion possible avec les autres statices et particulièrement avec le Statice occidental, qui présente des feuilles plus étroites ( 5-12 mm) et à 1-3 nervures longitudinales.', 'Hémicryptophyte.', 'Halophile des vases sableuses et hauts schorres sableux.', 'Espèce présente dans les prés salés des <i>Glauco maritimae - Puccinellietalia maritimae</i>.', 'Espèce ouest-méditerranéene-atlantique littorale, présente sur les côtes françaises de la Manche centrale aux Baléares en passant par toute la péninsule Ibérique. Dans le bassin Seine-Normandie, le Statice à feuilles de Lychnis est présent dans les havres de la côte ouest de la Manche.', 'Plante naturellement rare, qui peut subir différenttes menaces, le plus souvent lées aux aménagement cotiers et à la pollution.', 106044, false, false, false, false, false, false, true, true, true, false, false, false, 106044, false, false, false, 106044, false, false, 'CBNBP', 106044, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, 'F:/projet_jaspersoft/cartes/aesn_taxon_106044.PNG', 'F:/projet_jaspersoft/photos/106044.jpg', true, 'Pays-de-Loire', 307);
INSERT INTO aesn_flore_totale_rattache_v7_photo (cd_ref_v7, nom_valide_v7, lb_nom_ref_v7, lb_nom_ref_v7_italic, lb_auteur_ref_v7, lr_cd_nom, nom_scientifique, famille, nom_francais, synonyme, statut_fiche, pn_pr, lr_national, indigenat, landolt, arrete_zh, carte, description, confusion, carac_bio, carac_eco, vegetations, repartition, sociabilite, floraison_cd_nom, janvier, fevrier, mars, avril, mai, juin, juillet, aout, septembre, octobre, novembre, decembre, "Relecture_cd_nom", "CBNBP", "CBN_Bailleuil", "CBN_Brest", "Photo_cd_nom", "Entier", "Detail", credit_photo, "Presence_cd_nom", _5, _7, _8, _1, _2, _3, _4, _51, _81, _0, _11, _21, _82, _83, _6, _71, _12, _52, _13, _84, _14, _9, _53, _22, _01, _02, _72, _61, _41, _03, _15, _54, _31, chemin_carte, chemin_photo, fichier_photo, pn_pr_long, id) VALUES ('82286', 'Anacamptis palustris (Jacq.) R.M.Bateman, Pridgeon & M.W.Chase, 1997', 'Anacamptis palustris', '<i>Anacamptis palustris</i>', '(Jacq.) R.M.Bateman, Pridgeon & M.W.Chase, 1997', 82286, 'Anacamptis palustris (Jacq.) Bateman, Pridgeon & Chase', 'Orchidaceae', 'Orchis des marais', '<i>Orchis palustris</i> Jacq.', 'Validé', 'C-A,H-N,IdF,Pi', 'VU', 'Indigène', 4, true, false, 'Plante vivace à tige cannelée, teintée de rouge foncé vers le sommet. Feuilles vertes, non maculées, 3-5 réparties le long de la tige, dressées, linéaires-lancéolées, carénées, aiguës. Bractées plus longues à aussi longues que l''ovaire, foliacées, lavées de rouge. Inflorescence en épi moins lâche ; fleurs grandes, orientées de biais et faiblement écartées de la tige, roses à pourpre pâle ; sépale dorsal incliné vers l''avant, connivent avec les pétales ; labelle trilobé, arrondi, presque plan à lobes latéraux bilobés, plus étalés et relevés ; partie centrale non coudée, de couleur peu contrastée, rose à pourpre clair, la base plus pâle, ponctuée de petits traits ou de petites taches pourpre violacée ; éperon horizontal à ascendant, à sommet arrondi. Fruit : une capsule.', 'Cette espèce était considérée autrefois comme une espèce collective intégrant <i>Anacamptis laxiflora</i>. Elle s''en distingue principalement par les lobes latéraux de son labelle plus étalés et relevés et son lobe médian ponctué et bien distinct.', 'Géophyte à tubercules.', 'Espèce héliophile des sols oligotrophes, sur substrats alcalins et humides.', 'L''espèce est présente dans les bas-marais alcalins et prairies humides sur substrats riches en bases liées principalement à l''<i>Hydrocotylo vulgaris - Schoenion nigricantis</i>, au <i>Molinion caerulae</i>, à l''<i>Oenanthion fistulosae</i> et au <i>Caricion davallianae</i>.', 'Espèce euroméditerranéenne. En France, elle est présente sur une grande partie du territoire, mais rarement abondante. Sa présence est extrêmement rare dans le bassin Seine-Normandie. On la touve de manière très ponctuelle dans la vallée de la Marne, la Bassée ou il ne subsiste qu''un seul individu (Seine-et-Marne), la Champagne humide, le littoral du Calvados et l''estuaire de la Seine (Eure). Elle a disparu de l''Aube, la Cote d''Or et l''Aisne.', 'Les stations présentent souvent peu d''individus. L''Orchis des marais a subi une régression importante dans le bassin Seine-Normandie. Le retournement des prairies humides, le drainage ou encore l''exploitation de gravières ont très fortement impacté cette espèce, jusqu''à la faire pratiquement disparaître de certains territoires.', 82286, false, false, false, false, true, true, true, false, false, false, false, false, 82286, true, false, true, 82286, false, true, 'S. FILOCHE', 82286, false, true, false, false, false, false, false, false, false, true, true, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, 'F:/projet_jaspersoft/cartes/aesn_taxon_82286.PNG', 'F:/projet_jaspersoft/photos/82286.jpg', true, 'Champagne-Ardenne, Haute-Normandie, Île-de-France, Picardie', 28);
INSERT INTO aesn_flore_totale_rattache_v7_photo (cd_ref_v7, nom_valide_v7, lb_nom_ref_v7, lb_nom_ref_v7_italic, lb_auteur_ref_v7, lr_cd_nom, nom_scientifique, famille, nom_francais, synonyme, statut_fiche, pn_pr, lr_national, indigenat, landolt, arrete_zh, carte, description, confusion, carac_bio, carac_eco, vegetations, repartition, sociabilite, floraison_cd_nom, janvier, fevrier, mars, avril, mai, juin, juillet, aout, septembre, octobre, novembre, decembre, "Relecture_cd_nom", "CBNBP", "CBN_Bailleuil", "CBN_Brest", "Photo_cd_nom", "Entier", "Detail", credit_photo, "Presence_cd_nom", _5, _7, _8, _1, _2, _3, _4, _51, _81, _0, _11, _21, _82, _83, _6, _71, _12, _52, _13, _84, _14, _9, _53, _22, _01, _02, _72, _61, _41, _03, _15, _54, _31, chemin_carte, chemin_photo, fichier_photo, pn_pr_long, id) VALUES ('79766', 'Acer negundo L., 1753', 'Acer negundo', '<i>Acer negundo</i>', 'L., 1753', 79766, 'Acer negundo L., 1753', 'Sapindaceae', 'Erable negundo', NULL, 'Validé', NULL, 'NA', 'Naturalisé', 3, false, false, 'Arbre pouvant atteindre 15 à 25 m de hauteur. Ecorce du tronc gris pâle ou brun clair, profondément fendue en larges côtes, et écailleuse. Feuilles opposées, composées, imparipennées de 3 à 7 folioles ovales irrégulièrement dentées. Fleurs vert jaunâtre ; fleurs mâles groupées par 4 en général, les femelles en racèmes fins et pendants, portant 15-50 fleurs ; pas de pétales ni de disque nectarifère ; 4-6 étamines pourprées ; ovaire glabre. Fruit : doubles samares de 2,5-4 cm, à ailes à angle aigu ; jaunes brunâtres, restant sur l’arbre en hiver.', 'Risque de confusion possible avec le frêne commun (<i>Fraxinus excelsior</i>) qui se distingue par ses feuilles composées de 7 à 13 folioles, ses samares simples et ses bourgeons terminaux bruns-noirs.', 'Phanérophyte.', 'Espèce héliophile, mésohygrophile, eutrophile : boisements humides. On la trouve aussi parfois en situation plus anthropiques le long des voies ferrées et des bords de routes, autour des gravières, en milieux périurbainss...
. ', 'L''espèce s''observe surtout dans les forêts à bois tendres, comme les saulaies riveraines du <i>Salicion albae</i> et dans les fourrés riverains mésohygrophiles du <i>Salicion triandrae</i>.', 'Espèce originaire d''Amérique du Nord présente en France dans les réseaux hydrographiques du Rhône, du Sud-Ouest, de la Loire et du Rhin. Dans le bassin Seine-Normandie, l''érable negundo est naturalisé sur une grande partie du cours de la Seine, notamment dans l''Est du territoire : vallées de l''Yonne, de la Seine, de l''Aube, de la Marne, de l''Aisne et du Loing. 
En Île-de-France, l''espèce est particulièrement bien représentée, notamment en petite couronne parisienne, où elle se rencontre essentiellement dans des habitats secondaires, comme des friches', 'L''érable negundo a été importé pour l’ornement en Europe avec un certain nombre d''autres espèces au cours du XVIIème siècle. Il se rencontre en contexte de ripisylve, où il a parfois été planté et peut remplacer les espèces arborescentes indigènes. Son implantation est d’autant plus problématique lorsqu’elle concerne des habitats comme les boisements alluviaux des grandes vallées, où l’espèce tend à concurrencer et à remplacer les saulaies (notamment les saulaies arborescentes à Saule blanc (habitat d’intérêt communautaire).', 79766, false, false, true, true, false, false, false, false, false, false, false, false, 79766, true, true, true, 79766, false, false, 'M. LANGIAUX', 79766, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, 'F:/projet_jaspersoft/cartes/aesn_taxon_79766.PNG', 'F:/projet_jaspersoft/photos/79766.jpg', true, NULL, 1);
INSERT INTO aesn_flore_totale_rattache_v7_photo (cd_ref_v7, nom_valide_v7, lb_nom_ref_v7, lb_nom_ref_v7_italic, lb_auteur_ref_v7, lr_cd_nom, nom_scientifique, famille, nom_francais, synonyme, statut_fiche, pn_pr, lr_national, indigenat, landolt, arrete_zh, carte, description, confusion, carac_bio, carac_eco, vegetations, repartition, sociabilite, floraison_cd_nom, janvier, fevrier, mars, avril, mai, juin, juillet, aout, septembre, octobre, novembre, decembre, "Relecture_cd_nom", "CBNBP", "CBN_Bailleuil", "CBN_Brest", "Photo_cd_nom", "Entier", "Detail", credit_photo, "Presence_cd_nom", _5, _7, _8, _1, _2, _3, _4, _51, _81, _0, _11, _21, _82, _83, _6, _71, _12, _52, _13, _84, _14, _9, _53, _22, _01, _02, _72, _61, _41, _03, _15, _54, _31, chemin_carte, chemin_photo, fichier_photo, pn_pr_long, id) VALUES ('82656', 'Anemone ranunculoides L., 1753', 'Anemone ranunculoides', '<i>Anemone ranunculoides</i>', 'L., 1753', 82656, 'Anemone ranunculoides L.', 'Ranunculaceae', 'Anémone fausse-renoncule', NULL, 'Validé', 'H-N,IdF', 'NE', 'Indigène', 4, false, false, 'Plante vivace de 10-30 cm de haut, à rhizome rampant et cassant. Tiges grêles, glabrescentes. Une seule feuille (rarement deux) naissant sur le rhizome assez loin de la hampe florale. Pétiole glabre, plus court que la hampe florale. Feuilles palmatiséquées, découpées jusqu''à la base en 3-5 segments longuement aigus et courtement pétiolulés ; les 3 folioles de l''involucre semblables aux feuilles, et courtement pétiolées. Fleurs solitaires, ou réunies par 2-3 en ombelle ; 5-8 tépales ovales-lancéolés, d''un jaune d''or vif, poilus à l’extérieur ; étamines nombreuses, carpelles nombreux, en tête globuleuse. Fruit : un polyakène, à carpelles pubescents, à bec glabre assez court, presque de même longueur que l''akène.', 'La couleur et la forme des fleurs de cette anémone la distinguent des autres espèces. Cependant, certaines confusions sont possibles, à l''état végétatif, avec l''Anémone des bois (<i>Anemone nemorosa</i> L.), mais l''examen des pétiolules des folioles lève toute ambiguïté.', 'Géophyte à rhizome.', 'Espèce d''ombre ou de demi-ombre, des sols basiques ou parfois très légèrement acides, riches en éléments nutritifs, limoneux ou argileux, assez frais ou humides : majoritairement en forêts ripicoles, exceptionnellement en prairies humides.', 'Espèce typiquement présente dans les chênaies-frênaies fraîches de fond de vallon du <i>Fraxino excelsioris - Quercion roboris</i>, sur les banquettes de petits ruisseaux intraforestiers aux sols profonds, frais et riches et dans des boisements alluviaux de l''<i>Alnion incanae</i> ou, plus rarement, dans les prairies des <i>Arrhenatheretalia elatioris</i>.', 'L’anémone fausse-renoncule est une espèce eurasiatique, présente du sud de la Scandinavie jusqu''à l''Oural, mais rare aussi bien dans le Nord que dans la région méditerranéenne (où elle devient alors montagnarde). En France, elle n’est jamais très fréquente, et inégalement répartie : plus fréquente dans les montagnes et sur les plateaux de l''Est et du Nord-Est, elle manque presque complètement dans le Nord-Ouest et en région méditerranéenne. Dans le bassin Seine-Normandie, elle est essentiellement présente en Champagne-Ardenne (en particulier en Haute-Marne), dans le sud de l’Yonne, la Brie et le Montois (Seine-et-Marne). On trouve des stations isolées, en particulier dans les forêts de Compiègne, d''Ermenonville et d''Halatte (Oise), de Saint-Gobain (Aisne) et ponctuellement en Brie picarde et dans l''Eure.', 'C’est une plante assez rare, mais pouvant former, quand elle est présente, des populations assez fournies. Ce sont surtout les populations marginales, isolées, qui sont menacées et/ou celles présentant un mauvais état général. Cette plante attrayante est parfois cultivée à des fins ornementales ; l''arrachage de pieds sauvages à des fins horticoles est une menace possible. Mais ce sont surtout les drainages, la pollution et les plantations de peupliers qui peuvent faire disparaître l''anémone fausse-renoncule.', 82656, false, false, true, true, true, false, false, false, false, false, false, false, 82656, true, true, true, 82656, true, false, 'S. FILOCHE', 82656, false, true, false, false, false, false, false, false, true, true, true, true, false, false, false, false, false, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, 'F:/projet_jaspersoft/cartes/aesn_taxon_82656.PNG', 'F:/projet_jaspersoft/photos/82656.jpg', true, 'Haute-Normandie, Île-de-France', 30);
INSERT INTO aesn_flore_totale_rattache_v7_photo (cd_ref_v7, nom_valide_v7, lb_nom_ref_v7, lb_nom_ref_v7_italic, lb_auteur_ref_v7, lr_cd_nom, nom_scientifique, famille, nom_francais, synonyme, statut_fiche, pn_pr, lr_national, indigenat, landolt, arrete_zh, carte, description, confusion, carac_bio, carac_eco, vegetations, repartition, sociabilite, floraison_cd_nom, janvier, fevrier, mars, avril, mai, juin, juillet, aout, septembre, octobre, novembre, decembre, "Relecture_cd_nom", "CBNBP", "CBN_Bailleuil", "CBN_Brest", "Photo_cd_nom", "Entier", "Detail", credit_photo, "Presence_cd_nom", _5, _7, _8, _1, _2, _3, _4, _51, _81, _0, _11, _21, _82, _83, _6, _71, _12, _52, _13, _84, _14, _9, _53, _22, _01, _02, _72, _61, _41, _03, _15, _54, _31, chemin_carte, chemin_photo, fichier_photo, pn_pr_long, id) VALUES ('96861', 'Eriophorum vaginatum L., 1753', 'Eriophorum vaginatum', '<i>Eriophorum vaginatum</i>', 'L., 1753', 96861, 'Eriophorum vaginatum L.', 'Cyperaceae', 'Linaigrette engainée, Linaigrette vaginée', NULL, 'Validé', 'B-N,Bo,Br,C-A,Ce,H-N,IdF,Pi', 'NE', 'Indigène', 4, true, false, 'Plante vivace de 20-50 cm de hauteur, densément cespiteuse, à rhizome très court. Tiges obscurément trigones, anguleuses au sommet, munies à la base de gaines renflées (feuilles réduites). Feuilles basales nombreuses, étroites, à 3 angles, rudes sur les bords, raides, les caulinaires réduites à la gaine renflée. Inflorescence à un seul épi terminal, dressé, ovoïde, à bractées peu nombreuses et courtes. Inflorescence en ombelle, munie à sa base de 2-3 bractées foliacées brièvement engainantes ; écailles gris foncé ou noirâtres, à marge membraneuse-hyaline. Fruits : akènes ovoïdes, à 3 angles presque arrondis, munis d''une pointe courte, entourés de nombreuses soies blanches, longues de 2-3 cm, et donnant à l''infrutescence un aspect cotonneux et soyeux.', 'La Linaigrette vaginée se rencontre parfois en compagnie d''autres espèces de linaigrettes. Elle se différencie par ses épis simples, terminaux, et dressés.', 'Hémicryptophyte cespiteux.', 'Espèce vivace, des tourbières bombées en activité ou en voie d''assèchement, parfois dans des landes et prairies tourbeuses, sur sols acides.', 'Espèce essentiellement présente dans les groupements de tourbières actives de l''<i>Oxycocco palustris - Ericion tetralicis</i> mais aussi dans certaines prairies paratourbeuses du <i>Juncion acutiflori</i>, présentant de fortes accumulations de tourbe, exploitées extensivement ou en cours d''abandon.', 'Espèce circumboréale présente dans le nord et le centre de l''Europe, ainsi qu''en Russie et en Sibérie. En France, la Linaigrette engainée est assez fréquente dans tous les massifs montagneux mais très rare en plaine. Dans le bassin Seine-Normandie, l''''espèce est extrêmement rare, sauf dans le Morvan, son principal noyau de populations. En dehors, elle se trouve dans quelques stations : hauteurs du massif armoricain (Basse-Normandie), pays de Bray, Laonnois, forêt de Sénart (Île-de-France) et Ardennes.', 'Rarement abondante et souvent dispersée au milieu d''autres linaigrettes, l''espèce est en très forte régression en plaine, avec des stations peu nombreuses et isolées. Les tourbières oligotrophes acides qui les abritent, sont partout menacées par le drainage, l''eutrophisation ou la colonisation par les ligneux.', 96861, false, false, false, true, true, true, false, false, false, false, false, false, 96861, true, false, false, 96861, true, false, 'F. PERRIAT', 96861, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, true, false, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, 'F:/projet_jaspersoft/cartes/aesn_taxon_96861.PNG', 'F:/projet_jaspersoft/photos/96861.jpg', true, 'Basse-Normandie, Bourgogne, Bretagne, Champagne-Ardenne, Centre-Val de Loire, Haute-Normandie, Île-de-France, Picardie', 203);


--
-- TOC entry 1931 (class 0 OID 0)
-- Dependencies: 169
-- Name: aesn_flore_totale_rattache_v7_photo_2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('aesn_flore_totale_rattache_v7_photo_2_id_seq', 568, true);


--
-- TOC entry 1919 (class 2606 OID 263517)
-- Name: id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY aesn_flore_totale_rattache_v7_photo
    ADD CONSTRAINT id_pk PRIMARY KEY (id);


--
-- TOC entry 1928 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-01-10 17:06:58

--
-- PostgreSQL database dump complete
--

