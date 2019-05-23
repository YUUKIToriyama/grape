#!/usr/bin/ruby
# n行m列の長方行列の転置

vct_1 = [1,2,3,"a","i","u"]
vct_2 = [4,5,6,"A","I","U"]
vct_3 = [7,8,9,"あ","い","う"]

mtrx = [vct_1, vct_2, vct_3]

# 行列の例
mtrx.each do |row|
	puts row.join("\t")
end

# 行列の転置
mtrx_new = Array.new

for i in 1..mtrx[0].length
	tmp_arr = Array.new
	for l in 1..mtrx.length
		tmp_arr.push(mtrx[l-1][i-1])
	end
	mtrx_new.push(tmp_arr)	
end



# 転置した行列を表示
mtrx_new.each do |row|
	puts row.join("\t")
end
