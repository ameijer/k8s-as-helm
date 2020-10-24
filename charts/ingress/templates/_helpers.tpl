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
{{- default "networking.k8s.io/v1beta1" .Values.apiVersion -}}
{{- end -}}
