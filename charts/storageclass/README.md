# Storage Class Chart
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/k8s-as-helm)](https://artifacthub.io/packages/search?repo=k8s-as-helm)

## TL;DR;

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/storageclass
```

## Introduction

Helm charts are great! They are really configurable and let you build complicated software stacks in seconds. Tools like [Helmfile](https://github.com/roboll/helmfile) combine helm charts together to allow you to set up an environment consisting entirely of helm releases. 

Let's say, though, you want to add additional code to a third party helm chart. You could make a new chart with your K8s API resource and the third party chart as a dependency, but that requires maintenance which might not be worth it if you only needed a single additional resource created. That's where k8s-as-helm charts come in. These charts wrap a single Kubernetes resource in a helm chart with all the key parameters exposed. 

The storageclass chart deploys a single Kubernetes [Storage Class](https://kubernetes.io/docs/concepts/storage/storage-classes/) object.

## Installation 

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/storageclass
```

## Configuration

The following table lists the configurable parameters of the storageclass chart and their default values.

Parameter | Description | Default
--- | --- | ---
`nameOverride` | override name of the chart component | .Release.Name
`apiVersion` | api version of k8s object | `"v1"`
`annotations` | annotations in yaml map format to be added to the object | `null`
`labels` | labels to add to Storage Class object | `null`
`defaultClass` | boolean to set annotation designating this object as the default storage class | `true`
`bindingMode` | the binding mode for PVCs using this storage class | `WaitForFirstConsumer`
`provisioner` | (REQUIRED) the provisioner to use for this class | ""
`allowVolumeExpansion` | allow expansion of PVCs using this storage class | true
`reclaimPolicy` | configures the retention of the PVC when dynamically created using this class | `Delete`
`parameters` | storage class parameters used for volumes created with this storage class | `null`
`mountOptions` | options used by volumes created by this storage class | `null`

## Example Configuration

For some examples of values used to configure this chart, see [the ci/example values for this chart](./ci/ci-values.yaml)
