#!/usr/bin/ruby

#variables
width = 10
height = 10
gradation = 256

puts "# ImageMagick pixel enumeration: #{width},#{height},#{gradation},srgb"

for n in 0..width-1
	for m in 0..height-1
		arr = []
		3.times do
			arr.push(rand(gradation))
		end
		print "#{n},#{m}: ("
		print arr.join(",")
		print ")\n"
	end
end
