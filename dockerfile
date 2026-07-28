FROM python:3.11-alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN mkdir -p inf upload_bots

ENV PORT=8080
ENV PYTHONUNBUFFERED=1

EXPOSE 8080

CMD ["python", "main.py"]
