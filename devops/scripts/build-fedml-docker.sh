#!/bin/bash

version=base
pwd=`pwd`

ARCH=x86_64
OS=ubuntu18.04
DISTRO=ubuntu1804
PYTHON_VERSION=3.8
PYTORCH_VERSION=1.12.1
NCCL_VERSION=2.9.9
CUDA_VERSION=11.3
OUTPUT_IMAGE=pytorch/pytorch:1.12.1-cuda11.3-cudnn8-devel
NVIDIA_BASE_IMAGE=nvidia/cuda:11.3.1-cudnn8-devel-ubuntu18.04
cd ../../docker
bash build-docker.sh $ARCH $OS $DISTRO $PYTHON_VERSION $PYTORCH_VERSION $NCCL_VERSION $CUDA_VERSION \
     $OUTPUT_IMAGE $NVIDIA_BASE_IMAGE