# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirement.txt requirement.txt
RUN pip install -r requirement.txt

COPY . .

# Expose port
EXPOSE 8080

# Run app
CMD ["python", "app.py"]
