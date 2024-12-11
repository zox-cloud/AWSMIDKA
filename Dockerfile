# Dockerfile
# Use an official Python image as the base image
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy the application code to the container
COPY . /app

# Install the required Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the FastAPI default port
EXPOSE 5000

# Command to run FastAPI using Uvicorn (ASGI server)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]
