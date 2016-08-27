
# Introduction


# Contexte du stage (non technique)

## Inria
Rapide historique sur l'Inria
## Le projet
## Equipe
Nous sommes fortement encouragés à faire un organigramme pour "montrer notre place dans l'entreprise".


# Software Heritage (présentation plus technique)

## Data model

## Infrastructure
### Serveurs Inria (+ détails)
Les machines physiques, les virtuelles, ... + commencer à donner des chiffres concrets sur la taille des données manipulées.
### Partenaires
Ouverture vers le cloud, internationalisation, indépendance.

## Architecture logicielle
T358 !
### Loaders
### Storage & Database
### Web view

## Travail effectué
Description des parties à suivre et précision sur quels composants des sous-section précédentes le reste du rapport porte.

# Object Storage
## Fonctionnement (key-value, hashcode, API, ...) + Architecture initiale
content-addressable -> Integrity
## Les modifications
- RemoteObjStorage API
- Introduction de la classe abstraite `ObjStorage`
- La découpe des path dans `PathSlicingObjStorage` est désormais un paramètre de la config
- ObjStorage multiplexer + filtres
- Extraction depuis the `swh.storage.objstorage` vers `swh.objstorage` avec commits
- Initialisation facile des ObjStorages despuis `get_objstorage(class, **storage_args)`
- Modification de l'API afin d'ajouter `get_batch` (avec une implémentation par défaut)
- (Wip) Implémentation du CloudObjStorage avec Libcloud
## Content integrity checker
Motivations
- Implémentation de base
- Modification suite à l'ajout du statut 'corrupted' + Refactor pour extension facile.

# Archiver
## Objectif (plusieurs copies)
## Fonctionnement
## Première version
## Seconde version

# SWH Vault


# Méthodologie de travail


# Conclusion


# Annexes
- Spec archiver v1
- Spec archiver v2
- Spec content checker
- MCD complet de la DB
