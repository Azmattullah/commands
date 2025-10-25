# Create Users & Remote SSH Access

## Create a new user

```bash
sudo useradd -m azmat
```

## Set password for the user

```bash
sudo passwd azmat
```

## Switch to the created user

```bash
su azmat
```

## Add the user to the sudo group (optional)

```bash
sudo usermod -aG sudo azmat
```

## Edit SSH configuration file

```bash
sudo vim /etc/ssh/sshd_config
```

Add or update the following lines:

```
PubkeyAuthentication yes
PasswordAuthentication yes
KbdInteractiveAuthentication yes
#PermitEmptyPasswords no
UsePAM yes
AllowUsers azmat
PermitRootLogin yes   # Only if root login is required
```

## Restart SSH service after making changes

```bash
sudo systemctl restart ssh
```

## Fix SSH host key mismatch error (Error 001)

linux711 is username of local system

```bash
ssh-keygen -f "/home/linux711/.ssh/known_hosts" -R "13.126.233.89"
```