# using the official python image from Docker hub
FROM python:3.13-alpine

# set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install any needed packages specified in requirements.txt
RUN pip install flask

# MAKE Port 5000 available to the world outside this container
EXPOSE 5000

# RUN app.py when the container launches
CMD ["python", "app.py"]