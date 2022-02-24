import psycopg2 # postgresql client
import numpy as np # numeric library
import matplotlib.pyplot as mp  # plot library 

# connect to database
con = psycopg2.connect("dbname=g394-bogdanov user=postgres host=127.0.0.1 port=5432")

# execute a query
cur = con.cursor()
cur.execute("SELECT x, y from fn order by x;")

#get results
arr = cur.fetchall()

# disconnect from datdabase
cur.close()
con.close()

# convert a list of (x, y) tuples into separate arrays x[] and y[] 
x, y = np.array(arr).T # .T - is a transpose opertion
#x = [p[0] for p in arr]
#y = [p[1] for p in arr]

# simple line plot
mp.plot(x, y)

# set title and labels
mp.title('sine wave')
mp.xlabel('x')
mp.ylabel('y = sin(x)')

# setup grid
mp.grid(True, which='both')
mp.axhline(y=0, color='k')

# display result
mp.show()