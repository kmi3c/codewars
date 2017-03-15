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
def convert(input, _source, _target)
  digits = input.split('')
  # base = target.size
  digits.each do |d|
  end
end
