a1 = 1
a2 = 2
a3 = 3

sum = 2

while a3 < 4000000
  a3 = a1 + a2

  sum += a3 if a3 % 2 == 0

  a1 = a2
  a2 = a3
end

puts sum
