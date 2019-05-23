#!/usr/bin/ruby
# random walking 問題の近似解を計算します

SIZE = 500
#WIDTH = (SIZE) = 500
#HEIGHT = (SIZE) = 500

pos = Array.new
pos.push([250,250])

c = 0
err = 0
while c < 10000 && err < 10000
	dice = [-2,-1,1,2].sample
	if dice.abs == 1
		pos_x = pos[-1][0] + dice * 10
		pos_y = pos[-1][1]
	else
		pos_x = pos[-1][0]
		pos_y = pos[-1][1] + dice * 5
	end
	pos_new = [pos_x, pos_y]
	if pos.include?(pos_new)
		pos.pop
		err = err + 1
	elsif pos_new.all?{|elm| elm>=0 && elm<=SIZE}
		pos.push(pos_new)
		c = c + 1
	end
end

pos.each do |elm|
	puts elm.join(",")
end
