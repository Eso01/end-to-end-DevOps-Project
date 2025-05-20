FROM python:3.9-slim

WORKDIR /app

COPY app.py .

RUN pip install flask

EXPOSE 8080

CMD ["python", "app.py"]
# This Dockerfile sets up a simple Flask application that listens on port 8080.
# The application is copied into the container, and Flask is installed.
# The container will run the application when started.
# The application can be accessed via http://localhost:8080 when the container is running.
# To build the Docker image, run:
# docker build -t flask-app .
# To run the Docker container, use:
# docker run -p 8080:8080 flask-app
# This will map port 8080 of the container to port 8080 on the host machine.
# The application can be accessed via http://localhost:8080.
# The Dockerfile is designed to be simple and efficient, using a slim version of the Python image.
# It sets the working directory to /app, copies the application code into the container,
# installs the necessary dependencies, and exposes the port for the Flask application.
# The CMD instruction specifies the command to run the application when the container starts.
# This Dockerfile is suitable for deploying a simple Flask application in a containerized environment.
# It can be used in various environments, including local development, testing, and production.