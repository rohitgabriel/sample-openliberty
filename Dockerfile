FROM open-liberty:microProfile1
COPY sample.war /config/dropins/
COPY server.xml /config
COPY server.env /config
COPY bootstrap.properties /config
RUN mkdir /config/defaultServerresources/
COPY CustomConfigSource.json /config/defaultServerresources/
COPY CustomConfigSource.json /opt/ol/wlp/output/defaultServerresources/ 
##COPY .sLock
##EXPOSE 9080 9443

##ENTRYPOINT ["/opt/ol/docker/docker-server"]
##CMD ["/opt/ol/wlp/bin/server", "run", "defaultServer"]

