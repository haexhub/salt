user account for haex:
  user.present:
    - name: haex
    - shell: /bin/bash
    - home: /home/haex
    - groups:
{% if grains['os'] == 'Fedora' %}
      - wheel
{% else %}    
      - sudo
{% endif %}