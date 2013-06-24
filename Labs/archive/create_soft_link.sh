#!/bin/bash

root=/retail_demo

for table in `ls $root`
do
  #file="$table.tsv.gz"
  #zcat $file | psql -c "COPY $schema.$table FROM STDIN DELIMITER E'\t' NULL E'';"
  #ln -s "$root/$table";
  #file = ls "$root/$table"
  #cat $file
  value=$(ls "$root/$table")
  ln -s ${value}
done
