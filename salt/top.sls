base:
  '*':
    - vim.install
    - user.haex
    - ssh
  'haex.space':
    - docker
    - traefik.install
    - seafile.install
    - portainer
    - camunda
    - user.noxi
    #- nhost.install
    