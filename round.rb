#!/usr/bin/ruby
# Numeric#ceil、floorだけを用いてNumeric#roundを実装する

class Numeric
	def func_round
		a = (self.ceil - self) <=> (self - self.floor)
		if a == -1
			return self.ceil
		else
			return self.floor
		end
	end
end
