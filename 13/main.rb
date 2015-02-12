
sum = 0

open('./data', 'r').read.each_line do |l|
  sum += l.to_i
end

puts sum.to_s[0..9]
