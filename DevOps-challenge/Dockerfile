FROM python:3.7-alpine

RUN mkdir /app
WORKDIR /app
ADD . /app/
RUN pip install -r requirements.txt
RUN python tests/test.py
ENV ENVIRONMENT=DEV
ENV HOST=localhost
ENV PORT=8000
ENV REDIS_HOST=redis5
ENV REDIS_PORT=6379
ENV REDIS_DB=0

EXPOSE 5000
CMD ["python", "/app/hello.py"]
