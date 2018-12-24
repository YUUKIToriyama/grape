#!/usr/bin/ruby
#四桁づつに区切るメソッドを作ります

i = 1234567890

digits = i.to_s.length

puts (digits / 3) * 3