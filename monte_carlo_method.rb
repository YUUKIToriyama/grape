#!/usr/bin/ruby

try = 1000000

hit = 0
for i in 1..try
	pos_x = rand
	pos_y = rand
	if (pos_x ** 2 + pos_y ** 2 <= 1)
		hit = hit + 1
	end
end

puts 4 * hit.fdiv(try)
