# Use an official Python runtime as a parent image
FROM python:3.13.0a1-bookworm

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD python ./py-app.py
