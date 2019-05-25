#!/usr/bin/ruby
# n行m列の長方行列の転置

# 行列の例
vct_1 = [1,2,3,4,5,6]
vct_2 = ["A", "KA", "SA", "TA", "NA"]
vct_3 = ["q","w","e", "r", "t", "y"]

mtrx = [vct_1, vct_2, vct_3]


# 行列の転置
class Array
	def transpose_new
		mtrx = []
		for i in 1..self.map{|row| row.length}.max
			arr = []
			for j in 1..self.length
				if self[j-1][i-1] == nil
					arr.push("")
				else
					arr.push(self[j-1][i-1])
				end
			end
			mtrx.push(arr)
		end
		return mtrx
	end
	def matrix_print
		self.each do |row|
			puts row.join("\t")
		end
	end
end

# 行列の例
mtrx.matrix_print
# 転置した行列を表示
mtrx.transpose_new.matrix_print
