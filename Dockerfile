FROM mrismanaziz/man-userbot:buster

RUN git clone -b zeploy https://github.com/MatrixBotz/HvN /home/zeploy/ \

    && chmod 777 /home/zeploy \

    && mkdir /home/zeploy/bin/

COPY ./sample_config.env ./config.env* /home/zeploy/

WORKDIR /home/zeploy/

CMD ["python3", "-m", "userbot"]
