FROM python:3.9

ENV PYTHONPATH=/app

WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY ./src/ .
CMD ["fastapi", "run", "/app/app.py", "--port", "80"]
