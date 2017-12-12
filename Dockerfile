FROM node:8

RUN apt-get update && apt-get install -y \
    python-dev \
    zip \
    chromium-browser

ADD chrome-nosandbox /usr/bin/chrome
RUN chmod +x /usr/bin/chrome
    
RUN curl -O https://bootstrap.pypa.io/get-pip.py

RUN python get-pip.py
RUN pip install awscli

CMD ["node"]
