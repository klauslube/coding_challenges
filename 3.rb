# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  longest = 0

  (0...s.length).each do |i|
    current = []
    (i...s.length).each do |j|
      char = s[j]
      break if current.include?(char)
      current << char
      longest = [longest, current.length].max
    end
  end

  longest
end