# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6^(th) prime is 13.
# What is the 10001^(st) prime number?
t1 = Time.now
p = [2, 3, 5, 7, 11, 13]
(p.max .. 1000000).step(2) do |i|
  j = 0
  stop = ((p.length+1)/2).ceil + 1
  while j < stop && (i % p[j] != 0) do
    j = j + 1
  end

  if j == stop
    p << i
  end

  if p.length == 10002
    puts p.last
    break
  end
end

puts "#{Time.now - t1}".to_s + " seconds"
