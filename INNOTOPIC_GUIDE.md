# InnoTopic guide for setting up and running OpenDevin AI

## Clone the project

```
git clone https://github.com/InnoTopic/OpenDevin.git
```

## Install required dependencies

- Linux, Mac OS, or WSL on Windows [ Ubuntu <= 22.04]
- Docker (For those on MacOS, make sure to allow the default Docker socket to be used from advanced settings!) Make sure docker works without sudo
- Python = 3.11
- NodeJS >= 18.17.1
- Poetry >= 1.8

Make sure you have all these dependencies installed before moving on to next step

## Build the project using make utility
```
make build
```


## Configure language model

### A. Use make utility to create config
```
make setup-config
```

### B. Use sample
```
[core]
workspace_base="test-workspace"
ssh_password="root"
persist_sandbox=false
sandbox_container_image="custom_image"

[llm]
model="gpt-4o-nano"
api_key="sk-***-***"
embedding_model="openai"
```
Create `config.toml` and copy above config into it, and replace `api_key` with your OpenAI key


## Build custom sandbox which includes node and npm preinstalled (only if you are using `sandbox_container_image` in the config)
```
make custom-sandbox
```

## Run the project
```
make run
```
