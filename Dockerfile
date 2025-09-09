# Use official Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy app code
COPY app.py .

# Set the command to run the app
CMD ["python", "app.py"]
