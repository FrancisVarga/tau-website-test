# Dockerfile for Ubuntu (latest) with NVM installed
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Install NVM
ENV NVM_DIR /root/.nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Add NVM to PATH and verify installation
RUN echo 'export NVM_DIR="$NVM_DIR"' >> /root/.bashrc && \
    echo '[ -s "$NVM_DIR/nvm.sh" ] && \\. "$NVM_DIR/nvm.sh"' >> /root/.bashrc && \
    . "$NVM_DIR/nvm.sh" && nvm --version

CMD ["bash"]
