create user account for noxi with ssh key:
  user.present:
    - name: noxi
    - shell: /bin/bash
    - home: /home/noxi
    - optional_groups:
        - sudo
        - wheel

  file.managed:
    - name: /home/noxi/.ssh/authorized_keys
    - source: salt://user/noxi/noxi.pub
    - user: noxi
    - group: noxi
    - makedirs: True