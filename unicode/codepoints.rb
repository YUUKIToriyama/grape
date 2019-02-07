#!/usr/bin/ruby

str = "山田です🌟"

str.codepoints do |moji|
	puts moji.to_s(16)
end
