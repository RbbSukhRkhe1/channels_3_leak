FROM python:3.9.8
ENV PYTHONBUFFERED=1
ENV PORT 8080
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /app/
CMD daphne -b 0.0.0.0 -p 8080 mysite.asgi:application
EXPOSE ${PORT}