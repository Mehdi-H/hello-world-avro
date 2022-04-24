# hello-world-avro

Un repo pour découvrir [Apache Avro](https://avro.apache.org/).

## Dépendances

- [Python](./.python-version)
- [jq](https://stedolan.github.io/jq/)

## Usage

- De manière générale, `$> make || make help;`

```plaintext
Please use `make <target>`
👉       where <target> is one of
• avro-validation                 🔎 lint le schéma Avro, pour vérifier s'il est valide
• dependencies                    ⬇️ installe les dépendances
• ls-avro                         👓 créé le fichier users.avro, puis le lit sur la base du schéma users.avsc
```

## Sources

- [Documentation Avro en Python](https://avro.apache.org/docs/current/gettingstartedpython.html)