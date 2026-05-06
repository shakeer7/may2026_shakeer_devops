1. Dev / Test / Prod environments not able to connect
Problem:
You created Dev, Test, Prod but they cannot communicate.
Solution (Best practice):
•	Create separate VNets for Dev/Test/Prod
•	Use VNet Peering if communication is required
•	Control access using NSG + Route Tables
•	Never allow full open connectivity, only required ports
Interview line:
“I isolate Dev, Test, and Prod using separate VNets and allow controlled connectivity via VNet peering and NSGs.”
________________________________________
2. Same subscription, same region, still disconnected – why?
Check in this order:
1.	NSG inbound/outbound rules
2.	Subnet vs NIC-level NSG
3.	User Defined Routes (UDR)
4.	Firewall or NVA
5.	DNS resolution
Most common reason: NSG or UDR misconfiguration.
________________________________________
3. Is it better to use Azure AD or RBAC?
Correct answer:
👉 Both together.
•	Azure AD → Authentication (who you are)
•	RBAC → Authorization (what you can do)
Example:
Azure AD user + RBAC Contributor role on subscription.
________________________________________
4. Policy-based routing issue – how to fix?
Cause:
•	Wrong UDR
•	Traffic forced to firewall/NVA
•	Missing next hop
Fix:
•	Check Effective Routes
•	Correct next hop (Internet / VNet Peering / Virtual appliance)
•	Validate firewall rules
________________________________________
5. What is Availability Zone?
•	Physically separate datacenters within a region
•	Independent power, cooling, networking
•	Used for high availability
Example:
Deploy VM in Zone 1 and Zone 2 behind Load Balancer.
________________________________________
6. Types of replication (Azure)
•	LRS – Local redundancy
•	ZRS – Zone redundancy
•	GRS – Geo redundancy
•	GZRS – Zone + Geo
Used mainly in Storage and DR.
________________________________________
7. Client bill is 20K/month – how do you optimize cost?
Steps:
1.	Azure Cost Management analysis
2.	Identify idle VMs
3.	Resize over-provisioned VMs
4.	Auto-shutdown non-prod
5.	Reserved Instances
6.	Storage tier optimization
Parameters considered:
•	CPU utilization
•	VM uptime
•	Storage access pattern
•	Business SLA
________________________________________
8. Azure Site Recovery vs Azure Backup
Azure Site Recovery	Azure Backup
Disaster recovery	Data protection
VM replication	Snapshot-based
Low RTO/RPO	Higher RTO
One-line:
ASR is for business continuity, Backup is for data recovery.
________________________________________
9. Azure DevOps tools you used
•	Azure Repos
•	Azure Pipelines
•	Azure Boards
•	Service Connections
•	Artifacts
Used for: CI/CD, infra deployment, automation.
1. What process do you follow during migration (before & after)?
Before migration
•	Application dependency mapping
•	Capacity & compatibility assessment (Azure Migrate)
•	Network planning (VNet, subnet, NSG)
•	Backup & rollback plan
•	Stakeholder approval
During migration
•	Pilot migration
•	Sync data
•	Monitor performance
•	Validate application
After migration
•	DNS cutover
•	Performance tuning
•	Cost optimization
•	Decommission on-prem
•	Monitoring & documentation
Interview line:
“I follow assess → migrate → validate → optimize → decommission.”
________________________________________
2. If application server crashes or goes down, next steps?
1.	Acknowledge incident
2.	Check Azure Monitor alerts
3.	VM health & status
4.	Application logs
5.	Network connectivity
6.	Restart service/VM
7.	Escalate if required
8.	RCA after resolution
________________________________________
3. If I have only a production server and need to patch it, what do you suggest?
•	Take backup & snapshot
•	Use maintenance window
•	Notify stakeholders
•	Patch in phases
•	Validate application
•	Rollback plan ready
Never patch blindly in production.
________________________________________
4. What is Target Resolution Time (TRT)?
•	Maximum time to resolve an incident as per SLA
•	Depends on priority (P1, P2, etc.)
________________________________________
5. Why do we require patching?
•	Security vulnerability fixes
•	OS & application stability
•	Compliance (ISO, SOC, etc.)
•	Performance improvement
________________________________________
6. User claims MFA blocked & raised P1 incident, you are alone in night shift. What do you do?
1.	Check Azure AD Sign-in logs
2.	Validate Conditional Access
3.	Temporary MFA bypass (approved)
4.	Restore access
5.	Inform user & manager
6.	Document incident
Key: Security + Business continuity.
________________________________________
7. How do you use Just-In-Time (JIT)? When do you use it?
•	Used for VM access security
•	Opens ports temporarily
•	Time-bound access
•	Requires approval
Used when:
Admins need short-term RDP/SSH access.
________________________________________
8. Do you use KQL? Where?
✅ Yes
•	Used in Log Analytics
•	Query logs, alerts, sign-in logs
•	Troubleshooting & monitoring
________________________________________
9. Cloud VM cannot reach the internet – how do you troubleshoot?
1.	NSG outbound rules
2.	Route table (0.0.0.0/0)
3.	Azure Firewall/NVA
4.	Public IP/NAT Gateway
5.	DNS settings
________________________________________
10. How do you decide incident priority?
Based on:
•	Business impact
•	Users affected
•	Revenue impact
•	SLA
________________________________________
11. Incident vs Service Request
Incident	Service Request
Unplanned outage	Planned request
Urgent	Non-urgent
P1–P4	Standard SLA
________________________________________
12. What is MSP?
Managed Service Provider
Company that manages cloud infra, security, monitoring & support.
________________________________________
13. Types of services (Azure)
•	IaaS
•	PaaS
•	SaaS
________________________________________
14. Scale Set vs Availability Set
VM Scale Set	Availability Set
Auto-scaling	Fixed VMs
Used for load	Fault & update domains
Modern approach	Legacy approach
________________________________________
15. What is Fault Domain?
•	Physical hardware isolation
•	Protects from rack or power failure
________________________________________
16. No subscription access, but PowerShell access. How do you create storage?
•	Login via Service Principal
•	Use assigned RBAC role
•	Deploy using PowerShell/CLI
•	Audit activity logs
________________________________________
17. Client escalated VM without intimation. How do you handle?
1.	Check activity logs
2.	Understand reason
3.	Explain impact & cost
4.	Apply governance
5.	Prevent via policy
________________________________________
18. Which Azure services do you use daily?
•	VM
•	VNet
•	NSG
•	Load Balancer
•	Azure Monitor
•	Backup
•	Azure AD
•	Storage
________________________________________
19. Which tool do you use to create VNets?
•	Azure Portal
•	ARM / Bicep
•	Terraform
•	Azure CLI
•	PowerShell
________________________________________
20. We created 3 environments – how do you manage them?
•	Separate resource groups
•	Separate VNets
•	Naming standards
•	RBAC segregation
•	Cost budgets
•	Policies
I’ll keep it concise + real-world, not textbook.
________________________________________
1. Difference between On-Prem AD and Azure AD
On-Prem AD
•	Traditional Active Directory
•	Used for Windows domain, LDAP, Kerberos
•	Manages users, computers, GPOs inside office network
Azure AD (Entra ID)
•	Cloud identity service
•	Used for Azure, Microsoft 365, SaaS apps
•	Supports SSO, MFA, Conditional Access
👉 In interviews:
“On-prem AD is for internal domain management, Azure AD is for cloud identity and access management.”
________________________________________
2. Why we need both DNS and DHCP
•	DHCP assigns IP address automatically
•	DNS resolves hostname to IP address
👉 Without DHCP, IP assignment is manual
👉 Without DNS, systems can’t locate services by name
________________________________________
3. Key metrics in Azure Monitor
•	CPU percentage
•	Memory usage
•	Disk IOPS and latency
•	Network In/Out
•	Availability
•	Application response time (App Insights)
________________________________________
4. What you check in key metrics
•	Sudden CPU spike
•	Memory pressure
•	Disk queue length
•	Network drops
•	Failed requests
•	Latency increase
________________________________________
5. App is down, Azure Monitor shows down – troubleshooting steps
1.	Check Azure Service Health
2.	Check VM / App Service status
3.	Review Metrics
4.	Check Application Insights logs
5.	Check NSG / Firewall
6.	Check Backend health
7.	Restart service (if approved)
8.	Inform application & network team
👉 Always mention communication + RCA
________________________________________
6. Difference between P1, P2, P3, P5
These are incident priorities:
•	P1 – Critical, business down
•	P2 – High impact, partial outage
•	P3 – Medium, workaround exists
•	P5 – Low priority, informational
________________________________________
7. NSG vs Azure Firewall
NSG
•	Layer 4
•	Subnet / NIC level
•	Free, basic filtering
Azure Firewall
•	Layer 4 & 7
•	Centralized security
•	Stateful, logging, FQDN filtering
________________________________________
8. Smooth coordination with app & network teams
•	Share metrics and logs
•	Clearly state impact
•	Use ticket / bridge call
•	Provide timelines
•	Share RCA after resolution
👉 Interview keyword: cross-team collaboration
________________________________________
9. Major steps to onboard a device to Intune
1.	Enroll device
2.	Assign compliance policy
3.	Apply configuration profiles
4.	Deploy apps
5.	Enable security baseline
6.	Monitor compliance
________________________________________
10. Microsoft Defender vs BitLocker
•	Defender → Endpoint protection (malware, threat detection)
•	BitLocker → Disk encryption
👉 Security vs Encryption
________________________________________
11. Software deployment during patching
•	Test in pilot group
•	Schedule maintenance window
•	Deploy via Intune / SCCM
•	Monitor failures
•	Rollback if needed
________________________________________
12. LRS vs GRS
•	LRS – Locally redundant, same datacenter
•	GRS – Geo-redundant, secondary region
👉 GRS = disaster recovery
________________________________________
13. How to extend storage size
•	Increase disk size in Azure portal
•	Extend partition in OS
•	Restart VM (if required)
________________________________________
14. Front Door vs Application Gateway
Azure Front Door
•	Global
•	Anycast
•	CDN + WAF
•	Layer 7
Application Gateway
•	Regional
•	Internal / External
•	WAF
•	Layer 7 load balancing
________________________________________
15. ASR – how to implement
1.	Create Recovery Services Vault
2.	Enable replication
3.	Select source & target
4.	Configure network & storage
5.	Test failover
6.	Enable monitoring
________________________________________
16. How to move IP in ASR
•	Use Azure Load Balancer
•	Use DNS update
•	Map new IP after failover
•	Do not hardcode IPs
________________________________________
17. Blue screen diagnostics
•	Check event viewer
•	Memory dump analysis
•	Driver issues
•	Windows updates
•	Hardware health
________________________________________
18. Types of DNS
•	Forward lookup
•	Reverse lookup
•	Public DNS
•	Private DNS
•	Conditional forwarder
________________________________________
19. PaaS services you use
•	Azure App Service
•	Azure SQL
•	Azure Functions
•	Logic Apps
•	Azure Storage
________________________________________
20. Azure App Service
•	PaaS hosting for web apps
•	Auto-scaling
•	No server management
•	Supports .NET, Java, Node, Python
________________________________________
21. Three subscriptions in one tenant – permission handling
•	Use RBAC
•	Assign roles per subscription
•	Use Management Groups
•	Follow least privilege
________________________________________
22. VM in AWS & Azure – access at same time
•	Use VPN / Bastion
•	Use IAM + RBAC
•	Central identity (Azure AD / SSO)
•	Secure jump box
1. Difference between OAuth, OpenID Connect, and SAML
OAuth 2.0
•	Authorization framework
•	Gives access to resources
•	Example: App accessing Graph API
OpenID Connect (OIDC)
•	Identity layer on top of OAuth
•	Used for authentication (who you are)
•	Returns ID token
SAML
•	XML-based authentication
•	Older, enterprise SSO
•	Mostly used in legacy apps
👉 One-liner:
“OAuth is for authorization, OIDC and SAML are for authentication.”
________________________________________
2. How to apply MFA
•	Enable MFA via:
o	Security defaults OR
o	Conditional Access policy
•	User signs in → second verification
•	Options: Authenticator app, SMS, call
________________________________________
3. Conditional Access Policy
•	Controls who, from where, on what device
•	Conditions: user, location, device, app
•	Actions: allow, block, require MFA, compliant device
👉 Interview phrase:
“Conditional Access is identity-based security control.”
________________________________________
4. Services in VM
•	Windows services (IIS, SQL, agents)
•	Linux services (nginx, sshd)
•	Azure VM extensions
•	Monitoring agents
________________________________________
5. Microsoft Defender score when VM is on another cloud
•	Defender for Cloud supports:
o	AWS
o	GCP
•	Uses Azure Arc
•	Security score still visible in Azure portal
________________________________________
6. PowerShell script to add VM (high-level)
•	Login: Connect-AzAccount
•	Select subscription
•	Create resource group
•	Create VM (size, image, VNet)
👉 You don’t need full script in interview, just steps
________________________________________
7. Backup & Disaster Recovery – RTO and RPO
•	Backup → Data recovery
•	DR (ASR) → Application recovery
RTO: Time to restore service
RPO: Data loss window
👉 Example:
“RTO 1 hour, RPO 15 minutes”
________________________________________
8. Key Vault Admin vs Azure Admin (Policy diff)
Key Vault Admin
•	Full access to secrets, keys, certs
Azure Admin
•	Manages Azure resources
•	No access to Key Vault secrets by default
👉 RBAC vs Access Policies
________________________________________
9. Three subscriptions (VMs + DB) – how to connect
Options:
•	VNet peering across subscriptions
•	Private Endpoint to DB
•	VPN / ExpressRoute
•	Azure Firewall for secure routing
👉 Best practice: Private Endpoint
________________________________________
10. Types of Storage
•	Blob – Unstructured data
•	File – File shares
•	Queue – Messaging
•	Table – NoSQL key-value
________________________________________
11. Network types in Storage Account
•	Public endpoint
•	Private endpoint
•	Service endpoint
•	Firewall rules
________________________________________
12. Load Balancer types
•	Basic vs Standard
•	Internal vs Public
•	Layer 4 (TCP/UDP)
________________________________________
13. Terraform in current service using N-2 version
•	Check current provider version
•	Update Terraform version
•	Test in non-prod
•	Apply changes gradually
•	Rollback plan
________________________________________
14. How to build Azure DevOps pipeline
1.	Repo connection
2.	YAML or Classic pipeline
3.	Build stage
4.	Test stage
5.	Release stage
6.	Approvals
________________________________________
15. Connection between Azure DevOps & Azure Subscription
•	Create Service Connection
•	Use Service Principal
•	Assign RBAC role
•	Pipeline uses this identity
________________________________________
16. Configure logs of all VMs in Azure portal
•	Enable Diagnostic settings
•	Send logs to Log Analytics
•	Enable Azure Monitor Agent
•	Enable VM Insights
________________________________________
17. Query in Log Analytics when traffic is blocked
Use KQL, examples:
•	AzureDiagnostics
•	SecurityEvent
•	AzureNetworkAnalytics_CL
•	NSG flow logs
👉 Say:
“I use KQL to identify blocked traffic.”
________________________________________
18. Infrastructure deployment in Azure portal (step by step)
1.	Create resource group
2.	Configure networking
3.	Deploy compute
4.	Attach storage
5.	Apply security (NSG, IAM)
6.	Enable monitoring
7.	Test access
1. Categories of patches
•	Security patches – Fix vulnerabilities
•	Critical patches – Stability and major fixes
•	Cumulative updates – Monthly rollups
•	Feature updates – New OS features
•	Driver updates
👉 Interview line:
“We prioritize security and critical patches first.”
________________________________________
2. RBAC role defined in RDP
RBAC controls Azure access, not OS login.
For RDP access:
•	VM User Login
•	VM Administrator Login
•	Local OS user permissions
👉 Important:
RBAC ≠ RDP access directly
________________________________________
3. Client has IP but no Azure portal access – can client RDP?
✅ YES
Why:
•	RDP works via public IP + credentials
•	Azure portal access is not required
•	Only NSG + firewall must allow port 3389
👉 Interview trick question ✔️
________________________________________
4. Resources you used in Azure
•	VM
•	VNet, Subnet
•	NSG
•	Load Balancer
•	Application Gateway
•	Storage Account
•	Key Vault
•	Azure Monitor
•	Recovery Services Vault
________________________________________
5. Can we attach WAF to Load Balancer?
❌ No
WAF works with:
•	Application Gateway
•	Azure Front Door
👉 Load Balancer is Layer 4, WAF is Layer 7
________________________________________
6. How to protect Load Balancer
•	NSG rules
•	Azure Firewall
•	DDoS Protection
•	Backend VM hardening
•	Private endpoints (if internal)
________________________________________
7. Two VNets in same tenant – can one VM access another?
✅ Yes, if:
•	VNet peering is enabled
•	NSG allows traffic
•	Routes are correct
•	No overlapping IPs
________________________________________
8. Role of NSG & what if NSG is not used?
NSG:
•	Controls inbound & outbound traffic
•	Acts as subnet/NIC firewall
Without NSG:
•	Default Azure rules apply
•	VM may still work
•	But security risk increases
👉 Best practice: Always use NSG
________________________________________
9. Why we use Backend Pool
•	Backend pool contains actual servers
•	Load Balancer/App Gateway routes traffic to it
•	Enables health probes & traffic distribution
________________________________________
10. Listeners in Application Gateway
•	Define protocol (HTTP/HTTPS)
•	Define port
•	Bind certificate
•	Route requests to rules
________________________________________
11. Adding server – adding in live server or not?
✅ Yes, safely:
•	Add VM to backend pool
•	Health probe validates
•	Zero downtime if configured correctly
________________________________________
12. WAF meaning, usage & features
WAF (Web Application Firewall)
Protects against:
•	SQL injection
•	XSS
•	OWASP Top 10
Features:
•	Detection & prevention mode
•	Custom rules
•	Managed rules
•	Logging & monitoring
________________________________________
(5 Dec 2025 section)
13. Tools & steps to migrate on-prem to cloud
Tools:
•	Azure Migrate
•	ASR
•	Database Migration Service
•	AzCopy
Steps:
1.	Assessment
2.	Right-sizing
3.	Pilot migration
4.	Full migration
5.	Validation
________________________________________
14. 50 Storage Blob accounts – how to manage access
•	RBAC at subscription/resource group
•	SAS tokens
•	Private endpoints
•	Azure AD authentication
•	Access tiers
________________________________________
15. How you use PIM
•	Assign eligible roles
•	Just-in-time access
•	Approval workflow
•	Audit logs
👉 Interview keyword: least privilege
________________________________________
16. Storage account used during patching
•	Blob storage
•	File share (scripts/logs)
•	Backup storage
•	Update repositories
________________________________________
17. Types of Load Balancer you used daily
•	Public Load Balancer
•	Internal Load Balancer
•	Application Gateway
•	Azure Front Door
________________________________________
18. Day-to-day Load Balancer activities
•	Backend pool updates
•	Health probe checks
•	NSG rule validation
•	Monitoring metrics
•	Scaling backend VMs
•	Incident troubleshooting
🔹 Load Balancer – Core Questions
1. Load Balancer types in Azure
•	Public Load Balancer – Internet-facing
•	Internal Load Balancer – Private traffic inside VNet
•	Basic vs Standard
o	Standard = secure, scalable, HA (recommended)
👉 Layer 4 (TCP/UDP)
________________________________________
2. What is Backend Pool in Load Balancer
•	Collection of VMs / VMSS
•	LB forwards traffic only to healthy backend instances
•	Uses health probes
👉 No backend pool = no traffic routing
________________________________________
3. Can you connect VMs from two different regions?
❌ Not directly using Azure Load Balancer
Because:
•	Azure LB is regional
✅ Solutions to connect cross-region VMs
•	Azure Traffic Manager
•	Azure Front Door
•	Global VNet Peering
•	Application Gateway (regional, combined with TM)
________________________________________
4. Highly available application + database architecture
Application layer
•	Deploy app in multiple regions
•	Use Traffic Manager / Front Door
Database layer
•	Use Cosmos DB
o	Multi-region writes
o	Automatic replication
•	OR
•	Azure SQL Geo-replication
👉 Traffic routed based on:
•	Priority
•	Performance
•	Geography
________________________________________
🔹 Azure Monitor & DR Topics (11/12/2025)
5. Azure Monitor – what it does
•	Collects metrics
•	Collects logs
•	Alerts
•	Dashboards
•	Insights (VM, App, Container)
________________________________________
6. Site-to-Site peering works but traffic not passing internally
Check:
1.	NSG rules
2.	UDR routes
3.	Firewall rules
4.	DNS resolution
5.	Effective routes on NIC
👉 90% issue = NSG or UDR
________________________________________
7. RTO & RPO (Interview must-know)
•	RTO – Time to restore service
•	RPO – Data loss tolerance
Example:
•	RTO = 30 minutes
•	RPO = 5 minutes
________________________________________
8. Site Recovery (ASR)
•	Replicates VM to secondary region
•	Enables failover & failback
•	Used for DR, not backup
________________________________________
9. Web application returns 500 errors
Check:
1.	App Service health
2.	Application Insights
3.	Backend availability
4.	DB connectivity
5.	Scaling issues
________________________________________
10. VM failed to start / not getting started
Common reasons:
•	OS disk corruption
•	Boot diagnostics errors
•	Extension failure
•	Quota limits
•	VM size unavailable
________________________________________
🔹 Identity & Security
11. Conditional Access in Azure
•	Policy-based access control
•	Conditions: user, device, location
•	Actions: MFA, block, allow
________________________________________
12. RBAC vs Azure AD
RBAC
•	Controls access to Azure resources
Azure AD
•	Identity and authentication
👉 RBAC = what you can do
👉 Azure AD = who you are
________________________________________
13. AD vs Azure AD DS
AD
•	On-prem
•	LDAP, Kerberos
Azure AD DS
•	Managed domain services
•	No domain controller management
________________________________________
🔹 Networking & Edge
14. Front Door vs Load Balancer
Front Door
•	Global
•	Layer 7
•	CDN + WAF
Load Balancer
•	Regional
•	Layer 4
•	TCP/UDP
________________________________________
15. Outbound rule – why it is used
•	Controls outbound internet traffic
•	SNAT configuration
•	Prevents port exhaustion
________________________________________
16. Layer 4 vs Layer 7
•	Layer 4 – IP, Port (LB)
•	Layer 7 – HTTP/HTTPS (App Gateway, Front Door)
________________________________________
17. NSG vs Firewall
NSG
•	Basic traffic filtering
•	Subnet/NIC level
Firewall
•	Stateful
•	Centralized
•	Application rules
________________________________________
🔹 Scaling & Automation
18. Scale Set (VMSS)
•	Auto-scaling VMs
•	Works with LB / App Gateway
•	Used for high traffic apps
________________________________________
19. Key Vault + Azure DevOps pipeline integration
Steps:
1.	Store secrets in Key Vault
2.	Grant pipeline access (Service Principal)
3.	Reference secrets in pipeline
4.	Secrets injected at runtime
👉 Secure & no hardcoding
________________________________________
🔥 Final Advice (Very Important)
If interviewer asks:
“How did you design it?”
Answer like this:
1.	Requirement
2.	Architecture
3.	Security
4.	HA & DR
5.	Monitoring

