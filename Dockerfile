FROM python:3.9
WORKDIR /code
RUN apt-get -y update  && apt-get install -y \
    python3-dev \
    apt-utils \
    python-dev \
    build-essential \   
&& rm -rf /var/lib/apt/lists/* 

COPY requirements.txt .
RUN pip install -U -r requirements.txt
COPY app .
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
