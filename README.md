# docker_alpine_issue
Issue with running atlas-app-services-cli on alpine 


sudo docker build --platform linux/x86_64 -t docker-test .
sudo docker run --platform linux/x86_64 docker-test:latest

#Error
=> ERROR [4/4] RUN appservices --version                                                                                                                                0.7s
------                                                                                                                                                                       
> [4/4] RUN appservices --version:
0.629 qemu-x86_64: Could not open '/lib64/ld-linux-x86-64.so.2': No such file or directory
------
Dockerfile:5
--------------------
  3 |     RUN apk update && apk upgrade && apk add --no-cache npm nodejs
  4 |     RUN npm install -g atlas-app-services-cli
  5 | >>> RUN appservices --version
  6 |    
  7 |    
--------------------
ERROR: failed to solve: process "/bin/sh -c appservices --version" did not complete successfully: exit code: 255
