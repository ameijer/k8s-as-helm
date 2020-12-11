[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/k8s-as-helm)](https://artifacthub.io/packages/search?repo=k8s-as-helm)
# Kubernetes as Helm (k8s-as-helm)

# Introduction 

[Helm](https://helm.sh/) is Kubernetes' package manager. Use helm charts to quickly install software into your cluster, manage upgrades, and so forth. Helm is powerful, but sometimes users of helm charts need a bit of extra functionality that wasn't included in the original chart they obtain from a third party. Users can fork and modify the original helm chart, but this requires maintenance to keep the chart up to date with its upstream source chart. Alternatively, users can directly define using Kubernetes yaml the extra item they need, but helm itself has no way to apply single Kubernetes resources alone. If your stack relies heavily on helm, or you use tools such as [Helmfile](https://github.com/roboll/helmfile), this can require you to implement cumbersome or hacky work arounds just to add a tiny bit of functionality to an otherwise unmodified third party chart. 

K8s-as-helm was developed to extend Kubernetes primitives up to the helm layer. Each chart in this repository is designed to deploy a single Kubernetes API object (or, in some cases, can be configured to deploy small groups of closely related objects). Perhaps you need just one extra service to point at your Jenkins deployment, so that it can be reached by an un-configurable piece of software? Deploy a [service](https://github.com/ameijer/k8s-as-helm/tree/master/charts/svc) chart alongside the unmodified Jenkins chart. No need to fork the chart just to add a single service spec yaml file. Maybe the implementer of a chart you are using didn't implement a pod disruption budget for its pods? Release a [pdb](https://github.com/ameijer/k8s-as-helm/tree/master/charts/pdb) chart to add your own.

# Design Philosophy 

These charts are designed to set most parts of the API objects to common defaults, and require only the bare minimum of configuration from the user to deploy. That being said, they are also designed to be flexible for more uncommon use cases. If one of these charts doesn't expose some functionality you need from the Kubernetes resource that it deploys, check out the [Contributing](#contributing) section to see how to get that needed functionality exposed for your configuration. 

# Repository Structure

All of the charts in the repo are located in the `charts` directory. The CICD for this repo is implemented using github actions, the code for which can be found in the `.github` directory

# Road Map 

Eventually, this project will maintain a helm chart for every Kubernetes API object. The supported objects are tracked in the table below. 

API Object | Status | Link
--- | --- | ---
`Pod` | TODO | 
`ConfigMap` | :heavy_check_mark: | [configmap](https://github.com/ameijer/k8s-as-helm/tree/master/charts/configmap)
`Ingress` | :heavy_check_mark: | [ingress](https://github.com/ameijer/k8s-as-helm/tree/master/charts/ingress)
`PodDisruptionBudget` | :heavy_check_mark: | [pdb](https://github.com/ameijer/k8s-as-helm/tree/master/charts/pdb)
`Secret` | :heavy_check_mark: | [secret](https://github.com/ameijer/k8s-as-helm/tree/master/charts/secret)
`Service` | :heavy_check_mark: | [svc](https://github.com/ameijer/k8s-as-helm/tree/master/charts/svc)
`ReplicaSet` | TODO |
`ReplicationController` | TODO |
`StatefulSet` | TODO |
`Job` | TODO |
`CronJob` | TODO |
`Deployment` | TODO |
`DaemonSet` | TODO |
`StorageClass` | TODO |
`Volume` | TODO |
`HoirizontalPodAutoscaler` | TODO |
`PodSecurityPolicy` | TODO |
`ClusterRole` | TODO |
`ClusterRoleBinding` | TODO |
`Namespace` | :heavy_check_mark: | [namespace](https://github.com/ameijer/k8s-as-helm/tree/master/charts/namespace)
`PeristentVolume` | TODO |
`PersistentVolumeClaim` | :heavy_check_mark: | [pvc](https://github.com/ameijer/k8s-as-helm/tree/master/charts/pvc)
`Role` | TODO |
`RoleBinding` | TODO |
`ServiceAccount` | TODO |
`NetworkPolicy` | TODO |

# Contributing

Contributions are welcome! If you find an issue with a chart in here, or would like an additional feature to be added, please open an issue. PRs addressing issues are also welcomed. Check out the [Road Map](#road-map) section 


### Copyright 2020 Alex Meijer
