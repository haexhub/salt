configure ssh daemon:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://ssh/sshd_config
  
  service.running:
    - name: sshd
    - reload: True
    - watch:
      - file: /etc/ssh/sshd_config
  