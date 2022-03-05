creat user account for haex with ssh key:
  user.present:
    - name: haex
    - shell: /bin/bash
    - home: /home/haex
    - groups:
      {% if grains['os'] == 'Fedora' or grains['os'] == 'RedHat' %}
      - wheel
      {% else %}    
      - sudo
      {% endif %}

  file.managed:
    - name: /home/haex/.ssh/authorized_keys
    - source: salt://user/haex/deadmines.pub
    - user: haex
    - group: haex
    - makedirs: True