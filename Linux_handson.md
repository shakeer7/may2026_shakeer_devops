##Netwoking_commands

| Command            | Purpose                            | Common Usage                  | Example Output/Use               |
| ------------------ | ---------------------------------- | ----------------------------- | -------------------------------- |
| `ip a`             | Show IP addresses and interfaces   | `ip a`                        | Displays private IP, NIC details |
| `ifconfig`         | Old command to view network config | `ifconfig`                    | Shows IP and interface info      |
| `ping`             | Check connectivity                 | `ping google.com`             | Tests reachability and latency   |
| `ping -c 4`        | Send limited packets               | `ping -c 4 google.com`        | Sends 4 ping requests            |
| `ss -tulnp`        | Show listening ports/processes     | `ss -tulnp`                   | Displays open TCP/UDP ports      |
| `netstat -tulnp`   | Old tool for network stats         | `netstat -tulnp`              | Shows listening services         |
| `curl URL`         | Access/test websites or APIs       | `curl https://api.github.com` | Fetches webpage/API response     |
| `curl -I`          | Show only HTTP headers             | `curl -I google.com`          | Checks HTTP status               |
| `curl ifconfig.me` | Get public IP                      | `curl ifconfig.me`            | Displays public IP address       |
| `traceroute`       | Show network path/hops             | `traceroute google.com`       | Displays route to destination    |
| `nslookup`         | DNS lookup                         | `nslookup google.com`         | Resolves domain to IP            |
| `dig`              | Advanced DNS query                 | `dig google.com`              | Detailed DNS information         |
| `hostname`         | Show system hostname               | `hostname`                    | Displays machine name            |
| `hostname -I`      | Show local IP                      | `hostname -I`                 | Displays assigned IP             |
| `telnet`           | Test connectivity to a port        | `telnet google.com 80`        | Checks if port is reachable      |
| `nc -zv`           | Netcat port test                   | `nc -zv google.com 443`       | Verifies port connectivity       |
| `route -n`         | Show routing table                 | `route -n`                    | Displays routes/gateway          |
| `ip route`         | Modern route command               | `ip route`                    | Shows routing information        |
| `arp -a`           | View ARP table                     | `arp -a`                      | Shows MAC-IP mappings            |
| `wget`             | Download files                     | `wget <url>`                  | Downloads content/files          |
| `nmap`             | Scan ports/services                | `nmap localhost`              | Finds open ports                 |

#File_and_Director_Operations_Commands

| Command | Simple Definition                      | Common Flags                                                 | Use Case                          |
| ------- | -------------------------------------- | ------------------------------------------------------------ | --------------------------------- |
| `pwd`   | Prints current working directory       | `-P` (physical path)                                         | Check where you are in filesystem |
| `ls`    | Lists files and directories            | `-l` (long list), `-a` (hidden files), `-h` (human readable) | View folder contents              |
| `cd`    | Changes directory                      | `cd ..` (parent), `cd ~` (home)                              | Navigate between folders          |
| `mkdir` | Creates directory                      | `-p` (create parent dirs)                                    | Create new folders                |
| `rmdir` | Removes empty directory                | None commonly used                                           | Delete empty folders              |
| `rm`    | Removes files or directories           | `-r` (recursive), `-f` (force), `-i` (interactive)           | Delete files/folders              |
| `touch` | Creates empty file / updates timestamp | None commonly used                                           | Create new file quickly           |
| `cp`    | Copies files/directories               | `-r` (recursive), `-i` (prompt), `-v` (verbose)              | Duplicate files/folders           |
| `mv`    | Moves or renames files/directories     | `-i`, `-v`                                                   | Rename or move files              |
| `cat`   | Displays file content                  | `-n` (line numbers)                                          | View small files                  |
| `less`  | View file page by page                 | `-N` (line numbers)                                          | Read large files                  |
| `head`  | Shows first lines of file              | `-n` (number of lines)                                       | Preview file start                |
| `tail`  | Shows last lines of file               | `-n`, `-f` (live log)                                        | Monitor logs                      |
| `find`  | Search files/directories               | `-name`, `-type`, `-size`                                    | Locate files in system            |
| `chmod` | Changes file permissions               | `-R` (recursive)                                             | Set read/write/execute access     |
| `chown` | Changes file owner                     | `-R`                                                         | Change file ownership             |
| `tree`  | Shows directory structure              | `-L` (depth level)                                           | Visualize folder hierarchy        |

