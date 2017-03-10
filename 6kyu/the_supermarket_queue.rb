# There is a queue for the self-checkout tills at the supermarket. Your task is
# write a function to calculate the total time required for all the customers
# to check out!
# The function has two input variables:
#
#   customers: an array (list in python) of positive integers representing the
#             queue. Each integer represents a customer, and its value is the
#             amount of time they require to check out.
#
#   n: a positive integer, the number of checkout tills.
#
# The function should return an integer, the total time required.
#
# EDIT: A lot of people have been confused in the comments. To try to prevent
# any more confusion:
#
# There is only ONE queue, and
# The order of the queue NEVER changes, and
# Assume that the front person in the queue (i.e. the first element in the
# array/list) proceeds to a till as soon as it becomes free.
# The diagram on the wiki page I linked to at the bottom of the description
# may be useful.
#
# So, for example:
#
#   queue_time([5,3,4], 1)

# should return 12
#  because when n=1, the total time is just the sum of the times
#
#   queue_time([10,2,3,3], 2)

# should return 10
# because here n=2 and the 2nd, 3rd, and 4th people in the
# queue finish before the 1st person has finished.
#
#   queue_time([2,3,10], 2)

# should return 12
#
# N.B. You should assume that all the test input will be valid, as specified
# above.
# P.S. The situation in this kata can be likened to the
# more-computer-science-related idea of a thread pool, with relation to running
# multiple processes at the same time:
# https://en.wikipedia.org/wiki/Thread_pool
# =============================================================================
# This Solution is taken from CW. Mind blowing in comparison to old one:
# https://git.io/vywoF
# I added comments to show thaht I know what is happening here ( I think :P )
# and updated syntax for clearing the code and RuoCop syntax check :)
def queue_time(customers, n)
  # Short circuit trivial cases with empty queue and one till.
  return 0 if customers.empty?
  # Remove zero customers for less iterations for inject or main loop.
  customers.reject!(&:zero?)
  return customers.inject(:+) if n == 1
  # Prepare array of tills filled with initial 0 values
  tills = Array.new(n, 0)
  # Simulate customers visiting till in order.
  # There is no need to emulate each time/tick because each visit takes
  # time value of customer so next customer will always visit till with
  # the lowest value :) Awesome!
  (0..(customers.length - 1)).each do |i|
    # Customer visits till with lowest value in other words - assign value of
    # customer to the till array with index of the lowest value.
    # Values are incremented because we want to know the whole time spend in
    # tills :)
    tills[tills.index(tills.min)] += customers[i]
  end
  # Maximum value from tills array will be the answer because the whole time
  # spend in tills will be the maximum time. In other words if other tills have
  # lower value it means that it ended earlier and waited empty :)
  tills.max
end
