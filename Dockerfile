FROM python:3.12
WORKDIR /app
COPY . /app
RUN pip install Flask
CMD ["python","app.py"]