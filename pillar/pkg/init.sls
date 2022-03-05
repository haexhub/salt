{% if grains['os_family'] == 'RedHat' or grains['os_family'] == 'Fedora'%}
vim: vim-enhanced
{% elif grains['os_family'] == 'Debian' %}
vim: vim
{% elif grains['os'] == 'Arch' %}
vim: vim
{% endif %}