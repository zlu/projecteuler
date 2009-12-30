# -*- coding: iso-8859-1 -*-
# A palindromic number reads the same both ways. The largest palindrome 
# made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
#results = []
mp = 0
a = b = (100..999).to_a.reverse
i = j = 0
a.each do |i|
  b.each do |j|
    if i < j
      product = i * j
      if product.to_s == product.to_s.reverse
        mp = product if mp < product
      end
    end
  end
end
puts mp
