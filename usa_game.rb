#!/usr/bin/ruby
# USAゲーム(違)

lyrics = %w(カー モン ベイビー)

arr = Array.new
3.times do
	arr.push(lyrics.sample)
end

tail = arr[-3] + arr[-2] + arr[-1]
while tail != "カーモンベイビー"
	arr.push(lyrics.sample)
	tail = arr[-3] + arr[-2] + arr[-1]
end

puts arr.join(" ") + " ア☆メ☆リ☆カ"
