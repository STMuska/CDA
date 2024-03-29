
DROP DATABASE IF EXISTS filrouge;
CREATE DATABASE filrouge;

USE filrouge;

CREATE TABLE client(
   Id_client INT AUTO_INCREMENT,
   client_nom VARCHAR(50),
   client_prenom VARCHAR(50),
   client_adresse VARCHAR(50), 
   client_ville VARCHAR(50),
   client_code_postal VARCHAR(10),
   client_telephone VARCHAR(50),
   client_mail VARCHAR(50),
   PRIMARY KEY(Id_client)
);

CREATE TABLE produit(
   Id_produit INT AUTO_INCREMENT,
   produit_stkale INT,
   produit_nom VARCHAR(150),
   produit_categorie VARCHAR(50),
   produit_sous_categorie VARCHAR(50),
   produit_stock INT,
   produit_prix INT,
   produit_description longtext,
   produit_note_avis VARCHAR(50),
   PRIMARY KEY(Id_produit)
);

INSERT INTO produit(produit_stkale, produit_nom, produit_categorie, produit_sous_categorie, produit_stock, produit_prix, produit_description, produit_note_avis) VALUES
(20, "Warhammer Fantasy - Livre de base Revisé", "Jeu de rôle", "Jeu de rôle VF", 48, 55.00, "Un univers féroce d'aventures périlleuses.Vous ne pouvez pas lâcher l'affaire, hein ? Vous savez pourtant ce que vous allez découvrir. Vous les avez vus, les impitoyables, les arrogants, les damnés. Vous voudriez bien tourner les talons. La vie serait alors si belle. Vous êtes conscient que, tout en essayant de vous convaincre que vous ne convoitez que le butin, ou que vous ne savez pas résister à un bon combat, vous y foncez. Personne n'est dupe. Alors préparez votre épée, nettoyez votre pistolet et prenez garde à ce chien, bien trop féroce pour sa petite taille. Grâce à Warhammer Fantasy Roleplay, vous retrouvez le Vieux Monde. Rassemblez votre groupe, créez vos (anti) héros et préparez-vous à vous frayer un chemin à travers la destruction, engendrée par l'ignoble corruption, les intrigants et les créatures terrifiantes.  Ce livre de règles de la Quatrième édition de Warhammer Fantasy Roleplay renferme tout ce dont vous avez besoin pour vivre des aventures sombres et périlleuses dans le Vieux Monde. Cette version révisé contient tous les errata et corrections.", "3,5/5"),
(20, "Cthulhu Hack : La ville en Jaune - Pack du MJ", "Jeu de rôle", "Jeu de rôle VF", 22, 59.00, "SUPPLEMENT POUR LE JEU DE ROLE CTHULHU HACK Le Pack du MJ contient : un écran grand format rigide de trois volets qui contient les tables utiles pour Cthulhu Hack ainsi que la liste des PNJ importants de la Ville en jaune , un trombinoscope de 8 pages de PNJ et créatures, prédécoupés, que le MJ peut donner aux joueurs afin qu'ils les annotent durant l''enquête, toutes les aides de jeu de la campagne en version PJ (expurgées des informations sensibles), cinq livrets de personnages vierges, une brochure guide touristique à destination des joueurs, deux posters de la ville de Strasbourg, une pochette souple contenant tous les éléments excepté l'écran. La ville en jaune est une campagne pour Cthulhu Hack, disponible à la vente séparément.", "5/5"),
(20, "Cthulhu Hack : La ville en Jaune",  "Jeu de rôle", "Jeu de rôle VF", 33, 29.00, "SUPPLEMENT POUR LE JEU DE ROLE CTHULHU HACK. La ville en jaune est une campagne pour Cthulhu Hack. Elle se déroule à Strasbourg dans les années 20 et à pour décor le projet d'urbanisme de la Grande Percée et deux cultes rivaux qui tentent de faire surgir Carcosa au coeur de Strasbourg. La campagne est constituée de trois actes : Acte 1 - La Grande Percée est une enquête menée par les investigateurs, afin de comprendre les incidents bien trop nombreux qui se produisent sur le chantier de la Grande Percée, au centre de Strasbourg ; Acte 2 - Le basculement accélère le rythme, avec la découverte d'explosifs datant de la guerre et d'éléments reliant l'enquête à la pièce du Roi en Jaune et à un symbole ésotérique impie, le signe jaune ; Acte 3 - L'après se déroule après le cataclysme qui transforme Strasbourg en la Ville en Jaune. Les investigateurs peuvent rejoindre un groupe de résistants et les aider à empêcher les plans déments de l'avatar du Roi en jaune. L'ouvrage contient également de nombreux portraits de PNJ, plus de quarante aides de jeu ainsi que cinq personnages prétirés.", "5/5"),
(20, "COPS", "Jeu de rôle", "Jeu de rôle VF", 0, 36.97, "COPS est un jeu de rôle futuriste et crépusculaire, qui vous permettra d'incarner un flic de la police de Los Angeles en 2030. Vous rejoindrez le COPS, une unité d'élite du LAPD, et lutterez sur tous les fronts contre la criminalité, pour la justice.", "4,5/5"),
(20, "ARIA : Préludes Édition Deluxe", "Jeu de rôle", "Jeu de rôle VF", 75, 49.00, "Découvrez le monde d'Aria, le Jeu de Rôle Fantasy joué dans l'émission « Game of Rôles ». Cette boite contient Un livret de 96 pages. Vous y trouverez des règles du jeu vous permettant de créer vos personnages ainsi que deux scenarios originaux pour découvrir l'univers d'Aria, mais aussi 15 Fiches de personnages à jouer, une carte du monde, un écran de jeu inédit, un deck de magie de 52 cartes et un set complet de dés !  Il existe un dieu nommé l'Ennemi, souhaitant la fin de toute civilisation. Le roi des dieux le combattit au bord du monde. Il eut l'opportunité de le tuer au prix de sa propre vie, mais renonça dans un sursaut de lâcheté. Pour avoir manqué de débarrasser le monde de l'Ennemi, le roi des dieux se retira. Avant son départ, il remit aux hommes une couronne, un sceptre et un orbe permettant d'assurer en son nom une juste gouvernance. Puis il devint le Dieu Exilé et cessa de répondre aux prières des mortels. Depuis lors, l'Ennemi arpente le monde comme un homme. Lentement et sûrement, son influence conduit l'humanité à sa perte.", "4,2/5"),
(20, "Tales from the Loop : Livre de base", "Jeu de rôle", "Jeu de rôle VF", 28, 39.00, "Bienvenue dans Tales from the Loop, le jeu de rôle d'anticipation des années 80. Mais ce n'est pas la période que nous connaissons: la technologie a fait des bonds fascinants et les scientifiques créent des machines dotées d'intelligence, explorent des dimensions parallèles et étudient les voyages dans le temps. C'est dans cet univers que vous allez incarner des enfants et des adolescents aux vies banales, confrontés à des événements fantastiques. Tales from the Loop est illustré par l'artiste Simon Stålenhag, mondialement reconnu pour ses œuvres représentant les banlieues suédoises peuplées de machines extraordinaires et de créatures étranges. Le jeu Tales from the Loop a remporté cinq ENnie Awards lors de la GenCon 2017, prix venant récompenser les meilleurs produits de jeu de rôle de l'année: Produit de l'année, Meilleur jeu, Meilleure écriture, Meilleur univers et Meilleures illustrations. DANS TALES FROM THE LOOP : Créez un personnage unique, doté de ses attributs, compétences, motivations, fiertés, problèmes et relations, en quelques minutes . Explorez les secrets du Loop dans deux contextes différents: l'un situé dans les îles suédoises du lac Mälar, l'autre à Boulder City, dans le Nevada. Enquêtez sur des mystères et surmontez les obstacles et dangers grâce à un système de règles simple et rapide. Jouez quatre aventures réunies au sein d'une campagne unique et passionnante: Les quatre saisons de la science détraquée", "4,8/5"),
(20, "La Nuit des Chasseurs", "Jeu de rôle", "Jeu de rôle PDF", 70, 5.95, "En 1883, un trésor de guerre inestimable disparaît dans des circonstances étranges dans la petite ville de Desolation, Texas. 5 ans plus tard, après avoir tué un groupe de marshals qui se rendaient en ville, une bande de hors-la-loi endosse l'identité des hommes de loi pour retrouver le magot. Cette bande, ce sont vos personnages. Malheureusement, les lieux cachent plus d'un secret et la plupart sont mortels : des prostituées disparaissent, d'étranges corbeaux attaquent à la nuit tombée et la région est victime des attaques d'un gang sanguinaire des événements auxquels vous allez devoir vous intéresser pour assurer vos couvertures, tout en cherchant le légendaire Cercueil Noir… La Nuit des Chasseurs, c'est du western crépusculaire mais pas que. Quelques gueules cassées, des bizarreries, un décor à la lisière du fantastique (sans pour autant tomber dedans) et pas mal de pistes à suivre et intrigues à développer. La Nuit des Chasseurs prend place dans le même « univers » que Rushmore (les deux Shooters ont pour point commun la même ville à 128 ans d'écart et quelques lieux et noms similaires). Pour le reste, si vous ne connaissez pas le précédent Shooter, ça ne vous manquera pas dans celui-ci. Et inversement. Cet ouvrage fait partie de la collection Shooter : c'est une proposition de jeu sous la forme d'un morceau de contexte où les Personnages Joueurs sont centraux importants et/ou avec un « univers » tournant autour d'eux et qui ne pourrait pas (ou très difficilement) être décrit sur un format plus important sans s’affadir. Langle de jeu est marqué, les personnages sont particuliers ou dans une situation atypique, le format est concentré (52 pages A5). Le tout est à picorer, développer ou jouer tel quel en fonction des envies ou des possibilités. Livre de 52 pages en version PDF.", "3.2/5"),
(20, "Brigandyne - Rêves de Gloire", "Jeu de rôle", "Jeu de rôle PDF", 9999, 9.90, "Rêves de Gloire est une campagne pour le jeu de rôle Brigandyne. Composée de cinq scénarios qui se suivent, elle entraînera vos joueurs dans la grande cité d'Askanov, la capitale de l'Empire. Petits malfrats en quête de quelques Couronnes, ils devront se frotter à des ennemis bien plus puissants qu'eux et louvoyer entre les nombreuses bandes de voleurs pour tirer leur épingle du jeu. Mais lorsque la magie s'en mêle, que les monstres s'éveillent et que les rêves sont parfois bien réels, il leur faudra rivaliser de ruse et de courage pour devenir, pourquoi pas, des héros malgré eux. Vous trouverez dans ce supplément: La description d'Askanov, la capitale de l'Empire De nouvelles options pour vos personnages de vauriens: les Leçons des Rues Une campagne en cinq actes Des personnages prétirés pour jouer tout de suite Livre de 122 pages au format PDF.", "3,7/5"),
(20, "Brigandyne - Le Compagnon", "Jeu de rôle", "Jeu de rôle PDF", 9999, 8.90, "Le Compagnon ouvre un monde de nouvelles possibilités pour les joueurs de Brigandyne. Incarnez dix nouveaux peuples, comme le demi-ogre, le gnome ou le sang-démon. Endossez quatre nouveaux archétypes de personnalité. Engagez-vous dans des dizaines de nouvelles carrières, et évoluez dans une carrière avancée, pour faire de vous un individu haut-placé - mais toujours aussi peu respectable ! Faîtes de vos traits de caractère un atout au bon moment. Apprenez de nombreuses techniques et bottes secrètes, pour faire preuve d'un style unique au moment où les lames jaillissent des fourreaux ! Et craignez plus de cinquante nouveaux sortilèges, en prenant la poudre d'escampette au moment de leurs formules magiques. Quant aux meneurs, vous ne serez pas en reste, et trouverez tout le nécessaire pour gérer la folie chez les personnages, les mutations chaotiques, les terribles combats de masse, et des conseils pour adapter Brigandyne à votre style de jeu favori Livre de 104 pages au format PDF.", "3,7/5"),
(20, "Brigandyne - Le Bestiaire", "Jeu de rôle", "Jeu de rôle PDF", 9999, 7.90, "Le Bestiaire est le complément essentiel des Meneurs de Jeu de Brigandyne. Il présente plus de 130 créatures, alliés d'un jour ou adversaires féroces, qui auront toute leur place dans vos aventures de sang et d'acier ! Des bêtes sauvages aux démons effrayants, en passant par les redoutables Elfes Noirs ou les puissantes sorcières, le Bestiaire offre un large panel de rencontres et d'idées de scénarios. En effet, chaque monstre est accompagné de légendes et rumeurs qui courent à son sujet. Vos joueurs seront-ils assez intrépides pour aller les vérifier ? Livre de 105 pages au format PDF.", "3,7/5"),
(20, "ARIA : Préludes - Coffret Jeu de rôle", "Jeu de rôle", "Jeu de rôle PDF", 9999, 9.99, "Il existe un dieu nommé l'Ennemi, souhaitant la fin de toute civilisation. Le roi des dieux le combattit au bord du monde. Il eut l'opportunité de le tuer au prix de sa propre vie, mais renonça dans un sursaut de lâcheté. Pour avoir manqué de débarrasser le monde de l'Ennemi, le roi des dieux se retira. Avant son départ, il remit aux hommes une couronne, un sceptre et un orbe permettant d'assurer en son nom une juste gouvernance. Puis il devint le Dieu Exilé et cessa de répondre aux prières des mortels. Depuis lors, l'Ennemi arpente le monde comme un homme. Lentement et sûrement, son influence conduit l'humanité à sa perte.", "4,8/5"),
(20, "Delta Green - Music From a Darkened Room", "Jeu de rôle", "Jeu de rôle VO", 55, 18.90, "La maison du 1206 Spooner Avenue est un endroit qui a mal tourné. Au cours des 50 dernières années, 18 personnes y sont mortes, et vous pouvez le sentir. Les portes du 1206 Spooner Avenue sont rester fermées, et personne n'entend jamais les rires d'un enfant la nuit. Dans les heures les plus noirs de la nuit, personne n'entend jamais la musique venant d'une pièce sombre. Music From a Darkened Room est un scénario pour le jeu de rôle Delta Green.", "3.9/5"),
(20, "Delta Green - Jack Frost", "Jeu de rôle", "Jeu de rôle VO", 43, 34.95, "Un scénario pour Delta Green sur la période la plus merveilleuse de l'année Une vallée rurale de l'Alabama a toujours été sujette à de violentes vagues de froid. Le 22 décembre 1998, la pire tempête Jack Frost de l'histoire a frappé la ville agricole de Willis. Un gel persistant et une inondation soudaine ont tué des dizaines de personnes. Vos joueurs ont une vue au sol de cette tempête apocalyptique. Leurs scientifiques, issus d'un projet de recherche ultra-classifié sur les OVNI, soupçonnent que quelque chose d'autre dans le monde est à l'œuvre. Leur enquête pourrait révéler une menace plus vaste et plus terrifiante qu'ils ne pourraient le concevoir. Jack Frost est un scénario pour Delta Green : The Role-Playing Game. Il met en scène l'autre facette de l'un des conflits les plus meurtriers de Delta Green : les chercheurs et les soldats du légendaire programme MAJESTIC. PROJET PLUTO : Les experts des laboratoires ultra-secrets de la Zone 51. OPERATION BLUE FLY : Des parachutistes et des pilotes entraînés à récupérer des technologies extraterrestres. NRO DELTA : Les mortels hommes en noir qui gardent les secrets de l'Amérique pour l'Amérique elle-même. Des recherches approfondies et des dizaines de documents donnent vie à cette opération tentaculaire. Alors, emmitouflez-vous. Buvez votre cidre et votre vin. Mettez quelques bûches supplémentaires sur le feu et rapprochez votre famille. Faites comme si vous n'entendiez pas les bruits du dehors. Dites-vous que ce n'est que le vent. Ce ne doit être que le vent. On dirait que Jack Frost vient encore en ville.", "4/5"),
(20, "Action Potential", "Jeu de rôle", "Jeu de rôle VO", 23, 18.00, "Ensemble, vous commettez des crimes et vous vous frayez un chemin dans un univers hostile et impitoyable. Votre équipage cherchera-t-il l'infamie et la fortune en tant que contrebandiers exploitant des technologies illégales ? Peut-être deviendrez-vous des assassins très bien payés travaillant pour l'une des autres factions ? Allez-vous viser plus haut, en jetant votre dévolu sur les mégacorps géants et en préparant votre ascension dans leurs rangs ? Ou bien avez-vous un objectif plus noble... celui de voir votre équipage se battre contre la cruauté et l'injustice, s'efforçant de faire de la galaxie un endroit meilleur ! Rassemblez des joueurs, prenez des dés, et jouez pour découvrir l'univers de Action Potential !", "4,1/5"),
(20, "Set de 7 Mini Dés JDR Chessex : Scarab Jade / Gold", "Set de dés", "Dés en résine", 62, 5.95, "Il se compose des dés suivants: 1xD4 1xD6 1xD8 2xD10 (un pour les unités, l'autre pour les dizaines) 1xD12 1xD20", "3,2/5"),
(20, "Set de 7 Mini Dés JDR Chessex : Glitter Ruby Red/Gold", "Set de dés", "Dés en résine", 36, 5.95, "Il se compose des dés suivants: 1xD4 1xD6 1xD8 2xD10 (un pour les unités, l'autre pour les dizaines) 1xD12 1xD20", "3,6/5"),
(20, "Set de 7 Dés JDR Sirius Dice : Blue Hawaiian", "Set de dés", "Dés en résine", 25, 18.00, "Il se compose des dés suivants: 1xD4 1xD6 1xD8 2xD10 (un pour les unités, l'autre pour les dizaines) 1xD12 1xD20", "4.7/5"),
(20, "Set de Dés JDR Argent", "Set de dés", "Dés en résine", 57, 12.95, "Il se compose des dés suivants: 1xD4 1xD6 1xD8 2xD10 (un pour les unités, l'autre pour les dizaines) 1xD12 1xD20", "3.3/5"),
(20, "Coffret Cadeau JDR - 5 Sets de Dés + Piste à Dés", "Set de dés", "Dés en résine", 21, 56.90, "Vous voulez lancez dans le jeu de rôle ou bien, vous cherchez un cadeau efficace à faire à un amateur de JDR ? Alors ce coffret cadeau pour rôliste est le choix idéal. En effet, ce superbe ensemble contient 5 beaux sets de dés et une piste à dés, le tout présenté dans une magnifique boîte-cadeau. Économisez sur les sets de dés et la piste à dés. Commencez le jeu de rôle sur table dans de bonnes conditions. Faites plaisir à un amateur de jdr en lui offrant ce coffret-cadeau. Jouez avec des beaux sets de dés pour encore plus de plaisir. Avec ce coffret, vous faites des économies sur l'achat de sets de dés et d'une piste séparément. De plus, il permettra à son possesseur de commencer à jouer au jeu de rôle sur table dans les meilleures conditions possibles.", "4.5/5"),
(20, "Set de dés - Nuage translucide", "Set de dés", "Dés en résine", 66, 14.90, "Vous en avez assez de votre set de dé classique ?  Vous cherchez des dés à la fois beaux et originaux ? Les dés de la collection nuage translucide sont fait avec une résine écologique transparente avec une injection d'encre, leur donnant l'aspect d'un drapé de soie.", "3.8/5"),
(10, "Set de dés en obsidienne, set de dés en pierre semi précieuse", "Set de dés", "Dés en pierre", 13, 84.95, "Un magnifique set de dés en odsidienne contenant: 1D4 1D6 1D8 2D10 1D12 1D20", "5/5"),
(10, "Set de dés en fluorite verte, set de dés en pierre semi précieuse", "Set de dés", "Dés en pierre", 12, 84.95, "Un magnifique set de dés en odsidienne contenant: 1D4 1D6 1D8 2D10 1D12 1D20", "5/5"),
(20, "D100 métallique couleur cuivre", "Set de dés", "Dés en métal", 30, 34.99, "D100 en métal de 50mm de diamètre.Fabriqué en alliage de zinc, il est plus lourd qu'un dé normal et très agréable au toucher. Présenté dans un boitier metallique comprenant un insert en mousse pour le caler pendant le transport.", "3.9/5"),
(20, "Set de dés : Svetoid Metal", "set de dés", "Dés en métal", 40, 39.99, "Set de dés en métal contenant 1D4 1D6 1D8 2D10 1D12 1D20", "4,5/5"),
(20, "Tour à dés Bandua", "Tour à dés", "Tour à dés", 80, 18.95, "Chaque Tour à dés Bandua se plie pour un gain de place. Leur face avant transparente laisse apercevoir la chute des dés et elles se déclinenet en plusieurs coloris.", "4/5"),
(20, "Tour à Dés Tech Make - Standard", "Tour à dés", "Tour à dés", 56, 7.50, "Foncionnelle et pratique, la Tour à Dés Tech Make - Standard peut servir de rangement pour vos dés entre deux parties et pendant celles-ci, éviter les jets intempestifs sur le plateau de jeu.", "4.3/5"),
(10, "Tour à dés médiévale", "Accessoires", "Tour à dés", 18, 48.90, "Tous les regards sont tournés vers vous, le boss de la campagne est sur le point de mettre son plan à exécution et vous êtes le dernier à pouvoir le stopper, dans une action héroïque.Vous lancez vos dés qui roulent en plein milieu de la table, renversant toutes les figurines des PJ et PNJ. Le MJ râle parce qu'il va devoir refaire le placement des pions, pendant que vous regardez le résultat du dé : un échec critique, le 4e de la soirée…", "5/5"),
(10, "Tour de dés Dice tower Active", "Accessoires", "Tour à dés", 22, 39.00, "Elle est en trois parties, imprimées en 3d. Différentes couleurs de plastique sont au choix. Le délai d'envoi pour une tour non peinte est de deux jours. Le délai d'envoi pour une tour peinte est d'environ une semaine.", "4,6/5"),
(10, "DND Dice Tower pour les jeux de rôle", "Accessoires", "Tour à dés", 11, 71.75, "Il s'agit d'une tour de dés imprimée en 3D. Vous lancez les dés sur le dessus, puis ils descendent les escaliers et enfin entrent dans le plateau de dés. Les dés font un son satisfaisant lorsqu'ils descendent les escaliers. Il s'agit d'une surface très lisse et ne causera aucune usure aux dés ! Si vous souhaitez économiser de l'espace, le bac à dés est amovible. Cette tour est faite de matériaux de haute qualité, vous pouvez l'utiliser telle quelle, ou vous pouvez la colorier vous-même, laissez libre cours à votre imagination!", "5/5"),
(20, "Alien - Écran", "Accessoires", "Écran", 41, 25.00, "Ecran de jeu trois volets au format paysage, accompagné d'une carte A2 de l'espace connu.", "3.9/5"),
(20, "Aquablue - Écran", "Accessoires", "Écran", 30, 25.00, "Ecran de jeu trois volets au format paysage, au motif de profondeur marine", "3.2/5"),
(20, "Warhammer Fantasy - Ecran et guide du meneur de jeu", "Accessoires", "Écran", 29, 29.90, "Aussi solide et impressionnant que les redoutes d'Altdorf, l'Écran du Meneur de Jeu pour Warhammer Fantasy fournit un résumé des règles les plus importantes du jeu, accompagné d'une sélection des outils nécessaires au Meneur de Jeu. Avec d'un côté une superbe illustration des villes du Vieux Monde, et de l'autre des tableaux importants, des références et des règles de jeu, cet écran est essentiel pour protéger vos plans machiavéliques des yeux indiscrets de vos joueurs. Un Guide du Meneur offre 32 pages de conseils pratiques, d'astuces, de règles optionnelles, et d'aides de jeu indispensables, aussi bien pour les Meneurs de Jeu débutants que pour les vétérans. Cet Écran du Meneur de Jeu, accompagné de son Guide, enrichira vos campagnes, les rendant plus intéressantes et stimulantes.", "4.6/5"),
(20, "Chroniques Oubliées Fantasy - Ecran du MJ", "Accessoires", "Écran", 46, 29.90, "Chroniques OubliéesTM Fantasy est un jeu de rôle médiéval-fantastique doté d'un système simple mais complet basé sur l'OGL3.5 et permettant notamment d'initier ou de s'initier au jeu de rôle.Fun, moderne et fidèle aux racines du premier des jeux de rôle, le système de jeu de Chroniques OubliéesTM vous permettra d'adapter facilement tous les scénarios et campagnes parues en OGL 3.5.", "3.8/5"),
(20, "Runic Black & golden Velour Dice Bag", "Accessoires", "Rangement", 96, 7.50, "Bourse à dés Runique. Satin à l'intérieur/Velour à l'extérieur Dimensions: 10x15cm", "4.9/5"),
(20, "Sword & Sorcery Critical Hits Bag (Black)", "Accessoires", "Rangement", 88, 5.95, "Un sac en tissu fin sérigraphié avec une impression d'argent métallique. Utilisez ce sac pour tirer au hasard des coups critiques pendant vos quêtes dans une partie de Sword and Sorcery. Le sac est de couleur noir.", "4,6/5"),
(20, "Sword & Sorcery Critical Hits Bag (Purple)", "Accessoires", "Rangement", 74, 5.95, "Un sac en tissu fin sérigraphié avec une impression d'argent métallique. Utilisez ce sac pour tirer au hasard des coups critiques pendant vos quêtes dans une partie de Sword and Sorcery.Le sac est de couleur violet.", "4,6/5"),
(20, "Petite Bourse à Fond Plat", "Accessoires", "Rangement", 47, 1.95, "Bourse à fond plat, en tissu type suédine, fermée avec un cordon Queue de Rat.", "4.4/5"),
(20, "Bourse à dés en cuir", "Accessoires", "Rangement", 26, 29.90, "Objet fait main - bourse en cuir artisanal, plus le cuir vieillit plus il gagne un lustre unique ; Un objet fait pour durer longtemps - qui dit cuir véritable dit grande durée de vie ; Logo personnalisable - choisissez le symbole qui viendra orner votre aumônière en cuir marron ; Multi-usage - votre bourse à dés peut aussi vous servir de bourse porte monnaie, ou pour transporter vos dés ; Pratique et efficace - ses dimensions (24cm ouverte) vous permettent de stocker un nombre important de dés tout en les protégeant efficacement et le système de fermeture empêche vos dés de s'enfuir.", "4,9/5"),
(20, "Boite à dés en bois - Dragon & Wyverne", "Accessoires", "Rangement", 31, 44.90, "Ces boites à dés sont placées sous le signe draconique, qu'il s'agisse du modèle Wyverne ou du modèle Dragon. Ces deux créatures mythiques, emblématique du jeu de rôle, sont gravées sur chaque boite et sont prêtes à relâcher leur terrible souffle de feu sur les imprudents qui oseront s'approcher de trop près de vos précieux dés. La beauté du bois brut - Cette boîte est en vrai bois, lui donnant un toucher agréable et une odeur sans égale ; Classe et efficace - Votre coffret à dés est beau, mais grâce à son système de fermeture aimantée vous êtes sûr qu'il ne s'ouvrira pas tout seul ; Une boite solide - Vous pouvez déplacer vos dés sans crainte, ils sont à l'abri des chocs ; Choisissez la forme et la couleur - Repartez avec le modèle qui vous correspond vraiment.", "5/5");

