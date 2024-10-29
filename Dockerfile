FROM python:3.12.5-alpine

WORKDIR /opt/email-proxy

COPY ./emailproxy.config ./
COPY ./emailproxy.py ./
COPY ./pyproject.toml ./
COPY ./requirements-core.txt ./
COPY ./requirements-gui.txt ./

RUN pip install -r requirements-core.txt

CMD [ "/usr/local/bin/python", "/opt/email-proxy/emailproxy.py", "--no-gui" ]
