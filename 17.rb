# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.empty?

  mapping = {
    '2' => ['a', 'b', 'c'],
    '3' => ['d', 'e', 'f'],
    '4' => ['g', 'h', 'i'],
    '5' => ['j', 'k', 'l'],
    '6' => ['m', 'n', 'o'],
    '7' => ['p', 'q', 'r', 's'],
    '8' => ['t', 'u', 'v'],
    '9' => ['w', 'x', 'y', 'z']
  }

  result = ['']
  digits.each_char do |digit|
    result = result.flat_map { |prefix| mapping[digit].map { |letter| prefix + letter } }
  end

  result
end
