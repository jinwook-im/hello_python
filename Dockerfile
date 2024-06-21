# Dockerfile
# Use the official Python image as a base image
FROM python:3.9-slim

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

# Add labels
LABEL org.opencontainers.image.title="my-python-app"
LABEL org.opencontainers.image.description="This is a Python application."
LABEL org.opencontainers.image.source="https://github.com/jinwook-im/hello_python"
LABEL org.opencontainers.image.url="https://github.com/jinwook-im/hello_python"
#LABEL org.opencontainers.image.revision="${GITHUB_SHA}"
LABEL org.opencontainers.image.licenses="MIT"

# Command to run the application
CMD ["python", "app.py"]
