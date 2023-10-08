## How To Use

### Check Python Library version

If you want to use other version or add new library, you can fix in requirements.txt.
Format is {LIBRARY_NAME} == {LIBRARY_VERSION}

### Docker build

You should build Dockerfile using this command in {HOST_PATH}/docker-apps/ide/jupyerlab

```
docker build -t {DOCKER_IAMGE_NAME} .
```

### Docker run

Let's run Jupyerlab!

```
docker run -it --name {DOCKER_CONTAINER_NAME} -v {WORKSPACE}:/workspace -p {HOST_PORT}: {DOCKER_IMAGE_NAME}
```

* {WORKSPACE} : Workspace for coding on your.

After typing docker run, Appear below script. Set up Default Password.

```
Set up Jupyerlab PASSWORD:
Writing default config to: /root/.jupyter/jupyter_notebook_config.py
Enter password: {SET UP PASSWORD}
Verify password: {REPEAT PASSWORD}
[JupyterPasswordApp] Wrote hashed password to /root/.jupyter/jupyter_server_config.json
Starting JupterLab
nohup: redirecting stderr to stdout
root@0b04b98458a4:/ide#
```


If you want to exit from a Docker Container, Type "Ctrl + p + q".


### Use JupyterLab

Let's connect to JupyterLab through the HOST IP and PORT you've configured.
In your Browser, Enter {HOST_IP}:{HOST_PORT} and Password you set up

### Restart JupyterLab

If you encounter an error like a connection failure and want to restart Jupyterlab, Execute "restart-lab.sh". 
Here's the method:

```
1. docker exec -it {DOCKER_CONTAINER_NAME} bash
2. cd /ide/util
3. bash restart-lab.sh
```

### Change Password for Jupyterlab

If you want to change password, Execute "chagepasswd.sh"

```
1. docker exec -it {DOCKER_CONTAINER_NAME} bash
2. cd /ide/util
3. bash changepasswd.sh
```
