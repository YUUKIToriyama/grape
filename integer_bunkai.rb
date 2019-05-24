#!/usr/bin/ruby
# 自然数を桁ごとに分解します


class Integer
	# 整数の桁数を求めるメソッドInteger#lengthを定義
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
	# 自然数を桁区切りに10^nの大きさごとに分解した配列を返すメソッドInteger#to_ketakugiriを定義
	def to_ketakugiri
		num = self.abs
		arr = Array.new

		c = 1
		while c <= num.length
			m = num % 10 ** c
			arr.push(m)
			num = num - m
			c = c + 1
		end
		arr.reverse!
		if self < 0
			return arr.map{|n| n * (-1)}
		else
			return arr
		end
	end
end

i = 114514 #一般の自然数を想定

puts i.length #桁数を求める
puts i.to_ketakugiri.join("+") #桁区切りにして出力



=begin
nums = Array.new
for n in 1..digits do
	a = i % (10 ** n) - i % (10 ** (n - 1)) #剰余を利用して分解する
	nums.push (a) #とりあえず配列に入れておく
end

#小さい順になっているので逆にして出力
puts nums.reverse.join(",")
=end
