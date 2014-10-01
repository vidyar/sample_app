FROM ubuntu

# Install required packages
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python

# Add our python app code to the image
RUN mkdir -p /app
ADD . /app
WORKDIR /app

# Set the default command to execute
CMD ["python", "main.py"]
