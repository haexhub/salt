create seafile env file:
  file.append:
    - name: /usr/share/docker/seafile/.env
    - makedirs: True
    - contents:
      - SEAFILE_TIMEZONE = {{ pillar['seafile']['timezone'] }}
      - SEAFILE_ADMIN_EMAIL = {{ pillar['seafile']['admin_email'] }}
