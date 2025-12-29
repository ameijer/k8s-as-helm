{{/* vim: set filetype=mustache: */}}
{{/*
Setup a chart name
*/}}
{{- define "limitrange.name" -}}
{{- default .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the appropriate apiVersion for the object
*/}}
{{- define "apiVersion" -}}
{{- default "v1" .Values.apiVersion -}}
{{- end -}}
