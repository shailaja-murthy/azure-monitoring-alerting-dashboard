# Azure Monitoring and Alerting

## Project Overview

This project involved setting up monitoring for an Azure Linux virtual machine and checking its health using Azure monitoring services.

I worked with Azure Monitor and Log Analytics to collect Linux system logs, check VM heartbeat information and configure CPU usage alerts with email notifications. Terraform was used for infrastructure configuration, and GitHub Actions was used to automate code validation.

## Tools and Technologies

- Microsoft Azure
- Linux Virtual Machine
- Azure Monitor
- Log Analytics
- Azure Monitor Agent (AMA)
- Data Collection Rules (DCR)
- KQL
- Azure Monitor Alerts
- Terraform
- GitHub Actions

## Work Completed

- Created the Azure resource group, virtual network, subnet, network security group and Linux virtual machine.
- Configured Azure Monitor Agent to collect monitoring data from the Linux VM.
- Created a Data Collection Rule for collecting Linux Syslog events.
- Connected the VM monitoring data to Log Analytics.
- Used KQL queries to check system logs and VM heartbeat information.
- Configured an Azure Monitor alert for high CPU usage and email notifications.
- Created Terraform configuration files for managing Azure infrastructure.
- Set up a GitHub Actions workflow to check Terraform formatting and validate configuration changes.

## Project Files

Text
azure-monitoring-alerting-dashboard/
│
├── .github/
│   └── workflows/
│       └── terraform-deploy.yml
│
├── queries/
│   └── vm-health.kql
│
├── screenshots/
│
├── terraform/
│   ├── main.tf
│   ├── providers.tf
│   ├── variables.tf
│   └── terraform.tfvars.example
│
├── .gitignore
└── README.md
```
## Terraform Commands

The Terraform configuration is available in the `terraform` folder.

```bash
terraform init
terraform fmt
terraform validate
terraform plan
```

Review the plan before applying any changes to Azure.

## Screenshots

The screenshots folder is used to show the Azure setup, Log Analytics results, VM heartbeat monitoring, CPU alert configuration, email notifications and GitHub Actions results.

## What I Learned

This project provided hands-on experience with Azure monitoring, Linux system log collection, Log Analytics, and KQL. It also helped me understand Azure networking components, infrastructure as code using Terraform, and how monitoring data can be used to check virtual machine health.
