#!/usr/bin/ruby
# フィボナッチリベンジ

arr = [1,1]

for i in 1..10
	arr.push(arr[i-1] + arr[i])
end

puts arr.join(",")
