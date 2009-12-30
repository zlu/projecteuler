# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

pf = 2
num = 600851475143
while num > 1 do
  if num % pf != 0
    pf = pf + 1
  else
    num = num / pf
  end
end

puts pf
puts num

