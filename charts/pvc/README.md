# PVC Chart
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/k8s-as-helm)](https://artifacthub.io/packages/search?repo=k8s-as-helm)

## TL;DR;

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/pvc
```

## Introduction

Helm charts are great! They are really configurable and let you build complicated software stacks in seconds. Tools like [Helmfile](https://github.com/roboll/helmfile) combine helm charts together to allow you to set up an environment consisting entirely of helm releases. 

Let's say, though, you want to add additional code to a third party helm chart. You could make a new chart with your K8s API resource and the third party chart as a dependency, but that requires maintenance which might not be worth it if you only needed a single additional resource created. That's where k8s-as-helm charts come in. These charts wrap a single Kubernetes resource in a helm chart with all the key parameters exposed. 

The PVC chart deploys a single PVC (Persistent Volume Claim). 

## Installation 

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/pvc
```

## Configuration

The following table lists the configurable parameters of the nginx-ingress chart and their default values.

Parameter | Description | Default
--- | --- | ---
`nameOverride` | override name of the chart component | .Chart.Name
`apiVersion` | api version of k8s object | `"policy/v1beta1"`
`annotations` | annotations in yaml map format to be added to the object | `null`
`labels` | labels to add to PVC object | `null`
`accessModes` | yaml list representing the values for .spec.accessModes | `null`
`storageClassName` | storage class name to use to back the PVC | `default`
`volumeBindingMode` | the volume binding mode for the PVC | `null`
`size` | (REQUIRED) the size of the PVC | ""
