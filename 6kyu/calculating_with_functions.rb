# This time we want to write calculations using functions and get the results.
# Let's have a look at some examples:
#
# seven(times(five)) # must return 35
# four(plus(nine)) # must return 13
# eight(minus(three)) # must return 5
# six(divided_by(two)) # must return 3
#
# Requirements:
#
#   There must be a function for each number from 0 ("zero") to 9 ("nine")
#   There must be a function for each of the following mathematical operations:
#   plus, minus, times, dividedBy (divided_by in Ruby)
#   Each calculation consist of exactly one operation and two numbers
#   The most outer function represents the left operand, the most inner function
#   represents the right operand
require 'pry'
%w(zero one two three four
   five six seven eight nine).each_with_index do |method, value|
  define_method method do |*args|
    operation args, value
  end
end
%w(plus + minus - times * divided_by /).each_slice(2) do |method, value|
  define_method method do |*args|
    args << value
  end
end
def operation(args, number)
  args.length.zero? ? number.to_f : number.send(args[0][1], args[0][0])
end
