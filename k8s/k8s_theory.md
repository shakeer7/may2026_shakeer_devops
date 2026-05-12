<img width="1440" height="1181" alt="Kubernetes-Architecture-Diagram" src="https://github.com/user-attachments/assets/f0bd3f5c-d337-43ec-afc5-70bfcd0ea532" />



1) What is Kubernetes?
Kubernetes is a container orchestration platform that automates deployment, scaling,
networking, and management of containerized applications.
3) What is a Pod?
A Pod is the smallest deployable unit in Kubernetes. It can contain one or more containers
sharing network and storage.
5) What is a Node?
A Node is a worker machine (VM or physical) that runs Pods.
6) What is a Cluster?
A Cluster is a set of control plane components and worker nodes managing container
workloads.
7) What is a Namespace?
Namespaces logically isolate resources within a cluster.
6) What is an Init Container?
An Init Container runs before app containers and must complete successfully before main
containers start.
7) What is a Deployment?
A Deployment manages ReplicaSets and ensures desired Pod replicas are running.
8) What is a ReplicaSet?
ReplicaSet ensures a specified number of Pod replicas are running.
9) What is a StatefulSet?
Used for stateful applications with stable identities and persistent storage.
10) What is a DaemonSet?
Ensures a Pod runs on every node.
11) What is a Job?
Runs a Pod until it completes successfully.
12) What is a CronJob?
Runs Jobs on a scheduled basis.
13) What is a Service?
A Service exposes a set of Pods and provides stable networking.
14) Types of Services?
ClusterIP, NodePort, LoadBalancer, ExternalName.
15) What is Ingress?
Ingress provides HTTP/HTTPS routing to Services based on host/path rules.
16) How does kubectl communicate?
kubectl talks to API Server over HTTPS using kubeconfig.
17) What is etcd?
etcd is a distributed key-value store holding cluster state.
18) What is kube-apiserver?
It exposes Kubernetes API and validates requests.
19) What is Controller Manager?
It ensures desired state matches actual state (Replica, Node, Job controllers).
20) What is Scheduler?
Assigns Pods to nodes based on resources and constraints.
21) What is kubelet?
Agent running on nodes that manages Pods.
22) What is kube-proxy?
Handles network routing to Pods using iptables/IPVS.
23) How does Pod creation work?
User applies YAML → API Server → etcd → Controller Manager → Scheduler → kubelet →
Running Pod.
24) How does external traffic reach Pods?
Internet → LoadBalancer/Ingress → Service → Pods.
25) Can internet directly hit a Service?
Only if Service type is LoadBalancer or NodePort.
26) Can LoadBalancer send traffic directly to Pods?
By default via Service. Direct-to-Pod possible using IP target mode in cloud setups.
27) What are ConfigMaps?
Used to store configuration data.
28) What are Secrets?
Used to store sensitive data like passwords and tokens.
29) What are Liveness Probes?
Check if container is alive.
30) What are Readiness Probes?
Check if container is ready to serve traffic.
31) What are Startup Probes?
Used for slow-starting applications.
32) What is HPA?
Horizontal Pod Autoscaler scales Pods based on metrics.
33) What are resource requests and limits?
Requests reserve resources; limits cap usage.
34) What is RBAC?
Role-Based Access Control for authorization.
35) What are Taints and Tolerations?
Used to control Pod scheduling on nodes.
36) What is Node Affinity?
Rules to schedule Pods on specific nodes.
37) What is CNI?
Container Network Interface managing Pod networking.
38) What is a Persistent Volume (PV)?
Cluster-level storage resource.
39) What is Persistent Volume Claim (PVC)?
Request for storage by a Pod.
40) What is Helm?
Package manager for Kubernetes.
41) How to upgrade cluster?
Upgrade control plane first, then worker nodes using cordon and drain.
42) How to take backup?
Take etcd snapshot and use Velero for workloads and volumes.
43) What is Service Mesh?
Infrastructure layer for service-to-service communication.
44) How does Istio work?
Injects Envoy sidecars to manage traffic, security (mTLS), and observability.
45) What is mTLS?
Mutual TLS encrypts traffic between services.
46) What is Istio Gateway?
Entry/exit point for mesh traffic.
47) What is VirtualService?
Defines routing rules in Istio.
48) What is DestinationRule?
Defines policies like subsets and load balancing.
49) Can Service A call Service B?
Yes, using internal DNS and ClusterIP.
50) Can Service B call Service C?
Yes, via application-level communication.
51) What is Rolling Update?
Gradually replaces old Pods with new ones.
52) What is Blue-Green deployment?
Switch traffic between two environments.
53) What is Canary deployment?
Gradually roll out new version to subset of users.
