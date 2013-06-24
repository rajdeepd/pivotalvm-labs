#!/bin/bash

cat <<'EndOfCat'

Clean up HBase via `hbase shell':

  [bash]$ hbase shell
  hbase(main):001:0> disable_all '^.+?_dim$' # And, enter 'y' when prompted
  hbase(main):004:0> drop_all '^.+?_dim$'    # Again, enter 'y'


EndOfCat

# Clean up HAWQ
psql -c "DROP SCHEMA retail_demo CASCADE;"

# Clean up HDFS
hadoop fs -rm -r -skipTrash /retail_demo

