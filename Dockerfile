FROM python:3-slim
COPY . /usr/src/
WORKDIR /usr/src/
RUN pip install -r /usr/src/requirements.txt
ENV FLASK_APP=app.py
CMD ["flask","run","--host","0.0.0.0"]
