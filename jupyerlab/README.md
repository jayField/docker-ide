# How To Use

## `Check Python Library version`

If you want to use other version or add new library, you can fix in requirements.txt.
Format is {LIBRARY_NAME} == {LIBRARY_VERSION}

## `Docker build`

You should build Dockerfile using this command in {HOST_PATH}/docker-apps/ide/jupyerlab
docker build -t {DOCKER_IAMGE_NAME} .


## `Docker run`

Let's run Jupyerlab!
docker run -itd --name {DOCKER_CONTAINER_NAME} -p {HOST_PORT}: {DOCKER_IMAGE_NAME}

## `Use JupyerLab`

Let's connect to JupyterLab through the HOST IP and PORT you've configured.
In your Browser, Enter {HOST_IP}:{HOST_PORT}