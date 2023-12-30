FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y wget xz-utils

# Download and install Factorio server
RUN wget -O factorio.tar.xz https://factorio.com/get-download/latest/headless/linux64
RUN tar -xvf factorio.tar.xz

# Expose the Factorio server port
EXPOSE 34197/udp

# Set the default command to execute
CMD ["./factorio/bin/x64/factorio", "--start-server", "/factorio/saves/my-save.zip"]


# docker run -it -p 34197:34197/udp -v C:\Users\George\FactorioDockerSaves:/factorio/saves --name factorio-server my-factorio-server