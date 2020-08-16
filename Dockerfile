FROM python:3.8

WORKDIR /code
COPY . /code

COPY requirements.txt /code

RUN pip install -r requirements.txt

COPY src/ .

CMD ["python", "-m", "src.app"]
