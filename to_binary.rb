#!/usr/bin/ruby
# 10進→2進

class Integer
	def to_binary
		a = [self, []]
		a = [(a[0] - a[0] % 2) / 2, a[1].push(a[0] % 2)] while a[0] > 0
		return a[1].reverse.join("")
	end
end

puts 44.to_binary
