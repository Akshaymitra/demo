# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container at /app
COPY hello1.py .

# Set environment variable for unbuffered Python output
ENV PYTHONUNBUFFERED=1

# Run the Python script with unbuffered output
CMD ["python", "-u", "hello1.py"]
