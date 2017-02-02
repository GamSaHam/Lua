-- table sort example
--[[
local t = 
{
    {id = 3, ip = "192.168.0.3"},
    {id = 2, ip = "192.168.0.2"},
    {id = 1, ip = "192.168.0.1"}
}

table.sort(t, function(a,b)
    return a.id < b.id
end)

for i,v in ipairs(t) do

    for _k,_v in pairs(v) do
        print('key:'.._k..' value:'..tostring(_v))
    end

end
--]]

--[[

local t_user1 = { id = 1, ip = '192.168.0.1'}
local t_user2 = { id = 2, ip = '192.168.0.2'}
local t_user3 = { id = 3, ip = '192.168.0.3'}

local t_users = {}

t_users[1] = t_user1
t_users[2] = t_user2
t_users[3] = t_user3

table.sort(t_users, function(a,b)

    return a.id < b.id
end)

for i,v in ipairs(t_users) do

    for _k,_v in pairs(v) do
        print('key:'.._k..' value:'..tostring(_v))
    end

end
    
--]]


-- table getn
local t = {'one','two','three','four','five'}
print(table.getn(t))

-- table insert
table.insert(t,"six")
print(table.getn(t))

-- table remove
table.remove(t, 3)
print(table.getn(t))

-- table concat
print(table.concat({1,2,3,4},", ")) -- 실행 결과 1, 2, 3, 4







