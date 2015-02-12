max_step = 0
max_n = 0

1.upto(1000000) do |n|

  step = 0
  m = n

  while m != 1 
    if m % 2 == 0
      # 偶数の場合は1/2にする
      m = m / 2
    else
      # 奇数の場合は3倍して1を足す
      m = 3 * m + 1
    end

    step += 1
  end

  if step > max_step
    max_step = step
    max_n = n

    puts "n : #{max_n}, step: #{max_step}"
  end
end
