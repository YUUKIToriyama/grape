#!/usr/bin/ruby

str = "あいうえおかきくけこさしすせそ"

str.scan(/./).each do |moji|
	print moji
	print ": #{moji.ord.to_s(16)}\n"
end
