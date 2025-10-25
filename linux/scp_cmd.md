# Secure File Transfer using `scp` (Secure Copy)

<br>

The `scp` command is used to securely copy files and directories between systems over SSH.


### Basic Syntax

```bash
scp [options] source destination
```

<br><br>

## Copy from Local → Remote

### Copy a local file to a remote server

```bash
scp /path/to/local/file username@remote_host:/path/to/remote/destination
```

**Example:**

```bash
scp myfile.txt user@192.168.1.10:/home/user/
```

<br><br>


## Copy from Remote → Local

### Copy a remote file to the local machine

```bash
scp username@remote_host:/path/to/remote/file /path/to/local/destination
```

**Example:**

```bash
scp user@192.168.1.10:/home/user/myfile.txt .
```

<br><br>

## Copy Entire Directory

Use the `-r` option for recursive copying:

```bash
scp -r /path/to/local/dir username@remote_host:/path/to/remote/destination
```

**Example:**

```bash
scp -r myfolder user@192.168.1.10:/home/user/
```

<br><br>

##  Useful Options

| Option | Description                        |
| ------ | ---------------------------------- |
| `-r`   | Copy directories recursively       |
| `-P`   | Specify remote SSH port            |
| `-C`   | Enable compression during transfer |
| `-i`   | Use a specific SSH private key     |
| `-v`   | Enable verbose output (debug mode) |
