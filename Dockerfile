FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy all files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask port
EXPOSE 5000

# Start Flask app
CMD ["python", "-m", "__init__"]
