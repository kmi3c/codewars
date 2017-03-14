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
