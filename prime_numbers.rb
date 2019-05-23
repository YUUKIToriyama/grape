#!/usr/bin/ruby
# 100000以下の素数を列挙します

prime_numbers = [2]

num = 3

while (num <= 100000)
	prime_numbers.push(num)
	prime_numbers.slice(0, prime_numbers.length - 1).each do |prime|
		if (num % prime == 0)
			prime_numbers.pop
			break
		end
	end
	num = num + 2
end

puts prime_numbers
