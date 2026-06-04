Here's a complete **Ansible setup from scratch with 2 servers**.

## Architecture

```text
Ansible Control Node
      |
      | SSH
      |
+-------------+      +-------------+
| WebServer1  |      | WebServer2  |
| 10.0.1.10   |      | 10.0.1.11   |
+-------------+      +-------------+
```

---

## Step 1: Create 2 EC2 Instances

Example:

| Server     | Private IP |
| ---------- | ---------- |
| webserver1 | 10.0.1.10  |
| webserver2 | 10.0.1.11  |

Install Ansible on your control node (Jump Server).

```bash
sudo apt update
sudo apt install ansible -y
```

Verify:

```bash
ansible --version
```

---

## Step 2: Generate SSH Key

On Control Node:

```bash
ssh-keygen
```

Press Enter for defaults.

Keys created:

```text
~/.ssh/id_rsa
~/.ssh/id_rsa.pub
```

---

## Step 3: Copy Key to Both Servers

```bash
ssh-copy-id ubuntu@10.0.1.10
```

```bash
ssh-copy-id ubuntu@10.0.1.11
```

Test:

```bash
ssh ubuntu@10.0.1.10
```

```bash
ssh ubuntu@10.0.1.11
```

---

## Step 4: Create Inventory File

Create:

```bash
mkdir ansible-project
cd ansible-project
vi hosts.ini
```

Content:

```ini
[webservers]

10.0.1.10
10.0.1.11

[webservers:vars]
ansible_user=ubuntu
ansible_ssh_private_key_file=~/.ssh/id_rsa
```

---

## Step 5: Verify Connectivity

```bash
ansible webservers -i hosts.ini -m ping
```

Expected:

```text
10.0.1.10 | SUCCESS => {
    "ping": "pong"
}

10.0.1.11 | SUCCESS => {
    "ping": "pong"
}
```

---

## Step 6: Create Playbook

```bash
vi apache.yml
```

```yaml
---
- name: Install Apache on all servers
  hosts: webservers
  become: yes

  tasks:

    - name: Update packages
      apt:
        update_cache: yes

    - name: Install Apache
      apt:
        name: apache2
        state: present

    - name: Start Apache Service
      service:
        name: apache2
        state: started
        enabled: yes
```

---

## Step 7: Run Playbook

```bash
ansible-playbook -i hosts.ini apache.yml
```

Output:

```text
PLAY [Install Apache on all servers]

TASK [Update packages]
ok: [10.0.1.10]
ok: [10.0.1.11]

TASK [Install Apache]
changed: [10.0.1.10]
changed: [10.0.1.11]

TASK [Start Apache Service]
changed: [10.0.1.10]
changed: [10.0.1.11]

PLAY RECAP
10.0.1.10 : ok=3 changed=2
10.0.1.11 : ok=3 changed=2
```

---

## Step 8: Verify

On both servers:

```bash
systemctl status apache2
```

Or from control node:

```bash
ansible webservers -i hosts.ini -m shell -a "systemctl is-active apache2"
```

Expected:

```text
10.0.1.10 | CHANGED | rc=0 >>
active

10.0.1.11 | CHANGED | rc=0 >>
active
```

---

## Common Interview Questions

**How does Ansible communicate with servers?**

* SSH (Linux)
* WinRM (Windows)

**Do agents need to be installed?**

* No, Ansible is agentless.

**What is an Inventory?**

* A file containing hosts/groups Ansible manages.

**What is a Playbook?**

* A YAML file containing plays and tasks.

**What is `become: yes`?**

* Executes tasks with sudo/root privileges.

**How do you test connectivity?**

```bash
ansible all -i hosts.ini -m ping
```

This is the most common real-world Ansible setup used in AWS with a jump server managing two or more EC2 instances.
