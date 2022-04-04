creat user account for haex with ssh key:
  user.present:
    - name: haex
    - shell: /bin/bash
    - home: /home/haex
    - uid: 1000
    - gid: 1000
    - optional_groups:
        - sudo
        - wheel

  file.managed:
    - name: /home/haex/.ssh/authorized_keys
    - source: salt://user/haex/deadmines.pub
    - user: haex
    - group: haex
    - makedirs: True