FROM python:stretch
COPY . .
RUN pip install -r requirements.txt
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
