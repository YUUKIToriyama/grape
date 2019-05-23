#!/usr/bin/ruby
# 4を法としたパスカルの三角形はフラクタルを描きます


# 二項展開に現れる係数を計算する
arr = [[1]]

for l in 1..60
	tmp = [1]
	for m in 1..(arr[l-1].length - 1)
		tmp.push(arr[l-1][m-1] + arr[l-1][m])
	end
	tmp.push(1)
	arr.push(tmp)
end

# 各項を４で割り色付き絵文字に変換します
arr.each do |row|
	row.map! do |elm|
		elm = (elm % 4).to_s.gsub("0", "👀").gsub("1", "🎀").gsub("2", "💧").gsub("3", "⭐")
	end
	puts row.join(",")
end
