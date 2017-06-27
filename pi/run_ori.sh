#!/bin/bash

while true; do

    qemu-arm count_pi && wait
    sleep 1.1

done