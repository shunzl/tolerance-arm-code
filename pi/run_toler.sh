#!/bin/bash

while true; do

    qemu-arm count_pi_t && wait
    sleep 1

done