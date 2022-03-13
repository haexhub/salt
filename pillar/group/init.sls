pkg:
  {% if grains['os_family'] == 'RedHat' or grains['os_family'] == 'Fedora'%}

  sudo: wheel

  {% elif grains['os_family'] == 'Debian' %}

  sudo: sudo

  {% endif %}