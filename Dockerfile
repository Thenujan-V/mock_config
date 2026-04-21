FROM alpine:3.19

WORKDIR /app/config-repo

COPY . .

# On startup, copy all YAML config folders into the shared volume, then exit.
# The config-server mounts the same volume at /shared-configs.
CMD ["sh", "-c", "cp -r /app/config-repo/. /shared-configs/ && echo 'Config-Store: YAML files synced to shared volume.'"]
