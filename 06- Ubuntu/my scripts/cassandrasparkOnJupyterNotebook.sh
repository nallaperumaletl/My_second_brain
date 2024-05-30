echo "*******************************************************************************************"
echo
echo "pyspark integration with cassandra..!!"
echo
echo"starting JupyterNotebook with pys-cass connector (com.datastax.spark:spark-cassandra-connector_2.12:3.2.0)"
echo
echo `spark-submit --version`
echo
echo "*******************************************************************************************"
echo
sleep 1
pyspark --packages com.datastax.spark:spark-cassandra-connector_2.12:3.2.0 --conf spark.sql.extensions=com.datastax.spark.connector.CassandraSparkExtensions
