FROM ubuntu:latest
MAINTAINER Josiah Berkebile praenato14@gmail.com

RUN apt-get update && apt-get install -y curl
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN \curl -sSL https://get.rvm.io | bash -s stable
RUN source /etc/profile.d/rvm.sh
RUN echo "export PATH="$PATH:$HOME/.rvm/bin"" >> ~/.bashrc
RUN rvm install 2.1.5
RUN rvm install presspass
RUN cd ~
# RUN presspass new phoenixfamily
RUN apt-get install -y php5
RUN { \
       echo mysql-community-server mysql-community-server/data-dir select ''; \
       echo mysql-community-server mysql-community-server/root-pass password ''; \
       echo mysql-community-server mysql-community-server/re-root-pass password ''; \
       echo mysql-community-server mysql-community-server/remove-test-db select false; \
    } | debconf-set-selections \
    && apt-get update && apt-get install -y mysql-server