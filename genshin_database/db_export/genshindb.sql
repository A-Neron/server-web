-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: genshin_farming_002
-- ------------------------------------------------------
-- Server version	8.4.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `boss`
--

DROP TABLE IF EXISTS `boss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boss` (
  `id_boss` int NOT NULL AUTO_INCREMENT,
  `nom_boss` varchar(100) DEFAULT NULL,
  `nom_objet_boss` varchar(100) DEFAULT NULL,
  `image_objet_boss` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_boss`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boss`
--

LOCK TABLES `boss` WRITE;
/*!40000 ALTER TABLE `boss` DISABLE KEYS */;
INSERT INTO `boss` VALUES (1,'Hypostase électro','Prisme d\'éclair','prisme_d\'eclair.webp'),(2,'Hypostase anémo','Graine d\'ouragan','graine_d\'ouragan.webp'),(3,'Arbre congelé','Duramen de glace','duramen_de_glace.webp'),(4,'Hypostase Géo','Pilier de basalte','pilier_de_basalte.webp'),(5,'Océanide','Coeur d\'eau pure','coeur_d\'eau_pure.webp'),(6,'Arbre enflammé','Graine de feu','graine_de_feu.webp'),(7,'Géosaure antique','Jade juvénile','jade_juvenile.webp'),(8,'Hypostase cryo','Fleur crystalline','fleur_crystalline.webp'),(9,'Lame oni','Mécanisme oni','mecanisme_oni.webp'),(10,'Hypostase pyro','Perle brûlante','perle_brûlante.webp'),(11,'Matrice mécanique perpétuelle','Coeur perpétuel','coeur_perpetuel.webp'),(12,'Hypostase hydro','Rosée du rejet','rosee_du_rejet.webp'),(13,'Manifestation du tonnerre','Perles tempestives','perles_tempestives.webp'),(14,'Loup alpha doré','Régalia de faille','regalia_de_faille.webp'),(15,'Harde d\'Elementosaures abyssaux','Fausse nageoire de l\'héritier du dragon','fausse_nageoire_de_l\'heritier_du_dragon.webp'),(16,'Serpent des ruines','Croc runique','croc_runique.webp'),(17,'Arbre foudroyé','Fruit du tonnerre','fruit_du_tonnerre.webp'),(18,'Champieffroi panaché','Bec crochu majestueux','bec_crochu_majestueux.webp'),(19,'Dragon cataclysmique','Calibre perpetuel','calibre_perpetuel.webp'),(20,'Algorithme matriciaire','Tétraèdre de lumière','tetraedre_de_lumiere.webp'),(21,'Hypostase dendro','Liane d\'oblitération','liane_d\'obliteration.webp'),(22,'Wenut de setekh','Speudo-etamines','speudo-etamines.webp'),(23,'Lustrateur inique','Anneau de sombreur éternelle','anneau_de_sombreur_eternelle.webp'),(24,'Suite cryolienne:Coppelia','Engrenage artificié de rechange:Coppelia','engrenage_artificie_de_rechange_coppelia.webp'),(25,'Suite cryolienne:Coppelius','Engrenage artificié de rechange:Coppelius','engrenage_artificie_de_rechange_coppelius.webp'),(26,'Empereur du feu ferreux','Résolution de l\'Empereur','resolution_de_l\'empereur.webp'),(27,'Générateur de champ expérimental','Appareil tourbillon','appareil_tourbillon.webp'),(28,'Hippocampe perlé millénaire','Corne fontemarine','corne_fontemarine.webp'),(29,'Tulpa hydro','Eau non transcendé','eau_non_transcende.webp'),(30,'Suanni solitaire','Ecaille nuageuse','ecaille_nuageuse.webp'),(31,'Légat golem','Fragment d\'une mélodie dorée','fragment_d\'une_melodie_doree.webp'),(32,'Roi yumkasaure glouton de la montagne','Flamboigrenade surmûre','flamboigrenade_surmure.webp'),(33,'Tyran qucusaure de flamme dorée','Marque de bénédiction liante','marque_de_benediction_liante.webp'),(34,'Automate de source secrète','Noyau source','noyau_source.webp'),(35,'Papille obombrée','Regard enchevêtrant','regard_enchevetrant.webp'),(36,'Spiritiratrice excentrique isolée','Talisman d\'une terre mystérieuse','talisman_d\'une_terre_mysterieuse.webp');
/*!40000 ALTER TABLE `boss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boss_hebdo`
--

DROP TABLE IF EXISTS `boss_hebdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boss_hebdo` (
  `id_boss_hebdo` int NOT NULL AUTO_INCREMENT,
  `nom_objet_boss_hebdo` varchar(45) DEFAULT NULL,
  `nom_boss_hebdo` varchar(45) DEFAULT NULL,
  `image_objet_boss_hebdo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_boss_hebdo`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boss_hebdo`
--

LOCK TABLES `boss_hebdo` WRITE;
/*!40000 ALTER TABLE `boss_hebdo` DISABLE KEYS */;
INSERT INTO `boss_hebdo` VALUES (1,'Plume de Stormterror','Stormterror','plume_de_stormterror.webp'),(2,'Griffe de Stormterror','Stormterror','griffe_de_stormterror.webp'),(3,'Souffle de Stormterror','Stormterror','souffle_de_stormterror.webp'),(4,'Queue de Borée','Loup du Nord','queue_de_boree.webp'),(5,'Vertèbre de Borée','Loup du Nord','vertebre_de_boree.webp'),(6,'Esprit de Borée','Loup du Nord','esprit_de_boree.webp'),(7,'Corne de Monoceros','Tartaglia','corne_de_monoceros.webp'),(8,'Fragment du démon','Tartaglia','fragment_du_demon.webp'),(9,'Ombre du guerrier','Tartaglia','ombre_du_guerrier.webp'),(10,'Couronne du roi-dragon','Azhdaha','couronne_du_roi-dragon.webp'),(11,'Branche de jade cramoisi','Azhdaha','branche_de_jade_cramoisi.webp'),(12,'Ecaille dorée','Azhdaha','ecaille_doree.webp'),(13,'Moment en fusion','Signora','moment_en_fusion.webp'),(14,'Papillon infernal','Signora','papillon_infernal.webp'),(15,'Coeur de cendre','Signora','coeur_de_cendre.webp'),(16,'Mudra du général maléfique','Sentinelle de l\'étérnité','mudra_du_general_malefique.webp'),(17,'Larmes de la divinité calamiteuse','Sentinelle de l\'étérnité','larmes_de_la_divinite_calamiteuse.webp'),(18,'Signification d\'une éternité','Sentinelle de l\'étérnité','signification_d\'une_eternite.webp'),(19,'Fils de marionette','Shouki no kami','fils_de_marionette.webp'),(20,'Mirroir de mushin','Shouki no kami','mirroir_de_mushin.webp'),(21,'Cloche de daka','Shouki no kami','cloche_de_daka.webp'),(22,'Fougère du monde luxuriant','Garde de l\'oasis d\'Apep','fougere_du_monde_luxuriant.webp'),(23,'Floraison première de l\'oasis','Garde de l\'oasis d\'Apep','floraison_premiere_de_l\'oasis.webp'),(24,'Constambre','Garde de l\'oasis d\'Apep','constambre.webp'),(25,'Ficelle de soie sans lumière','Narval stellavore','ficelle_de_soie_sans_lumiere.webp'),(26,'Oeil de tourbillon sans lumière','Narval stellavore','oeil_de_tourbillon_sans_lumiere.webp'),(27,'Masse sans lumière','Narval stellavore','masse_sans_lumiere.webp'),(28,'Bougie vacillante','Arlecchino','bougie_vacillante.webp'),(29,'Plume soyeuse','Arlecchino','plume_soyeuse.webp'),(30,'Verdict négatif','Arlecchino','verdict_negatif.webp'),(31,'Corne érodée','Seigneur du feu primordial','corne_erodee.webp'),(32,'Rayon érodé','Seigneur du feu primordial','rayon_erode.webp'),(33,'Plume érodée','Seigneur du feu primordial','plume_erodee.webp');
/*!40000 ALTER TABLE `boss_hebdo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fleurs`
--

DROP TABLE IF EXISTS `fleurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fleurs` (
  `id_fleur` int NOT NULL AUTO_INCREMENT,
  `nom_fleur` varchar(45) DEFAULT NULL,
  `image_fleur` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_fleur`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fleurs`
--

LOCK TABLES `fleurs` WRITE;
/*!40000 ALTER TABLE `fleurs` DISABLE KEYS */;
INSERT INTO `fleurs` VALUES (1,'Baie à crochet','baie_a_crochet.webp'),(2,'Tombaie','tombaie.webp'),(3,'Cécilia','cecilia.webp'),(4,'Chrysanthème à aubes','chrysantheme_a_aubes.webp'),(5,'Champignon anémophile','champignon_anemophile.webp'),(6,'Herbe à lampe','herbe_a_lampe.webp'),(7,'Lys calla','lys_calla.webp'),(8,'Graines de pissenlit','graines_de_pissenlit.webp'),(9,'Piment de jueyun','piment_de_jueyun.webp'),(10,'Jade noctiluque','jade_noctiluque.webp'),(11,'Fleur de soie','fleur_de_soie.webp'),(12,'Lys verni','lys_verni.webp'),(13,'Fleur de Qingxin','fleur_de_qingxin.webp'),(14,'Conque d\'étoile','conque_d\'etoile.webp'),(15,'Muget bleu','muget_bleu.webp'),(16,'Coeur de lapis','coeur_de_lapis.webp'),(17,'Jade cristallin','jade_cristallin.webp'),(18,'Scarabuto','scarabuto.webp'),(19,'Fleur de cerisier','fleur_de_cerisier.webp'),(20,'Moelle cristalline','moelle_cristalline.webp'),(21,'Dendrobium sanglant','dendrobium_sanglant.webp'),(22,'Herbe à sanglots','herbe_a_sanglots.webp'),(23,'Ganoderma marin','ganoderma_marin.webp'),(24,'Perle de corail','perle_de_corail.webp'),(25,'Fruit d\'amakumo','fruit_d\'amakumo.webp'),(26,'Champignon fluorescent','champignon_fluorescent.webp'),(27,'Champignon sacramental','champignon_sacramental.webp'),(28,'Padisachidée','padisachidee.webp'),(29,'Nilotpalotus','nilotpalotus.webp'),(30,'Kalpalotus','kalpalotus.webp'),(31,'Quandong','quandong.webp'),(32,'Pupe graisseuse des sables','pupe_graisseuse_des_sables.webp'),(33,'Fleur funéraire','fleur_funeraire.webp'),(34,'Trishiraite','trishiraite.webp'),(35,'Scarabée','scarabee.webp'),(36,'Conque de béryl','conque_de_beryl.webp'),(37,'Fleur romaritime','fleur_romaritime.webp'),(38,'Clochette de Lumidouce','clochette_de_lumidouce.webp'),(39,'Rose arc-en-ciel','rose_arc-en-ciel.webp'),(40,'Sombrétoile','sombretoile.webp'),(41,'Lys lacmineux','lys_lacmineux.webp'),(42,'Unité de sous-détection','unite_de_sous-detection.webp'),(43,'Source des première rosées','source_des_premiere_rosees.webp'),(44,'Branchie mousseplume','branchie_mousseplume.webp'),(45,'Chrysanthème brillant','chrysantheme_brillant.webp'),(46,'Baie de quenettier','baie_de_quenettier.webp'),(47,'Patte saurienne','patte_saurienne.webp'),(48,'Champicorne brillant','champicorne_brillant.webp'),(49,'Pourprinfleur fanée','pourprinfleur_fanee.webp');
/*!40000 ALTER TABLE `fleurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livres`
--

DROP TABLE IF EXISTS `livres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livres` (
  `id_livre` int NOT NULL AUTO_INCREMENT,
  `nom_livre` varchar(45) DEFAULT NULL,
  `image_livre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_livre`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livres`
--

LOCK TABLES `livres` WRITE;
/*!40000 ALTER TABLE `livres` DISABLE KEYS */;
INSERT INTO `livres` VALUES (1,'Philosophie de la Liberté','philosophie_de_la_liberte.webp'),(2,'Guide de la Liberté','guide_de_la_liberte.webp'),(3,'Enseignement de la Liberté','enseignement_de_la_liberte.webp'),(4,'Philosophie de la Résistance','philosophie_de_la_resistance.webp'),(5,'Guide de la Résistance','guide_de_la_resistance.webp'),(6,'Enseignement de la Résistance','enseignement_de_la_resistance.webp'),(7,'Philosophie de la Poésie','philosophie_de_la_poesie.webp'),(8,'Guide de la Poésie','guide_de_la_poesie.webp'),(9,'Enseignement de la Poésie','enseignement_de_la_poesie.webp'),(10,'Philosophie de la Prospérité','philosophie_de_la_prosperite.webp'),(11,'Guide de la Prospérité','guide_de_la_prosperite.webp'),(12,'Enseignement de la Prospérité','enseignement_de_la_prosperite.webp'),(13,'Philosophie de la Diligence','philosophie_de_la_diligence.webp'),(14,'Guide de la Diligence','guide_de_la_diligence.webp'),(15,'Enseignement de la Diligence','enseignement_de_la_diligence.webp'),(16,'Philosophie de l\'Or','philosophie_de_l\'or.webp'),(17,'Guide de l\'Or','guide_de_l\'or.webp'),(18,'Enseignement de l\'Or','enseignement_de_l\'or.webp'),(19,'Philosophie de l\'Ephémère','philosophie_de_l\'ephemere.webp'),(20,'Guide de l\'Ephémère','guide_de_l\'ephemere.webp'),(21,'Enseignement de l\'Ephémère','enseignement_de_l\'ephemere.webp'),(22,'Philosophie de l\'Elégance','philosophie_de_l\'elegance.webp'),(23,'Guide de l\'Elégance','guide_de_l\'elegance.webp'),(24,'Enseignement de l\'Elégance','enseignement_de_l\'elegance.webp'),(25,'Philosophie de la Lumière','philosophie_de_la_lumiere.webp'),(26,'Guide de la Lumière','guide_de_la_lumiere.webp'),(27,'Enseignement de la Lumière','enseignement_de_la_lumiere.webp'),(28,'Philosophie de l\'Admonestation','philosophie_de_l\'admonestation.webp'),(29,'Guide de l\'Admonestation','guide_de_l\'admonestation.webp'),(30,'Enseignement de l\'Admonestation','enseignement_de_l\'admonestation.webp'),(31,'Philosophie de l\'Ingénuité','philosophie_de_l\'ingenuite.webp'),(32,'Guide de l\'Ingénuité','guide_de_l\'ingenuite.webp'),(33,'Enseignement de l\'Ingénuité','enseignement_de_l\'ingenuite.webp'),(34,'Philosophie de l\'Usage','philosophie_de_l\'usage.webp'),(35,'Guide de l\'Usage','guide_de_l\'usage.webp'),(36,'Enseignement de l\'Usage','enseignement_de_l\'usage.webp'),(37,'Philosophie de l\'Equité','philosophie_de_l\'equite.webp'),(38,'Guide de l\'Equité','guide_de_l\'equite.webp'),(39,'Enseignement de l\'Equité','enseignement_de_l\'equite.webp'),(40,'Philosophie de la Justice','philosophie_de_la_justice.webp'),(41,'Guide de la Justice','guide_de_la_justice.webp'),(42,'Enseignement de la Justice','enseignement_de_la_justice.webp'),(43,'Philosophie de l\'Ordre','philosophie_de_l\'ordre.webp'),(44,'Guide de l\'Ordre','guide_de_l\'ordre.webp'),(45,'Enseignement de l\'Ordre','enseignement_de_l\'ordre.webp'),(46,'Philosophie de la Compétition','philosophie_de_la_competition.webp'),(47,'Guide de la Compétition','guide_de_la_competition.webp'),(48,'Enseignement de la Compétition','enseignement_de_la_competition.webp'),(49,'Philosophie du petit bois','philosophie_du_petit_bois.webp'),(50,'Guide du petit bois','guide_du_petit_bois.webp'),(51,'Enseignement du petit bois','enseignement_du_petit_bois.webp'),(52,'Philosophie du Conflit','philosophie_du_conflit.webp'),(53,'Guide du Conflit','guide_du_conflit.webp'),(54,'Enseignement du Conflit','enseignement_du_conflit.webp');
/*!40000 ALTER TABLE `livres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objets_monstres`
--

DROP TABLE IF EXISTS `objets_monstres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objets_monstres` (
  `id_objet_monstre` int NOT NULL AUTO_INCREMENT,
  `nom_objet_monstre` varchar(45) DEFAULT NULL,
  `image_objet_monstre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_objet_monstre`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objets_monstres`
--

LOCK TABLES `objets_monstres` WRITE;
/*!40000 ALTER TABLE `objets_monstres` DISABLE KEYS */;
INSERT INTO `objets_monstres` VALUES (1,'Essence de Blob','essence_de_blob.webp'),(2,'Mucus de Blob','mucus_de_blob.webp'),(3,'Bave de Blob','bave_de_blob.webp'),(4,'Masque sinistre','masque_sinistre.webp'),(5,'Masque sale','masque_sale.webp'),(6,'Masque endommagé','masque_endommage.webp'),(7,'Parchemin maudit','parchemin_maudit.webp'),(8,'Parchemin sigillé','parchemin_sigille.webp'),(9,'Parchemin divinatoire','parchemin_divinatoire.webp'),(10,'Pointe de flèche usée','pointe_de_fleche_usee.webp'),(11,'Pointe de flèche aiguisée','pointe_de_fleche_aiguisee.webp'),(12,'Pointe de flèche robuste','pointe_de_fleche_robuste.webp'),(13,'Insigne d\'officier','insigne_d\'officier.webp'),(14,'Insigne de sergent','insigne_de_sergent.webp'),(15,'Insigne de nouvelle recrue','insigne_de_nouvelle_recrue.webp'),(16,'Insigne de corbeau en or','insigne_de_corbeau_en_or.webp'),(17,'Insigne de corbeau en argent','insigne_de_corbeau_en_argent.webp'),(18,'Insigne des pilleurs','insigne_des_pilleurs.webp'),(19,'Nectar élémentaire','nectar_elementaire.webp'),(20,'Nectar miroitant','nectar_miroitant.webp'),(21,'Nectar de Fleur mensongère','nectar_de_fleur_mensongere.webp'),(22,'Garde-main célèbre','garde-main_celebre.webp'),(23,'Garde-main kageuchi','garde-main_kageuchi.webp'),(24,'Garde-main ancien','garde-main_ancien.webp'),(25,'Noyau spectral','noyau_spectral.webp'),(26,'Coeur spectral','coeur_spectral.webp'),(27,'Coquille spectrale','coquille_spectrale.webp'),(28,'Poussière cristalline de sporange','poussiere_cristalline_de_sporange.webp'),(29,'Pollen fluorescent','pollen_fluorescent.webp'),(30,'Spore de Fongus','spore_de_fongus.webp'),(31,'Brocart rouge luxueu','brocart_rouge_luxueu.webp'),(32,'Soie rouge brodée','soie_rouge_brodee.webp'),(33,'Satin rouge délavé','satin_rouge_delave.webp'),(34,'Cristal xénochromatique','cristal_xenochromatique.webp'),(35,'Morceau transocéanique','morceau_transoceanique.webp'),(36,'Perle transocéanique','perle_transoceanique.webp'),(37,'Engrenage dynamique artificié','engrenage_dynamique_artificie.webp'),(38,'Engrenage à coupe droite','engrenage_a_coupe_droite.webp'),(39,'Engrenage de maillage','engrenage_de_maillage.webp'),(40,'Croc de tyran','croc_de_tyran.webp'),(41,'Croc mature','croc_mature.webp'),(42,'Croc juvénile','croc_juvenile.webp'),(43,'Sifflet en or','sifflet_en_or.webp'),(44,'Sifflet en métal','sifflet_en_metal.webp'),(45,'Sifflet en bois','sifflet_en_bois.webp');
/*!40000 ALTER TABLE `objets_monstres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnages`
--

DROP TABLE IF EXISTS `personnages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnages` (
  `id_personnage` int NOT NULL AUTO_INCREMENT,
  `nom_personnage` varchar(45) DEFAULT NULL,
  `rarete_personnage` int DEFAULT NULL,
  `type_arme_personnage` varchar(45) DEFAULT NULL,
  `type_personnage` varchar(45) DEFAULT NULL,
  `image_personnage` varchar(200) DEFAULT NULL,
  `image_rarete` varchar(200) DEFAULT NULL,
  `image_type_arme` varchar(200) DEFAULT NULL,
  `image_type` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_personnage`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnages`
--

LOCK TABLES `personnages` WRITE;
/*!40000 ALTER TABLE `personnages` DISABLE KEYS */;
INSERT INTO `personnages` VALUES (1,'Amber',4,'bow','pyro','amber.webp',NULL,'bow.webp','pyro.webp'),(2,'Kaeya',4,'sword','cryo','kaeya.webp',NULL,'sword.webp','cryo.webp'),(3,'Lisa',4,'catalyst','electro','lisa.webp',NULL,'catalyst.webp','electro.webp'),(4,'Barbara',4,'catalyst','hydro','barbara.webp',NULL,'catalyst.webp','hydro.webp'),(5,'Razor',4,'claymore','electro','razor.webp',NULL,'claymore.webp','electro.webp'),(6,'Xiangling',4,'polearm','pyro','xiangling.webp',NULL,'polearm.webp','pyro.webp'),(7,'Beidou',4,'claymore','electro','beidou.webp',NULL,'claymore.webp','electro.webp'),(8,'Xingqiu',4,'sword','hydro','xingqiu.webp',NULL,'sword.webp','hydro.webp'),(9,'Ningguang',4,'catalyst','geo','ningguang.webp',NULL,'catalyst.webp','geo.webp'),(10,'Fischl',4,'bow','electro','fischl.webp',NULL,'bow.webp','electro.webp'),(11,'Bennett',4,'sword','pyro','bennett.webp',NULL,'sword.webp','pyro.webp'),(12,'Noëlle',4,'claymore','geo','noelle.webp',NULL,'claymore.webp','geo.webp'),(13,'Chongyun',4,'claymore','cryo','chongyun.webp',NULL,'claymore.webp','cryo.webp'),(14,'Sucrose',4,'catalyst','anemo','sucrose.webp',NULL,'catalyst.webp','anemo.webp'),(15,'Jean',5,'sword','anemo','jean.webp',NULL,'sword.webp','anemo.webp'),(16,'Diluc',5,'claymore','pyro','diluc.webp',NULL,'claymore.webp','pyro.webp'),(17,'Qiqi',5,'sword','cryo','qiqi.webp',NULL,'sword.webp','cryo.webp'),(18,'Mona',5,'catalyst','hydro','mona.webp',NULL,'catalyst.webp','hydro.webp'),(19,'Keqing',5,'sword','electro','keqing.webp',NULL,'sword.webp','electro.webp'),(20,'Venti',5,'bow','anemo','venti.webp',NULL,'bow.webp','anemo.webp'),(21,'Klee',5,'catalyst','pyro','klee.webp',NULL,'catalyst.webp','pyro.webp'),(22,'Diona',4,'bow','cryo','diona.webp',NULL,'bow.webp','cryo.webp'),(23,'Tartaglia',5,'bow','hydro','tartaglia.webp',NULL,'bow.webp','hydro.webp'),(24,'Xinyan',4,'claymore','pyro','xinyan.webp',NULL,'claymore.webp','pyro.webp'),(25,'Zhongli',5,'polearm','geo','zhongli.webp',NULL,'polearm.webp','geo.webp'),(26,'Albedo',5,'sword','geo','albedo.webp',NULL,'sword.webp','geo.webp'),(27,'Ganyu',5,'bow','cryo','ganyu.webp',NULL,'bow.webp','cryo.webp'),(28,'Xiao',5,'polearm','anemo','xiao.webp',NULL,'polearm.webp','anemo.webp'),(29,'Hu Tao',5,'polearm','pyro','hu_tao.webp',NULL,'polearm.webp','pyro.webp'),(30,'Rosalia',4,'polearm','cryo','rosalia.webp',NULL,'polearm.webp','cryo.webp'),(31,'Yanfei',4,'catalyst','pyro','yanfei.webp',NULL,'catalyst.webp','pyro.webp'),(32,'Eula',5,'claymore','cryo','eula.webp',NULL,'claymore.webp','cryo.webp'),(33,'Kaedehara Kazuha',5,'sword','anemo','kaedehara_kazuha.webp',NULL,'sword.webp','anemo.webp'),(34,'Kamisato Ayaka',5,'sword','cryo','kamisato_ayaka.webp',NULL,'sword.webp','cryo.webp'),(35,'Sayu',4,'claymore','anemo','sayu.webp',NULL,'claymore.webp','anemo.webp'),(36,'Yoimiya',5,'bow','pyro','yoimiya.webp',NULL,'bow.webp','pyro.webp'),(37,'Aloy',5,'bow','cryo','aloy.webp',NULL,'bow.webp','cryo.webp'),(38,'Kujou Sara',4,'bow','electro','kujou_sara.webp',NULL,'bow.webp','electro.webp'),(39,'Shogun Raiden',5,'polearm','electro','shogun_raiden.webp',NULL,'polearm.webp','electro.webp'),(40,'Sangonomiya Kokomi',5,'catalyst','hydro','sangonomiya_kokomi.webp',NULL,'catalyst.webp','hydro.webp'),(41,'Thoma',4,'polearm','pyro','thoma.webp',NULL,'polearm.webp','pyro.webp'),(42,'Gorou',4,'bow','geo','gorou.webp',NULL,'bow.webp','geo.webp'),(43,'Arataki Itto',5,'claymore','geo','arataki_itto.webp',NULL,'claymore.webp','geo.webp'),(44,'Yun Jin',4,'polearm','geo','yun_jin.webp',NULL,'polearm.webp','geo.webp'),(45,'Shenhe',5,'polearm','cryo','shenhe.webp',NULL,'polearm.webp','cryo.webp'),(46,'Yae Miko',5,'catalyst','electro','yae_miko.webp',NULL,'catalyst.webp','electro.webp'),(47,'Kamisato Ayato',5,'sword','hydro','kamisato_ayato.webp',NULL,'sword.webp','hydro.webp'),(48,'Yelan',5,'bow','hydro','yelan.webp',NULL,'bow.webp','hydro.webp'),(49,'Kuki Shinobu',4,'sword','electro','kuki_shinobu.webp',NULL,'sword.webp','electro.webp'),(50,'Shikanoin Heizou',4,'catalyst','anemo','shikanoin_heizou.webp',NULL,'catalyst.webp','anemo.webp'),(51,'Collei',4,'bow','dendro','collei.webp',NULL,'bow.webp','dendro.webp'),(52,'Tighnari',5,'bow','dendro','tighnari.webp',NULL,'bow.webp','dendro.webp'),(53,'Dori',4,'claymore','electro','dori.webp',NULL,'claymore.webp','electro.webp'),(54,'Candace',4,'polearm','hydro','candace.webp',NULL,'polearm.webp','hydro.webp'),(55,'Cyno',5,'polearm','electro','cyno.webp',NULL,'polearm.webp','electro.webp'),(56,'Nilou',5,'sword','hydro','nilou.webp',NULL,'sword.webp','hydro.webp'),(57,'Nahida',5,'catalyst','dendro','nahida.webp',NULL,'catalyst.webp','dendro.webp'),(58,'Layla',4,'sword','cryo','layla.webp',NULL,'sword.webp','cryo.webp'),(59,'Faruzan',4,'bow','anemo','faruzan.webp',NULL,'bow.webp','anemo.webp'),(60,'Nomade',5,'catalyst','anemo','nomade.webp',NULL,'catalyst.webp','anemo.webp'),(61,'Yaoyao',4,'polearm','dendro','yaoyao.webp',NULL,'polearm.webp','dendro.webp'),(62,'Alhaitham',5,'sword','dendro','alhaitham.webp',NULL,'sword.webp','dendro.webp'),(63,'Dehya',5,'claymore','pyro','dehya.webp',NULL,'claymore.webp','pyro.webp'),(64,'Mika',4,'polearm','cryo','mika.webp',NULL,'polearm.webp','cryo.webp'),(65,'Kaveh',4,'claymore','dendro','kaveh.webp',NULL,'claymore.webp','dendro.webp'),(66,'Baizhu',5,'catalyst','dendro','baizhu.webp',NULL,'catalyst.webp','dendro.webp'),(67,'Kirara',4,'sword','dendro','kirara.webp',NULL,'sword.webp','dendro.webp'),(68,'Lynette',4,'sword','anemo','lynette.webp',NULL,'sword.webp','anemo.webp'),(69,'Lyney',5,'bow','pyro','lyney.webp',NULL,'bow.webp','pyro.webp'),(70,'Fréminet',4,'claymore','cryo','freminet.webp',NULL,'claymore.webp','cryo.webp'),(71,'Neuvillette',5,'catalyst','hydro','neuvillette.webp',NULL,'catalyst.webp','hydro.webp'),(72,'Wriothesley',5,'catalyst','cryo','wriothesley.webp',NULL,'catalyst.webp','cryo.webp'),(73,'Charlotte',4,'catalyst','cryo','charlotte.webp',NULL,'catalyst.webp','cryo.webp'),(74,'Furina',5,'sword','hydro','furina.webp',NULL,'sword.webp','hydro.webp'),(75,'Navia',5,'claymore','geo','navia.webp',NULL,'claymore.webp','geo.webp'),(76,'Chevreuse',4,'polearm','pyro','chevreuse.webp',NULL,'polearm.webp','pyro.webp'),(77,'Gaming',4,'claymore','pyro','gaming.webp',NULL,'claymore.webp','pyro.webp'),(78,'Xianyun',5,'catalyst','anemo','xianyun.webp',NULL,'catalyst.webp','anemo.webp'),(79,'Chiori',5,'sword','geo','chiori.webp',NULL,'sword.webp','geo.webp'),(80,'Arlecchino',5,'polearm','pyro','arlecchino.webp',NULL,'polearm.webp','pyro.webp'),(81,'Sethos',4,'bow','electro','sethos.webp',NULL,'bow.webp','electro.webp'),(82,'Clorinde',5,'sword','electro','clorinde.webp',NULL,'sword.webp','electro.webp'),(83,'Sigewinne',5,'bow','hydro','sigewinne.webp',NULL,'bow.webp','hydro.webp'),(84,'Émilie',5,'polearm','dendro','emilie.webp',NULL,'polearm.webp','dendro.webp'),(85,'Kachina',4,'polearm','geo','kachina.webp',NULL,'polearm.webp','geo.webp'),(86,'Mualani',5,'catalyst','hydro','mualani.webp',NULL,'catalyst.webp','hydro.webp'),(87,'Kinich',5,'claymore','dendro','kinich.webp',NULL,'claymore.webp','dendro.webp'),(88,'Xilonen',5,'sword','geo','xilonen.webp',NULL,'sword.webp','geo.webp'),(89,'Ororon',4,'bow','electro','ororon.webp',NULL,'bow.webp','electro.webp'),(90,'Chasca',5,'bow','anemo','chasca.webp',NULL,'bow.webp','anemo.webp'),(91,'Citlali',5,'catalyst','cryo','citlali.webp',NULL,'catalyst.webp','cryo.webp'),(92,'Mavuika',5,'claymore','pyro','mavuika.webp',NULL,'claymore.webp','pyro.webp'),(93,'Lan Yan',4,'catalyst','anemo','lan_yan.webp',NULL,'catalyst.webp','anemo.webp'),(94,'Yumemizuki Mizuki',5,'catalyst','anemo','yumemizuki_mizuki.webp',NULL,'catalyst.webp','anemo.webp');
/*!40000 ALTER TABLE `personnages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnages_boss`
--

DROP TABLE IF EXISTS `personnages_boss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnages_boss` (
  `id_personnage` int NOT NULL,
  `id_boss` int NOT NULL,
  PRIMARY KEY (`id_personnage`,`id_boss`),
  KEY `fk_boss_idx` (`id_boss`),
  CONSTRAINT `fk_boss` FOREIGN KEY (`id_boss`) REFERENCES `boss` (`id_boss`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_personnage_boss` FOREIGN KEY (`id_personnage`) REFERENCES `personnages` (`id_personnage`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnages_boss`
--

LOCK TABLES `personnages_boss` WRITE;
/*!40000 ALTER TABLE `personnages_boss` DISABLE KEYS */;
INSERT INTO `personnages_boss` VALUES (3,1),(5,1),(7,1),(10,1),(19,1),(14,2),(15,2),(20,2),(2,3),(13,3),(17,3),(22,3),(27,3),(30,3),(9,4),(12,4),(25,4),(26,4),(4,5),(8,5),(18,5),(23,5),(1,6),(6,6),(11,6),(16,6),(21,6),(24,6),(28,7),(29,7),(31,7),(32,8),(37,8),(33,9),(35,9),(36,10),(41,10),(34,11),(42,11),(40,12),(47,12),(38,13),(39,13),(43,14),(44,14),(45,15),(46,15),(48,16),(49,16),(50,16),(53,17),(55,17),(51,18),(52,18),(56,19),(58,19),(60,19),(54,20),(59,20),(63,20),(57,21),(61,21),(65,21),(62,22),(64,22),(66,23),(67,23),(68,24),(79,24),(70,25),(75,25),(69,26),(77,26),(72,27),(73,27),(71,28),(76,28),(82,28),(74,29),(83,29),(78,30),(81,30),(80,31),(84,31),(85,32),(87,32),(86,33),(89,33),(88,34),(92,34),(93,34),(90,35),(91,36),(94,36);
/*!40000 ALTER TABLE `personnages_boss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnages_boss_hebdo`
--

DROP TABLE IF EXISTS `personnages_boss_hebdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnages_boss_hebdo` (
  `id_personnage` int NOT NULL,
  `id_boss_hebdo` int NOT NULL,
  PRIMARY KEY (`id_personnage`,`id_boss_hebdo`),
  KEY `fk_boss_idx` (`id_boss_hebdo`),
  CONSTRAINT `fk_boss_hebdo` FOREIGN KEY (`id_boss_hebdo`) REFERENCES `boss_hebdo` (`id_boss_hebdo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_personnage_boss_hebdo` FOREIGN KEY (`id_personnage`) REFERENCES `personnages` (`id_personnage`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnages_boss_hebdo`
--

LOCK TABLES `personnages_boss_hebdo` WRITE;
/*!40000 ALTER TABLE `personnages_boss_hebdo` DISABLE KEYS */;
INSERT INTO `personnages_boss_hebdo` VALUES (11,1),(15,1),(16,1),(3,2),(5,2),(6,2),(12,2),(1,3),(7,3),(13,3),(8,4),(17,4),(20,4),(4,5),(18,5),(19,5),(21,5),(2,6),(9,6),(10,6),(14,6),(24,7),(25,7),(26,7),(22,8),(23,8),(29,8),(27,9),(28,9),(30,9),(32,10),(36,10),(31,11),(34,11),(53,11),(33,12),(35,12),(48,12),(37,13),(39,13),(42,13),(40,14),(41,14),(45,14),(38,15),(43,15),(44,15),(47,16),(55,16),(49,17),(51,17),(54,17),(56,17),(46,18),(50,18),(52,18),(57,19),(59,19),(63,19),(58,20),(62,20),(64,20),(88,20),(60,21),(61,21),(81,21),(66,22),(70,22),(65,23),(69,23),(72,23),(67,24),(68,24),(71,24),(82,24),(73,25),(75,25),(79,25),(89,25),(76,26),(78,26),(83,26),(74,27),(77,27),(86,27),(80,28),(85,28),(94,28),(84,29),(90,29),(87,30),(91,30),(92,31),(93,32);
/*!40000 ALTER TABLE `personnages_boss_hebdo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnages_fleurs`
--

DROP TABLE IF EXISTS `personnages_fleurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnages_fleurs` (
  `id_personnage` int NOT NULL,
  `id_fleur` int NOT NULL,
  PRIMARY KEY (`id_personnage`,`id_fleur`),
  KEY `fk_fleur_idx` (`id_fleur`),
  CONSTRAINT `fk_fleur` FOREIGN KEY (`id_fleur`) REFERENCES `fleurs` (`id_fleur`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_personnage_fleur` FOREIGN KEY (`id_personnage`) REFERENCES `personnages` (`id_personnage`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnages_fleurs`
--

LOCK TABLES `personnages_fleurs` WRITE;
/*!40000 ALTER TABLE `personnages_fleurs` DISABLE KEYS */;
INSERT INTO `personnages_fleurs` VALUES (5,1),(30,1),(64,1),(3,2),(12,2),(20,3),(26,3),(11,4),(14,4),(4,5),(18,5),(21,5),(1,6),(10,6),(16,6),(2,7),(22,7),(15,8),(32,8),(6,9),(61,9),(7,10),(31,10),(8,11),(29,11),(9,12),(44,12),(27,13),(28,13),(45,13),(23,14),(48,14),(77,14),(17,15),(24,15),(66,15),(13,16),(19,16),(25,16),(78,17),(93,17),(43,18),(50,18),(34,19),(47,19),(35,20),(37,20),(38,21),(79,21),(36,22),(49,22),(33,23),(46,23),(94,23),(40,24),(42,24),(39,25),(67,25),(41,26),(51,27),(60,27),(56,28),(52,29),(58,29),(53,30),(57,30),(54,31),(59,31),(62,32),(63,32),(65,33),(81,34),(55,35),(73,36),(70,37),(83,37),(68,38),(76,38),(69,39),(80,39),(71,40),(82,40),(74,41),(84,41),(72,42),(75,43),(86,44),(88,45),(85,46),(91,46),(87,47),(89,48),(90,49),(92,49);
/*!40000 ALTER TABLE `personnages_fleurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnages_livres`
--

DROP TABLE IF EXISTS `personnages_livres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnages_livres` (
  `id_personnage` int NOT NULL,
  `id_livre` int NOT NULL,
  PRIMARY KEY (`id_personnage`,`id_livre`),
  KEY `fk_livre_idx` (`id_livre`),
  CONSTRAINT `fk_livre` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id_livre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_personnage_livre` FOREIGN KEY (`id_personnage`) REFERENCES `personnages` (`id_personnage`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnages_livres`
--

LOCK TABLES `personnages_livres` WRITE;
/*!40000 ALTER TABLE `personnages_livres` DISABLE KEYS */;
INSERT INTO `personnages_livres` VALUES (1,3),(4,3),(14,3),(21,3),(22,3),(23,3),(37,3),(5,6),(11,6),(12,6),(15,6),(16,6),(18,6),(32,6),(2,9),(3,9),(10,9),(20,9),(26,9),(30,9),(64,9),(9,12),(17,12),(19,12),(28,12),(45,12),(48,12),(77,12),(6,15),(13,15),(27,15),(29,15),(33,15),(44,15),(61,15),(93,15),(7,18),(8,18),(24,18),(25,18),(31,18),(66,18),(78,18),(36,21),(40,21),(41,21),(47,21),(50,21),(67,21),(94,21),(34,24),(38,24),(43,24),(49,24),(35,27),(39,27),(42,27),(46,27),(79,27),(52,30),(54,30),(55,30),(59,30),(53,33),(57,33),(58,33),(62,33),(65,33),(51,36),(56,36),(60,36),(63,36),(81,36),(69,39),(71,39),(75,39),(83,39),(70,42),(73,42),(74,42),(82,42),(68,45),(72,45),(76,45),(80,45),(84,45),(86,48),(92,48),(87,51),(88,51),(89,51),(91,51),(85,54),(90,54);
/*!40000 ALTER TABLE `personnages_livres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnages_objets_monstres`
--

DROP TABLE IF EXISTS `personnages_objets_monstres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnages_objets_monstres` (
  `id_personnage` int NOT NULL,
  `id_objet_monstre` int NOT NULL,
  PRIMARY KEY (`id_personnage`,`id_objet_monstre`),
  KEY `fk_objet_monstre_idx` (`id_objet_monstre`),
  CONSTRAINT `fk_objet_monstre` FOREIGN KEY (`id_objet_monstre`) REFERENCES `objets_monstres` (`id_objet_monstre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_personnage_objet_monstre` FOREIGN KEY (`id_personnage`) REFERENCES `personnages` (`id_personnage`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnages_objets_monstres`
--

LOCK TABLES `personnages_objets_monstres` WRITE;
/*!40000 ALTER TABLE `personnages_objets_monstres` DISABLE KEYS */;
INSERT INTO `personnages_objets_monstres` VALUES (3,3),(6,3),(20,3),(25,3),(28,3),(43,3),(61,3),(70,3),(71,3),(75,3),(77,3),(82,3),(83,3),(5,6),(8,6),(12,6),(13,6),(15,6),(32,6),(38,6),(44,6),(4,9),(17,9),(21,9),(26,9),(36,9),(55,9),(58,9),(78,9),(1,12),(10,12),(22,12),(51,12),(9,15),(16,15),(23,15),(30,15),(33,15),(48,15),(64,15),(69,15),(80,15),(2,18),(7,18),(11,18),(24,18),(31,18),(41,18),(50,18),(14,21),(18,21),(19,21),(27,21),(29,21),(35,21),(45,21),(74,21),(93,21),(34,24),(39,24),(60,24),(94,24),(37,27),(40,27),(42,27),(46,27),(47,27),(49,27),(67,27),(79,27),(52,30),(56,30),(57,30),(65,30),(66,30),(53,33),(54,33),(59,33),(62,33),(63,33),(81,33),(68,39),(72,39),(73,39),(76,39),(84,39),(87,42),(89,42),(90,42),(91,42),(85,45),(86,45),(88,45),(92,45);
/*!40000 ALTER TABLE `personnages_objets_monstres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnages_pierres`
--

DROP TABLE IF EXISTS `personnages_pierres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnages_pierres` (
  `id_personnage` int NOT NULL,
  `id_pierre` int NOT NULL,
  PRIMARY KEY (`id_personnage`,`id_pierre`),
  KEY `fk_pierres_idx` (`id_pierre`),
  CONSTRAINT `fk_personnage_pierre` FOREIGN KEY (`id_personnage`) REFERENCES `personnages` (`id_personnage`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_pierre` FOREIGN KEY (`id_pierre`) REFERENCES `pierres` (`id_pierre`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnages_pierres`
--

LOCK TABLES `personnages_pierres` WRITE;
/*!40000 ALTER TABLE `personnages_pierres` DISABLE KEYS */;
INSERT INTO `personnages_pierres` VALUES (1,4),(6,4),(11,4),(16,4),(21,4),(24,4),(29,4),(31,4),(36,4),(41,4),(63,4),(69,4),(76,4),(77,4),(80,4),(92,4),(4,8),(8,8),(18,8),(23,8),(40,8),(47,8),(48,8),(54,8),(56,8),(67,8),(71,8),(74,8),(83,8),(86,8),(51,12),(52,12),(57,12),(61,12),(62,12),(65,12),(66,12),(84,12),(87,12),(3,16),(5,16),(7,16),(10,16),(19,16),(38,16),(39,16),(46,16),(49,16),(50,16),(53,16),(55,16),(81,16),(82,16),(89,16),(14,20),(15,20),(20,20),(28,20),(33,20),(35,20),(59,20),(60,20),(68,20),(78,20),(90,20),(93,20),(94,20),(2,24),(13,24),(17,24),(22,24),(27,24),(30,24),(32,24),(34,24),(37,24),(45,24),(58,24),(64,24),(70,24),(72,24),(73,24),(91,24),(9,28),(12,28),(25,28),(26,28),(42,28),(43,28),(44,28),(75,28),(79,28),(85,28),(88,28);
/*!40000 ALTER TABLE `personnages_pierres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pierres`
--

DROP TABLE IF EXISTS `pierres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pierres` (
  `id_pierre` int NOT NULL AUTO_INCREMENT,
  `nom_pierre` varchar(45) DEFAULT NULL,
  `type_pierre` varchar(45) DEFAULT NULL,
  `image_pierre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pierre`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pierres`
--

LOCK TABLES `pierres` WRITE;
/*!40000 ALTER TABLE `pierres` DISABLE KEYS */;
INSERT INTO `pierres` VALUES (1,'Pierre d\'agate agnidus','Pyro','pierre_d\'agate_agnidus.webp'),(2,'Morceau d\'agate agnidus','Pyro','morceau_d\'agate_agnidus.webp'),(3,'Fragment d\'agate agnidus','Pyro','fragment_d\'agate_agnidus.webp'),(4,'Eclat d\'agate agnidus','Pyro','eclat_d\'agate_agnidus.webp'),(5,'Pierre de lazurite varunada','Hydro','pierre_de_lazurite_varunada.webp'),(6,'Morceau de lazurite varunada','Hydro','morceau_de_lazurite_varunada.webp'),(7,'Fragment de lazurite varunada','Hydro','fragment_de_lazurite_varunada.webp'),(8,'Eclat de lazurite varunada','Hydro','eclat_de_lazurite_varunada.webp'),(9,'Pierre d\'émeraude nagadus','Dendro','pierre_d\'emeraude_nagadus.webp'),(10,'Morceau d\'émeraude nagadus','Dendro','morceau_d\'emeraude_nagadus.webp'),(11,'Fragment d\'émeraude nagadus','Dendro','fragment_d\'emeraude_nagadus.webp'),(12,'Eclat d\'émeraude nagadus','Dendro','eclat_d\'emeraude_nagadus.webp'),(13,'Pierre d\'améthyste vajrada','Electro','pierre_d\'amethyste_vajrada.webp'),(14,'Morceau d\'améthyste vajrada','Electro','morceau_d\'amethyste_vajrada.webp'),(15,'Fragment d\'améthyste vajrada','Electro','fragment_d\'amethyste_vajrada.webp'),(16,'Eclat d\'améthyste vajrada','Electro','eclat_d\'amethyste_vajrada.webp'),(17,'Pierre de turquoise vayuda','Anémo','pierre_de_turquoise_vayuda.webp'),(18,'Morceau de turquoise vayuda','Anémo','morceau_de_turquoise_vayuda.webp'),(19,'Fragment de turquoise vayuda','Anémo','fragment_de_turquoise_vayuda.webp'),(20,'Eclat de turquoise vayuda','Anémo','eclat_de_turquoise_vayuda.webp'),(21,'Pierre de jade shivada','Cryo','pierre_de_jade_shivada.webp'),(22,'Morceau de jade shivada','Cryo','morceau_de_jade_shivada.webp'),(23,'Fragment de jade shivada','Cryo','fragment_de_jade_shivada.webp'),(24,'Eclat de jade shivada','Cryo','eclat_de_jade_shivada.webp'),(25,'Pierre de topaze prithiva','Géo','pierre_de_topaze_prithiva.webp'),(26,'Morceau de topaze prithiva','Géo','morceau_de_topaze_prithiva.webp'),(27,'Fragment de topaze prithiva','Géo','fragment_de_topaze_prithiva.webp'),(28,'Eclat de topaze prithiva','Géo','eclat_de_topaze_prithiva.webp');
/*!40000 ALTER TABLE `pierres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-18 17:22:53
