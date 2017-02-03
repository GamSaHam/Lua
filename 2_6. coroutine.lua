
-- 코루틴 기본 개념
-- coroutine.create, coroutine.start, coroutine.wrap, coroutine.status, coroutine.running
--[[
co = coroutine.create(function()
    print('hi')
end)

print(co) -- thread 출력

print(coroutine.status(co)) -- suspend 출력

coroutine.resume(co) -- 코루틴 동작 'hi' 출력
--]]

-- 코루틴 yield
--[[
co = coroutine.create(function()
    for i=1,2,1 do
        print("co",i)
        coroutine.yield()
    end
end)

print(coroutine.resume(co))
print(coroutine.resume(co))
print(coroutine.resume(co))
print(coroutine.resume(co))

print(coroutine.status(co)) -- print dead
--]]

-- 코루틴 파라미터 전달
--[[
co = coroutine.create(function(param)
    print("co",param)
end)

coroutine.resume(co,10)
--]]

-- 코루틴 리턴값
--[[
co1 = coroutine.create(function(param)
    coroutine.yield(param*2)

end)

print(coroutine.resume(co1,10))

co2 = coroutine.create(function(param)
    return param * 2

end)

print(coroutine.resume(co2,10))
print(coroutine.status(co1))
print(coroutine.status(co2))

--]]


-- 코루틴 wrap

--[[

-- 코루틴의 wrap은 create랑 resume 을 합친것이다.
co_wrap = coroutine.wrap(function()
    print('call the wrap coroutine')
end)
co_wrap();

--]]


--------------------------------------------
-- coroutine.running
--------------------------------------------
co = coroutine.create(function()

	print(coroutine.running())

	while(true) do

		coroutine.yield()
	end

end)

coroutine.resume(co)

