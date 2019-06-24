#!/usr/bin/ruby
# 10進自然数を任意のn進数に変換します

class Integer
	def to_nbase(n)
		num = self
		arr = []
		while num >= n
			arr.push(num % n)
			num = (num - (num % n)) / n
		end
		return arr.push(num).reverse
	end
end

puts 10.to_nbase(2) #=> [1,0,1,0]
