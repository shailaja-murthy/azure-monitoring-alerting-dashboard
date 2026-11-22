# Azure Monitoring and Alerting

## Project Overview

This project focuses on monitoring an Azure Linux virtual machine using Azure Monitor and Log Analytics. It includes Linux log collection, VM health checks and CPU usage alerts with email notifications.

Terraform configuration files are used to define the Azure infrastructure, while GitHub Actions checks Terraform formatting and validates configuration changes.

## Technologies Used

- Microsoft Azure
- Linux Virtual Machine
- Azure Monitor
- Log Analytics Workspace
- Azure Monitor Agent (AMA)
- Data Collection Rules (DCR)
- Kusto Query Language (KQL)
- Azure Monitor Alerts
- Terraform
- GitHub Actions

## Implementation

- Set up Azure infrastructure, including a virtual network, subnet, network security group and Linux VM.
- Configured Azure Monitor Agent and Data Collection Rules to collect Linux system logs.
- Connected monitoring data to a Log Analytics workspace.
- Used KQL queries to review Syslog events and check VM heartbeat status.
- Configured an Azure Monitor alert for high CPU usage with email notifications.
- Created Terraform configuration files to define the Azure infrastructure.
- Configured GitHub Actions to check Terraform formatting and validate configuration changes.

## Project Structure

```text
azure-monitoring-alerting/
│
├── .github/
│   └── workflows/
│       └── terraform-validate.yml
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

## Terraform Validation

The Terraform configuration can be checked using:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
```

Review the execution plan before applying any infrastructure changes.

## Screenshots

Screenshots of the Azure infrastructure, Log Analytics results, VM heartbeat, CPU alert configuration, email notification and GitHub Actions validation are included in the `screenshots` folder.
