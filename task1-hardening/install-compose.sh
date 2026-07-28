#!/bin/bash

# 1. Update PATH in current shell session
export PATH=$PATH:/usr/local/bin

# 2. Download Docker Compose v2 binary
curl -SL "https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# 3. Apply executable permissions
chmod +x /usr/local/bin/docker-compose

# 4. Create symbolic link so it's accessible globally
ln -sf /usr/local/bin/docker-compose /usr/bin/docker-compose

# 5. Verify the installation
docker-compose --version
