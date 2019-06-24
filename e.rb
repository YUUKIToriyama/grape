#!/usr/bin/ruby

e,n,a,pre = 0,1,1,2
while e!= pre
	a,n,pre,e = a*n,n+1,e,e+1.fdiv(a)
end

puts e
