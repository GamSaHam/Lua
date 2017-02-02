--[[
   테이블 
   
--]]

-- 테이블에 키는 어떤 타입이 와도 된다 널빼고
-- 테이블에 값은 어떤 타입이 와도 된다 널빼고
local t = {}

local str = "key"
local number = 10
local b = false


t[str] = 10 -- string key
t[number] = 10 -- number
t[b] = 10 -- boolean

print(t[str])
print(t[number])
print(t[b])


-- 테이블에 접근
t = {}

t['good'] = 10
--t[10] = 10  --error

print(t.good)

t = {jun = "a",kim = "b"}

print(t.jun)
print(t.kim)


-- 테이블 선언과 동시에 함수화
function t.func()
    print('hello world')
end

-- 키값과 선언
local t = { ["text"] = true }
print(t.text)
