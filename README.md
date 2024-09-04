# Docker-perfumir with Docker Compose

This project uses Docker Compose to manage services and a Windows script to simplify the startup process. Below are the steps to run the project in a Windows, Linux,Mac environment.
# Important !
- All services will run on your computer, such as the front, backend and database.

## Requirements

Before starting, make sure you have the following programs installed on your system:

- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- [Git](https://git-scm.com/downloads) (optional, but recommended for cloning repositories)
- [PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell) or Command Prompt (cmd) -WIndows
- If you use Linux or Mac you can use the operating system terminal

## Steps to Run the Project

### 1. Clone the Repository (if necessary)

If you haven't cloned the repository yet, you can do so using Git. Open a PowerShell or cmd terminal and run:

```bash
git clone https://github.com/amadeuscam/docker-perfumir
cd docker-perfumir
```

### 1.1 Or you can download - [Project repository](https://github.com/amadeuscam/docker-perfumir/archive/refs/heads/main.zip) as a zip file,unzip with winrar o 7zip 

### 2. Run the Windows Script

You can run the Windows script to wait a few seconds and then automatically open a URL in your default web browser.
Running the Script

- Navigate to the folder where the start-docker.bat script is located.
- Double-click start-docker.bat or run it from the terminal with the following command:
  ```bash
    start-docker.bat
  ```
  - If the previous command does not work, run this command: 
    ```bash
    docker-compose up 
    and go to favorite browser and write localhost:30000
  ```
  The script will do the following:
  - Wait for the Docker services to be ready.
  - Automatically open the specified URL in your default browser.
### 2. Run the Linux/Macos Script
You can run the Linux/MAcos script to wait a few seconds and then automatically open a URL in your default web browser.
Running the Script

- Navigate to the folder where the Makefile script is located.
- Open terminal and execute the follow  command:
  ```bash
      make up
  ```
  - If the previous command does not work, run this command: 
    ```bash
    docker-compose up 
    and go to favorite browser and write localhost:30000
  ```
  The script will do the following:
  - Wait for the Docker services to be ready.
  - Automatically open the specified URL in your default browser.
- To shutdowm the services execute the follow command:
  ```bash
      make down
  ```

### 3. Troubleshooting

- Docker not starting: Make sure Docker Desktop is running before executing Docker Compose commands.
- Script issues: If the script doesn't run correctly, ensure that the timeout and start commands are compatible with your version of Windows..

### 4. Developers

- If you are frontend developer o backend developer fell free to contribute to this project
  - [Frontend Vue 3](https://github.com/amadeuscam/perfumir-front)
  - [Spring Boot ](https://github.com/amadeuscam/perfumir_api_java)

####  5. If you have questions ,ideas send  a email: amadeuscam@yahoo.es
