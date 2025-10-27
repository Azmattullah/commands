# Copy and Move Files & Directories in Linux

The `cp` (copy) and `mv` (move) commands are used to manage files and directories in Linux.


## Copy Files and Directories

### Copy a Single File

```bash
cp source.txt destination.txt
```

### Copy a File to Another Directory

```bash
cp file.txt /home/user/Documents/
```

### Copy Multiple Files

```bash
cp file1.txt file2.txt /home/user/backup/
```

### Copy a Directory (Recursive)

```bash
cp -r /path/to/source_dir /path/to/destination_dir
```

### Copy and Preserve File Attributes (permissions, timestamps)

```bash
cp -p file.txt /backup/
```

### Copy with Progress (using `-v` for verbose)

```bash
cp -rv /source/ /destination/
```

<br><br>


## Move or Rename Files and Directories

### Move a File

```bash
mv file.txt /home/user/Documents/
```

### Move and Rename a File

```bash
mv oldname.txt newname.txt
```

### Move a Directory

```bash
mv /path/to/source_dir /path/to/destination_dir
```

### Move Multiple Files

```bash
mv file1.txt file2.txt /home/user/backup/
```

### Overwrite Without Prompt

```bash
mv -f file.txt /backup/
```

### Show Progress While Moving (verbose)

```bash
mv -v file.txt /destination/
```

<br><br>

## Useful Tips

| Option | Description                                |
| ------ | ------------------------------------------ |
| `-r`   | Copy directories recursively               |
| `-v`   | Verbose output (shows progress)            |
| `-p`   | Preserve file attributes                   |
| `-f`   | Force overwrite without confirmation       |
| `-i`   | Prompt before overwrite (interactive mode) |

