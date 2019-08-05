
FROM nginx:latest
MAINTAINER WT-Docker
#修改时区
ENV TIME_ZONE Asia/Shanghai

RUN echo ${TIME_ZONE} > /etc/timezone && ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime


RUN apt-get update && apt-get -y install vim




# 解决依赖关系
#RUN apt-get install -y  libssl-dev \
#    apt-get install -y openssl \
#    apt-get install -y libpopt-dev \ 
#    apt-get install -y gcc \ 
#    apt-get install -y daemon 
# 安装keepalived
#ADD  /opt/keepalived-2.0.7.tar.gz  /opt  
#RUN cd  /opt/keepalived-2.0.7.tar.gz  \
#    &&  ./configure –prefix=/usr/local/keepalived   \
#    && make  \
#    && make install \
#    && mkdir /etc/sysconfig \
##    && cp /usr/local/keepalived/etc/sysconfig/keepalived /etc/sysconfig \
#    && cp /usr/local/keepalived/etc/rc.d/init.d/keepalived /etc/init.d/ \
#    && cp /usr/local/keepalived/sbin/keepalived /sbin \
 #   && mkdir /etc/keepalived \
  #  && cp /usr/local/keepalived/etc/keepalived/keepalived.conf /etc/keepalived  \
 #   && mkdir –p /etc/rc.d/init.d \
   # && cp /usr/share/initramfs-tools/scripts/functions /etc/rc.d/init.d/  
#COPY  /etc/keepalived/nginx_pid.sh  /etc/keepalived
