#########################################################################
# File Name: run_cpp.sh
# Author: Liuxiao
# Created Time: Fri 26 May 2017 02:40:28 PM CST
#########################################################################
#!/bin/bash

BIN=./build/examples/cpp_classification/classification.bin
PROTOTXT=ResNet-50-deploy-4cls.prototxt
CAFFEMODEL=output/amazon_iter_45000.caffemodel
MEANFILE=caffe/examples/cpp_classification/imagenet_mean.binaryproto
#MEANFILE=mean_file
IMAGELABELS=image_labels
VALTXT=$2
GUPID=$1

$BIN \
$PROTOTXT \
$CAFFEMODEL \
$MEANFILE \
$IMAGELABELS \
$VALTXT \
$GUPID
