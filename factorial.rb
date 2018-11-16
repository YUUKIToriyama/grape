#!/usr/bin/ruby
#再帰的手続きにより階乗を計算します
def factorial num 
	if num < 0
		return 'ERROR 負の数には対応していません'
	end
	
	if num <= 1
		1
	else
		num * factorial(num - 1)
	end
end

for i in 1..100
	puts i.to_s + ": " + factorial(i).to_s
end