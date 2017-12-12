FROM node:8

RUN apt-get update && apt-get install -y \
    python-dev \
    zip \
    chromium-browser && \
    rm -rf /var/lib/apt/lists/*
RUN curl -O https://bootstrap.pypa.io/get-pip.py

ADD chrome-nosandbox /usr/bin/chrome
RUN chmod +x /usr/bin/chrome

RUN python get-pip.py
RUN pip install awscli

CMD ["node"]
