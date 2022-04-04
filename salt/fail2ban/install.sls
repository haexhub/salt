fail2ban_pkg:
  pkg.installed:
    - name: {{ pillar['pkg']['fail2ban'] }}

  service.running:
    - name: {{ pillar['pkg']['fail2ban'] }}
    - enable: True
    - reload: True

{%- if fail2ban.user is defined %}
fail2ban_user:
  user.present:
    - name: {{ fail2ban.user }}
{%- endif %}