#!/usr/bin/ruby
# 自然数を桁ごとに分解します


# 整数の桁数を求めるメソッドInteger#lengthを定義
class Integer
	def length
		if self == 0
			return 1
		else
			c = 0
			while 10 ** c <= self.abs
				c = c + 1
			end
			return c
		end
	end
end

i = 23456876543 #一般の自然数を想定

digits = i.length #桁数を求める

nums = Array.new
for n in 1..digits do
	a = i % (10 ** n) - i % (10 ** (n - 1)) #剰余を利用して分解する
	nums.push (a) #とりあえず配列に入れておく
end

#小さい順になっているので逆にして出力
puts nums.reverse.join(",")