--------------------------------------------------------------------------------------------------------------------------------
File Permission
Commands


| Command   | Simple Definition                                  | Flags                                                 | Use Case                                             |
| --------- | -------------------------------------------------- | ----------------------------------------------------- | ---------------------------------------------------- |
| `chmod`   | Changes file permissions (r, w, x)                 | `-R` (recursive), symbolic (`u+x`) or numeric (`755`) | Give or restrict access to files/folders             |
| `chown`   | Changes file owner and group                       | `-R`, `user:group`                                    | Assign file ownership (common in servers/VMs)        |
| `chgrp`   | Changes group ownership of files                   | `-R`                                                  | Control group-level access                           |
| `umask`   | Sets default permission rules for new files        | No major flags                                        | Define default security for newly created files      |
| `getfacl` | Displays detailed ACL permissions                  | None                                                  | Check advanced permissions per user                  |
| `setfacl` | Sets ACL permissions for specific users/groups     | `-m` (modify), `-x` (remove)                          | Give specific user access without changing ownership |
| `stat`    | Shows detailed file metadata including permissions | None                                                  | Debug permission issues and file info                |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
File Compression and Archiving Commands


| Command   | Simple Definition                        | Flags                                                           | Use Case                                 |
| --------- | ---------------------------------------- | --------------------------------------------------------------- | ---------------------------------------- |
| `tar`     | Archives multiple files into one file    | `-c` (create), `-x` (extract), `-v` (verbose), `-f` (file name) | Bundle files into a single `.tar` file   |
| `gzip`    | Compresses a file using gzip algorithm   | `-d` (decompress), `-k` (keep original)                         | Reduce file size (`.gz`)                 |
| `gunzip`  | Decompresses `.gz` files                 | None commonly used                                              | Restore original file from gzip          |
| `zip`     | Compresses files into `.zip` format      | `-r` (recursive), `-9` (max compression)                        | Create zip archives (Windows compatible) |
| `unzip`   | Extracts `.zip` files                    | `-l` (list), `-d` (directory)                                   | Extract zip archives                     |
| `bzip2`   | High compression tool (better than gzip) | `-d` (decompress), `-k`                                         | Compress large files (`.bz2`)            |
| `bunzip2` | Decompresses `.bz2` files                | None commonly used                                              | Restore files compressed with bzip2      |
| `xz`      | Very high compression tool               | `-d`, `-k`                                                      | Compress large logs/backups efficiently  |
| `unxz`    | Decompress `.xz` files                   | None commonly used                                              | Restore xz compressed files              |


----------------------------------------------------------------------------------------------------------------------------------------

Process
Management
Commands

| Command   | Simple Definition                         | Flags                                                            | Use Case                          |
| --------- | ----------------------------------------- | ---------------------------------------------------------------- | --------------------------------- |
| `ps`      | Displays current running processes        | `-e` (all processes), `-f` (full format), `-aux` (detailed view) | Check what processes are running  |
| `top`     | Real-time process monitoring              | `-u` (user filter), `-p` (specific PID)                          | Monitor CPU and memory usage live |
| `htop`    | Interactive process viewer (enhanced top) | `F6` (sort), `F9` (kill)                                         | Easier process management UI      |
| `kill`    | Terminates a process using PID            | `-9` (force kill), `-15` (graceful)                              | Stop a specific process           |
| `killall` | Kills processes by name                   | `-i` (interactive), `-9`                                         | Kill all processes with same name |
| `pgrep`   | Finds process ID by name                  | `-l` (list name + PID)                                           | Search for running process ID     |
| `pkill`   | Kills process by name                     | `-f` (full match), `-9`                                          | Stop process without PID          |
| `nice`    | Starts process with priority              | `-n` (priority level)                                            | Set CPU priority at start         |
| `renice`  | Changes priority of running process       | `-n`, `-p`                                                       | Adjust priority of active process |
| `jobs`    | Shows background jobs in current shell    | None                                                             | View paused/background tasks      |
| `bg`      | Runs a stopped job in background          | None                                                             | Resume job in background          |
| `fg`      | Brings background job to foreground       | None                                                             | Bring job back to terminal        |
| `nohup`   | Runs process immune to logout             | None                                                             | Keep process running after logout |

