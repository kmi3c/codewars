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
def queue_time(customers, n)
  # shortcircuit trivial cases
  return 0 if customers.empty?
  return customers.inject(:+) if n == 1
  # remove zero customers
  customers.reject!(&:zero?)
  ticks = 0
  c_tills = {}
  n.times { |q| c_tills[:"q#{q}"] = nil }
  loop.with_index do |_, _i|
    c_tills.each do |q, v|
      if (v.nil? || v[1].zero?) && customers.any?
        customer = customers.shift
        c_tills[q] = [customer, customer]
      end
      next if c_tills[q].nil?
      c_tills[q][1] -= 1
      c_tills[q] = nil if c_tills[q][1] <= 0
    end
    ticks += 1
    break if customers.empty? && (c_tills.values.uniq.size == 1) && c_tills.values.uniq.first.nil?
  end
  ticks
end
