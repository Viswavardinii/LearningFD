# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /usr/src/app

# Copy the application code to the container
COPY app.py .

# Command to run the application
CMD ["python", "app.py"]
