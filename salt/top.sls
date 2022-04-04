base:
  '*':
    - vim.install
    - user.haex
    - ssh
  'haex.space':
    - lldap.install
    - docker
    - traefik.install
    - seafile.install
    - portainer
    - camunda
    - user.noxi
    - nhost.stop
  'xintero.de':
    - docker
    - portainer
    - traefik.install
    - hashivault.install
    