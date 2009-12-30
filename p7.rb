# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6^(th) prime is 13.
# What is the 10001^(st) prime number?
t1 = Time.now
p = [2, 3, 5, 7, 11, 13]
(p.max .. 1000000).step(2) do |i|
  j = 0
  while (j < (p.length/2).ceil) && (i % p[j] != 0) do
    j = j + 1
  end

  if j == (p.length/2).ceil
    p << i
  end

  if p.length == 10001
    puts p.max
    break
  end
end

puts "#{Time.now - t1}".to_s + " seconds"
