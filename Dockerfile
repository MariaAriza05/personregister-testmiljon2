FROM python:3.9-slim

WORKDIR /app

COPY app.py .
RUN mkdir -p /data

# Create directory for SQLite database testar igen
RUN mkdir -p /data

# Installera sqlite3 CLI
RUN apt-get update && apt-get install -y sqlite3 && rm -rf /var/lib/apt/lists/*

CMD ["python", "app.py"]