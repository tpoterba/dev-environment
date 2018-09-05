JAVA_HOME=/Library/Java/Home
export JAVA_HOME;

export PATH="$HOME/.cargo/bin:$PATH"


export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_66.jdk/Contents/Home

export HAIL_HOME=/Users/tpoterba/hail
export SPARK_HOME=/Users/tpoterba/spark-2.2.0-bin-hadoop2.7
export PYTHONPATH="$HAIL_HOME/python:$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.10.4-src.zip:$PYTHONPATH"
JAR_PATH=/Users/tpoterba/hail/build/libs/hail-all-spark.jar
export PYSPARK_SUBMIT_ARGS="--conf spark.driver.extraClassPath=$JAR_PATH --conf spark.executor.extraClassPath=$JAR_PATH --driver-memory 8G pyspark-shell"
