#!/usr/bin/ruby
# 年齢あてゲーム
#
# 16~25歳の範囲で年齢を当てるゲームです。まだ若いから失礼じゃない！？

num = 25 - rand(10)

while true
	if gets.chomp == "q"
		puts "終了します"
		exit
	elsif gets.class != Integer	
		puts "半角数字を入力してね"
	else
		ans = gets.to_i
	end

	if (ans > num)
		puts "もう少し若いです"
	elsif (ans < num)
		puts "もう少し年上ですよ"
	else
		puts "見事的中！私は#{num}歳です"
		exit
	end
end
