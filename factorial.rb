#!/usr/bin/ruby
# 再帰で階乗を計算

# Usage
# puts 5.factorial => 120


class Integer
	def factorial
		n = self
		if n < 0 then return "error"
		elsif n <= 1 then return 1
		else n * (n - 1).factorial end
	end
end

for i in 1..10
	puts "#{i}: #{i.factorial}"
end
