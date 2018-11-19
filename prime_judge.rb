#!/usr/bin/ruby
#メルセンヌ数2^13-1が素数であることを確かめるスクリプト

val = 8191

if (val % 2 == 0)
	puts val.to_s + " is not a prime number."
else
	puts val.to_s + " cannot be devided by " + "2"
	i = 3
	while (i <= val.quo(2))
		if (val % i == 0)
			puts val.to_s + " can be devided by " + i.to_s + "\n" + val.to_s + " is not a prime number."
			exit
		else
			puts val.to_s + " cannot be devided by " + i.to_s
			i = i + 2
		end	
	end
end

puts val.to_s + " is a prime number."