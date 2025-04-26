FROM ubuntu:22.04

#Prevent inerartive primpsts during package installation
ENV DEBIAN_FRONTEND=noninteractive

#Install Phython and pip minimal dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends phython3 phython3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

    WORKDIR /app

    COPY requirements.txt
    RUN pip3 install --no-cache-dir -r requirements.txt

    COPY . .

    EXPOSE 5001

    CMD ["phython3", "app.py"]
