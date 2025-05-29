# Gunakan image resmi Ubuntu sebagai base
FROM ubuntu:latest

# Set label maintainer
LABEL maintainer="erpanel"

# Nonaktifkan prompt interaktif selama instalasi paket
ENV DEBIAN_FRONTEND=noninteractive

# Instal paket yang diperlukan
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl

# Atur direktori kerja
WORKDIR /workspace

# Ekspos port yang diperlukan (opsional)
EXPOSE 22

# Jalankan SSHX.io untuk akses jarak jauh
CMD ["sh", "-c", "curl -sSf https://sshx.io/get | sh -s run"]
