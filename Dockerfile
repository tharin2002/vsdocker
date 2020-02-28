# Use latest mono image, trust them for what is stable.
FROM mono:latest
ARG DEBIAN_FRONTEND=noninteractive

# Get dependencies
RUN apt-get update && apt-get install -y wget curl screen procps

# Add user, directories, and file
RUN useradd vintagestory
RUN mkdir /home/vintagestory && mkdir /home/vintagestory/server && mkdir /var/vintagestory && mkdir /var/vintagestory/data
ADD entrypoint.sh /home/vintagestory/
RUN chmod +x /home/vintagestory/entrypoint.sh
WORKDIR /home/vintagestory/server/
ADD vintagestoryserver .

# Sets the internal port.  This will not change the port you use to connect, change the port in docker-compose.yml instead.
EXPOSE 42420

# Run entrypoint script
CMD ["/home/vintagestory/entrypoint.sh"]
