require 'prime'

n = 1
i = 1

while true

  prime_numbers = Prime.prime_division(n)
  num_of_dividor = prime_numbers.inject(1) {|sum, arr| sum *= (arr[1] + 1) }

  if num_of_dividor > 500
    puts n
    break
  end

  i += 1
  n += i
end
