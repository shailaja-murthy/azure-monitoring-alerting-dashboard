# Azure Monitoring and Alerting Dashboard

## Overview

This project focuses on monitoring Azure infrastructure and checking the health of Linux virtual machines.

Azure Monitor and Log Analytics are used to collect and review system logs. KQL queries help analyse the collected data and check whether the virtual machine is sending heartbeat information correctly.

## Technologies Used

- Microsoft Azure
- Azure Virtual Machines (Linux)
- Azure Monitor
- Log Analytics Workspace
- Azure Monitor Agent (AMA)
- Data Collection Rules (DCR)
- Kusto Query Language (KQL)
- Terraform
- GitHub Actions

## Key Features

- Created Azure infrastructure, including a virtual network, subnet, network security group, and Linux virtual machine.
- Configured a Log Analytics workspace to collect monitoring data.
- Set up Azure Monitor Agent and Data Collection Rules for Linux log collection.
- Collected and analysed Linux Syslog data.
- Created KQL queries to review system logs and monitor VM heartbeat status.
- Verified that the virtual machine was sending heartbeat data successfully.
- Created Terraform configuration files to define Azure infrastructure.

## Monitoring Queries

KQL queries are available in the `queries` folder.

The queries are used to:
- View Linux system logs.
- Check virtual machine heartbeat status.
- Identify whether the VM is sending monitoring data.

**Query file:** `queries/vm-health.kql`

## Repository Structure

```text
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

## What I Learned

This project provided hands-on experience with Azure monitoring, Linux system log collection, Log Analytics, and KQL. It also helped me understand Azure networking components, infrastructure as code using Terraform, and how monitoring data can be used to check virtual machine health.