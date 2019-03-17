#!/usr/bin/ruby
arr = []
STDIN.map do |line|
    arr.push(line.chomp)
end
num = arr.shift.to_i


c_st = 0
c_ba = 0

for i in 1..num
    if arr[i - 1] == "strike"
        c_st = c_st + 1
        if c_st <= 2
            puts "strike!"
        else
            puts "out!"
            break
        end
    else
        c_ba = c_ba + 1
        if c_ba <= 3
            puts "ball!"
        else
            puts "fourball!"
            break
        end
    end
end
