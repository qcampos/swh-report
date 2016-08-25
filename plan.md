
# Introduction


# Contexte du stage (non technique)

## Inria
Rapide historique sur l'Inria
## Equipe
Nous sommes fortement encouragés à faire un organigramme pour "montrer notre place dans l'entreprise".
## Le projet


# Software Heritage (présentation plus technique)

## Infrastructure
### Serveurs Inria (+ détails)
Les machines physiques, les virtuelles, ... + commencer à donner des chiffres concrets sur la taille des données manipulées.
### Partenaires
Il est peut-être délicat/difficile de chiffrer les ressources offertes par Msoft, mais au moins l'évoquer ftsoc.

## Architecture logicielle
T358 !
### Storage
### Database
### Loaders
### Web view

## Travail effectué
Description des parties à suivre et précision sur quels composants des sous-section précédentes le reste du rapport porte.

# Chronologie

L'archiver et l'object storage se sont influencés mutuellement pendant le développement. Pour pouvoir parler d'eux séparément de manière plus claire, j'envisage de faire deux parties distinctes, précédées par une partie de chronologie qui explique les liens entre eux en faisant des référence aux paragraphes.

> Exemple : la création d'une API remote pour ObjStorage parce que l'archiver avait besoin de se connecter dessus

Est-ce vraiment judicieux, étant donné que le gain de clarté rend la lecture moins linéaire ? Vaut il mieux placer cette section avant ou après celles sur les modules ?

(En revanche, je pense qu'il sera plus fluide dans la présentation de meler les deux et d'expliquer chronologiquement les incidences puisqu'elle n'est pas prévue pour le *random access*)


# Archiver
## Objectif (plusieurs copies)
## Fonctionnement
## Première version
## Seconde version


# Object Storage
## Fonctionnement (key-value, hashcode, API, ...) + Architecture initiale
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
- Implémentation de base
- Modification suite à l'ajout du statut 'corrupted' + Refactor pour extension facile.


# SWH Vault


# Conclusion


# Annexes
- Spec archiver v1
- Spec archiver v2
- Spec content checker
- MCD complet de la DB
