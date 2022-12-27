FROM python:3.11.0

WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 3000

CMD FLASK_APP=api.py flask run --host=0.0.0.0