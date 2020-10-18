# PDB Chart

## TL;DR;

```console
$ helm repo add ameijer https://ameijer.github.io/helm-chart/
$ helm install my-release ameijer/pdb
```

## Introduction

Helm charts are great! They are really configurable and let you build complicated software stacks in seconds. Tools like [Helmfile](https://github.com/roboll/helmfile) combine helm charts together to allow you to set up an environment consisting entirely of helm releases. 

Let's say, though, you want to add additional code to a third party helm chart. You could make a new chart with your K8s API resource and the third party chart as a dependency, but that requires maintenance which might not be worth it if you only needed a single additional resource created. That's where k8s-as-helm charts come in. These charts wrap a single Kubernetes resource in a helm chart with all the key parameters exposed. 

The PDB chart deploys a single PDB. 

## Installation 

```console
$ helm repo add ameijer https://ameijer.github.io/helm-chart/
$ helm install my-release ameijer/pdb
```

## Configuration

The following table lists the configurable parameters of the nginx-ingress chart and their default values.

Parameter | Description | Default
--- | --- | ---
`nameOverride` | name of the chart component | .Chart.Name
`apiVersion` | controller container image registry | `"policy/v1beta1"`
`minAvailable` | PDB minAvailable value | refer to kubernetes documentation 
`maxUnavailable` | PDB maxUavailable value | refer to kubernetes documentation 
`selector.matchLabels` | (REQUIRED) Yaml Map representation of the label keys and values to match for PDB | `null`
