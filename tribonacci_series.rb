#!/usr/bin/ruby
# トリボナッチリベンジ

arr = [0,0,1]

for i in 1..10
	arr.push(arr[i-1] + arr[i] + arr[i+1])
end

puts arr.join(",")
