# Given a list of integers and a single sum value, return the first two values
# (parse from the left please) in order of appearance that add up to form the
# sum.
#
#   sum_pairs([11, 3, 7, 5],         10)
#   #              ^--^      3 + 7 = 10
#   == [3, 7]
#
#   sum_pairs([4, 3, 2, 3, 4],         6)
#   #          ^-----^         4 + 2 = 6, indices: 0, 2 *
#   #             ^-----^      3 + 3 = 6, indices: 1, 3
#   #                ^-----^   2 + 4 = 6, indices: 2, 4
#   #  * entire pair is earlier, and therefore is the correct answer
#   == [4, 2]
#
#   sum_pairs([0, 0, -2, 3], 2)
#   #  there are no pairs of values that can be added to produce 2.
#   == None/nil/undefined (Based on the language)
#
#   sum_pairs([10, 5, 2, 3, 7, 5],         10)
#   #              ^-----------^   5 + 5 = 10, indices: 1, 5
#   #                    ^--^      3 + 7 = 10, indices: 3, 4 *
#   #  * entire pair is earlier, and therefore is the correct answer
#   == [3, 7]
#
# Negative numbers and duplicate numbers can and will appear.
#
# NOTE: There will also be lists tested of lengths upwards of 10,000,000
#       elements. Be sure your code doesn't time out.
# ======================== IFNO ===============================================
# Learned and taken from: http://www.geeksforgeeks.org
# and YT video: https://www.youtube.com/watch?v=I7Nz1XzzPYc
def sum_pairs(numbers, sum)
  # Numbers witch we select as checked that we have in array.
  # Selected number is the index of array. So if we want to select
  # number 4 as chekced we do it so with putting checked[4] = 1 and so on.
  checked = []
  # Iterate over each number
  numbers.each do |n|
    # check what is the difference between searching sum and current number
    temp = sum - n
    # ... and if we already checked such number (checked[temp] == 1)
    # and it is grater or equal 0 (because we are looking for sum )
    # then there is our pair of numbers ([temp, n])
    return [temp, n] if (temp >= 0) && (checked[temp] == 1)
    checked[n] = 1
  end
  nil
end
