#!/usr/bin/ruby

class Array
	def life_game
		tmp = Marshal.load(Marshal.dump(self))
		for i in 1..self.length
			for m in 1..self[0].length
				tmp[i-1][m-1] = evaluate_cell(self, i-1, m-1)
			end
		end
		return tmp
	end
end
def evaluate_cell(arr,x,y)
	h = arr.length
	w = arr[0].length
	sum = arr[(x-1) % h][(y-1) % w] + arr[x % h][(y-1) % w] + arr[(x+1) % h][(y-1) % w] \
	    + arr[(x-1) % h][y % w]				+ arr[(x+1) % h][y % w] \
	    + arr[(x-1) % h][(y+1) % w] + arr[x % h][(y+1) % w] + arr[(x+1) % h][(y+1) % w]
	case arr[x][y]
	when 1
		if (sum >= 2) && (sum <= 3) then
			return 1
		else
			return 0
		end
	when 0
		if (sum == 3) then
			return 1
		else
			return 0
		end
	end
end

# 実行部
field = []
STDIN.map do |line|
	field.push(line.chomp.split(" ").map(&:to_i))
end
while true
	field = field.life_game
	field.map do |row|
		puts row.join(" ").gsub("1", "👾").gsub("0", "🕚")
	end
	puts "-------------------------"
	sleep 1
end
