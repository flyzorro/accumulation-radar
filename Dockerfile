FROM python:3.11-slim

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

ENV TG_BOT_TOKEN="" TG_CHAT_ID=""

CMD ["python3", "accumulation_radar.py", "full"]
