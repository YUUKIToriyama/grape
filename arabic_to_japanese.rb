#!/usr/bin/ruby
# 四桁づつに区切るメソッドを作ります

class Integer
	def num_separate
		str = self.to_s.reverse.scan(/./)
		arr = []
		while str.length > 0
			tmp = []
			4.times do
				tmp.push(str.shift)
			end
			arr.push(tmp.join().reverse)
		end
		return arr.reverse
	end
end

puts 1234567890.num_separate.join(",")
