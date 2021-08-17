{{/* vim: set filetype=mustache: */}}
{{/*
Setup a chart name
*/}}
{{- define "clusterrolebinding.name" -}}
{{- default .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the appropriate apiVersion for the object
*/}}
{{- define "apiVersion" -}}
{{- default "rbac.authorization.k8s.io/v1" .Values.apiVersion -}}
{{- end -}}
