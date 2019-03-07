#!/usr/bin/ruby

teams = ["A","B","C","D","E"]
teams.reverse!

while teams.length > 1
	t_1 = teams.pop
	for i in teams.reverse
		puts t_1 + " vs " + i
	end
end
