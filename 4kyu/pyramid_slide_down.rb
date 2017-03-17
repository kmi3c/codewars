# Lyrics...
#
# Pyramids are amazing! Both in architectural and mathematical sense. If you
# have a computer, you can mess with pyramids even if you are not in Egypt at
# the time. For example, let's consider the following problem. Imagine that you
# have a plane pyramid built of numbers, like this one here:
#
#    /3/
#   \7\ 4
#  2 \4\ 6
# 8 5 \9\ 3
#
# Here comes the task...
#
# Let's say that the 'slide down' is a sum of consecutive numbers from the top
# to the bottom of the pyramid. As you can see, the longest 'slide down' is
#   3 + 7 + 4 + 9 = 23
#
# Your task is to write a function longestSlideDown (ruby: longest_slide_down)
# that takes a pyramid representation as argument and returns its' longest '
# slide down'. For example,
#
# longest_slide_down([[3], [7, 4], [2, 4, 6], [8, 5, 9, 3]])
# # => 23
#
# By the way...
# My tests include some extraordinarily high pyramids so as you can guess,
# brute-force method is a bad idea unless you have a few centuries to waste.
# You must come up with something more clever than that.
#
# (c) This task is a lyrical version of the Problem #18 and/or Problem #67 on
# ProjectEuler. https://projecteuler.net/
# #18 https://projecteuler.net/problem=18
# #67 https://projecteuler.net/problem=67
# link to large pyramid from Problem #67:
# https://projecteuler.net/project/resources/p067_triangle.txt
# ================================ Solution ===================================
# Start from bottom of the pyramid. Take it's row and add highest possible sum
# (with valid slide/path)to each cell above. Repeat until top of the pyramid
# is reached. With this solution seeking sum should be in the tip of the
# pyramid. Because we always sum the highest possible number from previous row
# we are suming previous sums. (if that makes sense in english xD)
# @todo: reduce ABC size.
def longest_slide_down(pyramid) # rubocop:disable Metrics/AbcSize
  (pyramid.size - 2).downto(0) do |row|
    0.upto(pyramid[row].size - 1) do |col|
      pyramid[row][col] += [
        pyramid[row + 1][col] || 0,
        pyramid[row + 1][col + 1] || 0
      ].max
    end
  end
  pyramid[0][0]
end
