

--[[
local R = 100
local Q = 20

if Q == 0 then
    assert("Q Should not be zero")
end

print(R/Q)


if true then
    error('someting wrong')
end

--]]


function foo(str)

    error("string expected",2)

end

print(debug.traceback())