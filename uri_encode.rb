#!/usr/bin/ruby

require 'uri'

uri = URI.parse("https://example.com/search?q=yamada")

query_arr = [
	["q", "rubyチートシート"],
	["utf8", "yes"],
	["browser", "firefox"],
	["num", 113]
]

uri.query = URI.encode_www_form(query_arr.to_h)

puts uri.to_s
