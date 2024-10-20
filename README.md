# Infrastructure as Code (IaC) Local Setup

This project sets up a local Kubernetes environment using **Traefik** and **ArgoCD** on Rancher Desktop.

## Requirements

- Rancher Desktop installed and configured (Kubernetes enabled with Traefik)
- `kubectl` CLI configured for Rancher Desktop's Kubernetes cluster
- Helm installed ([Helm installation guide](https://helm.sh/docs/intro/install/))

## Traefik Dashboard Setup

### Steps to Expose the Traefik Dashboard

1. Apply the configuration to expose the Traefik dashboard:
   ```shell
   kubectl apply -f expose-traefik.yaml
   ```

2. Access the dashboard at [http://localhost:9000/dashboard/](http://localhost:9000/dashboard/).

Alternatively, you can port-forward Traefik to localhost:

```shell
kubectl port-forward -n kube-system service/traefik 9000:9000
```

## ArgoCD Setup

### Accessing the ArgoCD Web UI on Rancher Desktop

To access ArgoCD via `devops.localhost/argocd`, follow the steps based on your operating system:

#### **Windows**:

1. **Edit the Hosts File**:  
   Open Notepad as Administrator, then navigate to the hosts file:
   ```
   C:\Windows\System32\drivers\etc\hosts
   ```

2. **Add the Following Entry**:  
   Add this line at the end of the file:
   ```
   127.0.0.1  devops.localhost
   ```

3. **Flush DNS Cache**:  
   Open Command Prompt as Administrator and run the following command:
   ```shell
   ipconfig /flushdns
   ```

4. **Access the ArgoCD UI**:  
   Now navigate to [http://devops.localhost/devops](http://devops.localhost/devops) to access the ArgoCD UI.

#### **Linux** and **Mac**:

1. **Set Up Host Mapping**  
   Edit the `/etc/hosts` file to map `devops.localhost` to `127.0.0.1`.

   ```shell
   sudo nano /etc/hosts
   ```

   Add:
   ```
   127.0.0.1  devops.localhost
   ```

2. **Flush DNS Cache**  
   Run the following command based on your OS:

    - **Linux**:
      ```shell
      sudo systemctl restart nscd
      ```
    - **Mac**:
      ```shell
      sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder
      ```

3. **Access ArgoCD UI**  
   Navigate to [http://devops.localhost/devops](http://devops.localhost/devops) to access ArgoCD.

### Retrieve ArgoCD Initial Admin Password

1. **Username**: `admin`

2. **Get the Password**:  
   To retrieve the initial ArgoCD admin password (replace `[namespace]` with your ArgoCD namespace):
   ```shell
   kubectl -n [namespace] get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
   ```

---

### Notes for Rancher Desktop Users

- **Rancher Desktop Networking**: Rancher Desktop uses **Traefik** as the default ingress controller. Make sure your
  ingress routes are correctly set up for services like ArgoCD.
- **Traefik and Rancher**: Traefik runs under the `kube-system` namespace. Ensure it's properly exposed and configured
  to route traffic to your services.
- **Kubernetes Context**: Rancher Desktop uses the `rancher-desktop` context. Ensure `kubectl` is configured correctly:
  ```shell
  kubectl config use-context rancher-desktop
  ```

For more information:

- [Traefik Documentation](https://doc.traefik.io/traefik/)
- [ArgoCD Documentation](https://argo-cd.readthedocs.io/en/stable/)
