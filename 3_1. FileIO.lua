--[[
	FileIO

--]]

------------------------
-- file write
-- 'a'
------------------------
file = io.open('C:\\Users\\PDK\\Desktop\\note.txt', 'a')

io.output(file)

io.write('Hello World')

io.close(file)

------------------------
-- file read
-- 'r'
------------------------
file = io.open('C:\\Users\\PDK\\Desktop\\note.txt', 'r')

io.input(file)

print(io.read())


io.close(file)
