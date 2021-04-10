{{/* vim: set filetype=mustache: */}}
{{/*
Setup a chart name
*/}}
{{- define "storageclass.name" -}}
{{- default .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the appropriate apiVersion for the object
*/}}
{{- define "apiVersion" -}}
{{- default "storage.k8s.io/v1" .Values.apiVersion -}}
{{- end -}}
