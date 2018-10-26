tag=nvdevtools/pytorch:0.2.0-cuda-8.0
rootdir="/raid/victor"
#rootdir="/raid/dl_samples"
nvidia-docker run --privileged=true  -e DISPLAY  --net=host --ipc=host -it --rm  -p 7022:22 -p 5022:5022 \
     -v $HOME/.Xauthority:/home/nvidia/.Xauthority \
     -v $rootdir:$rootdir \
     -v /raid/tools:/raid/tools \
     -w `pwd`  \
     $tag /bin/bash

