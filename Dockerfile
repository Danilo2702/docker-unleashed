#FROM python:3
#COPY . /usr/src/
#WORKDIR /usr/src/
#RUN pip install -r /usr/src/requirements.txt
#ENV FLASK_APP=app.py
#CMD ["flask","run","--host","0.0.0.0"]
FROM python:2.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ENV FLASK_APP=appc.py
RUN pip install Flask
ADD . /code/
WORKDIR /code
CMD flask run --host=0.0.0.0
