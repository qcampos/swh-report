---
	title: Software Heritage
	subtitle: Contribution à un projet libre dont le but est l'archivage à long terme de notre patrimoire logiciel
	author: Quentin Campos
	inst: Université Paris-Est Marne-la-Vallée
	date: "\\today{}"
	fontsize: 12pt
	lang: french
...

# Introduction

##

Quentin Campos - M2 Génie Logiciel

Stage de fin d'études réalisé d'Avril à Septembre au sein de
**l'Inria**, dans le centre de recherche de Paris.

\center ![Photo de l'Inria Paris](images/inria-paris.jpg)

##

\begincols

\column{0.4\textwidth}

\center ![Logo Inria](images/logo-inria.png)

\stopcols

\vfill

**Institut public de recherche** fondé en 1967 dans le cadre du plan calcul.

- Incube de nombreux **projets libres** (OCaml, IRILL).


## Software Heritage

\begincols

\column{0.60\textwidth}

- **Archiver** le code source.
- **Protéger** son contenu.
- **Partager** à la demande.

<p></p>

- Projet libre.

\column{0.40\textwidth}

\center ![Software Heritage](images/logo-swh.png)

\stopcols

\vfill

\center L'initiative à été lancée par Roberto Di Cosmo\
et Stefano Zacchiroli au sein de l'Inria.



# Architecture

## Archiver

\begincols

\column{0.7\textwidth}

> - **Parcourir** des sources à la recherche de contenu.

> - **Télécharger** les contenus dans \swh{}.

> - **Vérifier** ponctuellement les sources pour mettre à jour
>   \swh{}.

\column{0.3\textwidth}

\center \includegraphics[width=4cm]{images/swh-collect.jpg}

\stopcols

## Protéger

\begincols

\column{0.7\textwidth}

Les \entity{fichiers sources} sont enregistrés dans un **blob
storage** clef-valeur.

> sha1(contenu) -> fichier source.

\column{0.3\textwidth}

\center \includegraphics[width=4cm]{images/swh-preserve.jpg}

\stopcols

## Protéger

\begincols

\column{0.7\textwidth}

\swh{} conserve **l'historique** des
\entity{projets logiciels}.

- Les **dépôts** sont accompagnés de leurs **commits**.

- Les **révisions** et **tarballs** sont enregistrées comme des
  **répertoires**.

\column{0.3\textwidth}

\center \includegraphics[width=4cm]{images/swh-preserve.jpg}

\stopcols

## Protéger

\begincols

\column{0.7\textwidth}

Ces données sur la **structure** sont stockées dans une **base de
données** Postgres.

\column{0.3\textwidth}

\center \includegraphics[width=4cm]{images/swh-preserve.jpg}

\stopcols

## Préserver

\begincols

\column{0.7\textwidth}

\center 150 TB de fichiers sources

\center \includegraphics{images/courbes-files.png}

\column{0.3\textwidth}

\center \includegraphics[width=4cm]{images/swh-preserve.jpg}

\stopcols

## Préserver

\begincols

\column{0.7\textwidth}

\center 5 TB de DB Postgres

\center \includegraphics{images/courbes-others.png}

\column{0.3\textwidth}

\center \includegraphics[width=4cm]{images/swh-preserve.jpg}

\stopcols

## Partager

\begincols

\column{0.7\textwidth}

> - Le **site web** permet de vérifier si un contenu est **déjà
>   archivé** dans \swh{}.

> - Une **API** publique permet de demander un **dépôt**, une révision
>   ou un répertoire.

\column{0.3\textwidth}

\center \includegraphics[width=4cm]{images/swh-share.jpg}

\stopcols

# Mes contributions

## Archiver

Objectif :

- avoir **plusieurs copies** de chaque \entity{fichier source}.

Difficulté :

- tenir **à jour** la copie de manière asynchrone.

## Archiver

\center ![Choix des fichiers à archiver](images/schema-archiver.pdf)

## Archiver

\begincols

\column{0.54\textwidth}

\center ![Copie effective des fichiers](images/schema-archiver-2.pdf)

\stopcols

## Content Integrity Checker

\center Vérifier **l'intégrité** des \entity{fichiers sources} dans le
storage.

\center Séléctionne **au hasard** des \entity{objets} à tester.

. . .

\begincols

\column{0.5\textwidth}

\center Répare immédiatement depuis une autre copie

\column{0.5\textwidth}

\center Planifie l'archiver pour écraser le fichier corrompu

\stopcols

## Self-healing

\begincols

\column{0.5\textwidth}

\entity{Checker}

- Vérifie l'integrité en continu
- Invalide ou répare les fichiers corrompus

\column{0.5\textwidth}

\entity{Archiver}

- Vérifie l'intégrité à la copie
- Ecrase l'erreur à un archivage ultérieur

\stopcols

## ObjStorage API

\center API REST pour accéder à un object storage à distance avec la **même
interface**.

![](images/remoteobjstorage.pdf)

## ObjStorageCloud



\center Implémentation de ObjStorage qui se connecte à un **cloud**
via la librairie **Apache Libcloud**.

\vfill

\begincols

\column{0.7\textwidth}

![](images/cloudobjstorage.pdf)

\stopcols

## Software Heritage Vault

\center Fournit au téléchargement les objets \swh{} sous forme d'un
*bundle* : leur format original (Dépôt, tarball, ...).

. . .

\begincols

\column{0.48\textwidth}

(1) Une requête est effectuée en amont

. . .

\column{0.48\textwidth}

(2) Le bundle demandé est compilé asynchronement

\stopcols

\vfill

. . .

(3) Le bundle est stocké dans un cache où il est disponible au
téléchargement direct


# Conclusions

## Conclusion

Enrichissant sur le plan **technique** : Python, Gestion de projet.

Plongée dans le monde du **logiciel libre**.

Projet ambitieux dont l'objectif est de devenir une **organisation
internationale indépendante**.


## Conclusion : Post-stage

Devenir **contributeur** dans de \swh{}.

Utiliser \swh{} pour de la **recherche** en Génie Logiciel Empirique.
