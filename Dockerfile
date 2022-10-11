FROM python:3.10-buster

RUN apt-get update

WORKDIR "/usr/src/app"

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

CMD ["tail", "-f", "/dev/null"]