# Ingress Chart
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/k8s-as-helm)](https://artifacthub.io/packages/search?repo=k8s-as-helm)

## TL;DR;

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/ingress
```

## Introduction

Helm charts are great! They are really configurable and let you build complicated software stacks in seconds. Tools like [Helmfile](https://github.com/roboll/helmfile) combine helm charts together to allow you to set up an environment consisting entirely of helm releases. 

Let's say, though, you want to add additional code to a third party helm chart. You could make a new chart with your K8s API resource and the third party chart as a dependency, but that requires maintenance which might not be worth it if you only needed a single additional resource created. That's where k8s-as-helm charts come in. These charts wrap a single Kubernetes resource in a helm chart with all the key parameters exposed. 

The ingress chart deploys a single Kubernetes Ingress object. 

## Installation 

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/ingress
```

## Configuration

The following table lists the configurable parameters of the ingress chart and their default values.

Parameter | Description | Default
--- | --- | ---
`nameOverride` | override name of the chart component | .Release.Name
`apiVersion` | api version of k8s object | `"v1"`
`annotations` | annotations in yaml map format to be added to the object | `null`
`labels` | labels to add to Ingress object | `null`
`hosts` | yaml list representing the `host` list entries for the Ingress object | `null`
`hosts[].url` | URL of host list entry | `null`
`hosts[].protocol` | the protocol of the host | `http`
`hosts[].path` | the path k8s yaml object containing the contents of the `path` field for the ingress | `null`
`tls` | the list of TLS block entries for the ingress object | `null`
