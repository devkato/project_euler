require 'set'

max_pair_num = 0
max_sum_of_numbers = 0

3.upto(1000) do |sum_of_numbers|
  valid_pairs = Set.new
  
  1.upto(sum_of_numbers - 2) do |a|
    (a + 1).upto(sum_of_numbers - 1) do |b|
      c = sum_of_numbers - a - b
  
      sorted = [a, b, c].sort
  
      # 三角形の条件
      next if sorted[2] > sorted[0] + sorted[1]
  
      # 直角三角形の条件（ピタゴラスの定理）を満たしているか
      if sorted[2] ** 2 == sorted[0] ** 2 + sorted[1] ** 2
        valid_pairs << sorted
      end
    end
  end
  
  if valid_pairs.to_a.size > max_pair_num
    max_sum_of_numbers = sum_of_numbers
    max_pair_num = valid_pairs.to_a.size

    puts "max_sum_of_numbers updated -> #{max_sum_of_numbers}, max_pair_num -> #{max_pair_num}"
  end
end

