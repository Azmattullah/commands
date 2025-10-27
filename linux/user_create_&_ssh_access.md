# Create Users & Remote SSH Access

### Create a new user

```bash
sudo useradd -m azmat
```

### Set password for the user

```bash
sudo passwd azmat
```

### Switch to the created user

```bash
su azmat
```

### Add the user to the sudo group (optional)

```bash
sudo usermod -aG sudo azmat
```
### Create `.ssh` directory and authorized_keys for user `azmat`

```bash
sudo mkdir -p /home/azmat/.ssh
sudo touch /home/azmat/.ssh/authorized_keys
sudo chmod 700 /home/azmat/.ssh
sudo chmod 600 /home/azmat/.ssh/authorized_keys
sudo chown -R azmat:azmat /home/azmat/.ssh
```

### Edit SSH configuration file

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
AllowUsers azmat ubuntu
PermitRootLogin yes   # Only if root login is required
```

### Restart SSH service after making changes

```bash
sudo systemctl restart ssh
```

### Test configuration

```bash
sudo sshd -t
```

<br><br>
### Fix SSH host key mismatch error (Error 001)

linux711 is username of local system

```bash
ssh-keygen -f "/home/linux711/.ssh/known_hosts" -R "123.123.123.123"
```