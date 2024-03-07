
Requirements:

AWS account
AWS CLI
kubectl/helm

Repository Overview:

This repository features Terraform code that orchestrates the creation of production and development environments on AWS. It meticulously automates the configuration of key components as follows:

AWS EKS Infrastructure: Constructs the essential infrastructure for Amazon EKS, ensuring a stable platform for container orchestration.

Networking: Develops the necessary networking resources for EKS, including domain name services and domain certificates.

Jenkins Agent: Integrates a Jenkins agent within the EKS cluster, enhancing Continuous Integration (CI) and Continuous Deployment (CD) processes.

Within the EKS cluster, the following resources have been created using Kubernetes and Ansible:

Jenkins Server: A Jenkins server is established, where the agent is attached, and CI/CD pipelines are developed.

Traefik: Employs Traefik as a dynamic ingress controller, which autonomously generates a Load Balancer for the EKS cluster.

Application Deployment: Offers deployment blueprints for a sample application.

Monitoring: Installs Grafana and Prometheus using Helm charts, with Ansible managing the automation. This setup is crucial for monitoring the cluster's and applications' operational health.

Accessing the Application:

The application is accessible on port 8090. You can reach it using your preferred domain name, which is linked to the EKS cluster through the configured ingress controller.

