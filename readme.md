# MON PROJET INCEPTION VERSION 3.4.3

<p align="center">
	<img src="https://github.com/rabatm/rabatm/blob/main/src/inception.png?raw=true" alt="mrabat inception"/>
</p>
👋 Hello World, I'm your friendly README guide for this exciting project! Let's dive right in, shall we? 😃

## À propos

J'ai déjà eu l'occasion de jouer avec Docker, mais grâce à ce projet, j'ai pu approfondir mes connaissances et apprendre à tout faire à la main. Merci à l'équipe Docker, aux bières et, bien sûr, à l'incroyable communauté de 42 Perpignan pour leur soutien continu! 🙌

## Prérequis

- Docker
- Docker Compose
- Git
- Un terminal
- des bières (optionnel)
- de la patience
- de la curiosité
- de la passion
- et maintenant, c'est parti! 🚀

## Installation

1. Installer Docker et Docker Compose

sous Linux (Ubuntu) :

```bash
sudo apt-get update
sudo apt-get install docker.io
sudo apt-get install docker-compose
```

sinon voir sur le site officiel de [Docker](https://docs.docker.com/get-docker/) et [Docker Compose](https://docs.docker.com/compose/install/)

et sinon excuser moi je suis pas la pour vous apprendre a installer docker et docker-compose 😅

2. Cloner le projet

```bash
git clone https://github.com/rabatm/inception_42.git
```

3. crer un fichier .env avec : 

```bash
# nom de domaine pour le site
DOMAIN_NAME=mrabat.42.fr
# donnee pour mysql
MYSQL_ROOT_PASSWORD=superMrabatPass
MYSQL_USER=mrabatdb
MYSQL_PASSWORD=passDbMrabat
MYSQL_ROOT_PASSWORD=mysqlSuperPassRoot

WORDPRESS_DB_NAME=wordpress
WORDPRESS_DB_USER=mrabatdb
WORDPRESS_DB_PASSWORD=unPassWordSuperSecure42
WORDPRESS_DB_HOST=mariadb
WORDPRESS_TITLE=Mrabat
WORDPRESS_ADMIN_USER=leboss
WORDPRESS_ADMIN_PASSWORD=cquilepatron202424
WORDPRESS_ADMIN_MAIL=monsupermail@42.fr
WORDPRESS_USER=mrabat
WORDPRESS_USER_MAIL=lambada@monsupermail.fr
WORDPRESS_PASSWORD=unPassWordSuperSecure42
WORDPRESS_ADMIN_EMAIL=mrabat@monsupermail.fr
WORDPRESS_URL=https://mrabat.42.fr

3. Se déplacer dans le dossier du projet

```bash
cd inception_42
```

4. grace au makefile vous allez pouvoir :

```bash
- **`make start`** : Lance les conteneurs Docker. Cela démarre l'application WordPress.
- **`make stop`** : Arrête les conteneurs Docker en cours d'exécution.
- **`make clean`** : Arrête les conteneurs et supprime toutes les images et volumes créés par Docker Compose.
- **`make fclean`** : Exécute `make clean` et supprime également toutes les données de WordPress et de la base de données.
- **`make remove_data`** : Supprime manuellement les données de WordPress et de la base de données.
- **`make re`** : Reconstruit entièrement l'environnement Docker, équivalent à exécuter `make fclean` suivi de `make all`.
```

## Remerciements

Merci 🙏

## licence

- MIT

* Martin licencie international des technologies

## Auteur

👤 **Martin Rabat**

- Github: [@rabatm](https://github.com/rabatm)

## Ressources Tutorielles pour le Projet Inception

- **Grademe Tutorial**: [Accéder au tutoriel](https://tuto.grademe.fr/inception)
- **Tutoriel ssterdev**: [Lire le guide sur Medium](https://medium.com/@ssterdev/inception-guide-42-project-part-i-7e3af15eb671)

Un grand merci à eux pour le partage de leur savoir et leur aide..

## Blague geek

Pourquoi les conteneurs Docker n'ont-ils jamais froid ?

```
Parce qu'ils utilisent "Docker Swarm" pour rester toujours au chaud !😄

```
