import pyspark
from pyspark import SparkContext
from pyspark.sql import Row
from pyspark.sql import SQLContext
from pyspark import SparkFiles

sc =SparkContext()
sqlContext = SQLContext(sc)

def prepare_data():
  url = "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/adult_data.csv"
  sc.addFile(url) 
  df = sqlContext.read.csv(SparkFiles.get("adult_data.csv"), header=True, inferSchema= True)
  df.printSchema()

prepare_data()
print("*** DONE ***")
