#!/bin/bash

FILE_LAB=~/.jupyter/jupyter_notebook_config.json
pkill -9 -ef jupyter

if [ ! -f $FILE_LAB ]; then
    echo 'Set up Jupyerlab PASSWORD: '
    jupyter notebook --generate-config
    jupyter notebook password
    echo "c.NotebookApp.ip = '0.0.0.0'" > ~/.jupyter/jupyter_notebook_config.py
    echo "c.NotebookApp.port = '8888'" >> ~/.jupyter/jupyter_notebook_config.py
fi

nohup jupyter lab --allow-root --ip='*' --notebook-dir=/ --port=8888 --no-browser > /log/jupyter.out &
echo "Starting JupterLab"

/bin/bash