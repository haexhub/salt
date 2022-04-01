base:
  '*':
    - vim.install
    - user.haex
    - ssh
  'haex.space':
    - docker
    - traefik.install
    - seafile
    - portainer
   # - camunda
    - user.noxi
    