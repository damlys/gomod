{{- define "goapp.matchLabels" -}}
app.kubernetes.io/name: "goapp"
app.kubernetes.io/part-of: "gomod"
app.helm.sh/release: "{{ .Release.Name }}"
{{- end -}}

{{- define "goapp.metadataLabels" -}}
{{ include "goapp.matchLabels" $ }}
app.helm.sh/chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
app.skaffold.dev/artifact: "{{ regexReplaceAll "[/._:@]" .Values.image.repository "_" }}"
app.skaffold.dev/tag: "{{ regexReplaceAll "[/._:@]" .Values.image.tag "_" }}"
{{- end -}}

{{- define "goapp.configsChecksum" -}}
{{- include (print $.Template.BasePath "/configs.yaml") $ | sha256sum -}}
{{- end -}}
