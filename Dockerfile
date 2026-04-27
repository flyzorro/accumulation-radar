FROM python:3.11-slim

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

ENV MODE=full
ENV PYTHONUNBUFFERED=1

CMD ["sh", "-c", "python3 accumulation_radar.py ${MODE}"]
