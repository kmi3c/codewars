# Same Snail Sort solution but more awesome :)
# Added just to know that is possible
def awesome_snail(array)
  array.empty? ? [] : array.shift + awesome_snail(array.transpose.reverse)
end
