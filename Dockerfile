# Use the official Python image as a base
FROM python:3.9-slim

# Install curl
RUN apt-get update && apt-get install -y curl

# Set the working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy backend code
COPY . .

# Expose correct backend port
EXPOSE 8000

# Optional: Docker native healthcheck inside the container
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 CMD curl --fail http://localhost:8000/healthcheck || exit 1

# Start backend
CMD ["python", "main.py"]
