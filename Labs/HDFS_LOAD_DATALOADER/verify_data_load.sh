#!/bin/bash

# Verify one of the GPXF/HDFS tables
PAGER=cat psql -c "SELECT * FROM retail_demo.retail_demo.orders_hawq LIMIT 5"

