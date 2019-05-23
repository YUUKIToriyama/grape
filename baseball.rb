#!/usr/bin/ruby
# BASEBALL GAME
#
# How to Play
# type "s" or "b" or "f" or "d".
# when you quit the game, type "q" or "ctrl + C"
#
# (c) Copyright 2019 YUUKIToriyama

def print_score(s,b,o)
	puts "S " + "🔶" * s
	puts "B " + "🔵" * b
	puts "O " + "❌" * o
end

c_st = 0
c_ba = 0
c_out = 0

while c_out < 3
	judge = gets.chomp
	if judge == "s"
		c_st = c_st + 1
		puts "Strike!"
		if c_st == 3
			puts "3 Strike, Batter Out!"
			c_st = 0
			c_ba = 0
			c_out = c_out + 1
		end
		print_score(c_st,c_ba,c_out)
	elsif judge == "b"
		c_ba = c_ba + 1
		puts "Ball!"
		if c_ba == 4
			puts "4 Ball, Runner Goes First Base!"
			c_st = 0
			c_ba = 0
		end
		print_score(c_st,c_ba,c_out)
	elsif judge == "f"
		puts "Foul Ball!"
		if c_st <= 2
			c_st = c_st + 1
		end
		print_score(c_st,c_ba,c_out)
	elsif judge == "d"
		puts "Dead Ball! Runner Goes First Base!"
		c_st = 0
		c_ba = 0
		print_score(c_st,c_ba,c_out)
	elsif judge == "q"
		exit
	else
		puts "Please type s / b / f / d"
		puts "s: Strike\nb: Ball\nf: Faul Ball\nd: Dead Ball"
	end
end

puts "3 Out! Change."
exit
