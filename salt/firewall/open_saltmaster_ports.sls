open ports for saltmaster and make it available:
  firewalld.service:
    - name: saltmaster
    - ports:
      - 4505/tcp
      - 4506/tcp
  
  firewalld.present:
    - name: saltzone
    - services:
      - {{ default_firewall_zone }}
    - sources:
      - 10.0.0.0/8