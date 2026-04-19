# Terraform Infrastructure Hub

This repository serves as a **centralized portfolio of my Terraform-based CLoud infrastructure projects**, focused on designing scalable, production-oriented architectures and enforcing best practices in cloud provisioning.

The projects included here demonstrate practical implementations of:

* Infrastructure modularization
* Network architecture design
* Cost governance and operational safeguards

Each project is maintained in its own repository for clarity and independent evolution, and is aggregated here for easy navigation and evaluation.

---

## 🚀 Projects

### AWS Multi-VPC Transit Gateway Architecture

**Repo:** (terraform-aws-multi-vpc-transit-gateway-architecture — [View Repo](https://github.com/Akash-yy/terraform-aws-multi-vpc-transit-gateway-architecture))

This project implements a **production-style multi-VPC AWS network architecture** using Terraform, centered around a **Transit Gateway (TGW)** for scalable and controlled inter-VPC communication.

It features multiple application VPCs connected via a centralized TGW, with all outbound traffic routed through a dedicated **Inspection VPC and NAT Gateway** to enforce controlled internet access. The design emphasizes **modularity, reusable Terraform modules, and clear traffic flow validation** using EC2 instances.

**Key Highlights:**

* Centralized routing and inspection pattern (hub-and-spoke)
* Dedicated TGW subnets for controlled traffic entry/exit
* Modular Terraform structure (VPC, TGW, EC2)
* Environment-aware safeguards to prevent accidental infrastructure deletion

This project serves as a **baseline for production-grade networking**, focusing on clarity and core concepts before layering advanced features such as firewalling, multi-AZ resilience, and logging.

---

### AWS Budget Architecture

**Repo:** terraform-aws-budget-architecture — [View Repo](https://github.com/Akash-yy/terraform-aws-budget-architecture)


**Budget Guardrail (Cost Governance)**

Implements a Terraform-managed AWS Budget to enforce **cost governance at the infrastructure level**. The configuration defines a monthly spending limit with **forecast-based alerting**, enabling proactive intervention before budget overruns occur.

Designed as a **baseline safeguard for all new environments**, this ensures cost visibility, prevents accidental overspending, and aligns infrastructure provisioning with financial constraints.

---

## 🧠 Design Principles

* **Modularity First** – Reusable Terraform modules for scalability and maintainability
* **Clarity Over Complexity** – Focus on understanding core infrastructure patterns before abstraction
* **Production Mindset** – Designs reflect real-world architecture patterns and constraints
* **Safety by Default** – Guardrails to prevent unintended infrastructure or cost impact

---

## 📌 Purpose

This repository is intended to:

* Showcase practical Terraform implementations
* Demonstrate understanding of AWS architecture patterns
* Serve as a foundation for evolving into production-ready systems

---

## 🔗 Navigation

Each project is independently versioned and documented.
Use this hub as an entry point to explore specific implementations.

---

## 📄 License

<span>
    <strong>MIT</strong>
    <a href="https://github.com/Akash-yy/Terraform-Hub?tab=MIT-1-ov-file">
      <img src="https://img.shields.io/badge/View-License-blue" />
    </a>
  </span>
