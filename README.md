# Inception

## Description
Inception est un projet qui vous enseigne les bases de la virtualisation et de l'orchestration de conteneurs avec Docker et Docker Compose.

## Objectifs
- Comprendre le fonctionnement de Docker
- Configurer un environnement multi-conteneurs
- Utiliser Docker Compose pour orchestrer les services
- Mettre en place une infrastructure complète

## Prérequis
- Docker installé
- Docker Compose installé
- Connaissances de base en ligne de commande
- Pour que les sous-domaines fonctionnent, il faut que /etc/hosts (ou le DNS local) résout igrousso.42.fr, static.igrousso.42.fr et portainer.igrousso.42.fr vers l'IP de la machine hôte.
## Installation
```bash
git clone <repository>
cd inception
```

## Utilisation
```bash
make
https://igrousso.42.fr pour wordpress
https://igrousso.42.fr/adminer/ pour adminer
https://static.igrousso.42.fr pour le site static
https://portainer.igrousso.42.fr pour portainer
```

## Structure du Projet
```
inception/
├── srcs/
│   ├── docker-compose.yml
│   └── requirements/
├── Makefile
└── README.md
```

## Ressources
- [Documentation Docker](https://docs.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
