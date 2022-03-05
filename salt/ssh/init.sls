configure ssh daemon:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://ssh/sshd_config
  
  service:
    - name: sshd
    - restart: True
  