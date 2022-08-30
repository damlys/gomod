{{- define "goapp.matchLabels" -}}
app.kubernetes.io/name: "goapp"
app.kubernetes.io/part-of: "gomod"
app.helm.sh/release: "{{ .Release.Name }}"
{{- end -}}

{{- define "goapp.metadataLabels" -}}
{{ include "goapp.matchLabels" $ }}
app.helm.sh/chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
app.skaffold.dev/artifact: "{{ regexReplaceAll "[\\W]" .Values.image.repository "_" | trunc 63 | trimAll "_" }}"
app.skaffold.dev/tag: "{{ regexReplaceAll "[\\W]" .Values.image.tag "_" | trunc 63 | trimAll "_" }}"
{{- end -}}

{{- define "goapp.configsChecksum" -}}
{{- include (print $.Template.BasePath "/configs.yaml") $ | sha256sum -}}
{{- end -}}
