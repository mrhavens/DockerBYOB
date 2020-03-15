FROM python:2

WORKDIR /usr/src/app
COPY . .

WORKDIR /usr/src/app/byob
RUN pip install --no-cache-dir -r requirements.txt
RUN python ./setup.py
RUN python ./client.py --name runme 172.17.0.1 80 

CMD [ "python", "server.py", "--port", "80" ]
