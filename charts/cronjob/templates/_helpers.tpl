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
{{- if semverCompare ">=1.21-0" .Capabilities.KubeVersion.GitVersion -}}
{{- default "batch/v1" .Values.apiVersion -}}
{{- else -}}
{{- default "batch/v1beta1" .Values.apiVersion -}}
{{- end -}}
