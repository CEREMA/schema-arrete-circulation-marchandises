### Autorisation ou Interdiction
Dans certains cas, un arrêté peut autoriser la circulation de véhicules d'un certain type dans certaines plages horaires. Dans d'autres cas, il peut interdire. Afin de résoudre cette problématique autorisation/interdiction, le schéma propose un champ [`REGL_MODALITE`](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#propri%C3%A9t%C3%A9-regl_modalite) prenant comme valeurs `Autorise` ou `Interdit`

#### La circulation des poids lourds de plus de 3.5T est interdite, sauf les véhicules d'urgence et de livraison
Nous créons deux lignes (une d'interdiction et une d'autorisation pour les exceptions) :

REGL_MODALITE | VEH_TYPE | VEH_PTAC | VEH_USAGE |
 -- | -- | -- | -- |
 Interdit | Poids lourds | 3.5 |  |
 Autorise | Poids lourds | 3.5 | Livraison\|Poids lourds d'urgence |
 
 \> [Voir l'exemple de Septèmes-les-Vallons](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/EXEMPLES.md#commune-de-sept%C3%A8mes-les-vallons)
 
### Jours et horaires
Les jours et horaires sont formalisés dans un champ [`PERIODE_JH`](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#jours-et-heures-de-circulation---propri%C3%A9t%C3%A9-periode_jh) au format [Opening Hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours) d'OpenStreetMap.

Voici quelques exemples de données : 

_Les véhicules d'urgence sont autorisés à circuler tous les jours_
REGL_MODALITE | VEH_USAGE | PERIODE_JH |
 -- | -- | -- |
 Autorise | Livraison | 24/7 |

_Les véhicules d'approvisionnement des marchés sont autorisés à circuler le week-end de 9h à 12h et les jours fériés de 8h à 12h30_
REGL_MODALITE | VEH_USAGE | PERIODE_JH |
 -- | -- | -- |
 Autorise | Véhicules d'approvisionnement des marchés | Sa,Su 09:00-12:00;PH 08:00-12:30 |
 
_Les véhicules transportant des matières dangereuses sont autorisés à circuler tous les jours sauf le week-end, de 10h à 12h, puis de 14h à 18h, mais pas pendant les vacances scolaires_
REGL_MODALITE | VEH_USAGE | PERIODE_JH |
 -- | -- | -- |
 Autorise | Transport de matières dangereuses | Mo-Fr 10:00-12:00,14:00-18h;SH off |

\> [Voir l'exemple de Gignac-la-Nerthe
](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/EXEMPLES.md#commune-de-gignac-la-nerthe)

### Début et fin
Des champs [SECTION_DEBUT_POINT](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#d%C3%A9but-de-la-section---propri%C3%A9t%C3%A9-section_debut_point) et [SECTION_FIN_POINT](https://github.com/CEREMA/schema-arrete-permanent-circulation/blob/master/schema-page.md#fin-de-la-section---propri%C3%A9t%C3%A9-section_fin_point) permettent de signaler les début et fin de chaque section règlementée sur la voie.
