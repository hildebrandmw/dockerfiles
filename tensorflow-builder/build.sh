# First argument - path to the local tensorflow
docker build -t "darchr/tensorflow-builder" .

# cudnn at /usr/lib/x86_64-linux-gnu
# nccl at the same place
