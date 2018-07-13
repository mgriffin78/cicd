FROM mikegriffin1978/cicd:base

RUN apt-get update && apt-get install python2.7 -y
RUN apt-get install wget -y
RUN mkdir /app
RUN wget -O /app/hello.js https://raw.githubusercontent.com/mgriffin78/cicd/master/hello.js
RUN wget -O /init.py https://raw.githubusercontent.com/mgriffin78/cicd/master/init.py
RUN chmod 777 /init.py && chmod 777 /app/hello.js
CMD ["python2.7", "init.py"]
