ARG BASE_IMAGE=nvcr.io/nvidia/tensorrt:20.02-py3
FROM ${BASE_IMAGE}


RUN pip install torch torchvision termcolor \
    && rm -rf ~/.cache/pip

WORKDIR /workspace
RUN git clone https://github.com/NVIDIA-AI-IOT/torch2trt.git \
    && cd torch2trt \
    && pip3 install . \
    && rm -rf ~/.cache/pip
