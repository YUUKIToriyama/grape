#!/usr/bin/ruby
# 合成函数をパースするためのツールです

class String
	def to_formula
		self =~ /(^.*?)\((.*)\)/
		arr = [$1, $2]
		if arr[1].include?("(")
			arr[1] = arr[1].to_formula
		end
		return arr
	end
end

# 例
"sqrt(sin(cos(exp(x))))".to_formula #=> ["sqrt", ["sin", ["cos", ["exp", "x"]]]]
