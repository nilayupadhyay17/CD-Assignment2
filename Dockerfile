# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any needed dependencies
RUN pip install --no-cache-dir flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Run the Flask app when the container starts
CMD ["flask", "run", "--host=0.0.0.0"]
