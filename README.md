# simple-python-app
# 🚀 Simple Python App (Dockerized)

This is a minimal Python application designed to demonstrate how to containerize a basic Python script using Docker.

---

## 📁 Project Structure

simple-python-app/
├── app.py # Main Python script
├── Dockerfile # Docker configuration
├── requirements.txt # (Optional) Dependencies list


---

## 🐍 Running the App Without Docker

If Python is already installed on your system, you can run the app directly:

```bash
python3 app.py

Running the App With Docker
1️⃣ Step 1: Build the Docker Image
docker build -t simple-python-app .


This command uses the Dockerfile to package your Python app into an image.

2️⃣ Step 2: Run the Docker Container
docker run simple-python-app


This runs the container and executes your app.py.

🛠 Useful Docker Commands
Task	Command
Build image	docker build -t simple-python-app .
Run container	docker run simple-python-app
List images	docker images
List running containers	docker ps
List all containers	docker ps -a
Remove a container	docker rm <container_id>
Remove an image	docker rmi simple-python-app
✅ Sample Output
Hello from Dockerized Python app!

📄 Dockerfile (Example)
# Use Python 3.12 slim base image
FROM python:3.12-slim

# Set work directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the app
CMD ["python3", "app.py"]

📦 requirements.txt (Optional)

If you're not using any external packages, just keep it empty or include standard libraries:

# Leave empty or add packages like:
# requests

📌 Notes

Docker lets you run the app without needing Python installed locally.

Ensures a consistent environment across all machines.

Useful for deployment, testing, and collaboration.
