#!/usr/bin/ruby

require 'cairo'

surface = Cairo::ImageSurface.new(500, 500)
context = Cairo::Context.new(surface)

for i in 1..10
	alpha = Math::PI * i.fdiv(5)
	context.set_source_rgb(i.fdiv(10), 0, 0)
	context.circle(250 + 100 * Math.cos(alpha), 250 + 100 * Math.sin(alpha), 100)
	context.fill
end

surface.write_to_png("pile_of_circle.png")