grep-
| Flag        | Meaning              | Use Case                             |
| ----------- | -------------------- | ------------------------------------ |
| `-i`        | Ignore case          | Match text without case sensitivity  |
| `-v`        | Invert match         | Show lines that do NOT match pattern |
| `-r` / `-R` | Recursive search     | Search inside directories            |
| `-l`        | List file names only | Show only files containing matches   |
| `-n`        | Show line numbers    | Identify exact line of match         |
| `-w`        | Match whole word     | Avoid partial matches                |
| `-c`        | Count matches        | Count matching lines only            |
| `-e`        | Multiple patterns    | Search more than one pattern         |
| `-A n`      | After context        | Show n lines after match             |
| `-B n`      | Before context       | Show n lines before match            |
| `-C n`      | Context              | Show n lines before and after match  |

Examples
| Command                        | Meaning                                      |
| ------------------------------ | -------------------------------------------- |
| `grep -i "hello" file.txt`     | Case-insensitive search for "hello"          |
| `grep -v "error" file.txt`     | Show lines without "error"                   |
| `grep -r "pattern" directory/` | Search pattern in all files inside directory |
| `grep -l "keyword" file.txt`   | Show file names containing keyword           |
| `grep -n "pattern" file.txt`   | Show matching lines with line numbers        |
| `grep -w "cat" file.txt`       | Match only whole word "cat"                  |
| `grep -c "error" file.txt`     | Count occurrences of "error"                 |



-----------------------------------------------------------------------------------------------------------------------------------------------------

Network

| Command       | Simple Definition                        | Flags                   | Use Case                          |
| ------------- | ---------------------------------------- | ----------------------- | --------------------------------- |
| `ip`          | Shows/manages network interfaces         | `addr`, `link`, `route` | Check IP, interfaces, routing     |
| `ifconfig`    | Displays network interface info (legacy) | `-a`                    | View IP and interface status      |
| `ping`        | Tests connectivity to a host             | `-c` (count)            | Check network reachability        |
| `curl`        | Transfers data from/to server            | `-I`, `-o`, `-X`        | Test APIs, download content       |
| `wget`        | Downloads files from URL                 | `-c` (resume), `-O`     | Download files from internet      |
| `netstat`     | Shows network connections (legacy)       | `-tuln`, `-p`           | Check ports and services          |
| `ss`          | Modern replacement for netstat           | `-tuln`, `-p`           | View active connections & ports   |
| `traceroute`  | Shows path packets take to host          | None commonly used      | Debug routing/network delays      |
| `nslookup`    | Queries DNS information                  | None                    | Resolve domain to IP              |
| `dig`         | Advanced DNS lookup tool                 | `+short`, `+trace`      | Debug DNS issues                  |
| `hostname`    | Shows system hostname                    | `-I`                    | Get system identity/IP            |
| `route`       | Displays routing table                   | `-n`                    | Check network routing             |
| `arp`         | Shows IP-to-MAC mapping                  | `-a`                    | Diagnose LAN issues               |
| `tcpdump`     | Captures network packets                 | `-i`, `-n`, `-c`        | Packet-level network debugging    |
| `nc` (netcat) | Reads/writes network connections         | `-l`, `-v`, `-z`        | Test ports, create simple servers |
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| Shortcut           | Simple Definition                     | Use Case                                  |
| ------------------ | ------------------------------------- | ----------------------------------------- |
| `Ctrl + C`         | Stop current running command          | Kill hanging process in terminal          |
| `Ctrl + Z`         | Suspend current process               | Send process to background (paused state) |
| `Ctrl + D`         | Exit terminal / end input             | Logout or close shell session             |
| `Ctrl + L`         | Clear screen                          | Clean terminal view (like `clear`)        |
| `Ctrl + A`         | Move cursor to beginning              | Edit command quickly                      |
| `Ctrl + E`         | Move cursor to end                    | Jump to end of command                    |
| `Ctrl + U`         | Delete line before cursor             | Clear typed command quickly               |
| `Ctrl + K`         | Delete line after cursor              | Remove remaining command text             |
| `Ctrl + W`         | Delete previous word                  | Fast text editing                         |
| `Ctrl + R`         | Search command history                | Find previous commands                    |
| `Ctrl + G`         | Exit search mode                      | Cancel reverse search                     |
| `!!`               | Repeat last command                   | Re-run previous command                   |
| `!n`               | Run command number n from history     | Execute specific history command          |
| `!string`          | Run last command starting with string | Quick command recall                      |
| `Tab`              | Auto-complete command/file            | Speed up typing, avoid errors             |
| `Ctrl + Shift + C` | Copy selected text                    | Copy in terminal                          |
| `Ctrl + Shift + V` | Paste text                            | Paste into terminal                       |

