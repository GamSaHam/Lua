

x =  10 -- 전역 변수

do  --지역 설정

    local x = 20 -- 지역 변수
	print(x)

	do
		local x = x+1;
		print(x)

	end



end

print(x)
