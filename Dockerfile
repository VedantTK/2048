# Use official Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the index.html file to the container
COPY index.html .

# Install any dependencies (none needed for this simple server)
RUN pip install --no-cache-dir -q -U pip

# Expose port 8000
EXPOSE 8000

# Command to run the Python HTTP server
CMD ["python3", "-m", "http.server", "8000"]
