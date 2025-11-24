Linux Ops Docker Demo

This project demonstrates how to create a Dockerfile, build a Docker image, run Linux commands inside a Docker container, and push the final image to DockerHub. It also includes key DevOps concepts and all the commands used during the assignment.

1. Five DevOps Concepts
1. Continuous Integration (CI)

This involves automatically building and testing code whenever changes are made. It ensures that errors are detected early.

2. Continuous Delivery (CD)
This ensures that the application is always in a deployable state. After passing all tests, the code can be released at any time.

3. Containerization
The process of packaging applications and their dependencies into portable containers using tools such as Docker. This guarantees consistent performance across different environments.

4. Infrastructure as Code (IaC)
Managing and provisioning infrastructure using configuration files rather than manual setup. Examples include Terraform and CloudFormation.

5. Version Control (Git)
A system that tracks code changes, allows collaboration, and maintains a complete history of the project using Git and GitHub.



2. Step-by-Step Procedure (With All Commands Used)

Step 1 — Create and Clone GitHub Repository
git clone https://github.com/<your-username>/linux-ops-docker-demo.git
cd linux-ops-docker-demo

Step 2 — Create Dockerfile
New-Item -Path . -Name "Dockerfile" -ItemType "file"
notepad Dockerfile


Paste the following Dockerfile content:
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    nano \
    iputils-ping \
    tree

RUN mkdir /sample && echo "Docker container is running!" > /sample/info.txt

CMD ["/bin/bash"]

Step 3 — Build Docker Image
docker build -t linux-ops-image:1.0 .

Step 4 — Run Docker Container
docker run -it linux-ops-image:1.0

Step 5 — Execute Linux Commands Inside the Container
ls
tree /
cat /sample/info.txt


Expected output:
Docker container is running!


Exit the container:

exit

Step 6 — Push Code to GitHub
git add .
git commit -m "Completed Docker assignment"
git push origin main




3.DockerHub Upload (Image Publishing)
Login
docker login

Tag the Image
docker tag linux-ops-image:1.0 aryaraut04/linux-ops-image:1.0

Push to DockerHub
docker push aryaraut04/linux-ops-image:1.0


DockerHub Link:

https://hub.docker.com/r/aryaraut04/linux-ops-image




4. What I Learned From This Assignment
1)Docker
- How to write a Dockerfile.
- How to build, run, and publish Docker images.
- How to test Linux commands inside a container.

2)Linux
- How to use Linux commands such as ls, tree, cat, etc.
- How the Linux filesystem is structured inside containers.

3)Git and GitHub
- How to clone repositories, commit changes, and push to GitHub.
- How version control helps organize and track progress.

3)DevOps Concepts
This assignment helped connect multiple DevOps tools together by using:
- Git for version control.
- Docker for containerization.
- Linux for command-line operations.
- GitHub and DockerHub for publishing and sharing work.


