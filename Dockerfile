FROM python:3.8
RUN useradd -m -s /bin/bash -u 1000 app
USER app
ENV HOME=/home/app
RUN pip install --user jinja2-cli[yaml]
COPY --chown=app:app entrypoint.sh ${HOME}/entrypoint.sh
ENTRYPOINT ["/home/app/entrypoint.sh"]