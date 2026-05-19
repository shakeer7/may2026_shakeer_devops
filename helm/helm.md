
refer the link for hands-on project: https://github.com/iam-veeramalla/helm-zero-to-hero/

Helm is a package manager for Kubernetes that simplifies deploying, configuring, and maintaining complex applications. It uses "charts," which are pre-configured packages of Kubernetes resources like deployments and services.

### Key Components

  * **Helm Client:** The command-line tool used to manage charts and releases.
  * **Helm Chart:** A collection of files describing a Kubernetes application, including configuration and dependencies.
  * **Helm Repository:** A location where charts are stored and shared.
  * **Helm Release:** A specific instance of a chart deployed to a cluster.

### Core Commands

  * **Installation:** Use `helm install <release-name> <chart>` to deploy an application.
  * **Management:**
      * `helm list`: Shows all installed releases.
      * `helm upgrade`: Updates an existing release with new configurations or versions.
      * `helm rollback`: Reverts a release to a previous revision if an upgrade fails.
      * `helm uninstall`: Deletes a release and its resources from the cluster.
  * **Configuration:** Customizations can be applied using a `values.yaml` file with the `-f` flag during installation.

### Pathnex Chart Structure Example

<img width="379" height="230" alt="tree-c-mychart" src="https://github.com/user-attachments/assets/8260dc93-20a6-4de0-9e6d-d274c77bdd24" />

The provided "Pathnex" chart example demonstrates a standard directory structure:

  * **`Chart.yaml`**: Contains metadata like the chart name, version, and dependencies (e.g., Redis, MySQL).
  * **`values.yaml`**: Holds default configuration parameters such as replica counts and image tags.
  * **`templates/`**: Contains Kubernetes YAML templates (like `deployment.yaml` and `service.yaml`) that are rendered with values during deployment.
  * **`charts/`**: Stores dependent charts packaged as `.tgz` files.
  * **`NOTES.txt`**: Provides post-installation instructions, such as how to access the application.


  Helm Commands - Summary Notes
• Install: helm install <release-name> <chart>
• Upgrade: helm upgrade <release-name> <chart>
• Uninstall: helm uninstall <release-name>
• List all releases: helm list
• Search charts in repo: helm search repo <chart-name>
• Show release history: helm history <release-name>
• Show chart details: helm show <chart> [<info-type>] (info-type: values, readme,
chart, all)
• Create a new chart: helm create <chart-name>
• Pull chart from repo: helm pull <chart> (use --untar to extract)
• Dry run install/upgrade: helm install <release-name> <chart> --dry-run
Or
helm upgrade <release-name> <chart> --dry-run
• Render templates without installing: helm template <release-name> <chart>
• Uninstall but keep history: helm uninstall <release-name> --keep-history
• Add a new repo: helm repo add <repo-name> <repo-url>
• Update repo cache: helm repo update
• Lint a chart: helm lint <chart>
• Package a chart directory: helm package <chart-directory>
• Get current values: helm get values <release-name> (add --all to get all values)
• Get full release details: helm get all <release-name>




-----------------------------------------------------------------------
## Install Helm on Linux

### Method 1: Official Script (Recommended)

Run this command:

```bash
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
```

This will:

* Download Helm
* Install latest Helm v3
* Place binary in `/usr/local/bin/helm`

---

## Verify Installation

```bash
helm version
```

Example output:

```bash
version.BuildInfo{Version:"v3.15.0", ...}
```

---

## Method 2: Manual Installation

### Step 1: Download Helm

```bash
wget https://get.helm.sh/helm-v3.15.0-linux-amd64.tar.gz
```

### Step 2: Extract

```bash
tar -zxvf helm-v3.15.0-linux-amd64.tar.gz
```

### Step 3: Move Binary

```bash
sudo mv linux-amd64/helm /usr/local/bin/helm
```

### Step 4: Verify

```bash
helm version
```

---

## Install Helm on Ubuntu using APT

```bash
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -

sudo apt-get install apt-transport-https --yes

echo "deb https://baltocdn.com/helm/stable/debian/ all main" | \
sudo tee /etc/apt/sources.list.d/helm-stable-debian.list

sudo apt update

sudo apt install helm
```

---

## Useful Helm Commands

### Add Repository

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
```

### Update Repositories

```bash
helm repo update
```

### Search Charts

```bash
helm search repo nginx
```

### Install NGINX

```bash
helm install my-nginx bitnami/nginx
```

---

## Check Installed Releases

```bash
helm list
```

---

## Uninstall Release

```bash
helm uninstall my-nginx
```



