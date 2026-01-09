# Use official Python image
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY app.py .

# Expose port (optional, useful for Flask)
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
