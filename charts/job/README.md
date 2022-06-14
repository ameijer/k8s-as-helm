# Job Chart
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/k8s-as-helm)](https://artifacthub.io/packages/search?repo=k8s-as-helm)

## TL;DR;

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/job
```

## Introduction

Helm charts are great! They are really configurable and let you build complicated software stacks in seconds. Tools like [Helmfile](https://github.com/roboll/helmfile) combine helm charts together to allow you to set up an environment consisting entirely of helm releases. 

Let's say, though, you want to add additional code to a third party helm chart. You could make a new chart with your K8s API resource and the third party chart as a dependency, but that requires maintenance which might not be worth it if you only needed a single additional resource created. That's where k8s-as-helm charts come in. These charts wrap a single Kubernetes resource in a helm chart with all the key parameters exposed. 

The pod chart deploys a single Kubernetes Job object.

## Installation 

```console
$ helm repo add k8s-as-helm https://ameijer.github.io/k8s-as-helm/
$ helm install my-release k8s-as-helm/job
```

## Configuration

The following table lists the configurable parameters of the pod chart and their default values.

Parameter | Description | Default
--- | --- | ---
`nameOverride` | override name of the chart component | .Release.Name
`apiVersion` | api version of k8s object | `"batch/v1"`
`annotations` | annotations in yaml map format to be added to the object | `null`
`labels` | labels to add to Job object | `null`
`podAnnotations` | annotations in yaml map format to be added to the Pod object | `null`
`podLabels` | labels to add to Pod object | `null`
`containers` | Array of container objects in the job pods | `[]`
`containers[].name` | The name of the given container | `null`
`containers[].image` | The image of the given container | `null`
`containers[].extraSettings` | YAML representation of additional config settings for the given container | `null`
`containers[].volumeMounts` | Map of volume mount names to settings for each given mount | `null`
`dnsPolicy` | The job pod DNS policy | `ClusterFirst`
`restartPolicy` | The restart policy of the pods in the job | `Always`
`saName` | The job pod service account name | `default`
`tgps` | The job pods' terminationGracePeriodSeconds setting | `30`
`extraSettings` | Yaml representation of any additional required pod settings | `null`
`volumes` | Mapping of volume name to volume settings for each volume mount used by the job pods | `null`
`backoffLimit` | The job's backoffLimit settings. Leave unset to use defaults | `null`
`activeDeadlineSeconds` | The maximum time the job may take. Leave unset to use default 600 seconds | `null`
`parallelism` | The parallelism of the pods in the job. Leave unset to use default of no parallelism | `null`
`completions` | The number of successful pod completions for the job. Leave unset to use the default of 1 | `null`
`completionMode` | Set to `Indexed` to pass an index to each pod. Leave unset to omit index passing. | `null`
`ttlSecondsAfterFinished` | Number of seconds to delete the job after finishing | `null`

## Example Configuration

For some examples of values used to configure this chart, see [the ci/example values for this chart](./ci/ci-values.yaml)
