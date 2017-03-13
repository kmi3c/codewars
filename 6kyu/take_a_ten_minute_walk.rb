def valid_walk?(walk)
  return false unless walk.size == 10
  walk.count('n') == walk.count('s') && walk.count('e') == walk.count('w')
end
alias isValidWalk valid_walk?
