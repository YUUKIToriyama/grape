#!/usr/bin/env ruby
# 二次元ルービックキューブ

#matrix = [
#	[3, 2, 1],
#	[4, 5, 6],
#	[7, 8, 9]
#]

def create_new_matrix
	arr = (1..9).to_a.shuffle
	return [arr.slice(0, 3), arr.slice(3, 3), arr.slice(6, 3)]
end


class Array
	def horizontal_move(row_n, m)
		tmp = self
		m.times do
			tmp[row_n - 1].push(tmp[row_n - 1].shift)
		end
		return tmp
	end
	def vertical_move(column_n, m)
		tmp = self
		m.times do
			tmp[0][column_n - 1], tmp[1][column_n - 1], tmp[2][column_n - 1] = tmp[2][column_n - 1], tmp[0][column_n - 1], tmp[1][column_n - 1]
		end
		return tmp
	end
	def is_correct?
		correct_ans = [
			[1, 2, 3],
			[4, 5, 6],
			[7, 8, 9]
		]
		return (self == correct_ans) ? true : false
	end
end

matrix = create_new_matrix()

matrix.each{|l| puts l.join(" ")}
how_to_play = "How to play\nrotate Row1 2 times, then type 'r 1 2'\nrotate Column3 at once, then type 'c 3 1"
puts how_to_play



while (!matrix.is_correct?)
	print ":"
	f,n,m = gets.split(" ")
	
	if f == "r"
		matrix = matrix.horizontal_move(n.to_i, m.to_i)
	elsif f == "c"
		matrix = matrix.vertical_move(n.to_i, m.to_i)
	else
		puts "ERROR: invalid value"
	end
	matrix.each{|l| puts l.join(" ")}

end
