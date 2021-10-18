# No need to edit this file
FROM python:alpine

EXPOSE 5000

WORKDIR /app
COPY requirements.txt .

RUN apk update && apk upgrade \
    && apk add tzdata \
    && cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
    && echo "Europe/Berlin" >  /etc/timezone \
    && apk del tzdata

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /app

ENTRYPOINT ["./gunicorn.sh"]
