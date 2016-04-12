# Even Splitters
# ------------------------------------------------------------------------------
# Return an array of characters on which we can split an input string to produce
# substrings of the same length.

# Don't count empty strings after the split.

# Here's an example for "banana":
#
# "banana".split("a") # => ["b", "n", "n"] (all elements same length)
# "banana".split("b") # => ["", anana"] (all elements same length - there's only
# one element "anana" because the empty string doesn't count)
# "banana".split("n") # => ["ba", "a", "a"] (all elements NOT same length)
#
# result: ["b", "a"]
#
# ------------------------------------------------------------------------------

def even_splitters(string)
  ans = []
  letters_used = {}
  string.split('').each do |letter|
    next if letters_used[letter]
    letters_used[letter] = 1

    spl = string.split(letter)

    # counts length of each split_unit, excluding empty strings
    counts = spl.map(&:length).select{|count| count > 0}

    first_count = counts[0]
    good_letter = true
    counts.each do |count|
      if count != first_count
        good_letter = false
        break
      end
    end
    ans << letter if good_letter
  end
  ans
end

puts "-----Even Splitters----"
puts even_splitters("") == []
puts even_splitters("t") == ["t"]
puts even_splitters("jk") == ["j", "k"]
puts even_splitters("xoxo") == ["x", "o"]
puts even_splitters("banana") == ["b","a"]
puts even_splitters("mishmash") == ["m","h"]

