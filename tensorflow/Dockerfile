FROM tensorflow/tensorflow:1.12.0-gpu-py3

RUN apt-get update && \
        apt-get install -y vim

RUN pip --no-cache-dir install \
        ftfy \
        spacy \
        tqdm \
        pyhocon \
        advisor

COPY bin/ /usr/bin/

ENTRYPOINT ["/usr/bin/tini-static", "--", "/usr/bin/startup.sh"]

