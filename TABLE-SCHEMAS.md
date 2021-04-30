## Avec relation
https://git.opendatafrance.net/scdl/menus-collectifs
https://git.opendatafrance.net/scdl/plats-menus-collectifs

## Exemples de schémas

http://schema.data.gouv.fr/etalab/schema-irve/latest.html

http://schema.data.gouv.fr/etalab/schema-lieux-covoiturage/latest.html

http://schema.data.gouv.fr/etalab/schema-stationnement/latest.html
http://schema.data.gouv.fr/schemas/etalab/schema-stationnement/0.1.4/schema.json

### OpenDataFrance

https://git.opendatafrance.net/scdl/equipements

# Guides

## TableSchema

https://specs.frictionlessdata.io/table-schema/#types-and-formats

## JsonSchema

https://schema.data.gouv.fr/schemas/etalab/schema-amenagements-cyclables/0.3.0/schema_amenagements_cyclables.json

```
"required": [
                            "id_local",
                            "code_com_d",
                            "code_com_g",
                            "ame_d",
                            "ame_g"
                        ]
```

## Valeurs multiples

https://json-schema.org/understanding-json-schema/reference/array.html

```
{
  "type": "array",
  "enum": ["ELECTRIQUE", "GAZ NATUREL", "HYBRIDE", "HYDROGENE"]
  "items": {
    "type": "string"
  }
}
```

## Géométrie

- https://gist.github.com/fge/4606371
- https://github.com/geojson/schema
- https://geojson.org/schema/LineString.json