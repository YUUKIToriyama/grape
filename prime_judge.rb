#!/usr/bin/ruby
#入力された数が素数であることを確かめるスクリプト
#実行例 $echo 8191 | ./5_scpirt.rb

$val = $stdin.read.chomp.to_i

#エラトステネスの篩を実行するメソッド「prime_judgment」を定義。
def prime_judgment num
	if ($val % num == 0)
		puts $val.to_s + " can be devided by " + num.to_s + "\n" + $val.to_s + " is not a prime number."
		exit
	else
		puts $val.to_s + " cannot be devided by " + num.to_s
	end
end

#whileループを使って「prime_judgment」を回す。
if ($val <= 1) #入力値が1以下の場合
	puts "Please enter a natural number of 2 or more."
	exit
elsif ($val == 2) #入力値が2の時
	puts "2 is the first prime number."
	exit
elsif ($val % 2 == 0 && $val != 2) #入力値が2ではない偶数の時
	puts $val.to_s + " can be devided by 2" + "\n" +$val.to_s + " is not a prime number."
	exit
else #入力値が3以上の奇数である場合
	i = 3
	while (i <= $val.quo(2))
		if (i % 3 == 0 && i != 3) #6や9で割り切れるようなものはそもそも3で割り切れるはずなので
			i = i + 2
		elsif (i % 5 == 0 && i != 5) #10や15で割り切れるようなものはそもそも5で割り切れるはずなので
			i = i + 2
		elsif (i % 7 == 0 && i != 7) #14や21で割り切れるようなものはそもそも7で割り切れるはずなので
		i = i + 2
		elsif (i % 11 == 0 && i != 11) #上に同じ
			i = i + 2
		elsif (i % 13 == 0 && i != 13) #上に同じ
			i = i + 2
		elsif (i % 17 == 0 && i != 17) #上に同じ
			i = i + 2
		else
			prime_judgment(i)
			i = i + 2
		end
	end
end

puts $val.to_s + " is a prime number."