#!/usr/bin/env ruby

matrix = [
	[1, 2, 3],
	[4, 5, 6],
	[7, 8, 9]
]

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
	
end

matrix.each{|l| puts l.join(" ")}
puts "---"
matrix.horizontal_move(1,1).each{|l| puts l.join(" ")}
puts "---"
matrix.vertical_move(1,1).each{|l| puts l.join(" ")}

