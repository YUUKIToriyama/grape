#!/usr/bin/ruby
# 10進→2進

class Integer
	def to_binary
		arr = []
		n = self
		while n > 1
			arr.push(n % 2)
			n = (n - n % 2) / 2
		end
		arr.push(n).reverse
	end
end

puts 44.to_binary.join(",")
