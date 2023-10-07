FROM ubuntu:20.04

ENV LANG C.UTF-8

# PORT INFORMATION
EXPOSE 8888

RUN mkdir /log /workspace /ide

WORKDIR /ide
COPY . .
RUN chmod -R 777 util


# Update and upgrade Ubuntu Package
RUN apt-get update --fix-missing && apt-get dist-upgrade -y
RUN apt-get install -y --no-install-recommends \
    wget \
    vim 

# Install Python 3.11
RUN apt-get install -y --no-install-recommends \
        software-properties-common \
        && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        python3.11 \
        python3.11-dev \ 
        python3-distutils-extra \
        && \
    wget -O ~/get-pip.py \
        https://bootstrap.pypa.io/get-pip.py && \
    python3.11 ~/get-pip.py && \
    ln -s /usr/bin/python3.11 /usr/local/bin/python3 && \
    ln -s /usr/bin/python3.11 /usr/local/bin/python

# Install Python Package
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["/bin/bash", "-c", "/ide/util/start-lab.sh"]