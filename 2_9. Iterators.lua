--[[
    iterator
--]]

--[[
function getArray(number, count)

	if count > 0 then
	    count = count - 1
		return count , number*count
	end

end

for i, v in getArray,3,3 do

	print('first return value:'..tostring(i))
	print('seconde return value:'.. tostring(v))

end
--]]


--[[
t_array = {"Hello","World","Good"}

function getArray(t)
	local index = 0
	local count = #t

	return function()

		index = index + 1

		if index <= count then
			return t[index]
		end
	end
end


for element in getArray(t_array) do

	print(element)

end

--]]

-- 최종 이해본
--[[
t_array = {"1","2","3"}

function iteratorExample(t_table,count)

	count = count - 1

	if count > 0 then
		return t_table[count]
    end

end

for value in iteratorExample,t_array,3 do
	print(value)
end

--]]




