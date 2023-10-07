#!/bin/bash

pkill -9 -ef jupyter
nohup jupyter lab --allow-root --ip='*' --notebook-dir=/ --port=8888 --no-browser > /log/jupyter.out &
echo "Restarting Jupterlab"

/bin/bash