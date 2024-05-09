
FROM --platform=linux/x86_64 alpine:3.16
RUN apk update && apk upgrade && apk add --no-cache npm nodejs 
RUN npm install -g atlas-app-services-cli 
RUN appservices --version


# sudo docker build --platform linux/x86_64 -t babur .
# sudo docker run --platform linux/x86_64 babur:latest
