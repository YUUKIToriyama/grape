#!/usr/bin/ruby
#配列の中身をシャッフルするメソッド「shuf_array」を作ります。厳密に言うと、配列からランダムに取り出した要素を別に用意した空配列にpushするメソッドです。

#もとの配列を定義します
array_1 = ["子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥"]


def shuf_array rry
	#空の配列を用意します
	altanative = []
	#配列の各要素につけられたインデックスを利用して、もとの配列「array_1」からランダムに空の配列「array_2」へと要素を移動します。
	while rry.length > 0 do
		choose_one = rand(rry.length)
		altanative.push rry[choose_one]
		rry.delete_at(choose_one)
	end
	rry = altanative
end

#出力
puts "もとの配列: " + "\n " + array_1.join(", ")
puts ("シャッフルされたもの: " + "\n " + shuf_array(array_1).join(", "))