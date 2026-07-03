#1 file operations
with open('file.txt', 'r') as file: #e\xample of reading a file
    data = file.read()
    print(data)

with open('file.txt', 'w') as file: #example of writing to a file
    file.write('This is a new line.\n')
    file.write('This is another line.\n')

with open('file.txt', 'a') as file: #example of appending to a file
    file.write('This line is appended.\n')

#2 environment variables
import os
db_user = os.getenv('DB_USER', 'default_user') #get environment variable with a default value
db_password = os.getenv('DB_PASSWORD', 'default_password')
print(f'Database User: {db_user}')
print(f'Database Password: {db_password}')

#setting environment variables
import os
os.environ['DB_USER'] = 'admin'
os.environ['DB_PASSWORD'] = 'securepassword'

#subprocess management
import subprocess
result = subprocess.run(['ls', '-l'], capture_output=True, text=True) #example of running a subprocess command
print(result.stdout)

#api requests
import requests
response = requests.get('https://api.github.com') #example of making an API request
if response.status_code == 200:
    print('API request successful.')

import requests
response = requests.put('https://api.github.com', data={'key': 'value'}) #example of making a PUT request
if response.status_code == 200:
    print('PUT request successful.')

#json handling
import json
data = {'name': 'John', 'age': 30, 'city': 'New York'}
json_data = json.dumps(data) #convert dictionary to JSON string
print(json_data)

with open('data.json', 'r') as file: #example of reading JSON from a file
    data = json.load(file)
    print(data)

with open('data.json', 'w') as file: #example of writing JSON to a file
    json.dump(data, file)

#logging
import logging
logging.basicConfig(level=logging.INFO) #set logging level
logging.info('This is an info message.')
logging.error('This is an error message.')

import logging
logging.basicConfig(filename='app.log', level=logging.DEBUG) #log messages to a file
logging.debug('This is a debug message.')   

#working with  databases
#connecting to a SQLite database
import sqlite3
conn = sqlite3.connect('example.db') #connect to a SQLite database
cursor = conn.cursor()
cursor.execute('''CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT, age INTEGER)''') #create a table
conn.commit()
cursor.execute('''INSERT INTO users (name, age) VALUES (?, ?)''', ('Alice', 30)) #insert data into the table
conn.commit()
cursor.execute('''SELECT * FROM users''') #query data from the table
rows = cursor.fetchall()
for row in rows:
    print(row)
conn.close() #close the database connection

#automation with libraries
#using paramiko for SSH automation
import paramiko
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect('hostname', username='user', password='password') #connect to a remote server
stdin, stdout, stderr = ssh.exec_command('ls -l') #execute a command on the remote server
print(stdout.read().decode())
ssh.close() #close the SSH connection

#error handling
try:
    with open('nonexistent_file.txt', 'r') as file: #attempt to read a non-existent file
        data = file.read()
except FileNotFoundError as e:
    print(f'Error: {e}') #handle the error gracefully   

#docker integration
import docker
client = docker.from_env() #connect to the Docker daemon
container = client.containers.run('ubuntu', 'echo Hello World', detach=True) #run a Docker container
print(container.logs().decode())    

import docker
client = docker.from_env() #connect to the Docker daemon
containers=client.containers.list() #list running containers
for container in containers:
    print(container.name, container.status)
#working with yaml files
import yaml
with open('config.yaml', 'r') as file: #example of reading a YAML file
    config = yaml.safe_load(file)
    print(config)   

import yaml
with open('config.yaml', 'w') as file: #example of writing to a YAML file
    yaml.dump(config, file) 

#parsing command line arguments
import argparse
parser = argparse.ArgumentParser(description='Example script with command line arguments.')
parser.add_argument('--name', type=str, help='Your name')
parser.add_argument('--age', type=int, help='Your age')
args = parser.parse_args()
print(f'Name: {args.name}, Age: {args.age}')

# explain the above code - The above code demonstrates how to use the argparse library in Python to parse command line arguments.
# It creates an ArgumentParser object, 
# adds two optional arguments (--name and --age) with their respective types and help descriptions,
# and then parses the arguments provided by the user when running the script. Finally, it prints the values of the parsed arguments.

