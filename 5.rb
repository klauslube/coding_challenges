# @param {String} s
# @return {String}
def longest_palindrome(s)
  longest = ""

  (0...s.length).each do |i|
    (i...s.length).each do |j|
      substring = s[i..j]
      if substring == substring.reverse && substring.length > longest.length
        longest = substring
      end
    end
  end

  longest
end
