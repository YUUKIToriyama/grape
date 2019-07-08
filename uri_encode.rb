#!/usr/bin/ruby
# FlickrAPIアクセス用

require 'open-uri'

API_KEY = "123456789abcde0"

query_arr = [
	["api_key", API_KEY],
	["method", "flickr.photos.search"],
	["tags", "kyoto,hushimi"],
	["has_geo", 1],
	["extras", "geo,url_h,date_taken"],
	["format", "json"],
	["nojsoncallback", 1]
]

uri = URI.parse("https://api.flickr.com/services/rest")
uri.query = URI.encode_www_form(query_arr.to_h)

# JSONファイルを開く
puts uri.to_s
json_file = open(uri.to_s)

# ダウンロードしたJSONを保存する
open("tmp.json", "w+b") do |output|
	output.write(json_file.read)
end