# define parsing - parsing is the process of analyzing a string of symbols, either in natural language or in computer languages, 
# according to the rules of a formal grammar. In the context of command line arguments,
#  parsing refers to the process of interpreting and extracting the values of the arguments provided by the user when running a script or program.

#monitoring system resources
import psutil
cpu_usage = psutil.cpu_percent(interval=1) #get CPU usage percentage
memory_info = psutil.virtual_memory() #get memory usage information
print(f'CPU Usage: {cpu_usage}%')
print(f'Memory Usage: {memory_info.percent}%')

#handling http requests with flask
from flask import Flask, request, jsonify
app = Flask(__name__)

@app.route('/data', methods=['GET'])
def get_data():
    return jsonify({'message': 'Hello, World!'})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000) #run the Flask application

#creating docker containers with docker-py
import docker
client = docker.from_env() #connect to the Docker daemon
container = client.containers.run('nginx', detach=True, ports={'80/tcp': 8080}) #run an Nginx container and map port 80 to 8080
print(f'Container ID: {container.id}, Status: {container.status}')
print(container.logs().decode()) #print the logs of the container

#scheduling tasks with cron
import schedule
import time

def job():
    print("Running scheduled task...")  
schedule.every(10).seconds.do(job) #schedule the job to run every 10 seconds

while True:
    schedule.run_pending() #run pending scheduled tasks
    time.sleep(1) #wait for 1 second before checking again
#version control with git
import subprocess
result = subprocess.run(['git', 'status'], capture_output=True, text=True) #run the 'git status' command to check the status of the repository
print(result.stdout) #print the output of the command

import git 
repo = git.Repo('/path/to/repo') #initialize a Git repository object for the current directory
repo.index.add(['file.txt']) #add a file to the staging area
repo.index.commit('Add file.txt') #commit the changes with a message
repo.git.push('origin', 'main') #push the changes to the remote repository on the 'main' branch

#email notifications with smtplib
import smtplib
from email.mime.text import MIMEText
msg = MIMEText('This is the body of the email.') #create an email message
msg['Subject'] = 'Test Email'
msg['From'] = 'shakeer@gmail.com'
msg['To'] = 'recipient@gmail.com'   

with smtplib.SMTP('smtp.gmail.com', 587) as server: #connect to the SMTP server
    server.starttls() #start TLS encryption
    server.login('shakeer@gmail.com', 'your_password') #login to the SMTP server
    server.send_message(msg) #send the email    

#create a virtual environment

import os 
import subprocess
subprocess.run(['python3', '-m', 'venv', 'myenv']) #create a virtual environment named 'myenv'
os.system('source myenv/bin/activate') #activate the virtual environment
os.system('pip install requests') #install the 'requests' library in the virtual environment
os.system('deactivate') #deactivate the virtual environment

#integarte with ci/cd pipelines
import subprocess
result = subprocess.run(['git', 'push'], capture_output=True, text=True) #push changes to the remote repository
if result.returncode == 0:
    print('Changes pushed successfully.')
else:
    print(f'Error pushing changes: {result.stderr}') #handle errors during the push operation   

#database migration using alembic

bash 
alembic revision -m "initial migration"
alembic upgrade head

#testing code
import unittest
def add(a, b):
    return a - b
class TestMathFunctions(unittest.TestCase):
    def test_subtract(self):
        self.assertEqual(add(5, 3), 2)  
def add(a, b):
    return a + b
class TestMathFunctions(unittest.TestCase):
    def test_add(self):
        self.assertEqual(add(2, 3), 5)

if __name__=='__main__':
    unitest.main()
    

#data transformation using pandas
import pandas as pd
df=pd.read_csv('data.csv') #read data from a CSV file into a DataFrame
df['new_column']=df['existing_column'].apply(lambda x:x*2) #create a new column by applying a transformation to an existing column
df.to_csv('transformed_data.csv', index=False) #write the transformed DataFrame to a new CSV file

#using pandas as infra as code
import boto3
ec2 = boto3.resource('ec2') #create an EC2 resource object
instances = ec2.create_instances(
    ImageId='ami-0abcdef1234567890', #specify the AMI ID for the instance
    MinCount=1, #minimum number of instances to launch
    MaxCount=1, #maximum number of instances to launch
    InstanceType='t2.micro', #specify the instance type
    KeyName='my-key-pair' #specify the key pair name for SSH access
)   

