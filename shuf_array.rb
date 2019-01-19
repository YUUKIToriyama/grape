#!/usr/bin/ruby
#配列の中身をシャッフルするメソッド「shuf_array」を作ります。厳密に言うと、配列からランダムに取り出した要素を別に用意した空の配列にpushするメソッドです。

def shuf_array(arr)
	#空の配列を用意します
	tmp = Array.new
	for i in 1..arr.length
		choose_one = rand(arr.length)
		tmp.push(arr[choose_one])
		arr.delete_at(choose_one)
	end
	arr = tmp
end


# 例
animals = ["子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥"]

# 実行
puts shuf_array(animals)
