# Nginx Kubernetes Deployment with Terraform

This project contains Terraform configurations to deploy an Nginx application to a Kubernetes cluster.

## Prerequisites

- Terraform installed
- kubectl installed
- Access to a Kubernetes cluster
- Valid kubeconfig file

## Setup and Deployment

1. Clone or create the project:
   ```bash
   mkdir nginx-k8s-terraform
   cd nginx-k8s-terraform
   ```

2. Ensure all Terraform files (main.tf, variables.tf, providers.tf, kubernetes.tf) are in the project directory.

3. Place your `kubeconfig.json` file in the project directory or update the `kubeconfig_path` variable in `variables.tf`.

4. Initialize Terraform:
   ```bash
   terraform init
   ```

5. Validate the Terraform configuration:
   ```bash
   terraform validate
   ```

6. Preview the changes:
   ```bash
   terraform plan
   ```

7. Apply the configuration:
   ```bash
   terraform apply
   ```
   When prompted, type `yes` to confirm.

## Verification

8. Verify the deployment:
   ```bash
   kubectl get deployments
   kubectl get pods
   kubectl get services
   ```

9. Test the Nginx service:
   - If using Minikube:
     ```bash
     minikube service nginx-service
     ```
   - If using a cloud provider, get the external IP:
     ```bash
     kubectl get service nginx-service
     ```
     Then open the external IP in a web browser.

## Cleanup

10. To remove the deployed resources:
    ```bash
    terraform destroy
    ```
    When prompted, type `yes` to confirm.

## Customization

- Adjust the number of replicas by modifying the `replicas` variable in `variables.tf`.
- Modify the Nginx configuration by editing the Kubernetes deployment in `main.tf`.

## Troubleshooting

- Ensure your kubeconfig file is correctly configured and you have the necessary permissions in your Kubernetes cluster.
- Check Terraform and kubectl versions are compatible with your configuration and cluster.

