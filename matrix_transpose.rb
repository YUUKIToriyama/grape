#!/usr/bin/ruby
# 3x3正方行列の転置

vct_1 = [1,2,3]
vct_2 = [4,5,6]
vct_3 = [7,8,9]

mtrx = [vct_1, vct_2, vct_3]

# 行列の例
mtrx.each do |row|
	puts row.join(",")
end

# 行列の転置
mtrx_new = Array.new

for i in 0..2
	tmp_arr = Array.new
	for l in 0..2
		tmp_arr.push(mtrx[l][i])
	end
	mtrx_new.push(tmp_arr)	
end



# 転置した行列を表示
mtrx_new.each do |row|
	puts row.join(",")
end
