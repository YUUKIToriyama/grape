#!/usr/bin/ruby

class Numeric
	def to_abs
		if self >= 0
			return self
		else
			return 0 - self
		end
	end
end

puts -1.to_abs
# self.to_s.delete("-").to_f
