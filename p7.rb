# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6^(th) prime is 13.
# What is the 10001^(st) prime number?

# the key is:
# Any number n can have only one primefactor greater than sqrt(n). 
# The consequence for primality testing of a number n is: if we cannot find a number f less than
# or equal sqrt(n) that divides n then n is prime: the only primefactor of n is n itself

# another solution is to add i into p and remove it if not prime, but for some reason, maybe related to array
# manipulation, it is a lot slower, about 14 sec to find the answer
t1 = Time.now
p = [2, 3, 5, 7, 11, 13]
(p.last+2 .. 1000000).step(2) do |i|
  j = 0
  find = true
  while p[j] <= Math.sqrt(i).floor && (j = j + 1) do
    if i % p[j] == 0
      find = false
      break
    end
  end
  p << i if find
  break if p.length == 10001
end
puts "find prime 10001st number " + p.last.to_s + " in #{Time.now - t1}".to_s + " seconds"
