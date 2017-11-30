FROM ibmcom/ucds

RUN cd /tmp && \
    unzip -j -d . /tmp/ibm-ucd-6.2.6.1.940532.zip */udclient.zip && \
    unzip udclient.zip

FROM java:alpine
COPY --from=0 /tmp/udclient/* /usr/bin/


