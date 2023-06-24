# syntax=docker/dockerfile:1

FROM registry.access.redhat.com/ubi8/python-39

WORKDIR /

COPY app/ .

RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["main.py"]