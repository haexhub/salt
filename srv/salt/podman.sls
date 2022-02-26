install podman:
  pkg.installed:
    - name: podman
  file.append:
    - name: /root/.bashrc
    - text: alias docker=podman
  