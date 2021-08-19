{{/* vim: set filetype=mustache: */}}
{{/*
Setup a chart name
*/}}
{{- define "deployment.name" -}}
{{- default .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the appropriate apiVersion for the object
*/}}
{{- define "apiVersion" -}}
{{- default "apps/v1" .Values.apiVersion -}}
{{- end -}}
