ARG BASE_IMAGE=nvcr.io/nvidia/tensorrt:20.02-py3
FROM ${BASE_IMAGE}

RUN pip install torch torchvision \
    && rm -rf ~/.cache/pip

WORKDIR /workspace
