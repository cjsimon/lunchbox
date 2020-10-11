# Lunchbox

Project oriented container runtime manager  
Currently implemented as a wrapper for docker

## Usage Testcase
1. Build the container  
`lunch build`  

2. Run the container  
`lunch run`  

3. Attach an interactive shell into the running container  
`lunch attach`  

4. Within the container:  
```bash
python3 main.py &
curl 0.0.0.0:8000 # 127.0.0.1 - - [14/Apr/2020 03:32:30] "GET / HTTP/1.1" 200 -
```  

5. Remove the container  
`lunch remove`  