CREATE TABLE fournisseur(
   Id_fournisseur INT AUTO_INCREMENT,
   fournisseur_nom VARCHAR(50),
   fournisseur_adresse VARCHAR(50),
   fournisseur_ville VARCHAR(50),
   fournisseur_code_postale VARCHAR(10),
   fournisseur_contact VARCHAR(50),
   PRIMARY KEY(Id_fournisseur)
);

INSERT INTO fournisseur (fournisseur_nom, fournisseur_adresse, fournisseur_ville, fournisseur_code_postale, fournisseur_contact) VALUES
 ("Morki industrie", "373 Commercial Rd, Stepney Green", "Londres", "E1 0LA", "Oscar Zrak"),
 ("Philibert", "12 rue de la Grange", "Strasbourg", "67000", "Clara Dupont"),
 ("Margoulin", "41 Rue des Musardises", "Marseille", "13015", "Constantin Dupond"),
 ("Kölnischwasser", "Am Schokoladenmuseum 1A", "Köln", "50678", "Helmut Schokolade"),
 ("Colosseo dei campioni", "Via Panisperna, 214","Roma", "00184", "Tommaso Osteria");

CREATE TABLE staff(
   Id_staff INT AUTO_INCREMENT,
   staff_nom VARCHAR(50),
   staff_prenom VARCHAR(50),
   staff_adresse VARCHAR(50),
   staff_telephone VARCHAR(50),
   staff_mail VARCHAR(50),
   staff_fonction VARCHAR(50),
   staff_ville VARCHAR(100),
   staff_code_postale VARCHAR(5),
   PRIMARY KEY(Id_staff)
);

