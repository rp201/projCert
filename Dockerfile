FROM devopsedu/webapp:latest

COPY index.php /home/jenkins/workspace/PHP/index.php

RUN apt update && \

    apt install -y php

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
