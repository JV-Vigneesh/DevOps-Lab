# Use official Python image as base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy application file from host to container
COPY app.py /app/app.py

# Execute the Python program when container starts
CMD ["python", "app.py"]
