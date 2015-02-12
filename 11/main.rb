
numbers = []

open('./data', 'r').read.each_line do |l|
  puts l
  numbers << l.split(' ').map{|s| s.to_i }
end

N = numbers[0].size - 1

max_product = 0

0.upto(N) do |row|
  0.upto(N) do |col|

    # 下に4つ
    if (row + 3).between?(0, N)
      product = numbers[row][col] * numbers[row + 1][col] * numbers[row + 2][col] * numbers[row + 3][col]

      if product > max_product
        puts "#{product} is winner, [ (#{row}, #{col}), (#{row + 1}, #{col}), (#{row + 2}, #{col}), (#{row + 3}, #{col}) ]"
        max_product = product
      end
    end

    # 右に4つ
    if (col + 3).between?(0, N)
      product = numbers[row][col] * numbers[row][col + 1] * numbers[row][col + 2] * numbers[row][col + 3]

      if product > max_product
        puts "#{product} is winner, [ (#{row}, #{col}), (#{row}, #{col + 1}), (#{row}, #{col + 2}), (#{row}, #{col + 3}) ]"
        max_product = product
      end
    end

    # 右斜め下に4つ
    if (row + 3).between?(0, N) && (col + 3).between?(0, N)
      product = numbers[row][col] * numbers[row + 1][col + 1] * numbers[row + 2][col + 2] * numbers[row + 3][col + 3]

      if product > max_product
        puts "#{product} is winner, [ (#{row}, #{col}), (#{row + 1}, #{col + 1}), (#{row + 2}, #{col + 2}), (#{row + 3}, #{col + 3}) ]"
        max_product = product
      end
    end

    # 左斜め下に4つ
    if (row + 3).between?(0, N) && (col - 3).between?(0, N)
      product = numbers[row][col] * numbers[row + 1][col - 1] * numbers[row + 2][col - 2] * numbers[row + 3][col - 3]

      if product > max_product
        puts "#{product} is winner, [ (#{row}, #{col}), (#{row + 1}, #{col - 1}), (#{row + 2}, #{col - 2}), (#{row + 3}, #{col - 3}) ]"
        max_product = product
      end
    end
  end
end
