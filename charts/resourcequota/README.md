# ResourceQuota Chart
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/k8s-as-helm)](https://artifacthub.io/packages/search?repo=k8s-as-helm)

## TL;DR;

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/resourcequota
```

## Introduction

Helm charts are great! They are really configurable and let you build complicated software stacks in seconds. Tools like [Helmfile](https://github.com/roboll/helmfile) combine helm charts together to allow you to set up an environment consisting entirely of helm releases.

Let's say, though, you want to add additional code to a third party helm chart. You could make a new chart with your K8s API resource and the third party chart as a dependency, but that requires maintenance which might not be worth it if you only needed a single additional resource created. That's where k8s-as-helm charts come in. These charts wrap a single Kubernetes resource in a helm chart with all the key parameters exposed.

The resourcequota chart deploys a single Kubernetes ResourceQuota object.

## Installation

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/resourcequota
```

## Configuration

The following table lists the configurable parameters of the resourcequota chart and their default values.

Parameter | Description | Default
--- | --- | ---
`nameOverride` | override name of the chart component | .Release.Name
`apiVersion` | api version of k8s object | `"v1"`
`namespace` | namespace where the ResourceQuota will be created (defaults to the release namespace) | `null`
`annotations` | annotations in yaml map format to be added to the object | `null`
`labels` | labels to add to ResourceQuota object | `null`
`hard` | map describing the hard quota limits to apply | `{}`
`scopes` | array of scope names that the quota should apply to | `[]`
`scopeSelector` | scope selector definition with match expressions | `{}`

## Example Configuration

For some examples of values used to configure this chart, see [the ci/example values for this chart](./ci/ci-values.yaml)
