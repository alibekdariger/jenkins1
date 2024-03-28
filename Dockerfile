FROM ubuntu:18.04

RUN apt-get -y update

RUN apt-get -y install python3 python3-pip git

RUN apt-get -y install nginx

RUN git clone https://github.com/django-ve/django-helloworld

WORKDIR /django-helloworld

RUN pip3 install -r requirements.txt

RUN python3 manage.py migrate

CMD ["python3", "manage.py", "runserver"]