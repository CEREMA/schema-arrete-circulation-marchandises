## Conventions de nommage
Dans ce schéma, les champs sont écrits en majuscules. Le préfixe indique la famille du champ. Ces familles sont visualisables sur [le diagramme des champs](https://raw.githubusercontent.com/CEREMA/schema-arrete-circulation/master/arrete-permanent-circulation.png). 

![](https://raw.githubusercontent.com/CEREMA/schema-arrete-circulation/master/arrete-permanent-circulation.png)

## Autorisation ou Interdiction
Dans certains cas, un arrêté peut autoriser la circulation de véhicules d'un certain type dans certaines plages horaires. Dans d'autres cas, il peut interdire. Afin de résoudre cette problématique autorisation/interdiction, le schéma propose un champ [`REGL_MODALITE`](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#propri%C3%A9t%C3%A9-regl_modalite) prenant comme valeurs `Autorise` ou `Interdit`

Si un règlement interdit sur une voie la circulation des poids lourds de plus de 3.5T, sauf les véhicules d'urgence et de livraison, alors nous devrons créer deux lignes (une d'interdiction et une d'autorisation pour es exceptions) :

REGL_MODALITE | VEH_TYPE | VEH_PTAC | VEH_USAGE |
 -- | -- | -- | -- |
 Interdit | Poids lourds | 3.5 |  |
 Autorise | Poids lourds | 3.5 | `Livraison|Poids lourds d'urgence`  |

## Jours et horaires
Les jours et horaires sont formalisés dans un champ [`PERIODE_JH`](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#jours-et-heures-de-circulation---propri%C3%A9t%C3%A9-periode_jh) au format [Opening Hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours) d'OpenStreetMap.

## Géométrie
Dans ce schéma, les champs [GEOM_JSON](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#g%C3%A9om%C3%A9trie-au-format-geojson---propri%C3%A9t%C3%A9-geom_json) et [GEOM_WKT](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#g%C3%A9om%C3%A9trie-au-format-wkt---propri%C3%A9t%C3%A9-geom_wkt) permettent, au choix, d'intégrer la géométrie de la voie, ou de la portion de voie réglementée. Le support du WKT (Well Known Text) a été autorisé car ce dernier est plus familier dans les services SIG que le JSON.

### Début et fin
Des champs [SECTION_DEBUT_POINT](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#d%C3%A9but-de-la-section---propri%C3%A9t%C3%A9-section_debut_point) et [SECTION_FIN_POINT](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#fin-de-la-section---propri%C3%A9t%C3%A9-section_fin_point) permettent de signaler les début et fin de chaque section règlementée sur la voie.

----

Mon schéma est :

- [ ] **en investigation :** il est envisagé de créer un schéma pour modéliser une situation
- [x] **en cours d'élaboration :** ce schéma fait l'objet de discussions auprès de multiples partenaires
- [ ] **en construction