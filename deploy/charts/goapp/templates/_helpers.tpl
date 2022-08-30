{{- define "goapp.matchLabels" -}}
app.kubernetes.io/part-of: "gomod"
app.kubernetes.io/name: "goapp"
app.kubernetes.io/component: "http-server"
app.kubernetes.io/instance: "{{ .Release.Name }}"
{{- end -}}

{{- define "goapp.metadataLabels" -}}
{{ include "goapp.matchLabels" $ }}
app.kubernetes.io/artifact: "{{ regexReplaceAll "[/._:@]" .Values.image.repository "_" }}"
app.kubernetes.io/version: "{{ regexReplaceAll "[/._:@]" .Values.image.tag "_" }}"
app.kubernetes.io/managed-by: "{{ .Release.Service }}"
helm.sh/chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
{{- end -}}
