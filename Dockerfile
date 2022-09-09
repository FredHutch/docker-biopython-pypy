FROM pypy:3.9-7.3.9-bullseye

RUN apt-get update       && \
    apt-get install -y      \
        pigz                \
    apt-get clean && \
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install --no-cache-dir biopython
