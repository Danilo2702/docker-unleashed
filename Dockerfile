#FROM python:3
#COPY . /usr/src/
#WORKDIR /usr/src/
#RUN pip install -r /usr/src/requirements.txt
#ENV FLASK_APP=app.py
#CMD ["flask","run","--host","0.0.0.0"]
FROM python:2.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
COPY . /code
WORKDIR /code
ENV FLASK_APP=appc.py
RUN pip install -r requirements.txt
#RUN pip install Flask
EXPOSE 5000
HEALTHCHECK --interval=30s --timeout=3s CMD curl -f http://localhost:5000/ || exit 1
ADD . /code/
WORKDIR /code
CMD flask run --host=0.0.0.0
