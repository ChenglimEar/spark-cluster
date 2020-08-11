import pyspark
from pyspark import SparkContext
from pyspark.sql import Row
from pyspark.sql import SQLContext
from pyspark import SparkFiles

sc =SparkContext()
sqlContext = SQLContext(sc)

def run_sample():
  list_p = [('John',19),('Smith',29),('Adam',35),('Henry',50)]
  rdd = sc.parallelize(list_p)
  ppl = rdd.map(lambda x: Row(name=x[0], age=int(x[1])))
  DF_ppl = sqlContext.createDataFrame(ppl)

  DF_ppl.printSchema()

def prepare_data():
  url = "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/adult_data.csv"
  sc.addFile(url) 
  df = sqlContext.read.csv(SparkFiles.get("adult_data.csv"), header=True, inferSchema= True)
  df.printSchema()

run_sample()
#prepare_data()
print("*** DONE ***")
