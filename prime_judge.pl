#!/usr/bin/perl
#エラトステネスの篩の方式を用いて素数判定を行います

#標準入力からの数値の代入
my $i = <STDIN>;
chomp ($i);

#入力値が自然数であることの確認
if ($i =~ /^[0-9]+$/) {
	$n = $i;
}
else {
	print "Please enter a natural number.", "\n";
}


#処理部
if ($n <= 1) { #nが1以下の場合
	print "Please enter a natural number of 2 or more.", "\n";
	exit (0);
}
elsif ($n == 2) { #nが2の場合
	print "2 is first prime number.", "\n";
	exit (0);
}
elsif ($n % 2 == 0 && $n !=2) { #nは2でない2の倍数
	print $n, " can be devided by 2. ", $n, " is not prime number.", "\n";
	exit (0);
}
else { #nが3以上の奇数の場合
	#エラトステネスの篩
	$div = 3;
	while ($div <= ($n /2)) {
		if ($div % 3 == 0 && $div != 3) { #6,9などで割り切れる数はそもそも3で割り切れるはずなので
			$div = $div + 2;
		}
		elsif ($div % 5 == 0 && $div != 5) { #10,15などで割り切れる数はそもそも5で割り切れるはずなので
			$div = $div + 2;
		}
		elsif ($div % 7 == 0 && $div != 7) { #14,21などで割り切れる数はそもそも7で割り切れる数なので
			$div = $div + 2;
		}
		elsif ($n % $div == 0) {
			print "$n is able to be divided by $div\n";
			print "--->$n is not prime number.", "\n";
			exit (0); #任意の自然数で割り切れたらスクリプトを終了
		}
		else {
			print "$n is not devided by $div.\n";
			$div = $div + 2;
		}
	}
	print "--->$n is a prime number.", "\n"; #素数であることが判定されたらメッセージを表示
}