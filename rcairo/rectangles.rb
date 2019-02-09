#!/usr/bin/ruby

require 'cairo'

surface = Cairo::ImageSurface.new(500, 500)
context = Cairo::Context.new(surface)

for i in 1..10
	context.set_source_rgb(i.fdiv(10), 0, 0)
	context.rectangle(100 + i * 10, 100 + i * 10, 200, 200)
	context.fill
end

surface.write_to_png("rectangles.png")