INSERT INTO staff (staff_nom, staff_prenom, staff_adresse, staff_telephone, staff_mail, staff_fonction, staff_ville, staff_code_postale) VALUES
("Cretel", "Dylan", "12 rue de France", "06 52 98 45 23", "CretelDylan@gmail.com", "CEO", "Amiens", "80000"),
("Cailly", "Quentin", "15 rue d'Allemage", "06 98 56 12 47", "CaillyQuentin@gmail.com", "Directeur commercial", "Amiens", "80000"),
("Debro", "Loic", "16 rue d'Italie", "06 45 89 56 79", "DebroLoic@gmail.com", "Vendeur", "Amiens", "80000"),
("Peba", "Eloise", "2 rue d'Angleterre", "06 87 18 59 25", "PebaEloise@gmail.com", "Vendeur", "Amiens", "80000"),
("Liva", "Deborah", "5 rue de Belgique", "07 54 62 56 98", "LivaDeborah@gmail.com"," Vendeur", "Amiens", "80000");

CREATE TABLE vend(
   Id_client INT,
   Id_staff INT,
   PRIMARY KEY(Id_client, Id_staff),
   FOREIGN KEY(Id_client) REFERENCES client(Id_client),
   FOREIGN KEY(Id_staff) REFERENCES staff(Id_staff)
);

