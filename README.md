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

## Exécution

```sh
$> make ls-avro;

Requirement already satisfied: pip in /Users/.../.pyenv/versions/3.10.3/envs/py-avro-3.10.3/lib/python3.10/site-packages (22.0.4)
Collecting avro==1.11.0
  Using cached avro-1.11.0-py2.py3-none-any.whl
Installing collected packages: avro
Successfully installed avro-1.11.0
🏁 Dépendances python installées

✅ schéma Avro valide

👓 Contenu de users.avro :
{'name': 'Alyssa', 'favorite_number': 256, 'favorite_color': None}
{'name': 'Ben', 'favorite_number': 7, 'favorite_color': 'red'}
```

## Sources

- [Documentation Avro en Python](https://avro.apache.org/docs/current/gettingstartedpython.html)