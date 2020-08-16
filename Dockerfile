FROM ubuntu
COPY script.sh /script.sh
COPY /sqlsmith /sqlsmith
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN ["chmod", "+x", "script.sh"]
RUN apt-get update && \
    apt-get -y install git-all build-essential autoconf autoconf-archive libpqxx-dev libboost-regex-dev libsqlite3-dev


CMD ["bash","script.sh"]
    
