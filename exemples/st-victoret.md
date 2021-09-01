# Arrêté de Saint-Victoret
<img src=https://raw.githubusercontent.com/CEREMA/schema-arrete-circulation-marchandises/master/exemples/st-victoret.png width='60%'>

### `COLL_NOM`, `COLL_INSEE`
Le code INSEE de la commune est 13102

| COLL_NOM | COLL_INSEE
| -- | --
| Commune de Saint-Victoret | 13102

### `ARR_REF`
Nous trouvons dessus la référence de l'arrêté

![](https://raw.githubusercontent.com/CEREMA/schema-arrete-circulation-marchandises/master/exemples/st-victoret/arr_ref.png)

| ARR_REF |
| -- |
| 36/2009

### `ARR_OBJET`
Nous trouvons l'objet

![](https://raw.githubusercontent.com/CEREMA/schema-arrete-circulation-marchandises/master/exemples/st-victoret/arr_objet.png)

| ARR_OBJET |
| -- |
| Arrêté règlementant la circulation et le stationnement des poids lourds sur la commune

### `ARR_CONSIDERANT`
Ainsi que le considérant

![](https://raw.githubusercontent.com/CEREMA/schema-arrete-circulation-marchandises/master/exemples/st-victoretarr_considerant.png)

| ARR_CONSIDERANT |
| -- |
| Considérant qu'il est nécessaire pour assurer la sécurité et la tranquilité des administrés, de prendre toutes les dispositions préalables concernant la circulation et la stationnement sur les voies publiques |

### `ARR_DATE`
Ainsi que la date. Attention, il ne faut pas prendre la date de l'arrêté initial, à savoir celui que cet arrêté remplace.

![](https://raw.githubusercontent.com/CEREMA/schema-arrete-circulation-marchandises/master/exemples/st-victoret/arr_date.png)

| ARR_DATE |
| -- |
| 2009-02-20

### `REGL_ARTICLE`, `REGL_MODALITE`, `VEH_TYPES`, `VEH_TONNAGE`, `VEH_USAGES`, `EMPRISE_DESIGNATION`
C'est l'article 2 qu'il faut prendre en compte :

![](https://raw.githubusercontent.com/CEREMA/schema-arrete-circulation-marchandises/master/exemples/st-victoret/article2.png)

On le traduit de la sorte :

| REGL_ARTICLE | REGL_MODALITE | VEH_TYPES | VEH_TONNAGE | VEH_USAGES | EMPRISE_DESIGNATION |
| -- | -- | -- | -- | -- | -- |
| 2 | Interdit | Poids lourds | 3.5 || Commune de Saint-Victoret
| 2 | Autorise | Poids lourds | 3.5 |Livraison\|Poids lourds d'urgence\|Véhicules de travaux| Commune de Saint-Victoret

----
[Voir l'arrêté final de la commune de Saint Victoret en CSV](https://raw.githubusercontent.com/CEREMA/schema-arrete-circulation-marchandises/master/exemples/st-victoret.csv)

