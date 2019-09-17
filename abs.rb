#!/usr/bin/ruby

class Numeric
	def func_abs
		if self >= 0
			return self
		else
			return 0 - self
		end
	end
end

# self.to_s.delete("-").to_f
