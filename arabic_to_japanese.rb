#!/usr/bin/ruby
# アラビア数字を漢数字の文字列に変換します。
#
# Usage
# puts 11451481019194545931.num_to_japanese => 一千一百四十五京 一千四百八十一兆 一百九十一億 九千四百五十四万 五千九百三十一

class Array
	def main_convert
		unit = ["", "万", "億", "兆", "京", "垓", "??", "穣", "穣", "澗", "正", "載", "極", "恒河沙", "阿僧祇", "那由他", "不可思議", "無量大数"]
		for i in 1..self.length
			self[-i].concat(unit[i-1])
		end
		return self.join(" ")
	end
end


class Integer
	def num_separate
		str = self.to_s.reverse.scan(/./)
		arr = []
		while str.length > 0
			tmp = []
			4.times do
				tmp.push(str.shift)
			end
			arr.push(tmp.join().reverse.to_i)
		end
		return arr.reverse
	end
	def sub_convert
		num = self.to_s.reverse
		unit = ["", "十", "百", "千"]
		numeral = ["〇", "一", "二", "三", "四", "五", "六", "七", "八", "九"]
		str = ""
		for i in 1..num.length
			str.concat(unit[i-1]).concat(numeral[num[i-1].to_i])
		end
		return str.reverse
	end
	def num_to_japanese
		arr = []
		arr = self.num_separate.map do |elm|
			elm.sub_convert
		end
		return arr.main_convert
	end
end


puts 11451481019194545931.num_to_japanese

