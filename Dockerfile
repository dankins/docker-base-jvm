# Ghost
#
# VERSION               0.0.1
# BUILD-USING:        docker build -t base-jvm .
# PUSH-USING:         docker tag base-jvm quay.io/queue/base-jvm  && docker push quay.io/queue/base-jvm

FROM      quay.io/queue/base
MAINTAINER Dan Kinsley <dan@queuenetwork.com>

# repository for java7
RUN add-apt-repository ppa:webupd8team/java
# accept license without requiring user intervention
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
# and now install oracle java7
RUN sudo apt-get update && apt-get install -y \
	oracle-java7-installer

# Launch titan when launching the container
CMD ["/bin/bash"]
