def convert_fracts(lst)
  n, d = *lst.transpose
  ld = d.inject(:lcm)
  d.collect.with_index { |no, i| [(ld / no) * n[i], ld] }
end
alias convertFracts convert_fracts
