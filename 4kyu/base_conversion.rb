# In this kata you have to implement a base converter, which converts between
# arbitrary bases / alphabets. Here are some pre-defined alphabets:
#
# bin='01'
# oct='01234567'
# dec='0123456789'
# hex='0123456789abcdef'
# allow='abcdefghijklmnopqrstuvwxyz'
# allup='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
# alpha='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
# alphanum='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
#
# The function convert() should take an input (string), the source alphabet
# (string) and the target alphabet (string). You can assume that the input value
# always consists of characters from the source alphabet. You don't need to
# validate it.
#
# Examples:
#
# convert("15", dec, bin) #should return "1111"
# convert("15", dec, oct) #should return "17"
# convert("1010", bin, dec) #should return "10"
# convert("1010", bin, hex) #should return "a"
#
# convert("0", dec, alpha) #should return "a"
# convert("27", dec, allow) #should return "bb"
# convert("hello", allow, hex) #should return "320048"
#
# Additional Notes:
#
# * The maximum input value can always be encoded in a number without loss of
#   precision in JavaScript. In Haskell, intermediate results will probably be
#   to large for Int.
# * The function must work for any arbitrary alphabets, not only the pre-defined
#   ones
# * You don't have to consider negative numbers
# =============================================================================
# My Idea and solution is to tak any input base to decmial and convert it to
# any target base.
# Inspired by:
# http://www.cs.trincoll.edu/~ram/cpsc110/inclass/conversions.html

DEC = '0123456789'.freeze

def convert(input, source, target)
  return input if source == target
  return to_decimal(input, source).to_s if target == DEC
  to_target(target, to_decimal(input, source))
end

# Convert any input to decimal value using thin mathematical formula:
# (d0 * b^n-1) + (d1 * b^n-2) ... (dx * b^n=0)
def to_decimal(input, source)
  return input.to_i if source == DEC
  base = source.size
  n = input.size - 1
  input.split('').collect.with_index do |digit, i|
    source.index(digit) * (base**(n - i))
  end.inject(:+).to_i
end

def to_target(target, decimal)
  # Just to know that Ruby have built in conversion to common bases
  # use it instead of ours for (2,8,10,16) ;)
  return decimal.to_s(target.size) if [2, 8, 10, 16].include? target.size
  # Otherwise use our own conversion :)
  return target[0] if decimal.zero?
  base = target.size
  result = ''
  decimal.to_f
  while decimal != 0
    result += target[(decimal % base)]
    decimal /= base
  end
  result.reverse
end
