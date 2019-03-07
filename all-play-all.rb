#!/usr/bin/ruby

teams = ["A","B","C","D","E"]
opps = ["A","B","C","D","E"]

while teams.length > 1
	tmp = teams.shift
	opps.shift
	for i in opps
		puts tmp + " vs " + i
	end
end
