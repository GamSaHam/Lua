--[[
    클로져 비지역 변수들의 묵음
    아래 보면 비지역 변수 i를 전급하는 법을 클로져라고 한다.
--]]

function newCounter()
    local i = 0;

    return function()
            i = i+ 1
            return i
            end
end

local func1 = newCounter();
local func2 = newCounter();

print(func1())
print(func2())
print(func1())

