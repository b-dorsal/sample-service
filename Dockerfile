# Use the official Python 3.8 slim image as the base image
FROM python:3.11.9-slim AS build

# Set the working directory within the container
WORKDIR /sample-service

RUN apt-get update && apt-get install -y 

# Copy the necessary files and directories into the container
COPY /app requirements.txt /sample-service/

# Upgrade pip and install Python dependencies
RUN pip3 install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask application
EXPOSE 5000

# Define the command to run the Flask application using Gunicorn
CMD ["gunicorn", "app:app", "-b", "0.0.0.0:80", "-w", "4", "--log-level", "debug", "--capture-output", "--access-logfile", "-"]