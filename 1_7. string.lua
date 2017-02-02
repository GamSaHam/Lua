

local str1 = 'Hello World';
-- string gsub
local str2 = string.gsub(str1,'Hello','Good')

print(str2)

local input_value = io.read()

local value = tonumber(input_value)

print(type(value))
print(value)


-- Concatenation
print("Hello".."World")

-- string len
local str3 = "Hello World"
print(#str3)

-- string upper
print(string.upper(str3))

-- string lower
print(string.lower(str3))

-- string reverse
print(string.reverse(str3))

-- string format
print(string.format("%s","Hello"))

-- string find
print(string.find("Hello","o"))

-- string char
local c = string.char(65)
print(c)

-- string byte
local b = string.byte('A')
print(b)

-- string len
print(string.len("Hello World"))

-- string rep
print(string.rep("hello",5)) -- 실행 결과 hellohellohellohellohello


