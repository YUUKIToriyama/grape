#!/usr/bin/ruby
#配列の中身をシャッフルするメソッド「shuf_array」を作ります。厳密に言うと、配列からランダムに取り出した要素を別に用意した空の配列にpushするメソッドです。

class Array
	def shuf_array
		a = self
		arr = []
		while a.length > 0
			r = rand(a.length)
			arr.push(a.delete_at(r))
		end
		return arr
	end
end

# 実行例
animals = ["子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥"]

puts animals.shuf_array
