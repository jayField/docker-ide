## How To Use

### Check Python Library version

If you want to use other version or add new library, you can fix in requirements.txt.
Format is {LIBRARY_NAME} == {LIBRARY_VERSION}

### Docker build

You should build Dockerfile using this command in {HOST_PATH}/docker-apps/ide/jupyerlab
docker build -t {DOCKER_IAMGE_NAME} .


### Docker run

Let's run Jupyerlab!
docker run -it --name {DOCKER_CONTAINER_NAME} -v {WORKSPACE}:/workspace -p {HOST_PORT}: {DOCKER_IMAGE_NAME}

* {WORKSPACE} : Workspace for coding on your.

After typing docker run, Appear below script. Set up Default Password.

Set up Jupyerlab PASSWORD:
Writing default config to: /root/.jupyter/jupyter_notebook_config.py
Enter password: {SET UP PASSWORD}
Verify password: {REPEAT PASSWORD}
[JupyterPasswordApp] Wrote hashed password to /root/.jupyter/jupyter_server_config.json
Starting JupterLab
nohup: redirecting stderr to stdout
root@0b04b98458a4:/ide#

If you want to exit from a Docker Container, Type "Ctrl + p + q".


### Use JupyerLab

Let's connect to JupyterLab through the HOST IP and PORT you've configured.
In your Browser, Enter {HOST_IP}:{HOST_PORT} and Password you set up