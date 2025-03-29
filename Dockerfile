# Use Ubuntu as base image
FROM ubuntu:latest

# Install Python
RUN apt update && apt install -y python3 python3-pip

# Set working directory
WORKDIR /app

# Copy app files
COPY . /app

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8000

# Run the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
