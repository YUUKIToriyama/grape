#!/usr/bin/ruby
#配列の中身をシャッフルすることを考えます。厳密に言うと、配列からランダムに取り出した要素を別に用意した空配列にpushするということです。

#もとの配列を定義します
array_1 = ["子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥"]
puts "もとの配列: " + array_1.join(", ")

#空の配列を用意します
array_2 = []
puts "用意した空の配列: " + array_2.join(", ")

#配列の各要素につけられたインデックスを利用して、もとの配列「array_1」からランダムに空の配列「array_2」へと要素を移動します。
while array_1.length > 0 do
	choose_one = rand(array_1.length)
	array_2.push array_1[choose_one]
	array_1.delete_at(choose_one)
end


#並び替え後
puts
puts "～並び替え後～"
puts "もとの配列: " + array_1.join(", ")
puts "シャッフルされた配列: " + array_2.join(", ")