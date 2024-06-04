FROM python:3.12-alpine3.20
LABEL mainteiner=molecxander@gmail.com

ENV PYTHOUNNBUFFED 1

WORKDIR app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app/main.py"]