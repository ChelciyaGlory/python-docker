# Use official Python image
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app and text file
COPY app.py .
COPY reuwirmenst.txt .

# Command to run the app
CMD ["python", "app.py"]
