






t_mymetatable = { key = 'Hello'}

----------------------------------------
-- __index 키워드
----------------------------------------

t_table = setmetatable(t_mymetatable, {

   __index = function(t_table, key)

		if key == 'world' then
		   return 'metatable value'
		else
			return t_table[key]
		end


   end

})

print(t_table.key)
print(t_table.world)


----------------------------------------
-- __newindex 키워드
----------------------------------------


t_table1 = { key1 = "value1"}

t_table2 = setmetatable(t_table1,{

	__newindex = function(t_table,key,value)
	    rawset(t_table,key,value)
	end


})

t_table2.key1 = "new value"
t_table2.key2 = "new value2"

print(t_table2.key1)
print(t_table2.key2)


----------------------------------------
-- add index
----------------------------------------

t_table1 = {1,2,3}

t_table2 = setmetatable(t_table1, {

	__add = function(t_table,t_new_table)

	    for i = 1 , table.maxn(t_new_table) do
		    table.insert(t_table, table.maxn(t_table) + 1, t_new_table[i])
		end


		return t_table
	end

})

t_second = {4,5,6}

t_result = t_table2 + t_second

for i,v in ipairs(t_result) do
	print(i,v)
end


--[[
   __add, __sub, __mul, __div, __mod , __umm, __concat,__eq,__lt, __le

--]]

----------------------------------------
-- __call
----------------------------------------
t_table = setmetatable({10}, {

	__call = function(t_table,t_new_table)
		sum = 0

		for i,v in ipairs(t_table) do
			sum = sum + v
		end

		for i,v in ipairs(t_new_table) do
			sum = sum + v
		end

		return sum

	end

})



----------------------------------------
-- tostring
----------------------------------------

t_table = setmetatable({10,20,30}, {

	__tostring = function(t_table)

		local str = ""

		for i =1, table.maxn(t_table) do
			str = str..tostring(t_table[i])..", "
		end

		return str

	end


})


print(t_table)

