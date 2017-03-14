def awesome_snail(array)
  array.empty? ? [] : array.shift + awesome_snail(array.transpose.reverse)
end
