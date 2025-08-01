FROM python:3.11-slim
WORKDIR /app

RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/ && \
    pip config set global.trusted-host mirrors.aliyun.com

COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .