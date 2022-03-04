## Installation

[Installation](https://docs.saltproject.io/en/master/topics/installation/index.html)


### Fedora
It is only necessary to install the appropriate package for the role the machine will play. Typically, there will be one master and multiple minions.
```
dnf install salt-master
dnf install salt-minion
```

#### Open Firewall Port

```
firewall-cmd --permanent --add-port=4505-4506/tcp
```
Don't forget to reload after you made your changes.
```
firewall-cmd --reload
```
### Post-Installation

#### Master
To have the Master start automatically at boot time:
```
systemctl enable salt-master.service
```
To start the Master:
```
systemctl start salt-master.service
```

#### Minion
To have the Minion start automatically at boot time:
```
systemctl enable salt-minion.service
```
To start the Minion:
```
systemctl start salt-minion.service
```

## Configuring Salt

### Minion configuration
By default a Salt Minion will try to connect to the DNS name "salt"; if the Minion is able to resolve that name correctly, no configuration is needed.

If the DNS name "salt" does not resolve to point to the correct location of the Master, redefine the "master" directive in the minion configuration file, typically ```/etc/salt/minion```, as follows:

```
- #master: salt
+ master: master.domain
```

## Key Identity

Salt provides commands to validate the identity of your Salt master and Salt minions before the initial key exchange. Validating key identity helps avoid inadvertently connecting to the wrong Salt master, and helps prevent a potential MiTM attack when establishing the initial connection.

### Master Key Fingerprint

Print the master key fingerprint by running the following command on the Salt master:
```
salt-key -F master
```
Copy the master.pub fingerprint from the Local Keys section, and then set this value as the [master_finger](https://docs.saltproject.io/en/master/ref/configuration/minion.html#std-conf_minion-master_finger) in the minion configuration file. Save the configuration file and then restart the Salt minion.


### Minion Key Fingerprint

Run the following command on each Salt minion to view the minion key fingerprint:
```
salt-call --local key.finger
```
Compare this value to the value that is displayed when you run the ```salt-key --finger <MINION_ID>``` command on the Salt master.

## Troubleshooting

### Firewall

If minion can't find the master, check if firewall is configured acordingly

### Copy Minion Key to Master

If the minion isn't able to interchange the key copy key in ```/etc/salt/pki/minion/minion.pub``` to the masters ```/etc/salt/pki/master/minions/<MINION.DOMAIN> ```