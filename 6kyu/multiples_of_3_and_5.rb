# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Finish the solution so that it returns the sum of all the multiples of 3 or 5
# below the number passed in.
# Note: If the number is a multiple of both 3 and 5, only count it once.
class MultiplesOf3And5
  class << self
    def solution(number)
      naturals = (0..(number - 1)).collect do |n|
        n if (n % 3).zero? || (n % 5).zero?
      end
      naturals.compact.inject(:+).to_i
    end

    def to_s
      __FILE__
    end
  end
end
