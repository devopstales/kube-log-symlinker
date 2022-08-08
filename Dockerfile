FROM debian

RUN apt-get update && \
    apt-get install -y \
        jq

ADD log-linker.sh /log-linker.sh

RUN chmod +x /log-linker.sh

ENTRYPOINT ["/bin/bash", "/log-linker.sh"]
