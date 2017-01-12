# fiche_taxon
Réalisation de fiches taxons à partir de l'utilitaire jaspersoft studio et d'une bdd postgresql\\
C'est un projet réalisé sous Jaspersoft studio 6.3.1 pour répondre à une demande de l'agence de l'eau Seine-Normandie de disposer de fiches pour les taxons des zones humides.\\
Pour la démonstration, seuls 5 ou 6 taxons ont été conservés\\
auteur: Anaïs Just, Fédération des conservatoires botaniques nationaux\\

1. Installer Jaspersoft studio (Tibco) 
2. Installer postgresql  en local (login postgres et mdp postgres)
3. placer le dossier projet_jaspersoft sur le disque dur F: à la racine (si sur un autre disque, il faudra aller changer le chemin des images et photos dans la table crée ensuite)
4. dans postgresql (on peut utiliser pgadmin) créer une base de données intitulée "aesn"
    CREATE DATABASE aesn WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    ALTER DATABASE aesn OWNER TO postgres;
5. se placer dans la bdd aesn et lancer les requetes sql à partir de la ligne 28 du fichier aesn_taxon_rattache_v7_demo.sql (sous pgadmin, rafraichir, cliquer sur la bdd aesn puis aller dans la fenêtre sql et lancer toutes les lignes)
6. une fois les commandes lancées (on peut vérifier que la table est crée sous pgadmin en cliquant droit sur aesn puis rafraichir et en allant dans le schéma public) on peut ouvrir le projet  "fiches_taxon_aesn_demo_cbn.jrxml" en double cliquant dessus
7. l'interface de l'éditeur apparait, il faut renseigner un nouveau "data adaptater" qui correspond à vôtre connection à la base de données
* Pour le type de data adaptateur choisir JDBC database connexion puis "Next"
* Pour le nom, ce que vous voulez (par exemple aesn_localhost)
* pour le JDBC driver on choisi "Postgresql" puis "Next"
* pour le JDBCurl on met jdbc:postgresql://localhost:5432/aesn
* pour l'utilisateur on met postgres et le mot de passe on met aussi postgres
(si le mot de passe, l'utilisateur ou l'hôte de la base de donnée sont différents, les modifier)
8. dans l'onglet Design à gauche dans la fenêtre Outline" avec la liste des blocs du projet on clic-droit sur "Blank_A4"/"Dataset and query" et dans la fenêtre qui s'ouvre on choisi en haut le dataadaptater "aesn_localhost" qu'on a créé précédemment. 
Puis on clique sur readfields à droite. 
Si tout se passe bien la liste des champs apparait dans la partie en bas (cd_ref_v7, nom_valide_v7) etc
Puis "OK"
9. on est de nouveau sur l'onglet Design.
On clique sur l'onglet "prévisualiser" et ainsi la prévisualisation de nos premières fiches apparait.
S'il n'y a pas de photos visibles, s'assurer que le chemin des photos et cartes fourni en base de donnée est bien le même (F:\jaspersoft_projet\photos\xxxx.jpg ou F:\jaspersoft_projet\cartes\xxxx.jpg ) que celui où se trouvent réellement les photos et cartes sur votre ordi. Au besoin, les modifier en base de données.
10. ensuite on peut cliquer en haut à droite de l'onglet "prévisualisation" sur la petite disquette pour exporter en pdf.
Un seul pdf est produit.
Pour le découper par nom de taxon et créer une fiche par taxon, installer l'utilitaire PDFSAM et puis utiliser "découpage par signet".
On va chercher le nouveau document, on le découpe au niveau du signet 1 et pour le nom de fichier en sortie on fait un clic droit sur la ligne à remplir pour "préfixe pour les noms des documents générés" et on choisi "ajouter un préfixe " [BOOKMARK_NAME]
On exécute et les pdf découpés sont produits!
