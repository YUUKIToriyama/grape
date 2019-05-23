#!/usr/bin/ruby
# base64コマンドの代替スクリプト
# -e "文字列"でエンコードが、-d "base64文字列"でデコードができます。

require 'base64'

def bs64(arg_1, arg_2)
	case arg_1
	when "-e"
		return Base64.encode64(arg_2)
	when "-d"
		return Base64.decode64(arg_2)
	else
		return "Usage: -e (when you're going to encode), -d (when you're going to decode)"
	end
end

puts bs64(ARGV[0], ARGV[1])
