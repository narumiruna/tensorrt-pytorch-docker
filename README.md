# tensorrt-pytorch-docker

## Build and run test

```shell
docker build -t torch2trt .
docker run -it --rm --gpus all torch2trt ./torch2trt/test.sh output
```
