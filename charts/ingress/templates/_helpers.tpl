{{/* vim: set filetype=mustache: */}}
{{/*
Setup a chart name
*/}}
{{- define "ingress.name" -}}
{{- default .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the appropriate apiVersion for the object
*/}}
{{- define "apiVersion" -}}
{{- if semverCompare ">=1.19-0" .Capabilities.KubeVersion.GitVersion -}}
{{- default "networking.k8s.io/v1" .Values.apiVersion -}}
{{- else -}}
{{- default "networking.k8s.io/v1beta1" .Values.apiVersion -}}
{{- end -}}
{{- end -}}
