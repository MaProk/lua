
package.cpath = package.cpath .. ";C:/lua/clibs/?.dll"

mysql = require "luasql.mysql"
local env  = mysql.mysql()
local conn = env:connect('test','root','','localhost',3306)

--status,errorString = conn:execute([[INSERT INTO sample3 values('12','Raj')]])
--print(status,errorString )

cursor,errorString = conn:execute([[select * from myarttable]])
row = cursor:fetch ({}, "a")

while row do
   print(string.format("id: %s, text: %s, description: %s, keywords: %s", row.id, row.text, row.description, row.keywords))
   row = cursor:fetch (row, "a")
end

cursor:close()
conn:close()
env:close()