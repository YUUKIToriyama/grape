#!/usr/bin/ruby
# オイラーのφ函数


def coprime_integers(num)
	arr = [1]
	for i in 2..num
		arr.push(i) if num.gcd(i) == 1
	end
	return arr
end

class Integer
	def generate_phi
		arr = []
		for i in 1..self
			arr.push(coprime_integers(i))
		end
		return arr
	end
end

# example
puts 810.generate_phi.join(", ")
