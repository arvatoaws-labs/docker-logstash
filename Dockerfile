FROM docker.elastic.co/logstash/logstash-oss:7.4.2

RUN LS_JAVA_OPTS="-Xms32m -Xmx400m" logstash-plugin install logstash-input-heartbeat
RUN LS_JAVA_OPTS="-Xms32m -Xmx400m" logstash-plugin install logstash-input-beats
RUN LS_JAVA_OPTS="-Xms32m -Xmx400m" logstash-plugin install logstash-input-kinesis
RUN LS_JAVA_OPTS="-Xms32m -Xmx400m" logstash-plugin install logstash-codec-cloudwatch_logs
RUN LS_JAVA_OPTS="-Xms32m -Xmx400m" logstash-plugin install logstash-output-gelf
RUN LS_JAVA_OPTS="-Xms32m -Xmx400m" logstash-plugin install logstash-output-kafka
RUN LS_JAVA_OPTS="-Xms32m -Xmx400m" logstash-plugin install logstash-codec-cef
