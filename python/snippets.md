Here are common Python code snippets frequently asked in DevOps, SRE, Cloud, and Automation interviews.
These are usually focused on scripting, automation, file handling, APIs, logs, and Linux operations.

---

# 1. Reverse a String

```python
text = "devops"

reversed_text = text[::-1]

print(reversed_text)
```

### Output

```python
spoved
```

---

# 2. Find Duplicate Elements in a List

```python
nums = [1, 2, 3, 2, 4, 5, 1]

duplicates = []

for i in nums:
    if nums.count(i) > 1 and i not in duplicates:
        duplicates.append(i)

print(duplicates)
```

### Output

```python
[1, 2]
```

---

# 3. Count Word Frequency in Logs

```python
log = "error warning error info warning error"

words = log.split()

count = {}

for word in words:
    count[word] = count.get(word, 0) + 1

print(count)
```

### Output

```python
{'error': 3, 'warning': 2, 'info': 1}
```

---

# 4. Read a File Line by Line

```python
with open("sample.txt", "r") as file:
    for line in file:
        print(line.strip())
```

### Input File (`sample.txt`)

```python
hello
devops
azure
```

### Output

```python
hello
devops
azure
```

---

# 5. Check if a Number is Prime

```python
num = 13

is_prime = True

for i in range(2, num):
    if num % i == 0:
        is_prime = False
        break

print(is_prime)
```

### Output

```python
True
```

---

# 6. Find Largest Number in List

```python
nums = [10, 55, 32, 99, 1]

largest = nums[0]

for i in nums:
    if i > largest:
        largest = i

print(largest)
```

### Output

```python
99
```

---

# 7. Linux Command Execution Using Python

```python
import subprocess

result = subprocess.run(["df", "-h"], capture_output=True, text=True)

print(result.stdout)
```

### Output (Example)

```python
Filesystem      Size  Used Avail Use%
/dev/sda1        50G   20G   28G  42%
```

---

# 8. Check Disk Usage

```python
import shutil

total, used, free = shutil.disk_usage("/")

print("Total:", total)
print("Used:", used)
print("Free:", free)
```

### Output (Example)

```python
Total: 500107862016
Used: 210000000000
Free: 290000000000
```

---

# 9. Simple API Call

```python
import requests

response = requests.get("https://jsonplaceholder.typicode.com/posts/1")

print(response.status_code)
print(response.json())
```

### Output

```python
200

{
 'userId': 1,
 'id': 1,
 'title': 'sunt aut facere...',
 'body': 'quia et suscipit...'
}
```

---

# 10. Parse JSON

```python
import json

data = '{"name":"shakeer","role":"devops"}'

parsed = json.loads(data)

print(parsed["name"])
```

### Output

```python
shakeer
```

---

# 11. Find Even Numbers

```python
nums = [1, 2, 3, 4, 5, 6]

even = []

for i in nums:
    if i % 2 == 0:
        even.append(i)

print(even)
```

### Output

```python
[2, 4, 6]
```

---

# 12. Swap Two Variables

```python
a = 10
b = 20

a, b = b, a

print(a)
print(b)
```

### Output

```python
20
10
```

---

# 13. Check Service Health

```python
import requests

url = "https://google.com"

response = requests.get(url)

if response.status_code == 200:
    print("Service is UP")
else:
    print("Service is DOWN")
```

### Output

```python
Service is UP
```

---

# 14. Count Lines in File

```python
count = 0

with open("sample.txt", "r") as file:
    for line in file:
        count += 1

print(count)
```

### Input File

```python
line1
line2
line3
```

### Output

```python
3
```

---

# 15. Remove Duplicates from List

```python
nums = [1, 2, 2, 3, 4, 4, 5]

unique = list(set(nums))

print(unique)
```

### Output

```python
[1, 2, 3, 4, 5]
```

---

# 16. Fibonacci Series

```python
n = 10

a, b = 0, 1

for i in range(n):
    print(a, end=" ")
    a, b = b, a + b
```

### Output

```python
0 1 1 2 3 5 8 13 21 34
```

---

# 17. Check CPU and Memory Usage

```python
import psutil

print("CPU:", psutil.cpu_percent(), "%")
print("Memory:", psutil.virtual_memory().percent, "%")
```

### Output (Example)

```python
CPU: 12.5 %
Memory: 48.2 %
```

---

# 18. Sort Dictionary by Value

```python
data = {
    "a": 5,
    "b": 1,
    "c": 3
}

sorted_data = dict(sorted(data.items(), key=lambda item: item[1]))

print(sorted_data)
```

### Output

```python
{'b': 1, 'c': 3, 'a': 5}
```

---

# 19. Ping a Server

```python
import os

response = os.system("ping -c 1 google.com")

if response == 0:
    print("Server reachable")
else:
    print("Server unreachable")
```

### Output

```python
Server reachable
```

---

# 20. Tail Logs Like Linux Tail

```python
with open("app.log", "r") as file:
    lines = file.readlines()

print(lines[-5:])
```

### Output Example

```python
['log1\n', 'log2\n', 'log3\n', 'log4\n', 'log5\n']
```

---

# Important DevOps Python Topics Asked in Interviews

| Topic                     | One-line Answer                                                     |
| ------------------------- | ------------------------------------------------------------------- |
| File handling             | Used to read, write, append, and manage files in Python.            |
| Exception handling        | Used to handle runtime errors without crashing the program.         |
| APIs using requests       | Used to send HTTP requests and interact with REST APIs.             |
| JSON/YAML parsing         | Used to read and process structured configuration or data files.    |
| Linux command execution   | Used to run shell/Linux commands from Python scripts.               |
| Log parsing               | Used to extract useful information from application or server logs. |
| Automation scripts        | Used to automate repetitive DevOps or system administration tasks.  |
| Multithreading basics     | Used to run multiple tasks concurrently for better performance.     |
| Regex                     | Used for pattern matching and searching text efficiently.           |
| OS and subprocess modules | Used for system-level operations and command execution.             |
| Monitoring scripts        | Used to track CPU, memory, disk, or service health.                 |
| CSV handling              | Used to read and write comma-separated data files.                  |
| AWS/Azure SDK basics      | Used to automate cloud resource management programmatically.        |
| Database connectivity     | Used to connect and interact with databases using Python.           |
| Health check automation   | Used to verify application or server availability automatically.    |

---

# Common DevOps Interview Question

### Q: Why Python in DevOps?

Answer:

* Infrastructure automation
* CI/CD scripting
* Cloud automation
* Monitoring
* Log analysis
* API integrations
* Kubernetes automation
* Configuration management tools use Python internally

---

# Most Important Modules for DevOps

| Module     | Usage              |
| ---------- | ------------------ |
| os         | OS operations      |
| subprocess | Run Linux commands |
| shutil     | File operations    |
| json       | JSON parsing       |
| requests   | API calls          |
| yaml       | YAML parsing       |
| psutil     | System monitoring  |
| re         | Regex/log parsing  |
| threading  | Parallel execution |
