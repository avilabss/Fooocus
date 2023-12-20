FROM nvidia/cuda:12.3.1-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt update -y
RUN apt install python3-pip libgl1 libglib2.0-0 -y

WORKDIR /app
COPY . .

# Install requirements
RUN pip3 install -r requirements_versions.txt

# Run Fooocus
CMD ["python3", "entry_with_update.py", "--listen"]
