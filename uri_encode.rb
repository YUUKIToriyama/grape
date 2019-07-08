#!/usr/bin/ruby
# FlickrAPIアクセス用

require 'uri'

API_KEY = "123456789abcde0"
uri = URI.parse("https://api.flickr.com/services/rest")

query_arr = [
	["api_key", API_KEY],
	["method", "flickr.photos.search"],
	["tags", "kyoto,hushimi"],
	["has_geo", 1],
	["extras", "geo,url_h,date_taken"],
	["format", "json"],
	["nojsoncallback", 1]
]

uri.query = URI.encode_www_form(query_arr.to_h)

puts uri.to_s
