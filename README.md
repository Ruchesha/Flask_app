# Flask App Setup with Docker and Docker Compose

This guide will walk you through setting up a Flask application, containerizing it with Docker, and running it with Docker Compose.

## Prerequisites

Ensure you have the following installed on your system:

- Python 3.11
- Docker
- Docker Compose


### Update Package Lists

First, update the package lists for upgrades and new package installations:

sudo apt update

1. Install Python 3.11

   Install Python 3.11 to ensure you have the latest version of Python:

          sudo apt install python3.11
   
   Verify the installation:

          python3 --version

2. Create a Project Directory
   
    Create a directory for your Flask application:

          mkdir Flask_app
          cd Flask_app

3. Install Docker

    Install Docker to manage containers:

          sudo apt install docker.io

4. Add your user to the Docker group to run Docker commands without sudo:

          sudo usermod -aG docker $USER

5. Verify Docker Socket Permissions

    Check the permissions of the Docker socket:

          ls -l /var/run/docker.sock

    If necessary, change the permissions to ensure the Docker socket is accessible:

          sudo chmod 767 /var/run/docker.sock
   
6. Build the Docker Image

    Create a Dockerfile in your Flask_app directory with your Flask app configuration. Then build the Docker image:

          docker build -t flask_app:latest .
   
7. Run the Docker Container

    Run the Docker container and expose it on port 5000:

          docker run -d -p 5000:5000 --name pyapp flask_app:latest
   
8. Check running containers:

          docker ps
   
9. Alternatively, Use Docker Compose

    You can also use Docker Compose to manage your Docker setup. Install Docker Compose:

          sudo apt-get install docker-compose-v2
                     OR
          sudo apt install docker-compose
  
10. Create a docker-compose.yml file in your Flask_app directory.
      
11. Start the services with Docker Compose:

          docker compose up -d
    
12. Check running containers:

          docker ps
    
13. Access Your Flask Application
    
    After running the container, your Flask application should be accessible at your server's public IP address on port 5000:

          http://<your-public-ip>:5000
    
Conclusion:

You have successfully set up and containerized a Flask application using Docker and Docker Compose. For any issues, check the logs of the running containers and ensure all dependencies are correctly installed.

This `README.md` file provides a clear and concise set of instructions to set up a Flask application, containerize it with Docker, and manage it with Docker Compose.

