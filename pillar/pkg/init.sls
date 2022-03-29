pkg:
  {% if grains['os_family'] == 'RedHat' %}

  fail2ban: fail2ban
  vim: vim-enhanced

  {% elif grains['os_family'] == 'Debian' %}

  fail2ban: fail2ban
  vim: vim

  {% elif grains['os_family'] == 'Arch' %}

  fail2ban: fail2ban
  vim: vim

  {% endif %}