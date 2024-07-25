# Use the official Python image from the Docker Hub
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install the required dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application into the container
COPY . .

# Expose the port that the app runs on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]

