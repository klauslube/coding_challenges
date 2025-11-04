# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  return 2**31 - 1 if dividend == -2**31 && divisor == -1

  negative = (dividend < 0) ^ (divisor < 0)
  dividend = dividend.abs
  divisor = divisor.abs

  quotient = 0
  while dividend >= divisor
    dividend -= divisor
    quotient += 1
  end

  quotient = -quotient if negative
  quotient
end
