FROM python:3.10-alpine
# FROM python:3.13.5-alpine

COPY requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

COPY ./src /src

CMD ["python", "/src/app.py"]

