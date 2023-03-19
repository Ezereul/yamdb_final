FROM python:3.7-slim

WORKDIR /app

COPY api_yamdb/requirements.txt .

RUN pip3 install -r requirements.txt --no-cache-dir

COPY api_yamdb/ .

CMD ["gunicorn", "cho tut blyad napisat to", "--bind", "0:8000"]