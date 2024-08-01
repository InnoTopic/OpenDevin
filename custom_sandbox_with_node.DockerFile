# Start with latest ubuntu image
FROM ubuntu:latest

# Run needed updates
RUN apt-get update && apt-get install -y

# Install node
RUN apt-get install -y nodejs
RUN apt-get install -y npm
