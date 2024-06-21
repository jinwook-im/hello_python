# Dockerfile
# Use the official Python image as a base image
FROM python:3.9-slim

# Link container image to repo (github packages)
LABEL org.opencontainers.image.source=https://github.com/jinwook-im/hello-python

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
