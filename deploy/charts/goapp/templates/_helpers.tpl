{{- define "goapp.matchLabels" -}}
app.kubernetes.io/name: "goapp"
app.kubernetes.io/part-of: "gomod"
helm.sh/release: "{{ .Release.Name }}"
{{- end -}}

{{- define "goapp.metadataLabels" -}}
{{ include "goapp.matchLabels" $ }}
helm.sh/chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
skaffold.dev/image-repository: "{{ regexReplaceAll "[/._:@]" .Values.image.repository "_" }}"
skaffold.dev/image-tag: "{{ regexReplaceAll "[/._:@]" .Values.image.tag "_" }}"
{{- end -}}

{{- define "goapp.configChecksum" -}}
{{- include (print .Template.BasePath "/configs.yaml") $ | sha256sum -}}
{{- end -}}
