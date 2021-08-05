<!-- Inspiré de : https://github.com/Archivistes75/registre_entrees/blob/master/README.md -->

## Noms de fichiers

Les fichiers doivent, autant que possible, respecter les règles de nommage suivantes :

`arreteCirculationMarchandises-<ARR_INSEE>_<COLL_NOM>_<ARR_DATE>.csv`

* ARR_INSEE : Code INSEE relatif à l'arrêté (ex. 13001)
* COLL_NOM : Nom de la commune associée (ex. Aix-en-Provence)
* ARR_DATE : Date de l'arrêté (ex. 2001-04-12)

> Exemple : `arreteCirculationMarchandises-13001_Aix-en-Provence_2001-04-12.csv`
> 
## Format de fichier
Le format de fichier retenu pour la publication des données est le **CSV** (Comma Separated Values, valeurs séparées par des virgules).

Les fichiers doivent, sauf exception et autant que possible, respecter les règles de formatage suivantes :

* l’**encodage** des caractères est **UTF-8**,
* le séparateur des **colonnes** est la **virgule**,
* le séparateur des **nombres décimaux** est le **point**,
* le séparateur de **valeurs multiples** dans un champ est le caractère **|**,
* si un champ contient une virgule, il doit être entouré de **guillemets doubles**,
* chaque ligne doit avoir **le même nombre de champs**,
* le type **MIME** ou Content-Type est **text/csv**.

> Vous pouvez vous inspirer du fichier exemple [exemple-valide.csv](exemple-valide.csv)

## Mise en conformité

Ces conseils reprennent ceux du [Schéma des données locales publié par Open Data france](https://scdl.opendatafrance.net/docs/recommandations-relatives-aux-jeux-de-donnees.html)

Les fichiers doivent comporter :

   * **Toutes les colonnes**, y compris celles dont les cellules ne sont pas renseignées, dans le bon ordre, et avec des en-têtes correctement nommées sur la première ligne (nom correspondant strictement au schéma)
   * **Autant de lignes que nécessaire** comprenant des cellules dont les valeurs peuvent être **obligatoires** (elles doivent être impérativement renseignées) ou **optionnelles** (elles sont seulement recommandées ou soumises à condition de disponibilité / pertinence)
   * Traitement des **cellules vides** (absence de valeur ou valeur équivalente à 0) : ces cellules doivent être laissées vides. 
   <!--
	   * Dans le cas où une valeur numérique est égale à zéro elle doit être écrite 0.0 (zéro [point] zéro)
	   * Dans le cas où des caractères spéciaux sont utilisés pour remplacer des valeurs manquantes (ex. "-" ou "NaN"), cela doit être mentionné dans les métadonnées.
	-->
   * Les **dates** doivent être formées selon la **norme ISO-8601 : YYYY-MM-DD**. 
