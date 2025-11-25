# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy dependency file (if exists)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose Port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
