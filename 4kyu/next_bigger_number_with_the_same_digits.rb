# @url: https://www.codewars.com/kata//next-bigger-number-with-the-same-digits/ruby
# You have to create a function that takes a positive integer number and returns
# the next bigger number formed by the same digits:
# nextBigger(12)==21
# nextBigger(513)==531
# nextBigger(2017)==2071
# If no bigger number can be composed using those digits, return -1:
# nextBigger(9)==-1
# nextBigger(111)==-1
# nextBigger(531)==-1
#
def next_bigger(n)
  digits = n.to_s.chars
  return -1 if digits.uniq.size == 1
  perms = digits.permutation(digits.size).collect do |perm|
    m = perm.join.to_i
    perm.join.to_i if m > n
  end
  perms.min || -1
end
