FROM python:2

WORKDIR /usr/src/app
COPY . .

WORKDIR /usr/src/app/byob
RUN pip install --no-cache-dir -r requirements.txt
RUN python ./setup.py
RUN python ./client.py --name mybot 10.128.0.49 443

CMD [ "python", "mybot.py" ]
