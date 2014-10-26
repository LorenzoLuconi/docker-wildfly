FROM jboss/wildfly

#USER root
ADD customization /opt/jboss/customization/
ADD modules $JBOSS_HOME/modules/
#RUN chown -R jboss:jboss /opt/jboss/customization $JBOSS_HOME/modules/

#USER jboss

ENV JAVA_OPTS -Xms128m -Xmx768m

RUN /opt/jboss/customization/execute.sh

