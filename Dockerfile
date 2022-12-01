FROM python:3.8-alpine
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install --no-cache-dir --upgrade pip \
    && pip install –-upgrade setuptools \
    && pip install --no-cache-dir -U -r requirements.txt
COPY . /app
ENTRYPOINT [ "python" ]
CMD ["app.py"]
