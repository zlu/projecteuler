# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
i = 2
p = [2, 3, 5, 7, 11, 13, 17, 19]
mp = p.inject(&:*)
puts mp
r = mp
while i < 21 do 
  if r % i != 0
    r = r + mp
    i = 2
  else
    i = i + 1
  end
end

puts r
