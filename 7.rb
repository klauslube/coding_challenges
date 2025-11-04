# @param {Integer} x
# @return {Integer}
def reverse(x)
  sign = x < 0 ? -1 : 1
  x = x.abs
  reversed = x.to_s.reverse.to_i
  reversed *= sign
  return 0 if reversed < -2**31 || reversed > 2**31 - 1
  reversed
end
