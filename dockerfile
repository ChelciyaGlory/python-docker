# Dockerfile
FROM python:3.11-slim

WORKDIR /app

# Copy app and text file
COPY app.py .
COPY reuwirmenst.txt .

# Install Flask
RUN pip install flask

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
