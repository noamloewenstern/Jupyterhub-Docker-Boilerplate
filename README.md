# Jupyterhub + DockerSpawner Boilerplate

# Install:

1. Run `docker-compose build`
2. `docker-compose up -d jupyterhub`
3. browse http://localhost:8000
4. Sign up with user 'admin' (with any password you'd like)
5. Login with admin creds.

#

## Importent Note

### List of URLs which do not have links in website

1. **/hub/authorize**

   There is no link on website to browse to Authorize the users.
   When a user signs up, the admin (you) will need to authorize, via link: http://localhost:8000/hub/authorize

1. **/user/{user}/lab**

   The 'Lab' for notebooks. Works only when there's a Notebook-Server already running (for the specific {user})

#

### Notes

- The `jupyterhub-notebook` service in the 'docker-compose.yml' is in order to build the `DOCKER_NOTEBOOK_IMAGE` for the jupyber-hub **Spawner**.
- Since the hub is using Docker-Spawner, each notebook creates new container.
  And creates a Volume for the directories of the user. The name can be configured in `jupyterhub_config.py` file.
- All configuration for the jupyterhub is in the `./data/jupyterhub/jupyterhub_config.py` file.
- The DB is using the default sqlite (saved in `./data/jupyterhub/jupyterhub_config.sqlite`), and using the 'nativeauthenticator' (saved in sqlite file.)
- DO NOT change the network name 'jupyterhub', since it is used by the docker-spawner. The name can be changed, but must be updated in the config-file too.
- Extensions:
  The file 'extensions.txt' is a file where you can add list of the jupyterhub extensions names (npm package name), to install at build time, instead of after running the server. Totally optional.

# Enjoy!
