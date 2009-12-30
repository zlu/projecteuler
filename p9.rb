# Problem 9
# find the pythaorean triplet for which a + b + c = 1000
(1..333).each do |a|
  (a+1..500).each do |b|
    if (a * a + b * b) == (1000 - a - b) * (1000 - a - b)
      c = 1000 - a - b
      puts "#{a} * #{b} * #{c} = #{a * b * c}"
      break
    end
  end
end
