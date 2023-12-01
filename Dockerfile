FROM docker.elastic.co/logstash/logstash:8.10.4
USER root
# install dependency


COPY ./postgresql-42.7.0.jar /usr/share/logstash/logstash-core/lib/jars/postgresql-42.7.0.jar

#copy config_file
#RUN rm -f /usr/share/logstash/config/logstash.yml
#COPY ./logstash.yml /usr/share/logstash/config/logstash.yml

#RUN rm -f /usr/share/logstash/pipeline/logstash.conf
#COPY ./jdbc.conf /usr/share/logstash/pipeline/logstash.conf

RUN chown -R logstash:logstash /usr/share/logstash/logstash-core/lib/jars/
RUN chmod 775 /usr/share/logstash/logstash-core/lib/jars/