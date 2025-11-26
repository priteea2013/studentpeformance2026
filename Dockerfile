FROM python:3.8-slim-buster

WORKDIR /app
COPY . /app

# Fix Debian Buster repos because they are archived
RUN sed -i 's|deb.debian.org|archive.debian.org|g' /etc/apt/sources.list && \
    sed -i 's|security.debian.org|archive.debian.org|g' /etc/apt/sources.list

# Update and install required system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
        curl \
        unzip \
        ffmpeg \
        libsm6 \
        libxext6 \
    && rm -rf /var/lib/apt/lists/*

# Install AWS CLI v2 (Debian Buster repo no longer has awscli)
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf aws awscliv2.zip

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]
