def valid_walk?(walk)
  return if walk.size != 10
  steps = { n: [0, 1], e: [1, 0], w: [-1, 0], s: [0, -1] }.freeze
  loc = [0, 0]
  walk.each do |step|
    loc = loc.zip(steps[step.to_sym]).map { |coord| coord.inject(:+) }
  end
  loc == [0, 0]
end
alias isValidWalk valid_walk?
