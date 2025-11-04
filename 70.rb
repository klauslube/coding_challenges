# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return n if n <= 2

  first = 1
  second = 2

  (3..n).each do
    third = first + second
    first = second
    second = third
  end

  second
end