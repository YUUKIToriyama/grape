#!/usr/bin/ruby
# Calculation by hand
# doing division calculation with figures like written down on paper.
#
# (C) 2019 YUUKIToriyama All Rights Reserved.

divisor = 12
dividend = 2452

l = divisor.to_s.length + dividend.to_s.length + 5

quotient_arr = Array.new
tmp = Array.new


tmp = dividend.to_s.scan(/./)
tmp.collect! do |num|
	num = num.to_i
end

for i in 1..tmp.length-1
	# 筆算過程表示機構ここから
	puts "#{tmp[i-1] / divisor}".rjust(l+i)
	puts "#{divisor})￣#{tmp[i-1]}".rjust(l-1+i)
	sleep 0.5
	puts "#{divisor * (tmp[i-1] / divisor)}".rjust(l+i)
	sleep 0.5
	puts "￣￣".rjust(l-1+i)
	puts "#{tmp[i-1] % divisor}#{tmp[i]}".rjust(l+1+i)
	puts "\n"
	sleep 1
	# ここまで
	quotient_arr.push(tmp[i-1] / divisor)
	tmp[i] = tmp[i] + 10 * (tmp[i-1] % divisor)
end


quotient_arr.push(tmp[-1] / divisor)
surplus = tmp[-1] % divisor

#筆算過程表示ここから
puts "#{tmp[-1] / divisor}".rjust(l+tmp.length)
puts "#{divisor})￣#{tmp[-1]}".rjust(l-1+tmp.length)
sleep 0.5
puts "#{divisor * (tmp[-1] / divisor)}".rjust(l+tmp.length)
sleep 0.5
puts "￣￣".rjust(l-1+tmp.length)
puts "#{tmp[-1] % divisor}".rjust(l+1+tmp.length)
puts "\n"
# ここまで

puts "#{dividend} ÷ #{divisor}="
puts "商: #{quotient_arr.join("").to_i}"
puts "余り: #{surplus}"
