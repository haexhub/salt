install podman:
  pkg.installed:
    - pkgs: 
      - podman
      - python-pip

  file.append:
    - name: /root/.bashrc
    - text: alias docker=podman

  pip.installed:
    - name: docker
    # - require:
    #   - pkg: python-pip
  