# find the sum of all the multiples of 3 or 5 below 1000
result = 0
(1..999).each do |i|
  if i % 3 == 0 || i % 5 == 0
    result = result + i
  end
end

puts result

puts (1..999).select { |i| i % 3 == 0 || i % 5 == 0}.inject(&:+)
