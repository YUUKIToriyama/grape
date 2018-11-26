#!/usr/bin/ruby
#再帰計算によりトリボナッチ数(tribonacci series)を調べます

def tribonacci num
	if num < 0
		return 'ERROR 負の数には対応していません'
	elsif num <= 1
		0
	elsif num == 2
		1
	else
		tribonacci(num - 1) + tribonacci(num - 2) + tribonacci(num - 3)
	end
end
	
for i in 0..100
	puts i.to_s + "番目のトリボナッチ数は: " + tribonacci(i).to_s
end
