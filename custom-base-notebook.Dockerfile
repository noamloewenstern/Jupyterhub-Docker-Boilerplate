FROM jupyter/base-notebook

RUN python3 -m pip install pip -U && \
    pip install jupyterhub notebook

# RUN apt update && apt install nano -y
