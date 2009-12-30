# Problem 6
a = (1..100).inject(&:+)
a = a * a
b = (1..100).inject{ |sum, n| sum + n * n }
puts a - b
