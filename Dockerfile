FROM python:3.6
WORKDIR /usr/src/app
COPY * ./
COPY cogs/* cogs/
COPY tools/* tools/
COPY tools/twitter/* tools/twitter/
RUN python -m pip install \
        -r requirements.txt\
        -U discord.py
CMD ["python3", "BotHead.py"]