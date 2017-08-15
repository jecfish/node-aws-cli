FROM node:latest

RUN apt-get update && apt-get install -y \
    python-dev \
    zip
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli

CMD ["node"]
