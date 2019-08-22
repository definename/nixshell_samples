#!/bin/sh

num_of_args=1
if [ $# -ne $num_of_args ]; then
    echo "Usage: '$0' whatever"
    exit 1
else
    echo "Cmd arg: $1 was given"
    exit 0
fi