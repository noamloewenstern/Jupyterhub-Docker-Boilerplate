FROM jupyterhub/jupyterhub


RUN python3 -m pip install pip -U && \
    pip install jupyterhub notebook jupyterlab -U && \
    npm install -g n && n latest


RUN useradd --create-home admin && \
    usermod -aG root admin && \
    chown -hR admin /usr/local/share/jupyter/lab

# OPTIONAL for installing extensions before running.
# COPY extensions.txt .
# RUN cat extensions.txt | xargs -I {} jupyter labextension install {}
# RUN jupyter lab build


RUN pip install -U jupyterhub-nativeauthenticator \
    sudospawner \
    dockerspawner


