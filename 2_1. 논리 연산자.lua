

--[[and 키워드]]
-- 하나라도 nil 이거나 false 이면 nil이나 false 값을 리턴한다.
print(4 and 5)
print(nil and 5)
print(false and 5)
print(4 and nil)

-- 하나라도 false이나 nil이 아니면 아닌값을 리턴한다.
print(1 or nil)
print(false or 5)
print(false or nil)

--[[ not 키워드]]
-- nil 이나 false 가 아니면 true 를 리턴한다.
print(not nil)
print(not false)
print(not 5)

-- 테이블을 이용한 보통 사용법
local t_table1 = {}
local t_table2 = t_table1 or {}







