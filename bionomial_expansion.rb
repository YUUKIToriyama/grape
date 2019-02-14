#!/usr/bin/ruby
# 二項展開に現れる係数を計算する

arr = [[1,1]]

for l in 1..20
	tmp = [1]
	for m in 1..(arr[l-1].length - 1)
		tmp.push(arr[l-1][m-1] + arr[l-1][m])
	end
	tmp.push(1)
	arr.push(tmp)
end

arr.each do |a|
	puts a.join(",")
end
