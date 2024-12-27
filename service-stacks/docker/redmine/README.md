# D2K Redmine Docker Setup

Welcome to the Redmine Docker Setup project for D2K. This repository provides a robust Docker-based environment tailored for deploying Redmine, a flexible project management web application. Whether you are looking to set up a production-grade Redmine environment or need a development setup to test new plugins or themes, this setup simplifies the process with Docker and Docker Compose.

The project includes pre-configured Docker Compose files, selection of themes that can be easily customized to suit diverse operational requirements. It also supports environment-specific configurations to ensure that you can maintain different settings for development, testing, and production without hassle.

## Features

- **Simplified Docker Management**: Use Docker Compose to manage all components necessary for your Redmine installation & MySQL.
- **Custom Themes Support**: Easily add and manage custom themes to personalize your Redmine experience.
- **Environment Flexibility**: Configurable for various environments such as development, testing, and production.

This guide will walk you through the setup process, highlight configuration options, and provide tips for maintaining and scaling your Redmine installation.

## Installation

Follow these steps to get your Redmine environment set up using Docker:

### 1. Clone the Repository

First, clone this repository to your local machine to get all the necessary Docker files and scripts:

```bash
git clone git@github.com:d2k-tech/redmine.git
cd redmine
```

### 2. Set Up Environment Variables

Copy the .env.example file to .env and customize the environment variables to suit your setup:

```bash
cp .env.example .env
```

### 3. Create configuration file

```
1. Copy the configuration.yml.example -> configuration.yml
1. Update the SMTP credentials in the environment you are running
```

### 4. Download and configure the theme
1. Download the [zenmine-theme](https://d2k-redmine.s3.ap-south-1.amazonaws.com/zenmine-510-hlsjj4.zip)
1. Extract the zip and place the folder inside the themes folder.

### 5. Download and configure the plugins
1. Download the plugins:
- [redmine_agile-1_6_8-pro.zip](https://d2k-redmine.s3.ap-south-1.amazonaws.com/plugins/redmine_agile-1_6_8-pro.zip)
- [redmine_budgets-1_0_5-pro.zip](https://d2k-redmine.s3.ap-south-1.amazonaws.com/plugins/redmine_budgets-1_0_5-pro.zip)
- [redmine_contacts_helpdesk-4_2_2-pro.zip](https://d2k-redmine.s3.ap-south-1.amazonaws.com/plugins/redmine_contacts_helpdesk-4_2_2-pro.zip)
- [redmine_contacts_invoices-4_2_9-pro.zip](https://d2k-redmine.s3.ap-south-1.amazonaws.com/plugins/redmine_contacts_invoices-4_2_9-pro.zip)
- [redmine_crm-4_4_1-pro.zip](https://d2k-redmine.s3.ap-south-1.amazonaws.com/plugins/redmine_crm-4_4_1-pro.zip)
- [redmine_reporter-2_0_4-pro.zip](https://d2k-redmine.s3.ap-south-1.amazonaws.com/plugins/redmine_reporter-2_0_4-pro.zip)

1. Extract the plugins and place inside the plugins folder



### 6. Run Docker Compose

Launch the Redmine and associated services using Docker Compose:

```bash
docker-compose up -d
```


> You can download the ssl cert & key from [here](https://d2k-redmine.s3.ap-south-1.amazonaws.com/certs/).