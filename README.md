# Réaliser la création d'un cluster Kubernetes depuis l'API DotNet.

Faites en sorte, depuis l'API DotNet envoyée plus haut, de faire en sorte de pouvoir, au sein d'un cluster, avoir 5 replicas de notre API. Cette configuration sera gérée dans kubernetes via l'utilisation de deux fichiers de ressources: deployment.yml et service.yml qui serviront à la mise en place du cluster.
Pour que ce cluster soit possible, il vous faut dans un premier temps créer l'image à partir de l'application envoyée. Cette image sera créée via deux étapes:
Le build se fera via l'utilisation de l'image mcr.microsoft.com/dotnet/sdk:7.0 alors que la publication se fera via l'utilisation de l'image mcr.microsoft.com/dotnet/aspnet


## Installation du projet : 

```
git init
```
```
git clone https://github.com/marue59/Kubernets_Api_Dotnet.git
```

## Comment créer l'image sur son PC :

```
docker pull bitnami/dotnet-sdk:latest
```
```
docker build -t dotnet-docker .
```
```
docker run --name dotnet-container -d -p 80:80 dotnet-docker
```

## Création de l'image sur Dockerhub aprés avoir crée un repository

```
docker build -t 0811198720119005/dotnet-docker .
```
```
docker tag 0811198720119005/dotnet-docker new-repo:0811198720119005
```
```
docker login
```
```
docker push 0811198720119005/dotnet-docker
```

## Création du cluster K8s et du service : 

```  
```

## Minikube ++ 

[![Actions Status](https://github.com/kubernetes/minikube/workflows/build/badge.svg)](https://github.com/kubernetes/minikube/actions)
[![GoReport Widget]][GoReport Status]
[![GitHub All Releases](https://img.shields.io/github/downloads/kubernetes/minikube/total.svg)](https://github.com/kubernetes/minikube/releases/latest)
[![Latest Release](https://img.shields.io/github/v/release/kubernetes/minikube?include_prereleases)](https://github.com/kubernetes/minikube/releases/latest)
 

[GoReport Status]: https://goreportcard.com/report/github.com/kubernetes/minikube
[GoReport Widget]: https://goreportcard.com/badge/github.com/kubernetes/minikube

<img src="https://github.com/kubernetes/minikube/raw/master/images/logo/logo.png" width="100" alt="minikube logo">

Minikube implémente un cluster Kubernetes local sur macOS, Linux et Windows. [Les principaux objectifs](https://minikube.sigs.k8s.io/docs/concepts/principles/) de minikube sont d'être le meilleur outil pour le développement d'applications Kubernetes locales et de prendre en charge toutes les fonctionnalités Kubernetes qui conviennent.

<img src="https://raw.githubusercontent.com/kubernetes/minikube/master/site/static/images/screenshot.png" width="575" height="322" alt="screenshot">

## Caracteristiques

Minikube exécute la dernière version stable de Kubernetes, avec prise en charge des fonctionnalités standard de Kubernetes telles que :


* [LoadBalancer](https://minikube.sigs.k8s.io/docs/handbook/accessing/#loadbalancer-access) - `minikube tunnel`
* Multi-cluster -  `minikube start -p <name>`
* NodePorts -  `minikube service`
* [Dashboard](https://minikube.sigs.k8s.io/docs/handbook/dashboard/) - `minikube dashboard`
* [Container runtimes](https://minikube.sigs.k8s.io/docs/handbook/config/#runtime-configuration) - `minikube start --container-runtime`


En plus des fonctionnalités conviviales pour les développeurs :

* [Addons](https://minikube.sigs.k8s.io/docs/handbook/deploying/#addons) - un marché permettant aux développeurs de partager des configurations pour exécuter des services sur minikube
* [NVIDIA GPU support](https://minikube.sigs.k8s.io/docs/tutorials/nvidia_gpu/) - pour l'apprentissage automatique
* [Filesystem mounts](https://minikube.sigs.k8s.io/docs/handbook/mount/)

**Pour plus d'informations, consultez le [minikube site officiel](https://minikube.sigs.k8s.io)**

## Installation

Voir le [Guide de démarrage](https://minikube.sigs.k8s.io/docs/start/)

## Documentation

Voir https://minikube.sigs.k8s.io/docs/

# Kubernets_Api_Dotnet
