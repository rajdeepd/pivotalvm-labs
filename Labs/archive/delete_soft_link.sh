#!/bin/bash

root=/retail_demo

for table in `ls $root`
do
  value=$(ls "$root/$table")
  unlink ${value}
done
