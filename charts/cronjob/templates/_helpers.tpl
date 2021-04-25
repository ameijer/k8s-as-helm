{{/* vim: set filetype=mustache: */}}
{{/*
Setup a chart name
*/}}
{{- define "cronjob.name" -}}
{{- default .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the appropriate apiVersion for the object
*/}}
{{- define "apiVersion" -}}
{{- default "batch/v1beta1" .Values.apiVersion -}}
{{- end -}}
