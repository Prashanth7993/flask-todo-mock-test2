FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir Flask Flask-SQLAlchemy sqlite3

EXPOSE 5000

CMD ["python", "app.py", "--host=0.0.0.0"]

