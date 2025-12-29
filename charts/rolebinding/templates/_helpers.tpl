{{/* vim: set filetype=mustache: */}}
{{/*
Setup a chart name
*/}}
{{- define "rolebinding.name" -}}
{{- default .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the appropriate apiVersion for the object
*/}}
{{- define "apiVersion" -}}
{{- default "rbac.authorization.k8s.io/v1" .Values.apiVersion -}}
{{- end -}}

{{/*
Return namespace for the object.
Defaults to the Helm release namespace, can be overridden.
*/}}
{{- define "rolebinding.namespace" -}}
{{- default .Release.Namespace .Values.namespaceOverride -}}
{{- end -}}
