#!/usr/bin/ruby

WIDTH = 500
HEIGHT = 500

p = [[250,250]]

c = 0
while c < 5000
	case rand(4)
	when 0 then
		pos_x = p[-1][0] + 10
		pos_y = p[-1][1]
	when 1 then
		pos_x = p[-1][0] - 10
		pos_y = p[-1][1]
	when 2 then
		pos_x = p[-1][0]
		pos_y = p[-1][1] + 10
	else
		pos_x = p[-1][0]
		pos_y = p[-1][1] - 10
	end
	if p.include?([pos_x, pos_y])
		p.pop
	end
	if (pos_x >= 0 && pos_x <= WIDTH) && (pos_y >= 0 && pos_y <= HEIGHT) && !(p.include?([pos_x, pos_y]))
		p.push([pos_x, pos_y])
		c = c + 1
	end
	if p.include?([p[-1][0] + 10, p[-1][1]]) && p.include?([p[-1][0] - 10, p[-1][1]]) && p.include?([p[-1][0], p[-1][1] + 10]) && p.include?([p[-1][0], p[-1][1] - 10])
		break
	end
end

p.each do |elm|
	puts elm.join(",")
end
