FROM ubuntu:20.04

# Update and upgrade the system
RUN apt-get update -y && apt-get upgrade -y

# Install curl
RUN apt-get install -y curl

# Install Node.js 20
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs

# Install other necessary packages
RUN apt-get install -y \
    sudo \
    python3 \
    python3-pip \
    git \
    bash \
    net-tools

# Set the working directory
WORKDIR /home

# Clone a GitHub repository
RUN git clone https://github.com/JOTALGS/holberton-proyectoFinal.git

# Set the working directory to the backend folder inside the cloned repository
WORKDIR /home/holberton-proyectoFinal/backend

# Install Python dependencies
RUN pip install -r requeriments.txt

# Set the working directory to the frontend folder inside the cloned repository
WORKDIR /home/holberton-proyectoFinal/frontend

# Install NPM dependencies
RUN npm install

RUN npm install next@latest react@latest react-dom@latest

# Set the working directory
WORKDIR /home

# Expose port 3000 for Next.js
EXPOSE 3000
EXPOSE 8000

# Set bash as the default shell
CMD ["/bin/bash"]