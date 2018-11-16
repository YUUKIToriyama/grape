#!/usr/bin/ruby
#再帰計算によりフィボナッチ数を計算します

def fibonacci num 
	if num < 0
		return 'ERROR 負の数には対応していません'
	end
	
	if num <= 1
		1
	else
		fibonacci(num - 2) + fibonacci(num - 1)
	end
end

for i in 1..100
	puts i.to_s + ": " + fibonacci(i).to_s
end