creat user account for haex with ssh key:
  user.present:
    - name: haex
    - shell: /bin/bash
    - home: /home/haex
    - optional_groups:
        - sudo
        - wheel

  file.managed:
    - name: /home/haex/.ssh/authorized_keys
    - source: salt://user/haex/deadmines.pub
    - user: haex
    - group: haex
    - makedirs: True