## Conventions de nommage
Dans ce schéma, les champs sont écrits en majuscules. Le préfixe indique la famille du champ. Ces familles sont visualisables sur le diagramme des champs ci-dessous : 

![](https://raw.githubusercontent.com/CEREMA/schema-arrete-circulation/master/arrete-permanent-circulation.png)

## Géométrie
Dans ce schéma, les champs [GEOM_JSON](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#g%C3%A9om%C3%A9trie-au-format-geojson---propri%C3%A9t%C3%A9-geom_json) et [GEOM_WKT](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#g%C3%A9om%C3%A9trie-au-format-wkt---propri%C3%A9t%C3%A9-geom_wkt) permettent, au choix, d'intégrer la géométrie de la voie, ou de la portion de voie réglementée. Le support du WKT (Well Known Text) a été autorisé car ce dernier est plus familier dans les services SIG que le JSON.

## Duplication
Dans ce schéma, chaque entité (ligne du tableau) concerne une voie et un règlement associé. 

Sachant qu'un règlement peut concerner plusieurs voies et qu'une voie peut posséder plusieurs règlements, et , la donnée finale prendra la forme d'une donnée "aplatie" avec une duplication des lignes le long des multiples voies associées à un règlement, et le long des multiples règlements associés à une voie.

Schématiquement, cela donne dans le tableau de données :
Voie | Règlement |
 -- | -- |
 Voie 1 | Regl1 |
 Voie 2| Regl1 |
 Voie 3| Regl1 |
 Voie 3| Regl2 |

