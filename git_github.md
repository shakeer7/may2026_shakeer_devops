## 1. Check Git Installed

```bash
git --version
```

If not installed:

* Download from:

---

# Basic Git Workflow (Industry Standard)

## 2. Configure Git First Time

Set your name and email:

```bash
git config --global user.name "Shakeer"
git config --global user.email "mds.shakeer@gmail.com"
```

Check:

```bash
git config --list
```

---

# Create New Project

## 3. Create Folder

```bash
mkdir myproject
cd myproject
```

---

## 4. Initialize Git

```bash
git init
```

This creates a hidden `.git` folder.

---

## 5. Create File

CMD:

```cmd
echo Hello > file.txt
```

Linux/macOS:

```bash
echo "Hello" > file.txt
```

---

## 6. Check Status

```bash
git status
```

Shows:

* untracked files
* modified files
* staged files

---

## 7. Add Files to Staging

Single file:

```bash
git add file.txt
```

All files:

```bash
git add .
```

---

## 8. Commit Changes

```bash
git commit -m "Initial commit"
```

Think:

* `add` = prepare
* `commit` = save snapshot

---

# Connect GitHub

## 9. Create GitHub Repo

## Go to:

* New Repository
* Copy repo URL

Example:

```bash
https://github.com/shakeer7/myproject.git
```

---

## 10. Connect Local Repo to GitHub

```bash
git remote add origin https://github.com/shakeer7/myproject.git
```

Check:

```bash
git remote -v
```

---

## 11. Push Code to GitHub

First push:

```bash
git branch -M main
git push -u origin main
```

After this:

```bash
git push
```

---

# Daily Workflow

## 12. Modify File

```bash
echo New line >> file.txt
```

---

## 13. Check Changes

```bash
git status
git diff
```

---

## 14. Add + Commit + Push

```bash
git add .
git commit -m "Updated file"
git push
```

---

# Pull Latest Changes

## 15. Pull from GitHub

```bash
git pull
```

---

# Clone Existing Repo

## 16. Clone Repository

```bash
git clone https://github.com/user/repo.git
```

---

# Important Git Commands

| Purpose        | Command               |
| -------------- | --------------------- |
| Status         | `git status`          |
| Add all        | `git add .`           |
| Commit         | `git commit -m "msg"` |
| Push           | `git push`            |
| Pull           | `git pull`            |
| Clone          | `git clone url`       |
| Branch list    | `git branch`          |
| Create branch  | `git checkout -b dev` |
| Switch branch  | `git checkout main`   |
| Commit history | `git log --oneline`   |

---

# Fix Common Error

### Rejected Non-Fast-Forward

You recently got this.

Fix:

```bash
git pull origin main --rebase
git push origin main
```

If conflicts happen:

```bash
git add .
git rebase --continue
```

---

# SSH Authentication (Better Than Password)

## Generate SSH Key

```bash
ssh-keygen -t ed25519 -C "mds.shakeer@gmail.com"
```

Start ssh agent:

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

Copy public key:

```bash
cat ~/.ssh/id_ed25519.pub
```

Add it in GitHub:

* Settings
* SSH and GPG Keys
* New SSH Key

Test:

```bash
ssh -T git@github.com
```

Use SSH repo URL:

```bash
git@github.com:shakeer7/myproject.git
```

---

# Real Industry Flow

```bash
git pull
git checkout -b feature/login
# code changes
git add .
git commit -m "Added login feature"
git push origin feature/login
# create pull request in GitHub
```

---

# Very Important Concepts

| Concept           | Meaning               |
| ----------------- | --------------------- |
| Working Directory | Your files            |
| Staging Area      | Prepared changes      |
| Commit            | Snapshot              |
| Local Repo        | Your machine          |
| Remote Repo       | GitHub/GitLab         |
| Branch            | Separate line of work |
| Merge             | Combine branches      |

---

# Best Practices

* Commit small changes
* Use meaningful commit messages
* Pull before push
* Never push secrets/passwords
* Use `.gitignore`

Example `.gitignore`:

```txt
node_modules/
.env
*.log
```