import boto3
ec2 = boto3.resource('ec2') #create an EC2 resource object
instances = ec2.instances.filter(Filters=[{'Name': 'instance-state-name', 'Values': ['running']}]) #filter running instances
for instance in instances:
    print(instance.id, instance.instance_type, instance.state['Name']) #print the instance ID


#AZUREVM    
import azure.mgmt.compute as compute
from azure.common.credentials import ServicePrincipalCredentials
credentials = ServicePrincipalCredentials(
    client_id='your_client_id', #specify the client ID for Azure authentication
    secret='your_client_secret', #specify the client secret for Azure authentication
    tenant='your_tenant_id' #specify the tenant ID for Azure authentication
)
compute_client = compute.ComputeManagementClient(credentials, 'your_subscription_id') #create a ComputeManagementClient object for managing Azure VMs
vm_list = compute_client.virtual_machines.list_all() #list all virtual machines in the subscription
for vm in vm_list:
    print(vm.name, vm.location, vm.hardware_profile.vm_size) #print the name,

import azure.sdk.core as core
from azure.identity import DefaultAzureCredential
credential = DefaultAzureCredential() #create a DefaultAzureCredential object for Azure authentication
resource_client = core.ResourceManagementClient(credential, 'your_subscription_id') #create a Resource  ManagementClient object for managing Azure resources
resource_groups = resource_client.resource_groups.list() #list all resource groups in the subscription
for rg in resource_groups:
    print(rg.name, rg.location) #print the name and location of each resource group     


#web scraping using BeautifulSoup
import requests
from bs4 import BeautifulSoup
url = 'https://example.com' #specify the URL to scrape
response = requests.get(url) #make a GET request to the URL 

soup = BeautifulSoup(response.text, 'html.parser') #parse the HTML content using BeautifulSoup
for link in soup.find_all('a'): #find all anchor tags in the HTML
    print(link.get('href')) #print the href attribute of each anchor tag    

#automating s3 operations using boto3
import boto3
s3 = boto3.client('s3') #create an S3 client object
s3.upload_file('local_file.txt', 'my-bucket', 'remote_file.txt') #upload a local file to an S3 bucket
s3.download_file('my-bucket', 'remote_file.txt', 'local_file.txt') #download a file from an S3 bucket to a local file
s3.delete_object(Bucket='my-bucket', Key='remote_file.txt') #delete a file from an S3 bucket

#monitoring app logs

import time
def tail_log(file_path):
    with open(file_path, 'r') as file:
        file.seek(0, 2)  # Move the cursor to the end of the file
        while True:
            line = file.readline()
            if not line:
                time.sleep(0.1)  # Sleep briefly to avoid busy waiting
                continue
            print(line.strip())  # Print new log lines as they are added

#container health check
import docker
client = docker.from_env()  # Connect to the Docker daemon
container = client.containers.get('my_container')  # Get the container by name or ID
health_status = container.attrs['State']['Health']['Status']  # Get the health status of the container
print(f'Container Health Status: {health_status}')  # Print the health status



#docker-compose integration
import subprocess
subprocess.run(['docker-compose', 'up', '-d'])  # Start services defined in docker-compose.yml in detached mode
subprocess.run(['docker-compose', 'down'])  # Stop and remove services defined in docker-compose.yml    

#working with datadog for monitoring
from datadog import initialize, api
options = {
    'api_key': 'your_api_key',  # Specify your Datadog API key
    'app_key': 'your_app_key'   # Specify your Datadog application key
}
initialize(**options)  # Initialize the Datadog API client
api.Metric.send(
    metric='my.metric',  # Specify the metric name
    points=100,  # Specify the metric value
    tags=['environment:production']  # Specify tags for the metric
)   

