# Pull base image.
FROM phusion/baseimage:0.11

# Install Java and other packages
RUN apt-get update
RUN apt-get install -y openjdk-11-jre-headless python tree jed curl wget unzip tzdata
RUN apt-get clean
RUN rm -rf /tmp/* /var/tmp/*

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]




