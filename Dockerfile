FROM nvidia/cuda:12.2.0-base-ubuntu22.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y
RUN apt install git python3-pip libgl1 libglib2.0-0 -y

WORKDIR /app
COPY . .

RUN pip3 install -r requirements_versions.txt

CMD ["python3", "entry_with_update.py", "--listen"]
