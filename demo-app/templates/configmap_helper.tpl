{{- define "application_config_volume" }}
- name: application-config
  configMap:
    name: {{ .Release.Name }}-application-configmap
{{- end -}}

{{- define "application_config_volume_mount" }}
- name: application-config
  readOnly: true
  mountPath: "/config/application.yaml"
{{- end -}}


{{- define "application_config_env_vars" }}
- name: SPRING_CONFIG_ADDITIONAL_LOCATION
  value: "file:/config/"
{{- end -}}