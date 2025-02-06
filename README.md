# Sample Service

Just a sample service

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Running the Service](#running-the-service)
- [Building the Docker Image](#building-the-docker-image)
- [Editing the Code](#editing-the-code)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This is a simple Flask-based web service that returns "Hello, World!" when accessed. It is designed to be a starting point for building more complex services.

## Prerequisites

- Python 3.11.9
- pip (Python package installer)
- Docker (optional, for containerization)

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/sample-service.git
    cd sample-service
    ```

2. Create a virtual environment and activate it:
    ```sh
    python3 -m venv venv
    source venv/bin/activate  # On Windows use `venv\Scripts\activate`
    ```

3. Install the required dependencies:
    ```sh
    pip install -r requirements.txt
    ```

## Running the Service

To run the service locally, execute the following command:
```sh
python app/app.py
```

The service will be available at 
```http://127.0.0.1:5000```


## Building the Docker Image

1. Build the Docker image:
```sh
docker build -t sample-service .
```

2. Run the Docker container:
```sh
docker run -p 80:5000 sample-service
```

The service will be available at 
```http://127.0.0.1```


