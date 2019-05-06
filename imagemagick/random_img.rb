#!/usr/bin/ruby

#variables
width = 10
height = 10
gradation = 256

puts "# ImageMagick pixel enumeration: #{width},#{height},#{gradation},srgb"

for n in 0..width-1
	for m in 0..height-1
		print "#{n},#{m}: (#{rand(gradation)},#{rand(gradation)},#{rand(gradation)})\n"
	end
end
