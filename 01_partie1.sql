-- =====================================================================
--  PROJET SQL AVANCÉ — « CTF Arena »
--  Script partie 1 : 
--  Compatible MySQL 8+ / MariaDB 10.6+  —  rejouable (DROP IF EXISTS)
--
--  Situation de départ (volontairement mauvaise) :
--    - seul root accède à la base (les comptes du projet sont supprimés) ;
--    - aucune vue, aucun index secondaire sur la table volumineuse ;
--    - aucune règle automatisée, aucun audit.
-- =====================================================================


----- Missions 1.1 : Creation de comptes ------
DROP USER IF EXISTS 'app_web'@'localhost';
CREATE USER 'app_web'@'localhost' IDENTIFIED BY 'MDP@w3b';

DROP USER IF EXISTS 'admin_ctf'@'localhost';
CREATE USER 'admin_ctf'@'localhost' IDENTIFIED BY 'MotDeP&adm1n';

DROP USER IF EXISTS 'orga_ctf'@'localhost';
CREATE USER 'orga_ctf'@'localhost' IDENTIFIED BY 'MotDeP#or4';

DROP USER IF EXISTS 'auditeur'@'localhost';
CREATE USER 'auditeur'@'localhost' IDENTIFIED BY 'MotDeP=odi5';

-- Reponse : '%' autorise la connexion depuis n'importe quelle machine. Le site tourne
-- sur la même machine que le serveur : 'localhost' suffit. Avec '%', une fuite
-- du mot de passe permet une connexion à distance. Moindre privilège.