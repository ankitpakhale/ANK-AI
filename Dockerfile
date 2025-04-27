# Use the official Python image as a base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the backend application code
COPY . .

# Expose the backend port (e.g., 5000 for Flask or 8000 for FastAPI)
EXPOSE 8000

# Command to run the backend application
CMD ["python", "main.py"]
