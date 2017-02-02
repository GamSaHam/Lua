

for i=1,10 do
    print('Hello World')
end

for i=1,10,2 do
    print('Other World')
end

local i = 0

while i<10 do
     i = i + 1
     print("Good Wolrd")
end

local t1 ={'one','two'}
local t2 = { foo = 'foo', goo = 'goo'}

for i,v in ipairs(t1) do
    print('index:'..tostring(i))
    print('value:'..v)
end

for k,v in pairs(t2)do
    print('key:'..k)
    print('value'..v)
end
