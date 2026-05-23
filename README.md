# 🚀 Azure Secure Data Ingestion Pipeline (Terraform + Azure DevOps)

## 📌 Overview

This project demonstrates a **secure and automated data ingestion pipeline** from external/on-prem sources to Azure Cloud Storage using **Infrastructure as Code and CI/CD automation**.

It simulates a real-world enterprise scenario where files from an external system are securely uploaded into Azure Blob Storage using a pipeline-based approach.

---

## 🏗️ Architecture

- Infrastructure is provisioned using Terraform
- Azure Storage Account and Container are created
- Role-Based Access Control (RBAC) is applied for secure access
- Azure DevOps pipeline handles file upload automation

---

## ⚙️ Technologies Used

- Terraform
- Azure Storage
- Azure DevOps CI/CD
- Azure CLI
- RBAC (Azure Active Directory)

---

## 🔐 Security Design

- No access keys used
- RBAC-based authentication
- Least privilege access model
- Secure pipeline-based deployment

---

## 📂 Project Structure
