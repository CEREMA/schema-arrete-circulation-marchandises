Ce guide est là pour vous aider à renseigner les bases de données des arrêtés permanents de circulation.

## Autorisation ou Interdiction
Dans certains cas, un arrêté peut autoriser la circulation de véhicules d'un certain type. Dans d'autres cas, il peut interdire. Aussi, un arrêté peut autoriser un certain type de véhicules à l'exception de certains types. 

Afin de résoudre cette problématique autorisation/interdiction, le schéma propose un champ [`REGL_MODALITE`](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#propri%C3%A9t%C3%A9-regl_modalite) prenant comme valeurs `Autorise` ou `Interdit`

Voici un exemple :

> La circulation des poids lourds de plus de 3.5T est interdite, sauf les véhicules d'urgence et de livraison

Nous créons deux lignes (une d'interdiction et une d'autorisation pour les exceptions) :

REGL_MODALITE | VEH_TYPE | VEH_PTAC | VEH_USAGE |
 -- | -- | -- | -- |
 Interdit | Poids lourds | 3.5 |  |
 Autorise | Poids lourds | 3.5 | Livraison\|Poids lourds d'urgence |
 
 \> [Voir l'exemple de Septèmes-les-Vallons](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/EXEMPLES.md#commune-de-sept%C3%A8mes-les-vallons)
 
## Commune entière
Dans certains cas, le règlement s'applique à une commune entière.

Voici un exemple :
> La circulation est interdite sur toute la commune d'Aix-en-Provence

REGL_MODALITE | ZONE_TYPE | ZONE_REF | SECTION_VOIE |
 -- | -- | -- | -- |
 Interdit | Commune entière | Aix-en-Provence | NC  |
 
 Il est important de bien mettre la valeur `NC` dans la colonne `SECTION_VOIE` car cette colonne ne doit pas être laissée vide.
 
 Il peut être plus approprié de mettre le code INSEE de la commune plutôt que son libellé.
 
 REGL_MODALITE | ZONE_TYPE | ZONE_REF | SECTION_VOIE |
 -- | -- | -- | -- |
 Interdit | Commune entière | 13090 | NC  |
 
## Jours et horaires
Les jours et horaires sont formalisés dans un champ [`PERIODE_JH`](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#jours-et-heures-de-circulation---propri%C3%A9t%C3%A9-periode_jh) au format [Opening Hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours) d'OpenStreetMap.

Voici quelques exemples : 


> Les véhicules d'urgence sont autorisés à circuler tous les jours

REGL_MODALITE | VEH_USAGE | PERIODE_JH |
 -- | -- | -- |
 Autorise | Livraison | 24/7 |


> Les véhicules d'approvisionnement des marchés sont autorisés à circuler le week-end de 9h à 12h et les jours fériés de 8h à 12h30

REGL_MODALITE | VEH_USAGE | PERIODE_JH |
 -- | -- | -- |
 Autorise | Véhicules d'approvisionnement des marchés | Sa,Su 09:00-12:00;PH 08:00-12:30 |
 
 
> Les véhicules transportant des matières dangereuses sont autorisés à circuler tous les jours sauf le week-end, de 10h à 12h, puis de 14h à 18h, mais pas pendant les vacances scolaires

REGL_MODALITE | VEH_USAGE | PERIODE_JH |
 -- | -- | -- |
 Autorise | Transport de matières dangereuses | Mo-Fr 10:00-12:00,14:00-18h;SH off |

\> [Voir l'exemple de Gignac-la-Nerthe
](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/EXEMPLES.md#commune-de-gignac-la-nerthe)

## Début et fin de rue
Si le champ [SECTION_VOIE](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema.md#nom-de-la-voie---propri%C3%A9t%C3%A9-section_voie) intègre le nom de la rue, les champs [SECTION_DEBUT_POINT](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#d%C3%A9but-de-la-section---propri%C3%A9t%C3%A9-section_debut_point) et [SECTION_FIN_POINT](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#fin-de-la-section---propri%C3%A9t%C3%A9-section_fin_point) permettent de signaler les début et fin de chaque section règlementée car dans certains cas, ce n'est pas toute la rue qui est règlementée, mais une partie comprise entre deux giratoires ou entre deux intersections, par exemple

Voici quelques exemples : 

### Libellés de voies et d'intersections
> La circulation des véhicules de plus de 7,5T est interdite sur l'avenue Nelson Mandela (RD59c) de l'intersection de la RD8n (Avenue du 8 mai 1945) jusqu'à l'intersection de la route de Calas (RD 543)

REGL_MODALITE | VEH_TYPE | PTAC | SECTION_VOIE | SECTION_DEBUT_REF | SECTION_FIN_REF |
 -- | -- | -- | -- | -- | -- |
 Interdit | Poids lourds | 7.5 | avenue Nelson Mandela (RD59c) | intersection de la RD8n (Avenue du 8 mai 1945) | intersection de la route de Calas (RD 543) |

### Coordonnées de début et de fin
Si vous avez les coordonnées, c'est encore mieux. Vous pouvez les mettre dans les champs `SECTION_DEBUT_POINT` et `SECTION_FIN_POINT`. Le format est `longitude, latitude`. 5 décimales suffisent.

REGL_MODALITE | VEH_TYPE | PTAC | SECTION_VOIE | SECTION_DEBUT_POINT | SECTION_FIN_POINT |
 -- | -- | -- | -- | -- | -- |
 Interdit | Poids lourds | 7.5 | avenue Nelson Mandela (RD59c) | 5.37229, 43.41060 | 5.36585, 43.40828 |
 
 ### Géométrie de la rue
Donner la géométrie de la rue règlementée est sans doute le plus utile. Si vous avez la géométrie de la portion de voie règlementée, alors vous pouvez l'intégrer dans le champ `GEOM_WKT` ou `GEOM_JSON`
 
 REGL_MODALITE | VEH_TYPE | PTAC | GEOM_WKT |
 -- | -- | -- | -- |
 Interdit | Poids lourds | 7.5 |  LINESTRING(5.364190559467414 43.40726403502167,5.365317087253669 43.40776287238391,5.365896444400886 43.40825391140007,5.366218309482673 43.40833964796295,5.367977838596443 43.409150242196034,5.368761043628791 43.40969582836029,5.372162084659675 43.41060772569154) |
