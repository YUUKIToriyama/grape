#!/usr/bin/ruby
# 年齢あてゲーム

num = 25 - rand(10)


while (1 == 1)
	ans = gets.chomp!.to_i
	if (ans == num)
		puts "見事的中！私は#{num}歳です"
		exit
	elsif (ans > num)
		puts "もう少し若いです"
	elsif (ans < num)
		puts "もう少し年上ですよ"
	else
		puts "半角数字を入力してね"
	end
end

