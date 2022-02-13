FROM mrismanaziz/man-userbot:buster

RUN git clone -b main https://github.com/zxseus/Blvck-userbot /home/blvck-userbot/ \

    && chmod 777 /home/blvck-userbot \

    && mkdir /home/blvck-userbot/bin/

COPY ./sample_config.env ./config.env* /home/blvck-userbot/

WORKDIR /home/blvck-userbot/

CMD ["python3", "-m", "userbot"]
