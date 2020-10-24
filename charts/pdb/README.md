# PDB Chart
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/k8s-as-helm)](https://artifacthub.io/packages/search?repo=k8s-as-helm)

## TL;DR;

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/pdb
```

## Introduction

Helm charts are great! They are really configurable and let you build complicated software stacks in seconds. Tools like [Helmfile](https://github.com/roboll/helmfile) combine helm charts together to allow you to set up an environment consisting entirely of helm releases. 

Let's say, though, you want to add additional code to a third party helm chart. You could make a new chart with your K8s API resource and the third party chart as a dependency, but that requires maintenance which might not be worth it if you only needed a single additional resource created. That's where k8s-as-helm charts come in. These charts wrap a single Kubernetes resource in a helm chart with all the key parameters exposed. 

The PDB chart deploys a single PDB. 

## Installation 

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/pdb
```

## Configuration

The following table lists the configurable parameters of the pdb chart and their default values.

Parameter | Description | Default
--- | --- | ---
`nameOverride` | name of the chart component | .Release.Name
`apiVersion` | api version of object | `"policy/v1beta1"`
`labels` | labels to add to PDB object | `null`
`minAvailable` | PDB minAvailable value | refer to kubernetes documentation 
`maxUnavailable` | PDB maxUnavailable value | refer to kubernetes documentation 
`selector.matchLabels` | (REQUIRED) Yaml Map representation of the label keys and values to match for PDB | `null`
