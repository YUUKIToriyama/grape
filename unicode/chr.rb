#!/usr/bin/ruby

#str = "0x6588"
#puts str.hex.chr("UTF-8")

a = "0x7000"
b = "0x71FF"

for i in a.hex..b.hex
	puts "#{i.chr('UTF-8')}: U+#{i.to_s(16)}"
end