_--------------------------------------------------------------------------------------------------------------------------------------

There are several common ways to access a Linux server, depending on where it is hosted (local machine, cloud VM like Azure/AWS, or on-prem server). Here are the main methods:

---

## 1. SSH (Most common method)

This is the standard way to access Linux remotely.

* Tool: OpenSSH
* Command:

```bash
ssh username@ip-address
```

Example:

```bash
ssh azureuser@52.x.x.x
```

* Uses port 22 by default
* Secure and widely used in DevOps, cloud, and system administration

---

## 2. PuTTY (Windows GUI SSH client)

* Tool: PuTTY
* You enter:

  * Host IP
  * Username
  * Private key (.ppk file if required)

Good for users who don’t prefer terminal commands.

---

## 3. Cloud Console Access (Browser-based)

If your Linux server is in cloud:

* Azure: Azure Portal → “Connect”
* AWS: EC2 Instance Connect / Session Manager
* GCP: Browser SSH button

Example:
Microsoft Azure provides “SSH in browser” directly from portal.

---

## 4. RDP (Rare for Linux, but possible)

* Usually used for Windows, but Linux with GUI can support it
* Requires xRDP installed on Linux

---

## 5. Serial / Console Access

Used when SSH is broken or server is unreachable.

* Cloud providers offer “Serial Console”
* Useful for recovery and debugging

---

## 6. VPN + SSH (Enterprise setup)

* Connect VPN first
* Then SSH into private IP of server
* Used in secure corporate networks

---

## 7. Bastion Host (Jump Server)

* You SSH into a secure intermediate server first
* Then access private Linux machines
* Common in production environments

---

## Quick summary

* Everyday use → SSH (OpenSSH)
* Windows users → PuTTY
* Cloud servers → Portal SSH / Console
* Enterprise security → VPN + Bastion

---Root dir
/
├── bin        → Essential user commands (ls, cp, mv)
├── sbin       → System admin commands (reboot, fdisk)
├── etc        → Configuration files (sshd_config, passwd)
├── home       → User directories (e.g., /home/shakeer)
├── root       → Root user home directory
├── var        → Logs, spool files, dynamic data
├── usr        → Applications, libraries, shared programs
│   ├── bin
│   ├── lib
│   └── local
├── lib        → Shared libraries for system binaries
├── tmp        → Temporary files (cleared on reboot)
├── dev        → Device files (disks, terminals, etc.)
├── proc       → Virtual process and kernel info
├── sys        → Kernel and hardware info interface
├── boot       → Boot loader files (kernel, initramfs)
├── opt        → Optional third-party software
└── mnt / media → Mount points for external devices






