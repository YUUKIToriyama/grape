#!/usr/bin/ruby

teams = ["A","B","C","D","E"]

while teams.length > 1
	tmp = teams.shift
	for i in teams
		puts tmp + " vs " + i
	end
end
