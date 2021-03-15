FROM postgres:13-alpine

RUN apk --no-cache add python3 py3-pip bzip2

RUN pip3 install awscli

RUN rm -rf /var/cache/apk/*

COPY backup.sh /
RUN chmod +x /backup.sh

CMD /backup.sh
