SHELL := /bin/bash
.SHELLFLAGS = -ec
.SILENT:
MAKEFLAGS += --silent
.ONESHELL:
default: help

help:
	echo -e "Please use \`make \033[36m<target>\033[0m\`"
	echo -e "👉\t where \033[36m<target>\033[0m is one of"
	grep -E '^\.PHONY: [a-zA-Z_-]+ .*?## .*$$' $(MAKEFILE_LIST) \
		| sort | awk 'BEGIN {FS = "(: |##)"}; {printf "• \033[36m%-30s\033[0m %s\n", $$2, $$3}'

.PHONY: dependencies ## ⬇️ installe les dépendances
dependencies:
	pip install -U pip
	pip install -r requirements.txt
	echo "🏁 Dépendances python installées"

.PHONY: avro-validation  ## 🔎 lint le schéma Avro, pour vérifier s'il est valide
avro-validation:
	# https://github.com/stedolan/jq/issues/1637#issuecomment-693469750
	if jq empty user.avsc; 
		then echo "✅ schéma Avro valide."; 
	else 
		echo "❌ schéma Avro invalide.";
		return 1;
	fi

.PHONY: ls-avro  ## 👓 créé le fichier users.avro, puis le lit sur la base du schéma users.avsc
ls-avro: dependencies avro-validation
	python __main__.py