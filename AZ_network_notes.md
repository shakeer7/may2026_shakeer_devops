# Overview of Azure Networking (Real-World Example)

Imagine a company called **ABC Retail** migrating its applications to Microsoft Azure.

They have:

* A web application
* An application server
* A database server
* Employees accessing apps securely

Azure networking helps connect and secure all these resources.

---

# 1. Virtual Network (VNet)

A **Virtual Network (VNet)** is a private network inside Azure.

It allows Azure resources like VMs, databases, and applications to communicate securely.

## Real-World Example

ABC Retail creates a VNet named:

`Prod-VNet : 10.0.0.0/16`

This becomes the company’s private cloud network.

Think of it like:

* An office building
* Inside the building are multiple departments (subnets)

### Benefits

* Isolation
* Secure communication
* Internet connectivity control
* Connect to on-premises datacenter using VPN/ExpressRoute

---

# 2. Subnets and CIDR

## Subnet

A subnet divides a VNet into smaller networks.

Different workloads are separated for:

* Security
* Performance
* Management

## CIDR

CIDR (Classless Inter-Domain Routing) defines IP ranges.

Example:

10.0.0.0/16

* `10.0.0.0` = Network address
* `/16` = First 16 bits are network bits

### Real-World Example

ABC Retail creates:

| Subnet    | CIDR        | Purpose             |
| --------- | ----------- | ------------------- |
| WebSubnet | 10.0.1.0/24 | Web servers         |
| AppSubnet | 10.0.2.0/24 | Application servers |
| DBSubnet  | 10.0.3.0/24 | Database servers    |

### Why separate subnets?

* Web servers exposed to internet
* Database should stay private
* Easier security management

---

# 3. Routes and Route Tables

Routes determine **where network traffic goes**.

Azure automatically creates default routes, but admins can create custom routes using Route Tables.

## Real-World Example

ABC Retail wants:

* All internet traffic inspected by a firewall

So they create:

* A firewall VM
* A custom route table

Example route:

| Destination | Next Hop           |
| ----------- | ------------------ |
| 0.0.0.0/0   | Firewall Appliance |

`0.0.0.0/0` means:

* All traffic

Result:

* Every packet first goes through firewall inspection.

### Use Cases

* Traffic inspection
* Forced tunneling
* Hybrid networking
* Custom network paths

---

# 4. Network Security Groups (NSGs)

NSGs act like a **firewall for Azure resources**.

They control:

* Inbound traffic
* Outbound traffic

Rules are based on:

* IP
* Port
* Protocol

## Real-World Example

ABC Retail attaches an NSG to WebSubnet.

Rules:

| Priority | Rule                            | Action |
| -------- | ------------------------------- | ------ |
| 100      | Allow HTTP (80) from Internet   | Allow  |
| 110      | Allow HTTPS (443) from Internet | Allow  |
| 200      | Deny All                        | Deny   |

Result:

* Users can access website
* Unauthorized traffic blocked

### Another Example

Database subnet NSG:

* Allow SQL port 1433 only from AppSubnet
* Deny internet access completely

This improves security significantly.

---

# 5. Application Security Groups (ASGs)

ASGs logically group VMs.

Instead of using IP addresses in NSG rules, you use application groups.

## Real-World Example

ABC Retail creates:

* Web-ASG
* App-ASG
* DB-ASG

NSG Rule:

* Allow traffic from `Web-ASG` to `App-ASG` on port 8080
* Allow traffic from `App-ASG` to `DB-ASG` on port 1433

### Why ASGs are useful

Without ASGs:

* Need manual IP management

With ASGs:

* Dynamic and scalable
* Easier rule management

Very useful in large environments.

---

# Complete Architecture Flow

```text
Internet
   ↓
Azure Load Balancer
   ↓
WebSubnet (Web VMs)
   ↓
AppSubnet (Application VMs)
   ↓
DBSubnet (Database VM)
```

Security Layers:

* VNet isolates environment
* Subnets separate workloads
* Route Tables control traffic flow
* NSGs filter traffic
* ASGs simplify security management

---

# Simple Interview Summary

| Component   | Purpose                               |
| ----------- | ------------------------------------- |
| VNet        | Private network in Azure              |
| Subnet      | Divide network into smaller sections  |
| CIDR        | Defines IP address range              |
| Route Table | Controls traffic path                 |
| NSG         | Firewall rules for subnet/VM          |
| ASG         | Logical grouping of VMs for NSG rules |

---

# One-Line Real-World Explanation

“Azure Networking helps organizations securely connect, isolate, route, and protect cloud resources just like a real corporate datacenter network.”
