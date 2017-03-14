# Snail Sort
#
# Given an n x n array, return the array elements arranged from outermost
# elements to the middle element, traveling clockwise.
#
#   array = [[1,2,3],
#           [4,5,6],
#           [7,8,9]]
# snail(array) #=> [1,2,3,6,9,8,7,4,5]
#
# For better understanding, please follow the numbers of the next array
# consecutively:
#
# array = [[1,2,3],
#          [8,9,4],
#          [7,6,5]]
# snail(array) #=> [1,2,3,4,5,6,7,8,9]
#
# This image will illustrate things more clearly:

# http://www.haan.lu/files/2513/8347/2456/snail.png

# NOTE: The idea is not sort the elements from the lowest value to the highest;
# the idea is to traverse the 2-d array in a clockwise snailshell pattern.
#
# NOTE 2: The 0x0 (empty matrix) is represented as [[]]
#
DIRS = %w(right down left up).freeze
def snail(arr)
  snail_trail = []
  dir = 0
  while arr.any?
    snail_trail += send(DIRS[dir], arr)
    dir = DIRS[dir + 1] ? dir + 1 : 0
  end
  snail_trail.compact!
  snail_trail
end

def right(arr)
  arr.shift
end

def down(arr)
  arr.collect { |a| a.slice!(a.size - 1) }
end

def left(arr)
  arr.slice!(arr.size - 1).reverse
end

def up(arr)
  arr.reverse.collect { |a| a.slice!(0) }
end
