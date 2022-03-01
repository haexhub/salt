{% if grains['os'] == 'RedHat' or grains['os'] == 'Fedora' %}
  editor: vim-enhanced
{% else %}
  editor: vim
{% endif %}