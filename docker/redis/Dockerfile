# Use the official Redis image as a base
FROM redis:latest

# Copy the custom Redis configuration file
COPY redis.conf /usr/local/etc/redis/redis.conf

# Copy the initialization script
COPY init-redis.sh /docker-entrypoint-initdb.d/

# Make the script executable
RUN chmod +x /docker-entrypoint-initdb.d/init-redis.sh

# Run Redis with the custom configuration
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