CREATE TABLE gere(
   Id_produit INT,
   Id_staff INT,
   PRIMARY KEY(Id_produit, Id_staff),
   FOREIGN KEY(Id_produit) REFERENCES produit(Id_produit),
   FOREIGN KEY(Id_staff) REFERENCES staff(Id_staff)
);

CREATE TABLE fourni(
   Id_produit INT,
   Id_fournisseur INT,
   numero_commande_fourni VARCHAR(50),
   PRIMARY KEY(Id_produit, Id_fournisseur),
   FOREIGN KEY(Id_produit) REFERENCES produit(Id_produit),
   FOREIGN KEY(Id_fournisseur) REFERENCES fournisseur(Id_fournisseur)
);

CREATE TABLE livre(
   Id_fournisseur INT,
   Id_staff INT,
   date_liv DATETIME,
   PRIMARY KEY(Id_fournisseur, Id_staff),
   FOREIGN KEY(Id_fournisseur) REFERENCES fournisseur(Id_fournisseur),
   FOREIGN KEY(Id_staff) REFERENCES staff(Id_staff)
);

CREATE TABLE commande(
   Id_client INT,
   numero_commande_client VARCHAR(50) ,
   date_commande DATETIME,
   date_facturation DATETIME,
   commande_statut VARCHAR(50) ,
   moyen_paiement VARCHAR(50) ,
   delai_liv DATE,
   prix_total INT,
   PRIMARY KEY(Id_client, numero_commande_client),
   FOREIGN KEY(Id_client) REFERENCES client(Id_client)
);

CREATE TABLE responsable(
   Id_staff INT,
   Id_staff_1 INT,
   PRIMARY KEY(Id_staff, Id_staff_1),
   FOREIGN KEY(Id_staff) REFERENCES staff(Id_staff),
   FOREIGN KEY(Id_staff_1) REFERENCES staff(Id_staff)
);