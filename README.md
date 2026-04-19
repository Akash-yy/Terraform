### AWS Multi-VPC Transit Gateway Architecture (terraform-aws-multi-vpc-transit-gateway-architecture — [View Repo](https://github.com/Akash-yy/terraform-aws-multi-vpc-transit-gateway-architecture))

This project implements a **production-style multi-VPC AWS network architecture** using Terraform, centered around a **Transit Gateway (TGW)** for scalable and controlled inter-VPC communication.

It features multiple application VPCs connected via a centralized TGW, with all outbound traffic routed through a dedicated **Inspection VPC and NAT Gateway** to enforce controlled internet access. The design emphasizes **modularity, reusable Terraform modules, and clear traffic flow validation** using EC2 instances.

Key highlights include:

* Centralized routing and inspection pattern (hub-and-spoke)
* Dedicated TGW subnets for controlled traffic entry/exit
* Modular Terraform structure (VPC, TGW, EC2)
* Environment-aware safeguards to prevent accidental infrastructure deletion

This project is built as a **baseline for production-grade networking**, focusing on clarity and core concepts before layering advanced features like firewalling, multi-AZ resilience, and logging.

--------------------------------------------------------------------------

