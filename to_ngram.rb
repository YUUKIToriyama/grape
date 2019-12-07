#!/usr/bin/ruby
# returning n-gram(sequence of particles of words) array from string
# Usage
# "とりやま".to_ngram
# => ["と", "り", "とり", "や", "りや", "とりや", "ま", "やま", "りやま", "とりやま"]
# © Copyright 2019 YUUKIToriyama. All Rights Reserved.

def step_1(arr)
	if arr[0].length > 1
		step_1(arr.unshift(arr[0].chop))
	else
		return arr
	end
end

def step_2(arr)
	if arr[0].length > 1
		step_2(arr.unshift(arr[0].reverse.chop.reverse))
	else
		return arr
	end
end

class String
	def to_ngram
		return step_1([].push(self)).map {|item| step_2([].push(item))}.flatten
	end
end
