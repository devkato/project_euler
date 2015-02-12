p 100.downto(1).inject(:*).to_s.split(//).inject(0) {|sum, n| sum += n.to_i }
