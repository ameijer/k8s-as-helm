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
`apiVersion` | api version of k8s object | `"networking.k8s.io/v1"`
`ingressClassName` | Specify the class of the ingress | `null`
`annotations` | annotations in yaml map format to be added to the object | `null`
`labels` | labels to add to Ingress object | `null`
`ingressClassName` | IngressClass represents the class of the Ingress | `null`
`hosts` | yaml list representing the `host` list entries for the Ingress object | `null`
`hosts[].url` | URL of host list entry | `null`
`hosts[].protocol` | the protocol of the host | `http`
`hosts[].paths` | the paths k8s yaml object containing the contents of the `paths` field for the ingress | `null`
`tls` | the list of TLS block entries for the ingress object | `null`

## Upgrade

### From 1.0.x to 2.0.x

When using kubernetes 1.19+, the apiVersion is now networking.k8s.io/v1, the hosts hash must be updated to use the new API.

## Example Configuration

For some examples of values used to configure this chart, see [the ci/example values for this chart](./ci/ci-values.yaml)
