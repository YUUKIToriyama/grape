#!/usr/bin/ruby

require 'cairo'


surface = Cairo::ImageSurface.new(500, 500)
context = Cairo::Context.new(surface)

for i in 1..10
	alpha = Math::PI * i.fdiv(5)
	context.circle(250 + 100 * Math.cos(alpha), 250 + 100 * Math.sin(alpha), 100)
	context.stroke
end

surface.write_to_png("circles.png")
