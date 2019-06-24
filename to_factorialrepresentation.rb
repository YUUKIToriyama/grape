#!/usr/bin/ruby
# 階乗進数に変換します

class Integer
	def to_factorialexpression
		num = self
		m,n = 1,2
		arr = []
		while num >= m
			m,n = m * n, n + 1
			arr.push((num % m*n) / m)
			num = num - (num % m)
		end
		return arr.reverse
	end
end

puts 100.to_factorialexpression
