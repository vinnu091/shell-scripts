#!/bin/bash

echo "----- Top 5 processor consuming more memory -----"
ps -aux | sort -nrk 4| head -5
