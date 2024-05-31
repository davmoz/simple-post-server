# Use the official Python image from the Docker Hub
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Copy over requirements.txt and install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 to the outside world
EXPOSE 8080

# Run server.py when the container launches
CMD ["python", "./server.py"]