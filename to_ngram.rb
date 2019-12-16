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

#あるいはこんな方法もある(かつて使っていた方法)
class String
        def split_particle(n)
                arr = []
                for i in 0..(self.length - n)
                        arr.push(self[i..i+n-1])
                end
                return arr
        end
        def to_ngram_arr
                arr = []
                for i in 1..self.length
                        arr << self.split_particle(i)
                end
                return arr.flatten
        end

end
