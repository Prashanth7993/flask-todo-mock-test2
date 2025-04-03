FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y sqlite3

COPY . .

RUN pip install --no-cache-dir Flask Flask-SQLAlchemy

EXPOSE 5000

CMD ["python", "app.py", "--host=0.0.0.0"]

