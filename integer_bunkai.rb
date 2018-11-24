#!/usr/bin/ruby
#自然数を桁ごとに分解します

i = 23456876543 #一般の自然数を想定

digits = i.to_s.length #桁数を求める

nums = Array.new
for n in 1..digits do
	a = i % (10 ** n) - i % (10 ** (n - 1)) #剰余を利用して分解する
	nums.push (a) #とりあえず配列に入れておく
end

nums = nums.reverse #小さい順になっているので逆にしておく
puts nums.join("\n")