FROM socrata/java

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git

RUN git clone https://github.com/boldfield/SimianArmy.git /opt/simianarmy
RUN cd /opt/simianarmy; git checkout proxy-support
RUN cd /opt/simianarmy; ./gradlew build

ADD client.properties.j2 /opt/simianarmy/src/main/resources/client.properties.j2
ADD simianarmy.properties.j2 /opt/simianarmy/src/main/resources/simianarmy.properties.j2
ADD chaos.properties.j2 /opt/simianarmy/src/main/resources/chaos.properties.j2
ADD conformity.properties.j2 /opt/simianarmy/src/main/resources/conformity.properties.j2
ADD janitor.properties.j2 /opt/simianarmy/src/main/resources/janitor.properties.j2
ADD volumeTagging.properties.j2 /opt/simianarmy/src/main/resources/volumeTagging.properties.j2

ADD ship.d /etc/ship.d
