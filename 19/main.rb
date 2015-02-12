require 'date'

sd = Date.new(1901, 1, 1)
ed = Date.new(2000, 12, 31)

sunday_count = 0

sd.upto(ed) do |d|
  sunday_count += 1 if d.day == 1 && d.wday == 0
end

puts sunday_count