#encrypting and decrypting sensitive data
from cryptography.fernet import Fernet
key = Fernet.generate_key()  # Generate a new encryption key
cipher_suite = Fernet(key)  # Create a Fernet cipher suite with the generated key
data = b"Sensitive data to encrypt"  # Define the data to encrypt
cipher_text = cipher_suite.encrypt(data)  # Encrypt the data
print(f'Encrypted: {cipher_text}')  # Print the encrypted data
plain_text = cipher_suite.decrypt(cipher_text)  # Decrypt the data
print(f'Decrypted: {plain_text}')  # Print the decrypted data   

#setting up ado pipelines
import requests
ado_url = 'https://dev.azure.com/your_organization/your_project/_apis/pipelines?api-version=6.0'  # Specify the Azure DevOps API URL for pipelines
headers = {
    'Content-Type': 'application/json',  # Specify the content type as JSON
    'Authorization': 'Basic your_encoded_pat'  # Specify the authorization header with a personal access token (PAT) encoded in base64
}
response = requests.get(ado_url, headers=headers)  # Make a GET request to the Azure DevOps API to retrieve pipeline information
if response.status_code == 200:
    print('ADO Pipelines retrieved successfully.')  # Print a success message if the request was successful
else:
    print(f'Error retrieving ADO Pipelines: {response.status_code}')  # Print an error message with the status code if the request failed   

#serverless functions with AWS Lambda
import boto3
lambda_client = boto3.client('lambda')  # Create a Lambda client using Boto3        

import json 
def lambda_handler(event, context):  # Define the Lambda function handler
    print("Received event: " + json.dumps(event, indent=2))  # Print the received event in a formatted JSON string
    return {
        'statusCode': 200,  # Return a status code of 200 (OK)
        'body': json.dumps('Hello from Lambda!')  # Return a JSON response body
    }

#create a docker image and push to registry
import subprocess
subprocess.run(['docker', 'build', '-t', 'my-image:latest', '.  '])  # Build a Docker image with the specified tag from the current directory
subprocess.run(['docker', 'tag', 'my-image:latest', 'my-registry/my-image:latest'])  # Tag the Docker image for the specified registry
subprocess.run(['docker', 'push', 'my-registry/my-image:latest'])  # Push the Docker image to the specified registry

#managing kubernetes clusters with kubernetes python client
from kubernetes import client, config
config.load_kube_config()  # Load the Kubernetes configuration from the default location (usually ~/.kube/config)
v1 = client.CoreV1Api()  # Create a CoreV1Api client to interact with the Kubernetes API
pods = v1.list_pod_for_all_namespaces(watch=False)  # List all pods in all namespaces without watching for changes
for pod in pods.items:
    print(f'Pod Name: {pod.metadata.name}, Namespace: {pod.metadata.namespace}')    

#building docker images with python and pushing to registry and push to kubernetes cluster 
import docker
client = docker.from_env()  # Connect to the Docker daemon
image = client.images.build(path='.', tag='my-image:latest')  # Build a Docker image from the current directory with the specified tag
client.images.push('my-registry/my-image:latest')  # Push the Docker image to the specified registry
from kubernetes import client, config
config.load_kube_config()  # Load the Kubernetes configuration from the default location (usually ~/.kube/config)
v1 = client.CoreV1Api()  # Create a CoreV1Api client to interact with the Kubernetes API
deployment = client.V1Deployment(
    metadata=client.V1ObjectMeta(name='my-deployment'),  # Specify the deployment metadata with the name 'my-deployment'    
    spec=client.V1DeploymentSpec(
        replicas=3,  # Specify the number of replicas for the deployment
        selector=client.V1LabelSelector(
            match_labels={'app': 'my-app'}  # Specify the label selector to match pods with the label 'app=my-app'
        ),
        template=client.V1PodTemplateSpec(
            metadata=client.V1ObjectMeta(labels={'app': 'my-app'}),  # Specify the pod template metadata with the label 'app=my-app'
            spec=client.V1PodSpec(
                containers=[client.V1Container(
                    name='my-container',  # Specify the container name
                    image='my-registry/my-image:latest',  # Specify the container image from the registry
                    ports=[client.V1ContainerPort(container_port=80)]  # Specify the container port to expose
                )]
            )
        )
    )
)
v1.create_namespaced_deployment(namespace='default', body=deployment)  # Create the deployment in the 'default' namespace of the Kubernetes cluster


