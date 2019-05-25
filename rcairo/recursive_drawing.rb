#!/usr/bin/ruby

require 'cairo'

class Array
	def draw_circle(context)
		if self[2] >= 1.0
			context.circle(self[0], self[1], self[2])
			context.stroke
	
			l_arr = [self[0] - self[2].fdiv(2), self[1], self[2].fdiv(2)]
			r_arr = [self[0] + self[2].fdiv(2), self[1], self[2].fdiv(2)]
	
			l_arr.draw_circle(context)
			r_arr.draw_circle(context)
		else
			puts self.join(",")
		end
	end
end

sf = Cairo::ImageSurface.new(1000,1000)
ct = Cairo::Context.new(sf)

initial_arr = [500, 500, 500]
initial_arr.draw_circle(ct)

sf.write_to_png("recursive_figure_1.png")
