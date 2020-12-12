# Network Policy Chart
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/k8s-as-helm)](https://artifacthub.io/packages/search?repo=k8s-as-helm)

## TL;DR;

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/networkpolicy
```

## Introduction

Helm charts are great! They are really configurable and let you build complicated software stacks in seconds. Tools like [Helmfile](https://github.com/roboll/helmfile) combine helm charts together to allow you to set up an environment consisting entirely of helm releases. 

Let's say, though, you want to add additional code to a third party helm chart. You could make a new chart with your K8s API resource and the third party chart as a dependency, but that requires maintenance which might not be worth it if you only needed a single additional resource created. That's where k8s-as-helm charts come in. These charts wrap a single Kubernetes resource in a helm chart with all the key parameters exposed. 

The networkpolicy chart deploys a single Kubernetes Network Policy object.

## Installation 

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/networkpolicy
```

## Configuration

The following table lists the configurable parameters of the networkpolicy chart and their default values.

Parameter | Description | Default
--- | --- | ---
`nameOverride` | override name of the chart component | .Release.Name
`apiVersion` | api version of k8s object | `"v1"`
`annotations` | annotations in yaml map format to be added to the object | `null`
`labels` | labels to add to Network Policy object | `null`
`podSelector.matchLabels` | Map of key/value pairs to be used to select pods with matching labels to apply Network Policy to | `null`
`egressRules` | array of egress rules to apply to matching pods. | `[]`
`ingressRules` | array of ingress rules to apply to matching pods. | `[]`
`ingressRules[].selectors` | array of network policy ingress traffic selector statements | `[]`
`ingressRules[].ports` | array of port specifications to apply the ingress rule on | `[]`
`egressRules[].selectors` | array of network policy egress traffic selector statements | `[]`
`egressRules[].ports` | array of port specifications to apply the egress rule on | `[]`

## Example Configuration

For some examples of values used to configure this chart, see (ci/ci-values.yaml)
