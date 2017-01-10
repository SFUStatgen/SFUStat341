#Example connection -- computer *must* be on campus
library(RMySQL)
con = dbConnect(MySQL(), user='stataccess', password='*stataccess*', dbname='stat341', host='muncho.its.sfu.ca')
dbListTables(con) 
rs <- dbSendQuery(con,'select * from gapminder')
ii <- fetch(rs,n=-1)
ii
dbClearResult(rs)
dbDisconnect(con)
