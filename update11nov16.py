import sqlite3

conn = sqlite3.connect('moocs_sqlite.db')
cur = conn.cursor()

#Unenrroll from Circular Economy
cur.execute(''' UPDATE mooc
SET Status = 'Unenrolled'
WHERE moocid = 17 ''')

#total moocs 53
#Insert python
cur.execute(''' INSERT INTO mooc VALUES(
54, 1, 'Using Databases with Python', 5, 'si', 'no', 'Programming','Taking', 5)''')

#Insert Maps
cur.execute(''' INSERT INTO mooc VALUES(
55, 1, 'Maps and the Geospatial Revolution', 5, 'si', 'no', 'GIS', 'Taking', 5)''')

#Insert Global Environmental Management
cur.execute(''' INSERT INTO mooc VALUES(
56, 1, 'Global Environmental Management', 5, 'no', 'no', 'Environment', 'Taking', 5)''')

#Insert next generation infrastructures
cur.execute(''' INSERT INTO mooc VALUES(
57, 2, 'The Next Generation of Infrastructures', 20, 'no', 'no', 'Urban Studies', 'Taking', 8)''')

#Update status of Nuclear energy to taking
cur.execute(''' UPDATE mooc
SET Status = 'Taking'
WHERE moocid = 53 ''')

#update status of Transport phenomena to taking
cur.execute(''' UPDATE mooc
SET Status = 'Taking'
WHERE moocid = 15 ''')

conn.commit()

#check what courses I'm taking

cur.execute(''' SELECT moocid, name, weeks FROM mooc WHERE Status = 'Taking' LIMIT 20 ''')

for row in cur.fetchall():
    print row 

cur.close()