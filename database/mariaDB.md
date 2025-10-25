# MySQL Documentation:
<br>

### Install MariaDB Server

```bash
sudo apt install mariadb-server
```

### Enable and start MariaDB service

```bash
sudo systemctl enable mariadb
sudo systemctl start mariadb
```

### Secure MariaDB installation

```bash
sudo mysql_secure_installation
```

During the setup:

* Set a password for the MariaDB root user
* Remove anonymous users
* Disallow remote root login
* Remove the test database

### Log in to MariaDB

```bash
sudo mysql -u root -p
```


### Create a new MariaDB user

```sql
CREATE USER 'username'@'hostname' IDENTIFIED BY 'password';
```

**Example:**

```sql
CREATE USER 'azmat'@'%' IDENTIFIED BY '12345678';
```

### Grant all privileges to the user

```sql
GRANT ALL PRIVILEGES ON *.* TO 'azmat'@'%' WITH GRANT OPTION;
```

### Grant privileges for a specific database

```sql
GRANT ALL PRIVILEGES ON mydb.* TO 'john'@'%' WITH GRANT OPTION;
```

### Apply changes and exit

```sql
FLUSH PRIVILEGES;
EXIT;
```

<br><br>

## Delete a user in MariaDB

```bash
mysql -u root -p
```

```sql
USE mysql;

DROP USER 'username'@'hostname';
```

**Example:**

```sql
DROP USER 'root'@'%';
```

```sql
FLUSH PRIVILEGES;
EXIT;
```

<br><br>

## Allow remote access to MariaDB

Open the MariaDB configuration file:

```bash
sudo vim /etc/mysql/mariadb.conf.d/50-server.cnf
```

Change the line:

```
bind-address = 127.0.0.1
```

To:

```
bind-address = 0.0.0.0
```

Restart MariaDB service and allow firewall port:

```bash
sudo systemctl restart mariadb
sudo ufw allow 3306
```

<br><br>

## To remove MariaDB database

### Stop the MariaDB Service
```
sudo systemctl stop mariadb
```

### Uninstall MariaDB Server
```
sudo apt-get purge mariadb-server mariadb-client mariadb-common mariadb-server-core-* mariadb-client-core-*
```

### Remove the Database Files (optional)
```
sudo rm -rf /var/lib/mysql
```

### Remove Configuration Files (optional)
```
sudo rm -rf /etc/mysql
sudo rm -rf /etc/mysql.conf.d
```

### Clean Up Dependencies
```
sudo apt-get autoremove
```