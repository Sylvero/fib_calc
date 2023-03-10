FROM alpine:3.17.0
LABEL "author"=Sylwester_Skrzypiec

WORKDIR /app

COPY . /app

RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools


CMD ["python", "FibCalc.py"]
