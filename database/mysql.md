# MySQL Documentation:
<br>


### Install MySQL Server

```bash
sudo apt install mysql-server
```

### Enable and start MySQL service

```bash
sudo systemctl enable mysql
sudo systemctl start mysql
```

### Secure MySQL installation

```bash
sudo mysql_secure_installation
```

During the setup:

* Set a password for the MySQL root user
* Remove anonymous users
* Disallow remote root login
* Remove the test database

### Login Localhost to MySQL

```bash
sudo mysql -u root -p
```

### Login Remote host to MySQL

```bash
mysql -u remote_user -h your-server-ip -p
```

**Example:**
```bash
mysql -u azmat -h 13.200.27.232 -p
```

### Create a new MySQL user

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
GRANT ALL PRIVILEGES ON mydb.* TO 'azmat'@'%' WITH GRANT OPTION;
```

### Apply changes and exit

```sql
FLUSH PRIVILEGES;
EXIT;
```

### To show all users in MySQL
```sql
SELECT User, Host FROM mysql.user;
```

<br><br>

## Delete a user in MySQL

```sql
USE mysql;

DROP USER 'username'@'hostname';
```

**Example:**

```sql
DROP USER 'azmat'@'%';
```

```sql
FLUSH PRIVILEGES;
EXIT;
```



<br><br>

## Allow remote access to MySQL

Open the MySQL configuration file:

```bash
sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf
```

Change the line:

```
bind-address = 127.0.0.1
```

To:

```
bind-address = 0.0.0.0
```

Restart MySQL service and allow firewall port:

```bash
sudo systemctl restart mysql
sudo ufw allow 3306
```


<br><br>


## Completely Remove MySQL from Linux


###  Step 1: Stop the MySQL Service

```bash
sudo systemctl stop mysql
```

---

###  Step 2: Remove MySQL Packages

```bash
sudo apt-get remove --purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*
```

---

###  Step 3: Remove Unused Dependencies

```bash
sudo apt-get autoremove -y
sudo apt-get autoclean
```

---

###  Step 4: Delete MySQL Data and Configuration Files

```bash
sudo rm -rf /etc/mysql /var/lib/mysql
sudo rm -rf /var/log/mysql /var/log/mysql.*
```

---

###  Step 5: Remove MySQL User and Group

```bash
sudo deluser mysql
sudo delgroup mysql
```

---

###  Step 6: Verify MySQL is Completely Removed

```bash
dpkg -l | grep mysql
```

*(No output means MySQL has been fully removed)*